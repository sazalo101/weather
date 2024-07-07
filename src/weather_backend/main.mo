import Array "mo:base/Array";
actor WeatherStation {
 type WeatherData = {
 temperature : Float;
 humidity : Float;
 timestamp : Int;
 };
 var data : [WeatherData] = [];
 public func recordData(temperature : Float, humidity : Float, timestamp : Int) : async () {
 data := Array.append(data, [{temperature = temperature; humidity = humidity; timestamp = timestamp}]);
 };
 public query func getData() : async [WeatherData] {
 return data;
 };
 public query func getLatestData() : async ?WeatherData {
 if (data.size() == 0) {
 return null;
 };
 return ?data[data.size() - 1];
 };
};
