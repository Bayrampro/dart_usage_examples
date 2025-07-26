void main() {
  final executor = CommandExecutor();

  executor.add(PrintCommand("Привет"));
  executor.add(PrintCommand("Flutter рулит"));
  executor.add(PrintCommand("Design Patterns — мощь!"));

  executor.run();
}

abstract class Command {
  void execute();
}

class PrintCommand extends Command {
  final String message;

  PrintCommand(this.message);

  @override
  void execute() {
    print(message);
  }
}

class CommandExecutor {
  final List<Command> _commands = [];

  void add(Command command) {
    _commands.add(command);
  }

  void run() {
    for (var c in _commands) {
      c.execute();
    }
    _commands.clear();
  }
}
