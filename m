Delivery-date: Thu, 04 Mar 2021 17:43:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHr4h-0001Wc-3N
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 17:43:43 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHr4f-00049N-Ub
	for lore@pengutronix.de; Thu, 04 Mar 2021 17:43:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zPsPws78kfBtLFk3L5yPXEAD5nT+odoaaATMKBGrfHo=; b=C1m5JfBJLSI5I/3P1WydsVOVx
	U5msOPeGZFRdOPMeD6VqqvjosGZ21h7Gk15LdxS/vC5Kv9OQgRbrBCXcVEk7GYdu/jF5KGT95+aNh
	3RmWdWj0kDAqOQ0rBnudkfc+YBoz7CyF2mKxKacjkzMXUX/UxR2IWuKjok7JfwdJcTMwnI7ZW2VDe
	nIR2RHfy7b6eJQOzDlQw800rfx03XnOfeVcBoImhjsTESrGpYD0wkuktAT01+LebC2Tqm++EMFJZi
	oGXgxYgQqUKvIhSJnS8P7Eew+VR8O164C5Raq1K+I8pCjfF8F0dviDEwfnFmA5/ZsM+Swq/9dhO8W
	xTI+UrOpg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHr33-009Iyd-I5; Thu, 04 Mar 2021 16:42:01 +0000
Received: from mail-dm6nam12on2097.outbound.protection.outlook.com
 ([40.107.243.97] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHr2r-009IxJ-SA
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 16:41:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y2FG2ElrOBCcmAom/QMQJzN8sk4RA/ScwUHsp+9gkfSw/dxB1SVTBZ1nnMAIl1qr4snbtw2baSuEe8puGWk9/jOYGJpaDqGPeeO1Z4WawdG9Ugd0v47/1QjY+017Jvx0PQLHV6hDmww6HTWxRnByGRmqyxNSKNXLNIxcylW//cDCGe3RhsXvfBjJNk48g7L3E1ec15rCKUGr+wU1zPc6dAOJkdU9kaChZ1r2auubqS+vN/H7DgiRJVUPVYn9eQ70LDuuvjqDPR7GpLb/o6H01MMNVX7rD/27RJjRwG7ay2rV4izIyKyvRW9lTCXK9E20k+5eS7Io60XSiltrMqcFJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xWw45YtoQMPMnmCPuztpUCJ/YNNXmE0kp+4g6xz8wPs=;
 b=TYxRe6JexhQaWBSUeyql+DVXql7tSlQB3F0dFGyXOTMYpVtbSPTCz7JKw9/HrZA5/h8O4awil1Tbli995q1uKnaN/iwAjX6FhrdXiBNnXE9NwQGV1CpH9mLS3xIAmaO3vk7pHFd4QijX/d/PKuUDsKkh5we4YpNADrBqwHkDz5CM2+4ui1geW8m2R7PAjyPa4+8ZgmsE/e5cedLHw1xQgSV/d6JBFjolb+7gU5GbRJQRN3VfNy2k6APV8FWcZEgSYxVUspWUfrc8vFMkOsB37yNmr51U7A/Wixe2kERMWcgf285VsVFb8foQcTN3wYKHUjvboPyCba1+Cb5JNVnlCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xWw45YtoQMPMnmCPuztpUCJ/YNNXmE0kp+4g6xz8wPs=;
 b=YR+IkggsYDDTfUm0zwq7wE7mHuUXs5446S8D54OfPJgu7NAXs6TMclN7WcXk1XKQHlPKuN/nhbbkOO/oSlStTtuhA9oIU22ps9C8svLwTGOOyOEIGqYbztijermS5++/qoYR492vbDPf3FA308kiOd6QJCWJ0NTw7hPGLopdqFo3nvAS34KKr2OIwHchq/VtYtv2PUmvWfJkbxQU+cVcyHswyX+1CEdTMeeCTRGvotGTSZCmc9QDyL4ZSv7l1vsl2xdgPyTj76NNjbPNJVdvRR1ZphreDh7fk/MCWaiCY6S+v5MyltaZ9j5Z8CiYIt4rGJ+Yev5jh7+2XbfOpo9iMA==
Received: from MN2PR16MB3135.namprd16.prod.outlook.com (2603:10b6:208:153::31)
 by MN2PR16MB3359.namprd16.prod.outlook.com (2603:10b6:208:13d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.28; Thu, 4 Mar
 2021 16:41:46 +0000
Received: from MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::c5a8:5a36:6b4d:afdb]) by MN2PR16MB3135.namprd16.prod.outlook.com
 ([fe80::c5a8:5a36:6b4d:afdb%7]) with mapi id 15.20.3912.021; Thu, 4 Mar 2021
 16:41:46 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>
Thread-Topic: Uart set up in PBL
Thread-Index: AdcQ6WFSwU4Pyw2qQAu4RKrRueL1NAADNYyAAAZEWbA=
Date: Thu, 4 Mar 2021 16:41:46 +0000
Message-ID: <MN2PR16MB3135FD27767D80F4FB9FB44A91979@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
 <092dbc44-2081-ef3b-0fd7-25d1b9da72d3@pengutronix.de>
In-Reply-To: <092dbc44-2081-ef3b-0fd7-25d1b9da72d3@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=abaco.com;
x-originating-ip: [205.182.146.17]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 044a6f15-9322-46d5-5148-08d8df2c669b
x-ms-traffictypediagnostic: MN2PR16MB3359:
x-microsoft-antispam-prvs: <MN2PR16MB33590D72EB07EAF602D5A05491979@MN2PR16MB3359.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nr55S8ZfCkd0TragL87DU+p+se2WHXpE4MlScprIzilbkxeNe3lVcRfbCrZW/SZe9j+JkAJqmjjdPuxV2HC6twe2zM2rJiWhWAs03NEb0XxnTq058rqOW/w0l3q2U0xX38wM39Mr9D81Roxao4xtls85HKWhnJIJbOMGUf3h0Aa8/DtLjLJB59aPQgnp93dtu+L+uFK0InDXZYOIScHYOUVsWUWlbLdI2m3J3iaOFNvtx4KF+r+STkAaiZuQEI5d47i6pd229iTk7zxlqFFC7u7wERpyRZaKW71LA9rZNYtTvPdLAYgZeTZxmwN0rgCE6Y/IIPrDi17JQsdLZm6ck7oyIQYeccTDh+BVH6+u8sv2PFgyELnyN97x0sMaiqa8nxSyLBMKjgfPL0eNd5llLYkxLuwK0K1i+wtz1C7eFMcAhQp1NPzK0YpmaQKFCCBtWZ8Raib4W+a3uh/BFnV5H3uKvKdtBKaUlNM5U+v/iR/P0jTTGZfaKCNz/jQQjcNuM5ArN0dghq5FssOXsV6fsoKQ0I0Ksb8wS/TbhhL4tEYKM2oTe85I1qSTrBoh9VXZ/WgwLpfXMGs2MTHt7RGvU/MO1lF40RACvmLbTPfIx8I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR16MB3135.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(376002)(136003)(366004)(39850400004)(26005)(66446008)(33656002)(316002)(9686003)(52536014)(66556008)(6506007)(5660300002)(7696005)(64756008)(76116006)(66476007)(86362001)(966005)(55016002)(186003)(8936002)(45080400002)(71200400001)(66946007)(478600001)(110136005)(2906002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?wUS+Q9LTo+mdsMrlew0YBcvkdTbUipAo3wYdbvbsIUgv2Di3uHqnZjS5VClh?=
 =?us-ascii?Q?nLIbz23RkLY2LNhdZmaD0DwBbleX9PNSruCxpupV6BRuqAZPTm6FJuUh5ne5?=
 =?us-ascii?Q?ycASt75s/gP0l4qv/eXC5IUwhAY3w8EqxSEKXZ4+zIGElRg6wonse1fdLaKK?=
 =?us-ascii?Q?9ii0hmbkbwTCdCcprIPPHQcBMbcSueus7pOKyVtOnUJqb0RAiVErUSjtRMz0?=
 =?us-ascii?Q?UiJyggXe384JwyyM35390lY0YTI5fVT1Al+Ex4u6UKdM2nRCPO8ZXhe4buy0?=
 =?us-ascii?Q?ruEF2vzQ4+BI9rf4SQDJKJeVspZIC46fMw6w0Do/Q9N3grFmpsbElGO1f6q4?=
 =?us-ascii?Q?ibXeBWpuN9krmS3ka9t0Ri6kSYTkyw0INB9uvBE+fonsRfxnEYWr2MFxx8r7?=
 =?us-ascii?Q?80IyJ7PWuYKjUC7K4IEELf4umCUfSmvCtc245St/AiQT03u281uyU2CXebVg?=
 =?us-ascii?Q?9FxvPOhGd6BvY1rRg1jDoHUiXLsRi7tIwYDdGUpi4otuJsKif1Z1TM95z9Kv?=
 =?us-ascii?Q?dgpiuB1ehD7dxzOHA71OzjkYJQG9lfod8qPtZ2O7pI7aTgEGaMC+09hQb8nP?=
 =?us-ascii?Q?GmZsWfAWsS4ASdVQiVwEpluFT1wHOKq8JUF5funjc58Wol4rUrZROr4/u0Le?=
 =?us-ascii?Q?WIVAI8QCQnXViZzJIV8ezVmrDxqMDynCjkPk4kqo+NHm6Yk+ET8UXc0MMJcq?=
 =?us-ascii?Q?DJarQkxeicXjrxwlGu0kXWEG7oqd74UY51LskgsXZb+ZjH/oKH9hzXPzKkNd?=
 =?us-ascii?Q?AKggKllPjO+4LHkWkxQ0XZGOsxFOnm8Dkoij6oa6ecm1iJuvgAIUcsQwPfgm?=
 =?us-ascii?Q?Eh83QmwADwQWApO3hWcgzd8Rg8eEp9+lYhpKnKauRdDx8abwz9gWj3wNh+9H?=
 =?us-ascii?Q?98RG/LGqIhwzEB9BvFltBsfYT9SHDBcVzaZ0HXa1iAsqplhPze+yIT2cdqoo?=
 =?us-ascii?Q?d42/O8O29FZbYGDAT0G8Bu0wR65iEeuhPQYD+Gc4T6cxcvF0++eIml62fYSq?=
 =?us-ascii?Q?9pvcmDp7UCXqHdyRvuHuHUwqv7l1vfWZyKHoI4F3z3sCszQDQyxjn0DYZLQ7?=
 =?us-ascii?Q?VbuQnyg2Nq+RGeUJp994Y5h26+IdLG4ut4uAfrMc8JltA0h8c4OMCJspMQTK?=
 =?us-ascii?Q?89UWfQpZ9KdIG8QDg5kNz4KwOtS1f8bNnlcY/G1yCOjnb/Ud1Izroa/13M27?=
 =?us-ascii?Q?6m/XJet0O2M5B7pW4V8uM3jfd07oxqe/buLEtsEx/QaTmNR8iEqMq7Hp2KFk?=
 =?us-ascii?Q?jN5t/zFyzJXx/DfNJDHld/d/YLeHIiGEVRdAxnlNhHLSVtKhZGHi31kd3EUU?=
 =?us-ascii?Q?tB/EOBJoSRdbvyPTYdwJS9uN?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3135.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 044a6f15-9322-46d5-5148-08d8df2c669b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2021 16:41:46.4845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UufeDaP1cJxSOL4gl6dZ+d+CtQNP07wNFHc5gY3gvvzLcEfberd+v8i42v2Dv3mX+pfC05WeHPbbXHXe/AZ/rQUgkOyDnqI/d4fsIabs0FI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3359
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: RE: Uart set up in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



> > Would it possible from the PBL to read the "baudrate" variable from the
> environment?
> 
> Normally, you would want to avoid doing anything, but the
> bare minimum from PBL. Does the baudrate device parameter
> work for you?
> 
[Barbier, Renaud] 
Just to give you a bit more context. In our platform ARM (all non-pbl) or PPC, we add a call to do a PBIT memory test before starting barebox. The uart is initialized just before that at a fixed baud rate of  9600 bauds. Now we have a requirement to support more than one baud rate configurable by the user. And our next ARM based board is going to have a PBL.

Are you saying that from the PBL, I can do something like baud=getenv("baudrate") to get the environment variable value. This would require to have /dev/env0 instantiated, would not it?
Does not that require to have the environment init code (fs support and all) be compiled as part of the PBL (lwl-y +=....).
My environment variables are in QSPI, so I would think I could parse the environment variable without the whole barebox support instead.
If not possible then I think we can find some other way to retrieve the baud rate.

Cheers.


> Cheers,
> Ahmad
> 
> >
> > Cheers,
> > Renaud
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> >
> https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infra
> dead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=04%7C01%7Crenaud.b
> arbier%40abaco.com%7C5feb6191d4d647f8afdb08d8df0d5b4c%7Ce6f2745189
> 9d4d0db8fa88baafa551a7%7C0%7C0%7C637504595763337955%7CUnknown%
> 7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiL
> CJXVCI6Mn0%3D%7C1000&amp;sdata=U5XVs%2Bf0L4t6LX49D7IJZNexAa77Pkjy
> kZv74%2FJ8klk%3D&amp;reserved=0
> >
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       |
> https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pen
> gutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.com%7C5fe
> b6191d4d647f8afdb08d8df0d5b4c%7Ce6f27451899d4d0db8fa88baafa551a7%7
> C0%7C0%7C637504595763337955%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
> 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&a
> mp;sdata=H1Ifw3D43oCbwUMkyKECroRAm22bBXka2wbBMGFhM%2BE%3D&a
> mp;reserved=0  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

