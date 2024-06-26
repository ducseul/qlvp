USE [tw_qtht]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/18/2023 10:23:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleDescription] [nvarchar](250) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 11/18/2023 10:23:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
	[MaDV] [varchar](6) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 11/18/2023 10:23:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [RoleDescription], [RoleName]) VALUES (1, N'Quản trị', N'QuanTri')
INSERT [dbo].[Role] ([ID], [RoleDescription], [RoleName]) VALUES (2, N'Sở GTVT', N'SOGTVT')
INSERT [dbo].[Role] ([ID], [RoleDescription], [RoleName]) VALUES (3, N'Cơ sở đào tạo', N'CSDT')
INSERT [dbo].[Role] ([ID], [RoleDescription], [RoleName]) VALUES (4, N'Trung tâm sát hạch', N'TTSH')
INSERT [dbo].[Role] ([ID], [RoleDescription], [RoleName]) VALUES (5, N'Văn phòng đăng ký', N'VPDK')
INSERT [dbo].[Role] ([ID], [RoleDescription], [RoleName]) VALUES (6, N'Tra cứu công an', N'CA')
INSERT [dbo].[Role] ([ID], [RoleDescription], [RoleName]) VALUES (9, N'Quản lý vi phạm', N'ViPham')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (1, N'tribh', N'AJq4p0gi+LNuX3LdEE+Vp1TvyofugnARuh2MbVshQikNE8ohaaB4lFkCT2rDE7Ny3Q==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2, N'babt', N'AJak4VLqJWlyF1eaGSeteEhXgBXSl+zBkXPJKCq0xc9H1/bSHyEttqg4hPxZ8qk0/Q==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (1035, N'tcdb', N'AFY+KZpxJbFl5wPlWR5MMnI/Xb74g9mYAdt0Dyu3UhyrRrjD2Z2xNBGqmOfiBZIv5w==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (1038, N'quantri', N'ACz1znve4we0uzL1qJMLErbzsvJ1850Kx+FkIKzyv8VaCrR7RPUit8aLXD4Ob8pm9g==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (1039, N'thaibinh', N'AAl0bmwWDopJaZAtujz6ycnsHq0tD2sBK2B2pDwchwVbxGeWIPIwaPrXCwrqcWOCrw==', N'34')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (1040, N'bacninh', N'ALRAM2ceZ6+5K8I+cFuK2Ht9ge39jHwaY3uhZmUWpYz2MDxtCaDKnMc1wRDHBRMOCA==', N'27')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (1041, N'thanhhoa', N'APYMeJaEZ/ThPsom9YDWc5bjlpr6VQBUb/6DPCZ7buycIGow5G4EecLCYyvIeE0c3w==', N'38')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2041, N'binhdinh', N'ALJ2brVJjVZK77TEQNP3XWXG2Gy79gKEz8diAq8+t+wqxkssMx+B0UZHSgPQ3UHkwA==', N'52')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2042, N'quangngai', N'AOYy04OgsmUC8mtTnWNjsogPSfqzEKNqyTOZ3C09Ho/P49Q8c3G3inE8N2jNVqv5WQ==', N'51')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2043, N'tiengiang', N'APaUD/aZv6Ep0vx9i+odyzpunu1sWgTyHal6VvpZCVeeW1REQFA6QAPNXJXsT5TU/w==', N'82')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2044, N'dongnai', N'ADSF4A4HBkADZXK18JBFrc48vdo0wM4zpm7po02UoyXwO6mC/G/++aOON8/8+xBHXw==', N'75')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2045, N'hanoi', N'AOpmAB+hvBpWX9ZFpGJJQ9YAwrLKbsiEeVLgjRTfUtj2djvb8JLDqFCYd6igyw0AXg==', N'01')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2046, N'haiphong', N'AFNURTCuEL2HHhzdGSgfKrQzGlvZhjygmk0sx+8pIo7eH4w6Vy0nOiLQQJlxErmljA==', N'31')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2047, N'nghean', N'ACId7ZGWjlGvHjeJuQ06VR0QsEHIuVbQt+nMSYvT7Ej21X2VyWyIKBVxe2aTok04fw==', N'40')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2048, N'bacgiang', N'AGjYmhL/0elU8xc4nadTDLf9Ks5tvyeQ3KkByKjV5Nhh0WzaPzTXe+J9f1F/Gc7fag==', N'24')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2049, N'thainguyen', N'AIdpwrZri30zaHH5O9y5360GM7TSmwrd/R09WpEXxxZgete1cMlSr3QhkjSgJkVHMg==', N'19')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2050, N'hungyen', N'ACwDzIAdXLQIf5MoWN7zCLm/lBf6FjspWbhhjWvh5Fj8x/hL1nUX7GWlwXNF1yuPVg==', N'33')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2051, N'daklak', N'ANI37YyX1KE0hdmihYiWIwNDQENL3UFSLHfWoRyvEkWvYD2A7Bfu1rT6sRt8H5yEZg==', N'66')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2052, N'binhduong', N'AMnTZtjv2oFcBD4u9EI2hAC+gBe/WDuQksrRscRC2BUBlDI48wMTPnJWkJzKvdPgqg==', N'74')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2053, N'quangninh', N'ALBaBxx3/WmeyhDx/j0oa9tu3wVUWx5k4iEKQVr8IGlbyAoLGB96uJ1O4JKagEvU7Q==', N'22')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2054, N'vinhphuc', N'AIQMM7HUFxcB22+QHMbty4QcBUSQTaDWGCnb4bdvAb4eehtZS/PYLutlRf7ebw84Mg==', N'26')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2055, N'thuathienhue', N'AJvgwzh9RnyZlNJNaOmnjzC9EKQOtARUK+Gowd+Qus0b0D2U8q7AZKTN8YXhlbDs7Q==', N'46')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2056, N'sgtvthcm', N'AOzQRCKzJbvCS6BlbSa+0NDQpctheOF4cRgrs7uPdUjYzFwoBrAuiqvYdoQbxACGAw==', N'79')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2057, N'angiang', N'AN3Sk55T4A3omIafZqNrMsQ0oDoGwkRhZ01x+4Q4heiAwz+tUstsF09O4O8AdHR0FQ==', N'89')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2058, N'sonla', N'AHw1wk9bokFeaEWfJNlUttsamzgsFMYnG/suGoIxo5eb9CLocMLdkiZ+bd2+D/aPPw==', N'14')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2059, N'phutho', N'AIW0HQCAtyNNHMfeueST76HH50D4RO14YZZGyEpoFrRVn5j+hIqGAn+lglBgP7shQA==', N'25')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2060, N'danang', N'AOLjZ/G0Y/x7paw6572KYNe//V7cylp8Sz9E8M5x4gjjKgW59d/CKcVx0SXpUdAdaw==', N'48')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2061, N'cantho', N'AGRSNP7oIsq0JMelmKCQ2KOcYQK55fIz9vRNVk49KnHqEnfvNzlGgEEy8kZKwPGF1A==', N'92')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2062, N'camau', N'AGM0kLGSCod3WRz39vNA25IXNSDBzCrMqu8ZnfMjy/PeP+FYbnTR2zdSifTC6f/Sig==', N'96')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2063, N'hoabinh', N'ACPDzpncA3HXAy4xPHhedY0l3Xk+JvaLSDyfhc7C9Dp0FIucHJd5GxgqB1ITzxDHDA==', N'17')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2064, N'haiduong', N'AIiFkyO//U55JY0xxO574v+PjYjNaVNmA7wQfMCHSIgopzB1fhDHJw9y7fuxR+pY4Q==', N'30')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2065, N'namdinh', N'AOwI6hv7aoNgKXSknZDn3xmLkNHJT/aJHWbVV27r6Pn7Qw75wF6dyFUDj+dpcgs6aQ==', N'36')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2066, N'bariavungtau', N'AD20RBsMMoPsLmv1XTTM+ufu2MyWKz3/hYpqM93mJXH0ZVrTqfkdV5kWhUE1e5uaFQ==', N'77')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2067, N'vinhlong', N'AD4YlAlmdI7NVkcFbQ1zOhEv0pt8Tg7Q+ES+UNV05qpSmzqSRs2dH4odNuvyqcUMEg==', N'86')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2068, N'yenbai', N'AP5jyhR9ZjhINDR8q6S70utrk+jO/PX1zQQrwUA3R0Hmh3PREGa6VVlAydq5i23tzg==', N'15')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2069, N'ninhbinh', N'AP/OLVkuvl2mv/SCDClWXa9sFw0joeNJez2omWe91ZXndmfE2bI2o8Z+WftGS/pVTg==', N'37')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2070, N'quangbinh', N'AJ7KkGvgFB4EwyBAQh47LreO/mCVZNsYofmqIQU/92QopiWBs9C9A5fUELPMIa8xOA==', N'44')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2071, N'khanhhoa', N'AP+bXeJ+6+JPpi1dmY4W7pGk+fxv+9AkF++fIqre50hP/GTVXu3c4g557toyJyXcwQ==', N'56')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2072, N'lamdong', N'AMWM0hnHvBf2CWxzjCPjDnSsqB9iofw6PZ7bEjCLjV+pQIeYql+fXo6bKiZPP5zP2w==', N'68')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2073, N'binhphuoc', N'AJs2vsoWWpg2S5vbRivZuLHhL02PwhALF1P9INQY6S4uZc3HOdUfPiimwCPfhWd5NA==', N'70')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2074, N'tayninh', N'AKBUPgTMTkuQMZ9VyFVfiSxtwEMvlP9TNKDGnI2LcubEXUUmaSTPxKnfbjzkEzO6JA==', N'72')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2075, N'longan', N'ADb025nnHPXMouLXKWiYOZmB+k54KWR85/VHad67JLBMR7fs+u3HzABFpKXdOnVNIQ==', N'80')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2076, N'bentre', N'AA2Ksi8lO/lmNx5tC94jD/bEiV+AB03Ig1q4Z1yzKyT+Kmns6B0sFA4vUXXH0C6ilw==', N'83')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2077, N'kiengiang', N'AN5bsKOM8rFo4MlCq3crovlyW3uYK5Wykj3j3aPFw7EEAZYGbSHTP6kjmwolxfoH1A==', N'91')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2078, N'langson', N'AKExVDbBMawsDpf2uX22Fu3Jc9OuYC7eLHWNYGm63p24kxI1I7taoCEzbu56GRep2g==', N'20')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2079, N'hagiang', N'AF4Xa+50r1UqyxU6xUwROvA+jXXDIc4aRfgbTPF5woNHQs7cSzLj3uVIxIv1xobUug==', N'02')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2080, N'caobang', N'AAm08QnEJgF+GElH6hqqLT9s5gGKgpgthSUWg4uJguxYI/VMLyOkh7QOAG49opv+0g==', N'04')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2081, N'backan', N'AL6InB+A3ED/4yGPhMowetqQ6dLoojz0aW15eRx6fo3/Wq5cRDIK1q/2iiaA9mam4Q==', N'06')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2082, N'tuyenquang', N'AMtZYQ3OhBls584yIGs294eBuCi6N0pYTwKpQ21opK2i5/GuPZi/US8T5yfIUvgxvA==', N'08')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2083, N'laocai', N'AEgaCA5236KFm+hfHByka7Pa6F0OAapxIMxpX030OaixVJrRBnezTqAlkdMes9d4Cg==', N'10')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2084, N'dienbien', N'ADD0ROieunpPteQTuaJf2Oq9kqpIWL5Pj8dwjE5Cis0gub/Ov8IpE4DArqYtDiiKYA==', N'11')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2085, N'laichau', N'AL1KUlAGpUXr2wohO8tvjxZgMlh9EeZXzZcKqIfzL9XqYxiKwUcMUxyzYiWjeoQEYA==', N'12')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2086, N'hanam', N'ACReSFFappZvlI2M81OIcXoZB09NxHtKQAda+jXg4iAfPKoUFcI4PFCB8gFHRQbt6A==', N'35')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2087, N'hatinh', N'AKgUWlEKaX4L39ZhyW8cCU6n7VlKWpt82knIGe9Zz/qp4YhgWwTdfb96Yq5bui3rvg==', N'42')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2088, N'quangtri', N'AI5yeudv5DHeln3YhjltJhpqb2ITNAVm6jsqYaSwKFTgVU8Jpx0WELG23KXJyUjMuA==', N'45')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2089, N'quangnam', N'ALQASnSJUQ90IFCwBJ2NG/wh1vlYt+mcJn0XDbJlQnmAaQE+xleTgHvsjzNkRTP20w==', N'49')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2090, N'phuyen', N'ADffdbMFRJnvOxa9S7zbh8MBzE0Q8fA3tLOBEruTh9TMS56NxDZXxbgKwRfqqK/zyg==', N'54')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2091, N'ninhthuan', N'AH9oX0wBhQSo4yWHiWkKnQ7sK84kjlFOis3TGp5SipXuurVTpFQnj7QVPDwU5ORdpg==', N'58')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2092, N'binhthuan', N'ABaBjeue/u4VOQyIXGHP8lm6YTyj7hpAh8GensgpN5dS2GolPUGAJEfkAQXeA3gWwg==', N'60')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2093, N'kontum', N'AD350sF89mVnZLy+722w1ofKLfPCvDYNSsa4tKfcNuvwUpn54MEujdZAnl+wF3m4Lw==', N'62')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2094, N'gialai', N'ADtqlHQPJo4vygPXlpnPdVyQ9OnaM+hY+muuRtXRW777kIKWacVb8kZhokGvTNgNsQ==', N'64')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2095, N'daknong', N'AHobSD2WcQRDaUwHmaXgRRQT/2I5eUkn1djWycc/l8IEG/Dn0xivRaYQ2rRy8x3KUg==', N'67')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2096, N'travinh', N'APOgc7prjKfCEoaX/eGo0M0N9y7oCkQOPrvgApc7K6U3H3wRJtQ0iYmvoZ8mwSUZcQ==', N'84')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2097, N'dongthap', N'AMS5dvuot651+XV8SKyCD6TXDhFldHZ1yJYKRnMcq+cORQJdaGD88btY7pwQrw/6AA==', N'87')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2098, N'haugiang', N'AOA7cz0OPwbERq/hFOrelLN1P9+wyG5KiR4EoJ+abfDaRWJuiiP1gowEgEIiaUmS8Q==', N'93')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2099, N'soctrang', N'AESFSk0+KtRhunaABCDTqtjuDveec3frFEwxSSMqPZ03x0oFNb88MUSMJLh54WhGrA==', N'94')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2100, N'baclieu', N'ABXN4ObswruOinZ+onAU+Y/AVYDyM89c4e+P4UnheKKK4z1f+bSe+E/m6+n9ncOF6Q==', N'95')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2102, N'huyennv', N'AKrnZ8rlPuSK248LdcA3CBo2SzVKl4ioPgijQAJuk8OewIT9e7ERB8YNO0tX0+Hj0A==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2104, N'ptnl402', N'AMTjKZxEap3oEo64DXD6qs8XSWwpEs/LyaGeDw6RymCdED3MWWBlxjsV9EhYCXNISQ==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2105, N'test_qti', N'AI0rfG6Mcxsl9ZyJhxKMUZ13QKCLlJqnUU3K0ZmiZjJCNItGJFzvcvEdn4uyJmxKjA==', N'45')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2106, N'nganptnl', N'ALPtvet7U37H6JudRz9wLMv1W2tO9ACb7gqwrAuAXGMNRPFs73M5Xa9+oK5A53OpMg==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2107, N'trongnd', N'AAoqPUWL+v1b3gpcji3GtDhZHu19ifvcZmvJtntPC0HdPRHfiEgitBHf3BdoZKv6Ew==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2108, N'test', N'AAgN8aeesOKrz1BQhl2OcegXBFxPueZ4BbnSZfG4qOgASoRgPtSDXFdvdA1w5R6gdg==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2109, N'danang_support', N'AFHiAPUB0NBvTkHLFe1voFBFQg5Hr8klwBW66AOA19jjzyo9jsTo+PTJz1TMcQwWmA==', N'48')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2110, N'PC08', N'AL6IS55TrcNH9XUmUanT1Up9VlqGT1QhIb5e5JfrDRVect1pYYNhDm89PgBdBlvKdQ==', N'99')
INSERT [dbo].[User] ([ID], [UserName], [Password], [MaDV]) VALUES (2111, N'linhtt', N'APNkcdwelXh3oZekAstQlTpcNFPS9NrtwMHVsujNC206FHMalHKa1xyrQLgFeseuaQ==', N'99')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2038, 2, 2060)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2082, 2, 2102)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2088, 2, 2104)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2090, 2, 2106)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2091, 2, 2107)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2092, 1, 1038)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2093, 2, 1038)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2094, 3, 1038)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2095, 4, 1038)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2096, 5, 1038)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2097, 6, 1038)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2098, 9, 1038)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2099, 2, 1035)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2100, 9, 1035)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2101, 1, 1)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2102, 2, 1)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2103, 3, 1)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2104, 4, 1)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2105, 5, 1)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2106, 6, 1)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2107, 9, 1)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2108, 2, 2057)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2109, 9, 2057)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2110, 2, 2048)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2111, 9, 2048)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2112, 2, 2081)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2113, 9, 2081)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2114, 2, 2100)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2115, 9, 2100)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2116, 2, 1040)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2117, 9, 1040)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2118, 2, 2066)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2119, 9, 2066)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2120, 2, 2076)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2121, 9, 2076)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2122, 2, 2041)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2123, 9, 2041)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2124, 2, 2052)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2125, 9, 2052)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2126, 2, 2073)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2127, 9, 2073)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2128, 2, 2092)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2129, 9, 2092)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2130, 2, 2062)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2131, 9, 2062)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2132, 2, 2061)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2133, 9, 2061)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2134, 2, 2080)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2135, 9, 2080)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2136, 2, 2051)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2137, 9, 2051)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2138, 2, 2095)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2139, 9, 2095)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2140, 2, 2084)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2141, 9, 2084)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2142, 2, 2044)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2143, 9, 2044)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2144, 2, 2097)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2145, 9, 2097)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2146, 2, 2094)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2147, 9, 2094)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2148, 2, 2079)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2149, 9, 2079)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2150, 2, 2064)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2151, 9, 2064)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2152, 2, 2046)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2153, 9, 2046)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2154, 2, 2086)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2155, 9, 2086)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2156, 2, 2045)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2157, 9, 2045)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2158, 2, 2087)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2159, 9, 2087)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2160, 2, 2098)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2161, 9, 2098)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2162, 2, 2063)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2163, 9, 2063)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2164, 2, 2050)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2165, 9, 2050)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2166, 2, 2071)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2167, 9, 2071)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2168, 2, 2077)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2169, 9, 2077)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2170, 2, 2093)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2171, 9, 2093)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2172, 2, 2085)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2173, 9, 2085)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2174, 2, 2072)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2175, 9, 2072)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2176, 2, 2083)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2177, 9, 2083)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2178, 2, 2078)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2179, 9, 2078)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2180, 2, 2075)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2181, 9, 2075)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2182, 2, 2065)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2183, 9, 2065)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2184, 2, 2047)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2185, 9, 2047)
GO
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2186, 2, 2069)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2187, 9, 2069)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2188, 2, 2091)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2189, 9, 2091)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2190, 2, 2059)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2191, 9, 2059)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2192, 2, 2090)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2193, 9, 2090)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2194, 2, 2070)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2195, 9, 2070)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2196, 2, 2074)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2197, 9, 2074)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2198, 2, 2058)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2199, 9, 2058)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2200, 2, 2099)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2201, 9, 2099)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2202, 2, 2056)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2203, 9, 2056)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2204, 2, 2088)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2205, 9, 2088)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2206, 2, 2053)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2207, 9, 2053)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2208, 2, 2042)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2209, 9, 2042)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2210, 2, 2089)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2211, 9, 2089)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2212, 2, 2082)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2213, 9, 2082)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2214, 2, 2096)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2215, 9, 2096)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2216, 2, 2043)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2217, 9, 2043)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2218, 2, 2055)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2219, 9, 2055)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2220, 2, 1041)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2221, 9, 1041)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2222, 2, 2049)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2223, 9, 2049)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2224, 2, 1039)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2225, 9, 1039)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2226, 2, 2067)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2227, 9, 2067)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2228, 2, 2054)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2229, 9, 2054)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2230, 2, 2068)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2231, 9, 2068)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2232, 9, 2108)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2233, 2, 2109)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2234, 6, 2110)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2235, 2, 2111)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2236, 3, 2111)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2237, 4, 2111)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2238, 5, 2111)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2239, 6, 2111)
INSERT [dbo].[UserRole] ([ID], [RoleId], [UserId]) VALUES (2240, 9, 2111)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
