import 'package:flutter/material.dart';
import 'consts.dart';
import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with _WidthUtility, _HeigthUtility {
  final String _hintTitle = "e-posta";
  final String _labelTitle = "deneme";
  final String _titleWelcome = "Welcome,";
  final String _titleGladToSeeYou = "Glad to see yo!";
  final String _titleForgetPassword = "forget password";
  final String _titleLogin = "Login";
  final String _titleBottom = "data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: ProjectPadding.projectPadding,
          child: ListView(
            children: [
              Text(_titleWelcome, style: Theme.of(context).textTheme.headline4),
              Text(
                _titleGladToSeeYou,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.grey[500]),
              ),
              Padding(
                padding: ProjectPadding.projectNormalTopPadding,
                child: _MyTextField(
                    hintTitle: _hintTitle, labelTitle: _labelTitle),
              ),
              _MyTextField(hintTitle: _hintTitle, labelTitle: _labelTitle),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    _titleForgetPassword,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
              MyInkwellWidget(
                ontap: (){
                  //Navigator.push(context, MaterialPageRoute(builder:(context) => MainPage()) );
                  pustToRoute(context: context);
                },
                width: largeWidth,
                heigth: normalHeigth,
                child: Text(_titleLogin,style: Theme.of(context).textTheme.headline6,),
              ),
              Padding(
                padding: ProjectPadding.ProjectLargeTopPadding,
                child: buildLoginWithWidget(context: context),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyInkwellWidget(width: ProjectWidth.containerSmallWidth3x, heigth: ProjectHeight.containerSmallHeigth, ontap: () {  },
                  child: const Icon(Icons.alternate_email_rounded)),
                  MyInkwellWidget(width: ProjectWidth.containerSmallWidth3x, heigth: ProjectHeight.containerSmallHeigth, ontap: () {  },
                  child: const Icon(Icons.alternate_email_rounded)),
                ],
              ),
              const Spacer(),
              Text(_titleBottom,style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
  pustToRoute({required BuildContext context}){
    Navigator.push(context, MaterialPageRoute(builder:(context) => const MainPage()) );
  }

  Row buildLoginWithWidget({required BuildContext context}) {
    const String title = "Login with";
    return Row(
              children: [
                const SizedBox(
                  width: 147,
                  child: Divider(color: Colors.white,height: 5,thickness: 1),
                ),
                Text(title,style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.white),),
                const SizedBox(
                  width: 147,
                  child: Divider(color: Colors.white,height: 5,thickness: 1),
                ),
              ],
            );
  }
}

class MyInkwellWidget extends StatelessWidget {
  const MyInkwellWidget({
    super.key,
    required this.width,
    required this.heigth,
    required this.child, required this.ontap,
  });

  final double width;
  final double heigth;
  final Widget child;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: ProjectRadius.normalBorderRadius,
        ),
        width: width,
        height: heigth,
        child: Center(child: child),
      ),
    );
  }
}

class _WidthUtility {
  final double largeWidth = double.infinity;
}

class _HeigthUtility {
  final double normalHeigth = 60;
}

class _MyTextField extends StatelessWidget {
  const _MyTextField({
    required String hintTitle,
    required String labelTitle,
  })  : _hintTitle = hintTitle,
        _labelTitle = labelTitle;

  final String _hintTitle;
  final String _labelTitle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: const [AutofillHints.email],
      //keyboardType: TextInputType.text,
      textAlign: TextAlign.center,
      textInputAction: TextInputAction.next,
      maxLength: 20,
      maxLines: 1,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        hintText: _hintTitle,
        border: const OutlineInputBorder(
          borderRadius: ProjectRadius.normalBorderRadius,
        ),
        labelText: _labelTitle,
        filled: true,
        fillColor: Colors.grey,
      ),
    );
  }
}
