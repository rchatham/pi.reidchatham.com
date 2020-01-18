//
//  Keypad.swift
//  App
//
//  Created by Reid Chatham on 10/21/19.
//

//import SwiftyGPIO
import SwiftSerial
import Foundation

struct Keypad {
    enum Button: String {
        case one = "1"
        case two = "2"
        case three = "3"
        case four = "4"
        case five = "5"
        case six = "6"
        case seven = "7"
        case eight = "8"
        case nine = "9"
        case zero = "0"
        case star = "*"
        case pound = "#"
    }

//    mutating func button(_ callback: @escaping (Button) -> Void) {
//        buttonPressed = callback
//    }
//
//    mutating func receiver(_ callback: @escaping (Bool) -> Void) {
//        receiverPositionChanged = callback
//    }
//
//    var buttonPressed: (Button) -> Void = {_ in}
//    var receiverPositionChanged: (Bool) -> Void = {_ in}

//    private let serialPort: SerialPort

    private var timer: Timer?

    //var myturn = true

    // Prepares the stdin so we can getchar() without echoing
    func prepareStdin() {

        // Set up the control structure
        var settings = termios()

        // Get options structure for stdin
        tcgetattr(STDIN_FILENO, &settings)

        //Turn off ICANON and ECHO
        settings.c_lflag &= ~tcflag_t(ICANON | ECHO)

        tcsetattr(STDIN_FILENO, TCSANOW, &settings)
    }

    func getKeyPress () -> UnicodeScalar {
        let valueRead: Int = Int(getchar())

        guard let charRead = UnicodeScalar(valueRead) else{
            return UnicodeScalar("")!
        }

        return charRead
    }

//    func printToScreen(characterToPrint: UnicodeScalar){
//        print(characterToPrint, terminator:"")
//    }


    func closePort() {
        serialPort.closePort()
        print("Port Closed")
    }

    init() {

//        let uarts = SwiftyGPIO.UARTs(for: .RaspberryPi3)!
//        let uart = uarts[0]

//        let uarts = SwiftyGPIO.UARTs(for: .RaspberryPiPlusZero)!
//        let uart = uarts[0]

//        let uart = SysFSUART("/dev/ttyUSB0")!
//        uart.configureInterface(speed: .S9600, bitsPerChar: .Eight, stopBits: .One, parity: .None)

//        let port = SerialPort(path:"/dev/ttyUSB0")
//        try! port.openPort(toReceive: true, andTransmit: false)
//        port.setSettings(receiveRate: .baud9600, transmitRate: .baud9600, minimumBytesToRead: 1)
//
//        Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true) { [weak self] (timer) in
//
//            while (try? uart.hasAvailableData()) ?? false {
//                let nextLine = uart.readLine()
//                switch nextLine {
//                case "ACTIVE":
//                    self?.currentReceiverPosition = true
//                case "INACTIVE":
//                    self?.currentReceiverPosition = false
//                default:
//                    if let button = Button(rawValue: nextLine) {
//                        self?.buttonPressed?(button)
//                    }
//                }
//            }
//
//        }


        do {

            print("Attempting to open port: \(portName)")
            try serialPort.openPort()
            print("Serial port \(portName) opened successfully.")

            serialPort.setSettings(receiveRate: .baud9600,
                                   transmitRate: .baud9600,
                                   minimumBytesToRead: 1)

            prepareStdin()


            //Turn off output buffering if not multiple threads will have problems printing
            setbuf(stdout, nil);


            //Run the serial port reading function in another thread
//        #if os(Linux)
//
//            var readingThread = pthread_t()
//
//            let pthreadFunc: @convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer? = {
//                observer in
//
//                backgroundRead()
//                return nil
//            }
//
//            pthread_create(&readingThread, nil, pthreadFunc, nil)
//
//        #elseif os(OSX)
//            DispatchQueue.global(qos: .userInitiated).async {
//                backgroundRead()
//            }
//
//        #endif


            timer = Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true) { (timer) in
//                backgroundRead()
                print(Date().description)

                while let newLine = try? serialPort.readLine(), !newLine.isEmpty {

                    handle(newLine: newLine)
                }
            }


            print("\nReady to send and receive messages in realtime!")

        } catch PortError.failedToOpen {
            print("Serial port \(portName) failed to open. You might need root permissions.")
        } catch {
            print("Error: \(error)")
        }
    }
}


let portName = "/dev/ttyUSB0"
let serialPort = SerialPort(path: portName)

func buttonPressed(_ button: Keypad.Button) {
    // do something with button response
    print("Button pressed: \(button.rawValue)")
//            self.enteredValues.append(button.rawValue)
}

func receiverPositionChanged(_ position: Bool) {
    print("Receiver engaged: \(!position)")
}

func handle(newLine: String) {
    print(newLine)
    switch newLine {
    case "ACTIVE":
        receiverPositionChanged(true)
    case "INACTIVE":
        receiverPositionChanged(false)
    default:
        if let button = Keypad.Button(rawValue: newLine) {
            buttonPressed(button)
        }
    }
}

//func backgroundRead() {
//    while true {
//        do {
//            let line = try serialPort.readLine()
//            guard !line.isEmpty else { return }
//            handle(newLine: line)
//        } catch {
//            print("Error: \(error)")
//        }
//    }
//}
