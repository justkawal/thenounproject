part of thenounproject;

typedef CredentialsRefreshedCallback = void Function(oauth2.Credentials);

class _TNPAuth {
  Future<oauth2.Client?> authenticateFromKeys(
      String identifier, String secret) async {
    return await oauth2.clientCredentialsGrant(_mainSite, identifier, secret);
  }

  oauth2.Client? authenticateFromCredentials(
    String credentialsJson, {
    CredentialsRefreshedCallback? onCredentialsRefreshed,
  }) {
    /// got the credentials here
    var credentials = oauth2.Credentials.fromJson(credentialsJson);

    return oauth2.Client(credentials,
        onCredentialsRefreshed: onCredentialsRefreshed);
  }
}
