USE [CdWaddell]
GO
SET IDENTITY_INSERT [dbo].[ApiResources] ON 

INSERT [dbo].[ApiResources] ([Id], [Description], [DisplayName], [Enabled], [Name]) VALUES (1, NULL, N'Blog Swagger', 1, N'Blog')
SET IDENTITY_INSERT [dbo].[ApiResources] OFF
SET IDENTITY_INSERT [dbo].[ApiClaims] ON 

INSERT [dbo].[ApiClaims] ([Id], [ApiResourceId], [Type]) VALUES (1, 1, N'Blog.Public')
SET IDENTITY_INSERT [dbo].[ApiClaims] OFF
SET IDENTITY_INSERT [dbo].[ApiScopes] ON 

INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (1, 1, NULL, N'Blog.Public', 0, N'Blog.Public', 0, 1)
INSERT [dbo].[ApiScopes] ([Id], [ApiResourceId], [Description], [DisplayName], [Emphasize], [Name], [Required], [ShowInDiscoveryDocument]) VALUES (2, 1, NULL, N'Blog.Admin', 0, N'Blog.Admin', 0, 1)
SET IDENTITY_INSERT [dbo].[ApiScopes] OFF
SET IDENTITY_INSERT [dbo].[ApiSecrets] ON 

INSERT [dbo].[ApiSecrets] ([Id], [ApiResourceId], [Description], [Expiration], [Type], [Value]) VALUES (1, 1, NULL, NULL, N'SharedSecret', N'QJXhvxYLQ4uYMt0e2qr+pJYsGMU3tDhGH9v+s21siC0=')
SET IDENTITY_INSERT [dbo].[ApiSecrets] OFF
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'0D7CF085-82DC-4E8E-B009-4B19AE4390C7', N'F210AB77-B388-43AD-A29A-46B53C257E9F', N'SuperAdmin', N'SUPERADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'EAACC141-1E4A-4390-A8F2-E8D56FB03937', N'774F555A-5ACD-4E42-874E-899583EAC0E6', N'Admin', N'ADMIN')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'098de111-b4ec-4830-acb7-f102f772509f', 0, N'8079335b-cb35-4131-b7c4-0706e91f0d04', N'cdwaddell@gmail.com', 0, 1, NULL, N'CDWADDELL@GMAIL.COM', N'CDWADDELL@GMAIL.COM', N'AQAAAAEAACcQAAAAEEZyK/PZHUUUwhtEqYWrXMyu/Uz9ft0fJfjg6tal2zoAXdHZ4BYcjq4fRC0smJQLXg==', NULL, 0, N'2143bdb6-1668-4041-830f-341b1a388f64', 0, N'cdwaddell@gmail.com')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'098de111-b4ec-4830-acb7-f102f772509f', N'0D7CF085-82DC-4E8E-B009-4B19AE4390C7')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'098de111-b4ec-4830-acb7-f102f772509f', N'EAACC141-1E4A-4390-A8F2-E8D56FB03937')
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [AbsoluteRefreshTokenLifetime], [AccessTokenLifetime], [AccessTokenType], [AllowAccessTokensViaBrowser], [AllowOfflineAccess], [AllowPlainTextPkce], [AllowRememberConsent], [AlwaysIncludeUserClaimsInIdToken], [AlwaysSendClientClaims], [AuthorizationCodeLifetime], [BackChannelLogoutSessionRequired], [BackChannelLogoutUri], [ClientClaimsPrefix], [ClientId], [ClientName], [ClientUri], [ConsentLifetime], [Description], [EnableLocalLogin], [Enabled], [FrontChannelLogoutSessionRequired], [FrontChannelLogoutUri], [IdentityTokenLifetime], [IncludeJwtId], [LogoUri], [PairWiseSubjectSalt], [ProtocolType], [RefreshTokenExpiration], [RefreshTokenUsage], [RequireClientSecret], [RequireConsent], [RequirePkce], [SlidingRefreshTokenLifetime], [UpdateAccessTokenClaimsOnRefresh]) VALUES (1, 2592000, 3600, 0, 1, 0, 0, 1, 0, 0, 300, 1, NULL, N'client_', N'Blog Swagger', N'Blog', N'http://localhost:53556', NULL, NULL, 1, 1, 1, NULL, 300, 0, NULL, NULL, N'oidc', 1, 1, 0, 0, 0, 1296000, 0)
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] ON 

INSERT [dbo].[ClientGrantTypes] ([Id], [ClientId], [GrantType]) VALUES (2, 1, N'implicit')
SET IDENTITY_INSERT [dbo].[ClientGrantTypes] OFF
SET IDENTITY_INSERT [dbo].[ClientRedirectUris] ON 

INSERT [dbo].[ClientRedirectUris] ([Id], [ClientId], [RedirectUri]) VALUES (2, 1, N'http://localhost:58692/swagger/ui/oauth2-redirect.html')
SET IDENTITY_INSERT [dbo].[ClientRedirectUris] OFF
SET IDENTITY_INSERT [dbo].[ClientScopes] ON 

INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (1, 1, N'Blog Swagger')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (2, 1, N'Blog.Public')
INSERT [dbo].[ClientScopes] ([Id], [ClientId], [Scope]) VALUES (3, 1, N'Blog.Admin')
SET IDENTITY_INSERT [dbo].[ClientScopes] OFF
SET IDENTITY_INSERT [dbo].[ClientSecrets] ON 

INSERT [dbo].[ClientSecrets] ([Id], [ClientId], [Description], [Expiration], [Type], [Value]) VALUES (1, 1, NULL, NULL, N'SharedSecret', N'QJXhvxYLQ4uYMt0e2qr+pJYsGMU3tDhGH9v+s21siC0=')
SET IDENTITY_INSERT [dbo].[ClientSecrets] OFF
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180324195249_Initial', N'2.0.1-rtm-125')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180324230516_security', N'2.0.1-rtm-125')
