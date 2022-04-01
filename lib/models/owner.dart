class Owner {
  String? avatarUrl;
  String? login;

  Owner({this.avatarUrl, this.login});

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        avatarUrl: json['avatar_url'] as String?,
        login: json['login'] as String?,
      );
}
