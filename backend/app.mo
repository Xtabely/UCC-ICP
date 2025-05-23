persistent actor HelloWorld {
  // We store the greeting in a stable variable such that it gets persisted over canister upgrades.
  var greeting : Text = "Hello, ";

  // This update method stores the greeting prefix in stable memory.
  public func setGreeting(prefix : Text) : async () {
    greeting := prefix;
  };

  // This query method returns the currently persisted greeting with the given name.
  public query func greet(name : Text) : async Text {
    return greeting # name # "!";
  };
};
import Debug "mo:base/Debug";
import Float "mo:base/Float";
persistent actor Project{
  // Decentralized Banking System
  // CheckBalance, TopUp, WithDraw
  // CheckBalance
  stable var balance : Float = 100;
  public func checkBalance(): async Text{
    return "Your Balance is :" # Float.toText(balance);
  };

  // TopUp Function
  public func topUp(amount : Float): async Text{
    balance := balance + amount;
    return "An amount :" # Float.toText(amount) # "added";
  };

  // WithDraw
  public func withDraw(amount : Float): async Text{
    balance := balance - amount;
    return "An amount :" # Float.toText(amount) # "added";
  };
};