# DRExtensions

## Requirements

iOS: 9

macOS 10.12

## Author

Diligent Robot

## License

It's ours keeps your hands off

# Extensions

## Date

```swift
public static func date(string: String) -> Date?
```
Takes a date as a string and tries to match it to a recognised date format to produce a date.  It i smore efficient to use your own date formatter if you can guarentee the string format. 

## DateFormatter

```swift
/// Returns an "dd/MM" DateFormatter
public static let shortDate: DateFormatter 

/// Returns an "dd/MM" DateFormatter
public static let longMonth: DateFormatter 

/// Returns an "dd/MM/yy" DateFormatter
public static let longDate: DateFormatter

/// Returns an "yyyy-MM-dd'T'HH:mm:ssZZZZ" DateFormatter
public static let longFormatUSPOSIX: DateFormatter 
```

## Encodable
```swift
/// Returns JSON Encoded data from an Encodable
public func jsonEncodedData() throws ->  Data
```

## NumberFormatter

```swift
/// A number formatter in standard currency format.
public static let currencyStandard: NumberFormatter
```

## String

```swift 
/// Returns a Boolean value indicating whether the initial elements of the
/// sequence are equivalent to the elements in another sequence.
///     - Parameter prefix: The string to search for
///     - Parameter options: Specify any search options
public func starts(with prefix: String, options mask: String.CompareOptions) -> Bool 
```
