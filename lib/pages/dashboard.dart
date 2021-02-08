import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final int navBarIndex;

  DashboardPage({
    Key key,
    this.navBarIndex,
  }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentBottomNavBarIndex;
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Download books"),
              Tab(text: "Read books"),
              Tab(text: "Upload books"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DownloadBooks(),
            ReadBooks(),
            UploadBooks(),
          ],
        ),
      ),
    );
  }
}

class DownloadBooks extends StatelessWidget {
  const DownloadBooks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              keyboardType: TextInputType.name,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Book Name ',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w800),
                        children: [
                          TextSpan(
                            text: 'Book 001',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Zone ',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w800),
                        children: [
                          TextSpan(
                              text: 'Zone 001',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Sub zone ',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w800),
                            children: [
                              TextSpan(
                                text: 'Sub zone 001',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(40),
                          child: Icon(Icons.download_rounded),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Book Name ',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w800),
                        children: [
                          TextSpan(
                            text: 'Book 001',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Zone ',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w800),
                        children: [
                          TextSpan(
                              text: 'Zone 001',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Sub zone ',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w800),
                            children: [
                              TextSpan(
                                text: 'Sub zone 001',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(40),
                          child: Icon(Icons.download_rounded),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Book Name ',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w800),
                        children: [
                          TextSpan(
                            text: 'Book 001',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Zone ',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w800),
                        children: [
                          TextSpan(
                              text: 'Zone 001',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Sub zone ',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w800),
                            children: [
                              TextSpan(
                                text: 'Sub zone 001',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(40),
                          child: Icon(Icons.download_rounded),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReadBooks extends StatelessWidget {
  const ReadBooks({Key key}) : super(key: key);

  myRichText(String title, String subTitle, BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: TextStyle(
            color: Theme.of(context).primaryColor, fontWeight: FontWeight.w800),
        children: [
          TextSpan(
            text: subTitle,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              keyboardType: TextInputType.name,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Theme.of(context).primaryColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myRichText("Book Name: ", "Book 001", context),
                    myRichText("Zone: ", "Zone 001", context),
                    myRichText("Sub Zone: ", "Sub Zone 001", context),
                    myRichText("Accounts in Book: ", "100", context),
                    myRichText("Accounts read: ", "2", context),
                    myRichText("Accounts not read: ", "10", context),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        myRichText("Accounts No: ", "010001", context),
                        Spacer(),
                        myRichText("Name: ", "Joseph", context),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        myRichText("Meter No: ", "010001", context),
                        Spacer(),
                        myRichText("prev reading: ", "Joseph", context),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        myRichText("Accounts No: ", "010001", context),
                        Spacer(),
                        myRichText("Name: ", "Joseph", context),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        myRichText("Meter No: ", "010001", context),
                        Spacer(),
                        myRichText("prev reading: ", "Joseph", context),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        myRichText("Accounts No: ", "010001", context),
                        Spacer(),
                        myRichText("Name: ", "Joseph", context),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        myRichText("Meter No: ", "010001", context),
                        Spacer(),
                        myRichText("prev reading: ", "Joseph", context),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UploadBooks extends StatelessWidget {
  const UploadBooks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Account 010001",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Account Name: Joseph",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: "Current reading",
                          hintStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          labelText: "Meter Number",
                          hintStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          labelText: "Mobile Number",
                          hintStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("save"),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
