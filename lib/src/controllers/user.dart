import 'package:vaden/vaden.dart';

@Repository()
class UserRepository {
  List<String> findAllUsers() => ['Alice', 'Bob'];
}

@Api(tag: 'User', description: 'User Controller')
@Controller('/users')
class UserController {
  final UserRepository repository = UserRepository();

  @Get('/all')
  List<String> getAll() => repository.findAllUsers();
}
