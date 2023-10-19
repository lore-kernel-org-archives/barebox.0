Delivery-date: Thu, 19 Oct 2023 08:27:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtMV9-00Dt9h-Lw
	for lore@lore.pengutronix.de; Thu, 19 Oct 2023 08:27:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtMV8-0004TQ-0d
	for lore@pengutronix.de; Thu, 19 Oct 2023 08:27:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hu0lxsI84GlHp+mUtRimfjb2GKtiJdCXMQLwl5X+f+Y=; b=XbWXvHEcDMDNnyNcwjpFTiH0CH
	HPPeGV1VoRtwOnfzM+SaEWmiNhtfJMgbWJdU2RilXKPTqCl9M80D92U31XqPODdSzSL/CY2LFdsxy
	JO/blvrivZ7yNryp0lo6iSKXSGEvyqVZOhtRpjA2O6s6wSytfEb5WlLk9uGtJKv93K5G6PPDeSi2e
	wLUrPRiZ9vO5bpXsb0DJeD9PFvmqV1DKf4pVWK6ZM6IfnW99Xoagya0tM99dOptMI03ezWdV2ARAE
	+BPlmuxLw5UQLi68a9jtx8+bZkHEaN4069FoVAwfYMSzhJ7fjXk+vMUPa3N1VuNDDj6fXINnhZHqY
	qqG+OqTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtMTv-00GVL2-1a;
	Thu, 19 Oct 2023 06:26:07 +0000
Received: from esa1.hc776-43.c3s2.iphmx.com ([216.71.156.243])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtMTq-00GVKO-05
	for barebox@lists.infradead.org;
	Thu, 19 Oct 2023 06:26:05 +0000
X-CSE-ConnectionGUID: vOrWHe1UQQCDiqsfve/z7g==
X-CSE-MsgGUID: F6Fi4+aOTS2vbqwMkLu/NA==
X-IronPort-RemoteIP: 104.47.12.50
X-IronPort-MID: 2960432
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-db3eur04lp2050.outbound.protection.outlook.com (HELO EUR04-DB3-obe.outbound.protection.outlook.com) ([104.47.12.50])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Oct 2023 08:26:00 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oYgf8UFJKHGgjMBc1Ndgsnn8EfjSSCdQQ8K077fOM32fMb81wo/AXOnjShOzGq+F7Xs0l26LkORaPXWXMyzVbJa6dMbcskQkEjaq5PLdPqiMVHH3iJK1jjD6B7ReQTIXDuLsDYCdJ+TQ/xqxc/f2AyJoMgAowQOdvvlpeY7c8F4ZK4KykWK0ZtYxvZ8VQiX9ZUcapPeXyBg37shJp7pRnHmJRUwP4JZfONixq5ssv3TsdMkmNveGREG37/T5qv7wfPFUCHcE+Gs7bUvDuSop481/sCxi4QjH1ycFuLxt8QC+GCNHE0Lezoyv4Uqyd1jRT+2kQGzhmbMxe22pIiPAcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hu0lxsI84GlHp+mUtRimfjb2GKtiJdCXMQLwl5X+f+Y=;
 b=X7E1csLGZza+UYmvf92q0IF4Vrnh6Pxyp1nZMfkXFYSeDIH+lhTngXZ2B6VqHHhgmE/YcEdiwR3EmZsXqg4hBoay5+zBbKgCYGsdO2wRCjocpCCH/PQrFjs377Dv961VWX37t7bJ3lEILmbwOjoRt51NBKywirwQ8PQSF2wMlIELPKD4y2GiV8Nve47dGGIZAF3uSlKl20LwjnLtOpa8Oprps/bHjqx6h9puO8NlBXuBM30DW/WHVSPWlLAvKSFITmJIDCzf9Rc0VbBGroZPyx6U4AmhnhYVagKq/PqaAj+OATZOuxtdDsrpZ8h8TMZs1TtwAImwYB9f0jCK8f+hRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hu0lxsI84GlHp+mUtRimfjb2GKtiJdCXMQLwl5X+f+Y=;
 b=Ki9OUniH2bArUBObcqKMqEpA28c1VKNmusVL+2kB4ckvyjF00yCCGaQlk8EG9fZLx8h4z1dhaHcjAZNoIm5aMIhabM9Gv3Ngo/8oaR0QTRQj6sV695tnXyO+NGZeGExT1Xv6EMoR0QWzKgi15rwgkXTjaBAnDcbd1B5WN7mzBDk=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by PA4PR03MB6894.eurprd03.prod.outlook.com (2603:10a6:102:ec::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 19 Oct
 2023 06:25:59 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::2ee9:4922:9bd0:c317]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::2ee9:4922:9bd0:c317%3]) with mapi id 15.20.6907.022; Thu, 19 Oct 2023
 06:25:59 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: Barebox List <barebox@lists.infradead.org>
Thread-Topic: IMX8M and Optee support
Thread-Index: AQHaAZquCCRtS0xfVUiOONoVMdKA3bBPQZ8AgAAnvoCAABFYgIAACVyAgAARXwCAAAhzAIABCRoA
Date: Thu, 19 Oct 2023 06:25:58 +0000
Message-ID: <CF417E7D-014C-4AAE-B042-6E22069546D5@datarespons.no>
References: <EE0A8E0F-465F-46D1-A366-676E9047EA0C@datarespons.no>
 <52fa194d-441c-8827-00ac-49db2cd72661@pengutronix.de>
 <99FA6255-7807-4790-BA19-5BE02346DBF7@datarespons.no>
 <56A3F2CD-4EE3-4157-B821-2BD8917155AC@datarespons.no>
 <2df69458-e538-1505-13dd-3ba87e697f3c@pengutronix.de>
 <2FCD3543-D1C9-4A48-B325-19F51C84FFC8@datarespons.no>
 <70fa4042-3978-18c3-e5fe-23ec14122c4b@pengutronix.de>
In-Reply-To: <70fa4042-3978-18c3-e5fe-23ec14122c4b@pengutronix.de>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|PA4PR03MB6894:EE_
x-ms-office365-filtering-correlation-id: 573dde9f-5707-45de-3725-08dbd06c4236
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AIm+xF10rA97HMaL73yky9XnbqzGoGQsBO2et7bbYvRMch+n4UkLrx1qSPmr+yHp68hiBAe09EqclMSBNalHv6F4m4h3ASjB2lyZknRqyMMd0TtGvXhMXuX6hwlrVsxumTMMgZgNaU94Tb3WKqpwMppPN84Bb3A3QH9GCDlzrZdS4fzTyJH3092++giNGtiZ94mtJFZhYSu5sozLo7wiHsqa2oJRLTELVYawsy+9EOIvwFj0aGu2oebMqW1pehov2f6N1BzWzrcEzajwn1gZb61NzomY3Zo3OwVFINA/5Iv7QpCrmz/eu/dVGbkU82JZWQoVv/AM5jpsdtpUUg0xrOvXdAWoNHZI/1HtaaBte6VlEYL56ZzNsDvxcc+BuTUAXvYKC6SVQrc0zvfUQ1myYtUNEJ3o4NAP29wEh803j1wADFK9ppsS3V76nIGQeUTL8AWCe1hrO8FWuwB7SlsNu94TxVbiJ07Mvlw8++JZYnpbhGFK3+Aui0NVEMvomR3HgsMW+VEVWzyr6j/Ppabzh7AQZHBdPWk2tam5/M8284uM5u0+uNAZTyenfoLjMKdgVxyVEPj7+OpLENoBNKZCk+Ekm4LadKFycku9piKICAirW4vDUvrC2foK7hgV1DZiVKFILZQKC6lbpLBD8vw9VHlrj9NGojfxOZ+mwArjydM=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39840400004)(376002)(396003)(366004)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(71200400001)(66574015)(2616005)(26005)(38100700002)(478600001)(4326008)(8676002)(8936002)(33656002)(5660300002)(41300700001)(86362001)(2906002)(38070700005)(85202003)(966005)(6486002)(66446008)(64756008)(66476007)(66556008)(66946007)(316002)(6916009)(76116006)(36756003)(85182001)(91956017)(122000001)(6506007)(6512007)(53546011)(83380400001)(32563001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QnBrbUZKS0hnZmNKVXorOFdGdW5QT1NrRDF5MGhNSmZVOHRkaXlvZmV0SW5U?=
 =?utf-8?B?VUVnVDFaTTNob2VsaUFycm1pVE4xc0hTeGc2dEJQdndrcG1DWEU1Q1Q5dTU5?=
 =?utf-8?B?QjdHNndBWCs5S0d6RDVxWmdOWlE5RUJWT0diakgyMzFldlZVYTlOWGd6NnNI?=
 =?utf-8?B?Y3AyMllYMTJqM0x5aFpSQU5YekpZU0tFNEYvZFo3ZmhDWm5ZakJXWnp5TkVC?=
 =?utf-8?B?aCtzeHpVdG1lMGRCV0pleVhiVW1GVlRvZDZjY3ZEWUxDUC9zOHQ2aEN6djQr?=
 =?utf-8?B?OTczd2NmYTB0M1RsRG1sRWRZdllFdVlORk96SjIwWGEyZzVHVmNzTzgyMmtk?=
 =?utf-8?B?b2x2dkthU2s0ZThhemo5RWR1NjZGQndzeTBtdkR6aVZlOXVFSkhqdyt1MEN6?=
 =?utf-8?B?OEQ0cHhMTGp6NFpiKy9YTHNEb2FWdEFTRkl2cHYvcnNwL0ZQZlc2SEtHMDcr?=
 =?utf-8?B?WnhkQS9yU0V4TExBRERDdmg0VnlyNHVaYVNXcTFUVHdibUN2TCt6RWVma0pI?=
 =?utf-8?B?TlQvTmRSbHBGR2JITjdnMm01TE5EWWRvSFc3UCtoalpSOWJBSE00WkxWaHB3?=
 =?utf-8?B?Z21JK3FTa2syNERwemdUVWthczl2cWhsa0xrZUphRzhKcDNMQzhnMCtNVzlE?=
 =?utf-8?B?NzF5VjJKK1kwcGRldHVWbHFMYnJTbDQ0RGRCTTRMM1A2UnNmNWJncHlFTFdZ?=
 =?utf-8?B?bUorRDg0Y0VnS25lWGJYM1U5c2VsZWZoUVFOb1o0NzdjazVsR2w3blNxS21M?=
 =?utf-8?B?Y0w1YnJGVVJEVlZ5UlBQN2JoRFFRdFpiVTdhK0hoN3gvd2tLY0E4VHo3dDJW?=
 =?utf-8?B?MkY3SlpMeVY1eVltaDNHRDdrQ1IxWUtNZytpdGFwS1NzSlNiaHM1OGxXK1BP?=
 =?utf-8?B?NnB5K1BBeHduU3B1Mko3d2c1V0NON2NIYm5nV2UrVWdtREFKbFRCTndETyt1?=
 =?utf-8?B?cEpsSDNUenJ2NnJGeCtud08zZnJDdUU1OG8vdkRlUmkzN3IyeU56L016dzBK?=
 =?utf-8?B?RVQvV3AwTldzSlJTUjFSbjBBaTlaLy9RWVIrcGhha241OWxkdHF1ZXNoMXNO?=
 =?utf-8?B?RjlOR0lBbGE3OXFGTUdXYkZlZm43NWV4bFJWam1IQzBMWUtKU0ZTdzVRbGcx?=
 =?utf-8?B?RWNhaHl3MDduZnFJanFBdk4zcjJ3RWR4TXNKU1hJc3JxQkJEQUJqVU5obnB2?=
 =?utf-8?B?aDRXd2ZpQlRHYUZsQzNWUktLbzFuZWRSNkJRUEpZUGZyZmljM0lHVHV3bXdG?=
 =?utf-8?B?R2x0YUgwOUFyWlVJSzdJdnNwWnNNaXdRYW45WSttWDRDV21pNUQwN2o4TFdx?=
 =?utf-8?B?Mm9ta3REemdyeGxGZGR1akJobTVsMXE4UUl2MkxEYmRTdE1QRXU1TGRmTjdr?=
 =?utf-8?B?VklVZTRvZmhOUTJmbTh0U3p6b1ZJR09KczFYMktmQ21CekhTTk9ucVZkekpq?=
 =?utf-8?B?U1NGT0RpNzQxazdNUTVTVFRjb0U4RnhkMkhIMVJob25JSVZyRDR3TGNxMXZG?=
 =?utf-8?B?TGZ0NWpZM2NUeEtPR0lxcU8yVHRFbEhnN1FtWHJVV3dVd1ZhNkZjYmZQTy9P?=
 =?utf-8?B?eXQxYlo0VklFUG41YVhJdWtydFJ1Q1c0SmlObFR2YytIaldjVWVpMldoemk4?=
 =?utf-8?B?c2VWZHpYanJINWlSTEN2eG5nMU9LWEJqazZFanczOTYyRityYit6a3hKWDg4?=
 =?utf-8?B?WFJySHJORWN1ekN5dmhNWC8rNlZGZVU3cEdLV1ZlamFXVzRsQVFOU2hHR3o4?=
 =?utf-8?B?Y1JUOVJGcjRkRDdpRGh0TnNPZG9nZzBCSkRmZUc1UElTOEc1amFWRk9MK3NH?=
 =?utf-8?B?M1NscnhiNGs5Ry9WUXJqMWdkcjdHYUg0alNHMVkxZWcyWmw2b2pUbG1idzJT?=
 =?utf-8?B?U000U29UcE5uL1F3cU9QYUNTNU9VcnlEeUpnQ3FBOWxNTXJZTjlyUGZFalFD?=
 =?utf-8?B?cHB1dEJBUEZibFZLeDd1RWlNek1uUUE4NGl6VEFVYWRJNDBYZDZKSWhicHpm?=
 =?utf-8?B?S05Xam5USTRiMEFvWGhvTnd4V051V24rcTVDWk90WE4zcVdKYnFOS2J2aW5m?=
 =?utf-8?B?clRMNXE0NVR0WXVtdmR2bWpVVzRld1pUbDBIOEdpTDkvNnNoUWtRM3g4dGpp?=
 =?utf-8?Q?sYvj8Ht77AF+KYh81uUFdECu5?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B952CE7B6261984798E1339D8F846212@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Ahc0PBiMlDQopU8S1wRkcsZl1E93K1j9Tz2y+TH6gBDGOIKxQCkQDI+oyv6+BCO75ahDBn4wS6RPY453jq7se3a2rka0sD44je0TlDO7bjs1cWIyiLg6MBHRURy5zoiWHiUlcB91UpXa0L+GstblYvho67miFsj0TvrqNFWgUx1kR930nm1F/FNeLsXmAPffPUSkAtO7aHv1pMRhDoOBWpW/j6ElaPPJ+bvAhffFp7zN+uRV+2HFQSnFH/9RqzhhQaGLX+ro3O6EexaaxdEc2zHPNb3Ed+lVL8FmUMQyUuIBa2/lQLEr7UTz3PxHeg041HwNdP6axDFooBqUsdo3xsxKfElkgulTbxpZVPliK9ST96rRB0YUI78Tawb5hltTiFonXVGuseOWDYjMtz3sq5CoAAkbAzFZwsw52GSgSMLWQ9J1w6fR8RvGw7ElyvMM77VoBHwffHrrRdh8ok/PUyefZAAFIoa4VYpZUdxSduPPHV3QmjLVxENSu4Awaf16IgPJeHypjI//TuNH6Rg6H/fl0cV5+GAjUm/OL9JE1QFdbsWKPO8QBUjLu3cbbCI0E7jk6x1ohNenLBvYzbhy7vtJ7xcQE7m8xVO8fwvYBHVrmezy01tzoxJ+9mexgsEuGkACYBg+i8ql167LD/eI0SFZzV5FZg5VyPo92Na3SN/OBXwHpGozBULTje6TL1Yx0wSt+pi2RMdXP/Re0EkA9qpr05D398ohfeOdpG4EGCWNKTNucHmF0sonFaaK2Vwvjd7RC7DC6OqA/1jVTQJYbLtOVcjjN+q33zUULcmgO409IRicfWkXo532UNM/nb38z5gbdXG35DNp/Brq7JxQKFsIoeHEzmROiDN5LjnsNPKi6D6JYCsObyzPYDKlb1Gl
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 573dde9f-5707-45de-3725-08dbd06c4236
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 06:25:58.8407
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2/T73DUI8koHqD/8OhQeJUX9Av4XRPe/MWCHdf6ZtRuKwcNYKZlXSYMkC5R/+foyZC37vWPOSYbudof6OkhhfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR03MB6894
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_232602_471048_3B7517F0 
X-CRM114-Status: GOOD (  20.28  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: IMX8M and Optee support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

T3B0ZWUgdXNpbmcgQVRGIDIuOCB3b3JrcyB3aGVuIGEgaGVhZGVyIGlzIHN0cmlwcGVkIG9mIHRo
ZSB0ZWUuYmluIGZpbGUgKHVzZSB0ZWUtcmF3LmJpbikNCg0KSGFucw0KDQo+IDE4LiBva3QuIDIw
MjMga2wuIDE2OjM2IHNrcmV2IEFobWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+
Og0KPiANCj4gSGVsbG8gSGFucywNCj4gDQo+IE9uIDE4LjEwLjIzIDE2OjA2LCBIYW5zIENocmlz
dGlhbiBMw7huc3RhZCB3cm90ZToNCj4+IFRoZSBBVEYgZm9yIGlteDggaXMgcXVpdGUgY29udm9s
dXRlZCByZXF1aXJpbmcgZml4ZWQgbWVtb3J5IGxvY2F0aW9ucyBmb3IgaW1hZ2VzIGFuZCBkZXZp
Y2UgdHJlZXMuIFRoZSBBVEYgaXRzZWxmIHN1cHBvcnRzIHRyYW5zZmVycmluZyBwYXJhbWV0ZXJz
DQo+PiBVc2luZyA0IHVuc2lnbmVkIGxvbmcgYXJndW1lbnRzLiBUaGVzZSBhcmUgdW5mb3J0dW5h
dGVseSB6ZXJvZWQgb3V0IGJ5IGEgbWlzY29uZmlndXJhdGlvbiBmb3IgSU1YODoNCj4+IA0KPj4g
UkVTRVRfVE9fQkwzMSA6PSAxDQo+PiBhbmQgbm90IGF0IHRoZSBzYW1lIHRpbWUgc2V0dGluZw0K
Pj4gUkVTRVRfVE9fQkwzMV9XSVRIX1BBUkFNUyA6PSAxDQo+PiANCj4+IEFzIGRlbW9lZCBiZWxv
dyB0aGlzIGNhbiBiZSBtYWRlIHRvIHdvcmsuDQo+PiDigJTigJTigJQ+POKAlOKAlA0KPj4gDQo+
PiBVYXJ0IGluaXRpYWxpemVkDQo+PiBSdW4gbGV2ZWwgMw0KPj4gSW5pdCBwb3dlcg0KPj4gSW5p
dCBERFINCj4+IEhhbmRvdmVyIHRvIEFURg0KPj4gaW14OG1wX2xvYWRfYW5kX3N0YXJ0X2ltYWdl
X3ZpYV90ZmE6IEV4cGVjdCBPUFRFRSBhdCAweGJlMDAwMDAwDQo+PiBDSCBlMmE3MTc1MTUxZmUz
ZTg0MjExNjk5MGU2MmM4NjQzMzRlMWJiMDMwY2ExNDZiNzQ5ZDhlNmIwYzAyNDgxMzU3DQo+PiBJ
SCBlMmE3MTc1MTUxZmUzZTg0MjExNjk5MGU2MmM4NjQzMzRlMWJiMDMwY2ExNDZiNzQ5ZDhlNmIw
YzAyNDgxMzU3DQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBDQUFNIGVhcmx5IGluaXQgc3VjY2Vzc2Z1bA0KPj4gaW14
OG1fYXRmX3N0YXJ0X2JsMzE6IENhbGxvdXQgQkwzMSB3aXRoIDEsIDIsIDMsIDQNCj4+IE5PVElD
RTogIERvIG5vdCByZWxlYXNlIEpSMCB0byBOUyBhcyBpdCBjYW4gYmUgdXNlZCBieSBIQUINCj4+
IElORk86ICAgIGJsMzFfZWFybHlfcGxhdGZvcm1fc2V0dXAyOiBhcmdzIGFyZSAweDAwMDAwMDAx
LCAweDAwMDAwMDAyLCAweDAwMDAwMDAzLCAweDAwMDAwMDA0DQo+PiBOT1RJQ0U6ICBCTDMxOiB2
Mi44KGRlYnVnKTpsZi02LjEuMzYtMi4xLjAtMC1nMWEzYmVlYWI2LWRpcnR5DQo+PiBOT1RJQ0U6
ICBCTDMxOiBCdWlsdCA6IDE1OjQ5OjM4LCBPY3QgMTggMjAyMw0KPj4gDQo+PiDigJTigJQ+POKA
lOKAlA0KPj4gDQo+PiBUaGUgImJlc3QiIGFwcHJvYWNoIGlzIGxpa2VseSB0byBwYXRjaCBBVEZz
IGlteDhtWF9ibDMxX3NldHVwLmMgcmVwbGFjaW5nIHByZXByb2Nlc3NvciB2YWx1ZXMgd2l0aCB2
YWx1ZXMNCj4+IGhhbmRlZCBvdmVyIGZyb20gQmFyZWJveC4gQWRkaW5nIHRoZXNlIHBhcmFtZXRl
cnMgd2lsbCBiZSBjb21wYXRpYmxlIHdpdGggdW5wYXRjaGVkIEFURnMgYW55d2F5Lg0KPiANCj4g
VGhlcmUncyB2b2lkIGJsMzFfZW50cnkodWludHB0cl90IGJsMzFfZW50cnksIHVpbnRwdHJfdCBi
bDMyX2VudHJ5LA0KPiAgICAgICAgIHVpbnRwdHJfdCBibDMzX2VudHJ5LCB1aW50cHRyX3QgZmR0
X2FkZHIpDQo+IA0KPiB3aGljaCBpcyB1c2VkIGZvciBSSzM1NjgvUkszNTg4IHBsYXRmb3Jtcy4g
QUZBSVUsIGZ1dHVyZSBTb0NzIHdpbGwgbGlrZWx5DQo+IHVzZSBhIGxpbmtlZCBsaXN0IG9mIGhh
bmQgb3ZlciBibG9ja3MgdG8gdHJhbnNmZXIgdGhpcyBzYW1lIGluZm9ybWF0aW9uLg0KPiANCj4g
QW55IG9mIHRoZXNlIHR3byBhcHByb2FjaGVzIHdvdWxkIGJlIGJldHRlciB0aGFuIHdoYXQgd2Ug
aGF2ZSBub3cgb24gaS5NWC4NCj4gDQo+IEkgYW0gc3RpbGwgbm90IHN1cmUgaG93IHRoaXMgcmVs
YXRlcyB0byBPUC1URUUgaGFuZ2luZy4gQ2FuIHlvdSBjb25maWd1cmUNCj4geW91ciBPUC1URUUg
dG8gbm90IGV4cGVjdCBhIEZEVD8NCj4gDQo+IENoZWVycywNCj4gQWhtYWQNCj4gDQo+PiANCj4+
IEhhbnMNCj4+IA0KPj4gDQo+Pj4gMTguIG9rdC4gMjAyMyBrbC4gMTU6MDQgc2tyZXYgQWhtYWQg
RmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT46DQo+Pj4gDQo+Pj4gSGVsbG8sDQo+Pj4g
DQo+Pj4gT24gMTguMTAuMjMgMTQ6MzEsIEhhbnMgQ2hyaXN0aWFuIEzDuG5zdGFkIHdyb3RlOg0K
Pj4+PiBJIG1heSBoYXZlIGdvdHRlbiB0aGlzIHdyb25nLCBidXQgc2hvdWxkIG5vdCB0aGUgZGV2
aWNlIHRyZWUgYmUgcGFzc2VkIG92ZXIgdG8gQVRGIHdoaWNoIGFnYWluIHBhc3MgaXQgb3ZlciB0
byBPcHRlZT8NCj4+Pj4gDQo+Pj4+IFRoZSBibDMxKCkgd3JhcHBlciBpbiBpbXg4bV9hdGZfc3Rh
cnRfYmwzMSBzaG91bGQgZG8gdGhpcyB1c2luZyByZWdpc3RlciBjYWxsIHBhcmFtZXRlcnM/DQo+
Pj4gDQo+Pj4gSSBhbSB1c2luZyBhIHF1aXRlIGFudGlxdWF0ZWQgaW14LWF0ZiB2Mi40IGFuZCBv
cHRlZS1vcy0zLjIuMC5pbXggaW4gbXkgc2V0dXAgYW5kDQo+Pj4gaGF2ZW4ndCBjb21lIGFyb3Vu
ZCB0byB1cGRhdGUgdGhlbS4gSSBrbm93IHRoYXQgYmFyZWJveCB3b3JrcyBmaW5lIHdpdGggbmV3
ZXIgVEYtQQ0KPj4+IHZlcnNpb25zIChlc3BlY2lhbGx5IGFmdGVyIGh0dHBzOi8vcmV2aWV3LnRy
dXN0ZWRmaXJtd2FyZS5vcmcvYy9URi1BL3RydXN0ZWQtZmlybXdhcmUtYS8rLzE2MzcwKSwNCj4+
PiBidXQgSSBoYXZlbid0IHRlc3RlZCBhIG5ld2VyIE9QLVRFRSwgc28gaWYgeW91ciBPUC1URUUg
Y29uZmlndXJhdGlvbi92ZXJzaW9uIGV4cGVjdHMNCj4+PiBhIGRldmljZSB0cmVlLCB0aGlzIG1h
eSBpbmRlZWQgYmUgdGhlIGN1bHByaXQuDQo+Pj4gDQo+Pj4+PiAxOC4gb2t0LiAyMDIzIGtsLiAx
MzoyOSBza3JldiBIYW5zIENocmlzdGlhbiBMw7huc3RhZCA8aGNsQGRhdGFyZXNwb25zLm5vPjoN
Cj4+Pj4+IA0KPj4+Pj4gV2UgaGF2ZSBhIDJHQiBJTVg4TVAgc3lzdGVtIHVzaW5nIDMyTUIgT1BU
RUVFX1NJWkUsIHNvIGV4cGVjdCB0byBmaW5kIE9wdGVlIGJsb2IgYXQgMHhCRTAwMDAwMC4NCj4+
Pj4+IA0KPj4+Pj4gQVRGIGNvbXBpbGVkIHdpdGg6DQo+Pj4+PiBtYWtlIFBMQVQ9aW14OG1wIEJM
MzJfQkFTRT0weEJFMDAwMDAwIElNWF9CT09UX1VBUlRfQkFTRT0weDMwODkwMDAwIFNQRD1vcHRl
ZWQgREVCVUc9MSAtag0KPj4+Pj4gDQo+Pj4+PiBPcHRlZSBjb21waWxlZCB3aXRoOg0KPj4+Pj4g
DQo+Pj4+PiBDRkdfRERSX1NJWkUgPz0gVUwoMHg4MDAwMDAwMCkNCj4+Pj4+IENGR19VQVJUX0JB
U0UgPz0gVUFSVDJfQkFTRQ0KPj4+Pj4gQ0ZHX1RaRFJBTV9TVEFSVCA/PSAweEJFMDAwMDAwDQo+
Pj4+PiB1bmRlZmluZSBDRkdfTlNfRU5UUllfQUREUg0KPj4+Pj4gDQo+Pj4+PiBCYXJlYm94IGNv
bXBpbGVkIHdpdGg6DQo+Pj4+PiBDT05GSUdfSEFWRV9PUFRFRT15IENPTkZJR19PUFRFRV9TSVpF
PTB4MDIwMDAwMDAgIyBDT05GSUdfQk9PVE1fT1BURUUgaXMgbm90IHNldCBDT05GSUdfUEJMX09Q
VEVFPXkgQ09ORklHX0ZJUk1XQVJFX0lNWDhNUF9PUFRFRT15DQo+Pj4gDQo+Pj4gYmFyZWJveCBj
b25maWd1cmF0aW9uIGxvb2tzIG9rIGFzc3VtaW5nIGJvYXJkIGNvZGUgY2FsbHMgaW14OG1wX2xv
YWRfYW5kX3N0YXJ0X2ltYWdlX3ZpYV90ZmEoKS4NCj4+PiANCj4+Pj4+IA0KPj4+Pj4gVGhpcyBw
cm9kdWNlcyB0aGUgZm9sbG93aW5nIG9uIGJvb3Q6DQo+Pj4+PiDigJTigJTigJTigJTigJTigJTi
gJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJQ+PC0tLS0tLS0tLS0tLS0tDQo+Pj4+PiAN
Cj4+Pj4+IFVhcnQgaW5pdGlhbGl6ZWQNCj4+Pj4+IFJ1biBsZXZlbCAzDQo+Pj4+PiBJbml0IHBv
d2VyDQo+Pj4+PiBJbml0IEREUg0KPj4+Pj4gSGFuZG92ZXIgdG8gQVRGDQo+Pj4+PiBpbXg4bXBf
bG9hZF9hbmRfc3RhcnRfaW1hZ2VfdmlhX3RmYTogRXhwZWN0IE9QVEVFIGF0IDB4YmUwMDAwMDAN
Cj4+Pj4+IENIIGUyYTcxNzUxNTFmZTNlODQyMTE2OTkwZTYyYzg2NDMzNGUxYmIwMzBjYTE0NmI3
NDlkOGU2YjBjMDI0ODEzNTcNCj4+Pj4+IElIIGUyYTcxNzUxNTFmZTNlODQyMTE2OTkwZTYyYzg2
NDMzNGUxYmIwMzBjYTE0NmI3NDlkOGU2YjBjMDI0ODEzNTcNCj4+Pj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBOT1RJQ0U6
ICBEbyBub3QgcmVsZWFzZSBKUjAgdG8gTlMgYXMgaXQgY2FuIGJlIHVzZWQgYnkgSEFCDQo+Pj4+
PiBOT1RJQ0U6ICBCTDMxOiB2Mi44KGRlYnVnKTpsZi02LjEuMzYtMi4xLjAtMC1nMWEzYmVlYWI2
LWRpcnR5DQo+Pj4+PiBOT1RJQ0U6ICBCTDMxOiBCdWlsdCA6IDEzOjE0OjA5LCBPY3QgMTggMjAy
Mw0KPj4+Pj4gSU5GTzogICAgR0lDdjMgd2l0aCBsZWdhY3kgc3VwcG9ydCBkZXRlY3RlZC4NCj4+
Pj4+IElORk86ICAgIEFSTSBHSUN2MyBkcml2ZXIgaW5pdGlhbGl6ZWQgaW4gRUwzDQo+Pj4+PiBJ
TkZPOiAgICBNYXhpbXVtIFNQSSBJTlRJRCBzdXBwb3J0ZWQ6IDE5MQ0KPj4+Pj4gSU5GTzogICAg
QkwzMTogSW5pdGlhbGl6aW5nIHJ1bnRpbWUgc2VydmljZXMNCj4+Pj4+IElORk86ICAgIGJsMzFf
cGxhdF9nZXRfbmV4dF9pbWFnZV9lcF9pbmZvOiB3YW50IGltYWdlIDANCj4+Pj4+IElORk86ICAg
IGJsMzFfcGxhdF9nZXRfbmV4dF9pbWFnZV9lcF9pbmZvOiBibDMyIFBDIGlzIDB4YmUwMDAwMDAN
Cj4+Pj4+IElORk86ICAgIEJMMzE6IGNvcnRleF9hNTM6IENQVSB3b3JrYXJvdW5kIGZvciA4NTU4
NzMgd2FzIGFwcGxpZWQNCj4+Pj4+IFdBUk5JTkc6IEJMMzE6IGNvcnRleF9hNTM6IENQVSB3b3Jr
YXJvdW5kIGZvciAxNTMwOTI0IHdhcyBtaXNzaW5nIQ0KPj4+Pj4gSU5GTzogICAgQkwzMTogSW5p
dGlhbGl6aW5nIEJMMzINCj4+Pj4+IElORk86ICAgIGJsMzFfcGxhdF9nZXRfbmV4dF9pbWFnZV9l
cF9pbmZvOiB3YW50IGltYWdlIDANCj4+Pj4+IElORk86ICAgIGJsMzFfcGxhdF9nZXRfbmV4dF9p
bWFnZV9lcF9pbmZvOiBibDMyIFBDIGlzIDB4YmUwMDAwMDANCj4+Pj4+IElORk86ICAgIG9wdGVl
ZF9pbml0OiAxNzYgLSBjYWxsaW5nIDxvcHRlZWRfc3luY2hyb25vdXNfc3BfZW50cnk+DQo+Pj4+
PiBJTkZPOiAgICBvcHRlZWRfc3luY2hyb25vdXNfc3BfZW50cnk6IDc5IC0gY2FsbGluZyA8b3B0
ZWVkX2VudGVyX3NwPg0KPj4+IA0KPj4+IFRyeSBjb21waWxpbmcgb3AtdGVlIHdpdGggQ0ZHX1RF
RV9DT1JFX0xPR19MRVZFTD00IGFuZCBzZWUgaG93IGZhciBpdCBnZXRzLg0KPj4+IA0KPj4+Pj4g
ScK0bSBub3Qgc3VyZSB3aHkgaXQgYXNrcyBmb3IgdGhlIHNhbWUgaW1hZ2UgdHdpY2UgYW5kIGlm
IHRoaXMgaW1wbGllcyBhbnl0aGluZyDigKYNCj4+PiANCj4+PiBObyBpZGVhLi4NCj4+PiANCj4+
PiBDaGVlcnMsDQo+Pj4gQWhtYWQNCj4+PiANCj4+PiAtLSANCj4+PiBQZW5ndXRyb25peCBlLksu
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fA0KPj4+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6
Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8DQo+Pj4gMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAg
ICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwNCj4+PiBBbXRz
Z2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEt
MjA2OTE3LTU1NTUgfA0KPj4+IA0KPj4gDQo+IA0KPiAtLSANCj4gUGVuZ3V0cm9uaXggZS5LLiAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwN
Cj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3
dy5wZW5ndXRyb25peC5kZS8gIHwNCj4gMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAg
ICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwNCj4gQW10c2dlcmljaHQg
SGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01
NTU1IHwNCg0KDQo=


