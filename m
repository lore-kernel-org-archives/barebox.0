Delivery-date: Sat, 17 Sep 2022 13:01:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZVaA-007cjL-T5
	for lore@lore.pengutronix.de; Sat, 17 Sep 2022 13:01:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZVa9-0003qH-6J
	for lore@pengutronix.de; Sat, 17 Sep 2022 13:01:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tw68JoFBUD+C7Kn5Bz4tdFGerYhq7ao1wlsOMsozAXo=; b=K3vJVmT9Int/AxTwUuRQ1kpcSS
	yiQxGFc6AKnIERipvFIpfax3dYjAEh/C2rXZ77jFEs5/Rfz/6/AUcw859Z4Q3CI6Csm/Kwr5Zu65R
	LBTj4JZfg3Mv/aHJDvyTb+YdQ/FDovdjCW6DtTtN7qnbCqoy7PVAp2cGCqQ09hz7i3+peML0qCV3W
	ZT8YDVPWa/HJ+LxInd6iSc4e1vSY+WCF8QaLrNCvk9oJ0gdqXhi2KTTgKQGMgIBPyvMcrqgmj7a4S
	Dtmm3o2ee0Cm4cErABakCyXu9+DlAEpyE0nlufXiwGUzkBcvjhCLYToI/uYiyBBvitz6pXs/BiFMZ
	X0f13/sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZVY0-005KQd-93; Sat, 17 Sep 2022 10:59:44 +0000
Received: from esa1.hc776-43.c3s2.iphmx.com ([216.71.156.243])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZVXt-005KMW-QE
	for barebox@lists.infradead.org; Sat, 17 Sep 2022 10:59:40 +0000
X-IronPort-RemoteIP: 104.47.12.57
X-IronPort-MID: 2367472
X-IronPort-Reputation: None
X-IronPort-Listener: OutgoingMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
Received: from mail-db3eur04lp2057.outbound.protection.outlook.com (HELO EUR04-DB3-obe.outbound.protection.outlook.com) ([104.47.12.57])
  by ob1.hc776-43.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Sep 2022 12:59:32 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rr1DkPj3HMvLHPXcosxwILvYD8ufcLDulR+gnr3/CtsG/sREpLwDYRc8erww07NHpti8/7IOUcR+qs63O38Gtl44fdvFZV87jafviB8nOxByo7sAbh/dWcRwDxS+68xS5SNuP2IXB1HLyiR7mlJjaElUhLlvMuIZWCGG4WwKBy92qPTKSD0UZ/j6p3WU6jSpzHTGWdkgytCLsZ1/VgZD86dXeoxSBFs608OtNr4l9EmVi9P/0uAlHGx2FxNl76MNbmt64EabaD2NLnrumoE/GuifkvX5f8KHmcCNROqB9OYxaLoWQIqxDJDByQ4WGFWjOZYR7aMVDIMbPBAlMIin+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tw68JoFBUD+C7Kn5Bz4tdFGerYhq7ao1wlsOMsozAXo=;
 b=kUAHqDsCWKCtsgvzQYhG9xkZjVRqjh4g1KHm+dKUMk+dql3W1XRJQE1MsvJdODvZ1YBBR6WlaeFv7ryMs59I+wVK7RJBS/NSooNI60N9XEYzxBvfYm8cwFb7PAsOF7p0mXtSWIlkYjcqc9muz14gJ2Lwj/Gu16VOFuWkraZjshfzxVCH+H8pMRfZJcwVT6yxWQlrq/hG3gWM/x4M2mpgMlX4/o3R1RidJvngmEzjZSzklwWfU93sMiJwAsRYVGRSfe3DxuZQfJgAf0jCPC2Nnzu/xqLmgf8cluHPsO/VmEYzRPNMFcB/7SGtd1jX0d8TogxVfxtm6ZItsYOncOv+Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=datarespons.no; dmarc=pass action=none
 header.from=datarespons.no; dkim=pass header.d=datarespons.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=datarespons.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tw68JoFBUD+C7Kn5Bz4tdFGerYhq7ao1wlsOMsozAXo=;
 b=Gq9asYil07Wp0l8JfGQI4HNYnRRNnHvAGZEL4i3mOeTwS3mUh9gEWw0s7cGZrnHfJAMaIhFn0hyJt1tN8tm3B2kIvv6eDqeORdgWXm5wW21hw26YVjmjDr/tlz+0V9jYUvQEr7oiBqhb1m7FjJrSGfH01ekFx6GarnjFivKmTB4=
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com (2603:10a6:20b:8::23)
 by AS8PR03MB8419.eurprd03.prod.outlook.com (2603:10a6:20b:527::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Sat, 17 Sep
 2022 10:59:31 +0000
Received: from AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::9da7:a2e1:3d79:55b7]) by AM6PR03MB4165.eurprd03.prod.outlook.com
 ([fe80::9da7:a2e1:3d79:55b7%3]) with mapi id 15.20.5632.018; Sat, 17 Sep 2022
 10:59:31 +0000
From: =?utf-8?B?SGFucyBDaHJpc3RpYW4gTMO4bnN0YWQ=?= <hcl@datarespons.no>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Lucas Stach
	<lst@pengutronix.de>
Thread-Topic: fitimage: Allow match against config node name
Thread-Index: AQHYydnB05Ola0jx60uwV0lRmQ3SX63iTxgAgADhBgCAADhPAIAADP+A
Date: Sat, 17 Sep 2022 10:59:31 +0000
Message-ID: <BDDE3FBD-A6F2-46C2-9551-6A8626B192FA@datarespons.no>
References: <EC219BAA-D034-4B47-8377-286110B1329C@datarespons.no>
 <89dbfa91-7d49-bd56-4728-42ad4d33dd6a@pengutronix.de>
 <F1338C87-37DC-4F61-8E4B-9E1E4B7E8CC0@datarespons.no>
 <4bb50cb7-d7a0-9562-b990-24231358aa1c@pengutronix.de>
In-Reply-To: <4bb50cb7-d7a0-9562-b990-24231358aa1c@pengutronix.de>
Accept-Language: nb-NO, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=datarespons.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM6PR03MB4165:EE_|AS8PR03MB8419:EE_
x-ms-office365-filtering-correlation-id: bf00cff2-a422-48d4-2bbf-08da989bb314
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  MMS0jDA77Pl1QyBRZmE03x2sC6Rh4wc+Mu9d4lK3rXAAozehKOr0O1guUJ4YhApL3o/B43b9ZD4/t4RbLH4UBNrR0yDCcJ2sjJYL1P12L20LHQMC3vh6CxgUSn46IZMBhAChiLuT5JygPd9294Hau+ol0JTxSezdqUhOaFplfNO6w9RAUy0ARBdhV8ASs67YtpBNNgHr42yem8sd93Erjl0G2+2FJCmcOVjo/khsOtSSORcJGQPrwOlNp5L8uTzT8aNyzuxu71qkH0zjrd4pPUUgE0w70JLsxGTB2rveuj98XMZTpxWy7bo1JcTk1TmP8yJN1lHDS7R6X42s2IxG6JIaG2asgOukKtog3DWKjFXfD+EU81U4BEHWGCc++Zg3aixyx41DJGJiNCKQAok38pHUMubr3th8kLGW3E/R1PIIT2UEyNji7EmUhmFd2ixjT8oHuXcGWtODemnPL03C2eWBE2VUWFSBBFPJ1jCVkqWNO+rnutnOv8e3XpY08uvzhHm8sZO65MAnX4Z76F2cdNWRiVn6nYeCbKCGMs4nI6UpqZdOw1eCOsNtzFyq62PfSWDGnwHzd5sorXxgXJwsSWK7Q7/2Mbuu73TWTHl0suJUn/4Yo5/9AzHinQvQdBdvPYnAu59d8WMkDbqQExeHcZb9Nneq6gVXnRz6u2Jj77nNlj9OklzOnQvfIoTYpl/ZqXMNIBiEmRW6st5TJyYi1kTiCnv8bwZ1YpZuy8qp9kkhZIcFH2bFTP7moA1dx1mm7y7RkQqUAhxKV7+L4jsoxILCXY5FIPthYTgE6yFlMUlekIB1tRy/Wb+OlyElUhWhue+YYWjZe4oop5IUgtk3Qw==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR03MB4165.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(39840400004)(376002)(366004)(346002)(396003)(451199015)(2616005)(2906002)(36756003)(85202003)(33656002)(5660300002)(4326008)(91956017)(85182001)(66476007)(66556008)(66946007)(66446008)(64756008)(76116006)(8676002)(41300700001)(316002)(478600001)(6916009)(54906003)(8936002)(6486002)(71200400001)(66574015)(966005)(53546011)(186003)(38100700002)(6512007)(122000001)(38070700005)(6506007)(83380400001)(86362001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?b3JxZk9LR0NJMlVZNmN3aU5aZ1gwT0tSTks1SlM3QzlMQ01Pd1pROFU1dWRH?=
 =?utf-8?B?b0UvZUIrbTZkUnNHN1JtODZVa25qN0M2QjZRS0RXTGJQMExla1hNSGZDZFli?=
 =?utf-8?B?TmlrNU55eVdPRGc2MDNIemg5TkRCVmpkcllhYVJkS2cxNXIxZkNvUkp0UWtF?=
 =?utf-8?B?bTN1bHRwcERFdWN6cHRodk1WalBRSXQzY3drcUlFWStHMGFXZzhHK0RRZk1a?=
 =?utf-8?B?S1hEcSt3MjJUOXhNZVZNUFg3bGxtRWJoT29QdkZZNVRyUi8vLzVCbG5OT2I0?=
 =?utf-8?B?V2pwdU1BSVBYNzN1QzhlOTRVRGxJVjRLRGQvRlRpU0lmdk1QVjh6dVdCQ0hJ?=
 =?utf-8?B?N3dtK2UwSjlISW5jQ1psYXYraU5CNWk4eTVNVkdTck82aGdBL2w1Wmw4Ull1?=
 =?utf-8?B?Vktvb3NrN2dOYTBDVWRuWm83MVYrNXJLNEpvZ0NpcHhzMWRsK2JROTZ3UmZ4?=
 =?utf-8?B?cDN0TXZoMzFEWnJPK2kwbndVd0JUVVNPTE5QSVNBSlk2M29ZKzhTUVlHSHY5?=
 =?utf-8?B?NkpyRGp4WU44WTlYZTJsZkRTVUwzcFlKUjA1dUg3cmY1M01Ndmo4U254OWww?=
 =?utf-8?B?QzF3ZktUQU5EbjlEa0dTOFRZS0l4Y2EvMVNtT2JNWU8zdmRKWXdwQzZHNTJB?=
 =?utf-8?B?eHM5aU92U1kzV3dtZnJCdTdZQkFoellaWkFQOUEwQkc0bDArS0RaaWFyclpa?=
 =?utf-8?B?YjdSNCt1alZUWXpKSDliY1lvS3hCVy9uWnVMVkVjOWFaZk9IVlI0TkwwSnox?=
 =?utf-8?B?cDNnc0FORXRpbXhvZ20xQmtBZTRpV0gyRjlwM3hDSkdmVmtCc0pyODdHeUlM?=
 =?utf-8?B?K2xVWFZ5VXkyTWVrUTFDcVRhT20zTUkxajVtZkF0cHlYY25leUllN1FjUy91?=
 =?utf-8?B?SVFHOGwzMHAyU3ZBZk1TWEN4alJHU1ZxbUVDMThmcjg2czdLUEE0QnBNNG1J?=
 =?utf-8?B?Vksvb3dyNlNQMzlqSUpqa2FTaDJCMmNLWmhacHlxRDNCc0grMWZ4RnVlTkV3?=
 =?utf-8?B?cU92MVFiTUFNOGszVVBTL3BYMmx1UWlhMHBLZTBzaVhLOXRiaFdNQjROdUYy?=
 =?utf-8?B?Umk4NXNHdEthWElubHlKdnlacHBYZXhHQnRQbG1TbVFJUy9FcllPM2p2SlQr?=
 =?utf-8?B?T0VzQ09aS1NvZUR4Y1FXTzNxRzByQWM4SWJNMFV4ZTM4dXZ0UkoyNXBtblZO?=
 =?utf-8?B?cENxWFMwYzJwbkR5UFNmalRtcDcxV0JRa05hZjBlaGc1a0RmcllZUFJxeElB?=
 =?utf-8?B?eFN6SmN4ZGFVNzFjdWJCS3c2L040MnhEUmxMYnIxa3ZSSVZVL2pHcWRHVG5M?=
 =?utf-8?B?THNHRTc4VGFsa0NydlROME85LzFsRlFQWFVCd1lEaTd0S2JtZEFvaU9IYllj?=
 =?utf-8?B?cW1zSWxTWlBBVVlsa2FZM295TWRvQVNMeGpydjFGNXp2WjUrSmpiZm5GNXdt?=
 =?utf-8?B?WWN3cmQzNzVNSDZ5bDd1NmxmYUZYdmJHekV2MXVIWmo1cXAvVHVNOVNFbVF5?=
 =?utf-8?B?TUtGSk81OXNkMDduNDdNdFpQMVFYUVdSQmtmNkxIS0tncFp6cjhGaEloRjdV?=
 =?utf-8?B?K2pMc0c1SnRjTGZTeFpuQ2ZjbC9jMFJZVkY5QWlqNTJrVjFNd2FQYk1vblNq?=
 =?utf-8?B?WGRhTGVuTlI4Uk44QzlrcWUzdC9lRXF6ajVrdE9pWGk0OFh3a3pLYmlVeEFL?=
 =?utf-8?B?WlI3ZWNaT1h0RHRtQ0xEb3ROL3V2aW9uTWJiTGZ0THBIcS8ySHkwS3E1aVJs?=
 =?utf-8?B?NWdQS1ZESFErd0hpUmFvb0FwZWJBR29lbUtoZ2c5VDNpQW1MUyt5ZFB5NTlv?=
 =?utf-8?B?NXJFRmR6SUFUWVdqTXVSNVY2eldsekI5TWFleDdvUnpyTmUrdFA0Y0o3ZmJp?=
 =?utf-8?B?QVZPMVJkUkR1MmUyQjg2R09Ic3ptSXhNZXpuS0hjb0FwUW9KM1hiajV5TUdM?=
 =?utf-8?B?cTQyRzJMRVJ2OTMyOUh4Wm1YdDMxRm04aGZkcTNBRXNub1FqRlJqYW1lMGtN?=
 =?utf-8?B?S09sYlVYVzBzTC9Ib2diNklDYWJSMlNidWZ1a2UzS2d0K3ZCZFMwRXRyWHQ5?=
 =?utf-8?B?Z0EzV2ZxOEZTNGdzUGNaUy9iV2FLaEVBNkZIdnIxeDFuSjZ4QWlnb01hRWdz?=
 =?utf-8?B?RWZqcmRXUlR0Ym12WEk3MFhoMnhqSnJHNVVwbkg1QTZFWG5oajBUY2VBQm9y?=
 =?utf-8?Q?L2xekuDlS21VCaPb8xbNhbUQ5oN1Pz+CG4DkyZROhnUx?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <36917220A0030743B94A14A77FF30896@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: datarespons.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR03MB4165.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf00cff2-a422-48d4-2bbf-08da989bb314
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2022 10:59:31.7517
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c2c6b4bf-37db-40c2-ae4f-9fd06f3f8b9a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2p8NYfKUH4ujplRrXBOi/VYqlLEJSpAprYmjuRwsnIz+MBk1C7j1/GywPIyzqxRECKoP/J9Cpm+m2nxd0ZKHBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB8419
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_035938_954196_1BC7111D 
X-CRM114-Status: GOOD (  28.43  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: fitimage: Allow match against config node name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

R3JlYXQsIHJlLWlzc3VlZCBQUiB3aXRoIHRoZSBwcm9wZXIgd29yZGluZyDigKYNCg0KSGFucyBD
aHJpc3RpYW4NCg0KPiAxNy4gc2VwLiAyMDIyIGtsLiAxMjoxMyBza3JldiBBaG1hZCBGYXRvdW0g
PGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPjoNCj4gDQo+IEhpIEhhbnMsDQo+IA0KPiBPbiAxNy4w
OS4yMiAwNzo1MSwgSGFucyBDaHJpc3RpYW4gTMO4bnN0YWQgd3JvdGU6DQo+PiBUaGFuayB5b3Ug
Zm9yIHBvaW50aW5nIG91dCB0aGUgZXhpc3Rpbmcgb3B0aW9uLCBpdCByZXNvbHZlcyB0aGUgaXNz
dWUuDQo+IA0KPiA6KQ0KPiANCj4+IFJlZ2FyZGluZyBwYXRjaCBzdWJtaXNzaW9uczoNCj4+IEFy
ZSBHaXRIdWIgcHVsbCByZXF1ZXN0cyBhbiBvcHRpb24/IEFjdHVhbGx5IGhhdmUgb25lIHBlbmRp
bmcgdGhhdCBpcyBuZWVkZWQgb24gVVNCIGZvciBJTVg4TVAuDQo+IA0KPiBNYWlsaW5nIGxpc3Qg
aXMgdGhlIHVzdWFsIGNvbnRyaWJ1dGlvbiBtZXRob2QsIGJ1dCBTYXNjaGEgaGFzIGFjY2VwdGVk
DQo+IEdpdGh1YiBQUnMgaW4gdGhlIHBhc3QuDQo+IA0KPiBSZWdhcmRpbmcgeW91ciBleGlzdGlu
ZyBEV0MzIFBSLCB5b3Ugd2lsbCBuZWVkIHRvIHJld29yZCB0aGUgY29tbWl0IG1lc3NhZ2UNCj4g
dG8gbWFrZSB0aGlzIGFjY2VwdGFibGUgZm9yIGJhcmVib3ggaW5jbHVzaW9uOg0KPiANCj4gMSkg
QWxsIGNvbnRyaWJ1dGlvbnMgbXVzdCBoYXZlIGEgU2lnbmVkLW9mZi1ieSBjZXJ0aWZ5aW5nIG9y
aWdpbiwgc2VlDQo+ICAgaHR0cHM6Ly9kZXZlbG9wZXJjZXJ0aWZpY2F0ZS5vcmcvDQo+IA0KPiAy
KSBDb21taXQgbWVzc2FnZSBuZWVkcyB0byBiZSB1c2VmdWwgb24gaXRzIG93bi4gVGhlIEdpdGh1
YiBpc3N1ZSBjYW4NCj4gICBiZSByZWZlcmVuY2VkLCBidXQgc2hvdWxkIG5vdCBiZSB0aGUgb25s
eSBkb2N1bWVudGF0aW9uDQo+IA0KPiAzKSBDb21taXQgdGl0bGUgbmVlZHMgdG8gYmUgYWRhcHRl
ZCB0byBjb252ZW50aW9uIGZvciB0aGUgZHJpdmVyLg0KPiANCj4gDQo+IEhlcmUncyBteSBzdWdn
ZXN0aW9uOg0KPiANCj4gIHVzYjogZHdjMzogc3VwcG9ydCBzbnBzLGRpcy11Mi1mcmVlY2xrLWV4
aXN0cy1xdWlyayBmb3IgaS5NWDhNUA0KPiANCj4gIFRoZSBkcml2ZXIgY3VycmVudGx5IGNvbmZp
Z3VyZXMgdGhlIFN5bm9wc2lzIFVTQiAyLjAgUEhZIHRvDQo+ICB1bmNvbmRpdGlvbmFsbHkgcHJv
dmlkZSBhIGZyZWUtcnVubmluZyBQSFkgY2xvY2suIFRoaXMgbXVzdA0KPiAgYmUgZGlzYWJsZWQg
b24gdGhlIGkuTVg4TVAgYXMgd2VsbCBhcyBSSzMzMjggYW5kIFJLMzM5OSBTb0MsDQo+ICBiZWNh
dXNlIHRoZSBjbG9jayBjb250cm9sIGlucHV0IGlzIGluYWN0aXZlLg0KPiANCj4gIFRoZSB1cHN0
cmVhbSBMaW51eCBiaW5kaW5nIHNwZWNpZmllcyBhIGJvb2xlYW4gRFQgcHJvcGVydHkNCj4gIHNu
cHMsZGlzLXUyLWZyZWVjbGstZXhpc3RzLXF1aXJrIHRvIGRpc2FibGUgdGhlIGZyZWUtcnVubmlu
Zw0KPiAgUEhZIGNsb2NrIGFuZCB0aGUgcHJvcGVydHkgaXMgYWxyZWFkeSB1c2VkIGluIHRoZSBp
Lk1YOE1QDQo+ICBEVCwgdGhhdCBiYXJlYm94IGltcG9ydHMgZnJvbSB1cHN0cmVhbS4gVGh1cyBp
bXBsZW1lbnQgdGhlDQo+ICBiaW5kaW5nIGZvciBiYXJlYm94LiBUaGlzIGZpeGVzIGJhcmVib3gg
VVNCIGhvc3Qgc3VwcG9ydCBvbiB0aGUNCj4gIGkuTVg4TVAsIHdoaWNoIHByZXZpb3VzbHkgdHJp
Z2dlcmVkIGEgQlVHKCkgd2hlbiBlbnVtZXJhdGluZ1sxXS4NCj4gDQo+ICBMaW5rOiBodHRwczov
L2dpdGh1Yi5jb20vc2FzY2hhaGF1ZXIvYmFyZWJveC9pc3N1ZXMvMTMgWzFdDQo+ICBGaXhlczog
ZTIxMzYyN2JiZTFkICgidXNiOiBkd2MzOiBvZi1zaW1wbGU6IGFkZCBpLk1YOE1QIGNvbXBhdGli
bGUiKQ0KPiAgU2lnbmVkLW9mZi1ieTogQXV0aG9yIE5hbWUgPGF1dGhvci5lbWFpbEBleGFtcGxl
LmNvbT4gDQo+IA0KPiANCj4gSWYgeW91IHNxdWFzaCB0aGlzIGNvbW1pdCBtZXNzYWdlIGludG8g
eW91ciBQUiwgZmVlbCBmcmVlIHRvDQo+IGFwcGVuZCBteQ0KPiANCj4gUmV2aWV3ZWQtYnk6IEFo
bWFkIEZhdG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+DQo+IA0KPiBBbHNvIENjJ2luZyBM
dWNhcywgYXMgSSBhbSB3b25kZXJpbmcgd2h5IHlvdSByYW4gaW50byB0aGUgaXNzdWUsIGJ1dCBM
dWNhcw0KPiBhcHBhcmVudGx5IGRpZG4ndC4NCj4gDQo+IENoZWVycywNCj4gQWhtYWQNCj4gDQo+
PiBIYW5zIENocmlzdGlhbg0KPj4gDQo+Pj4gMTYuIHNlcC4gMjAyMiBrbC4gMTk6MjYgc2tyZXYg
QWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRyb25peC5kZT46DQo+Pj4gDQo+Pj4gSGVsbG8g
SGFucywNCj4+PiANCj4+PiBPbiAxNi4wOS4yMiAxNTozNiwgSGFucyBDaHJpc3RpYW4gTMO4bnN0
YWQgd3JvdGU6DQo+Pj4+IFN1cHBvcnQgZml0aW1hZ2UgY29uZmlndXJhdGlvbiBub2RlcyB3aXRo
b3V0IHBvcHVsYXRlZCBjb21wYXRpYmxlIGZpZWxkcw0KPj4+PiANCj4+Pj4gWW9jdG8gZml0IGlt
YWdlIHJlY2lwZSBkb2VzIG5vdCBwb3B1bGF0ZSB0aGUgY29tcGF0aWJsZSBmaWVsZA0KPj4+PiBp
biB0aGUgZ2VuZXJhdGVkIElUUyBmaWxlIGNvbmZpZ3VyYXRpb24gbm9kZXMuDQo+Pj4+IEJhcmVi
b3ggaXMgdGh1cyBvbmx5IGFibGUgdG8gbG9hZCB0aGUgZGVmYXVsdCBjb25maWd1cmF0aW9uDQo+
Pj4+IHByZXZlbnRpbmcgdGhlIHVzZSBvZiB2YXJpYW50IGJhc2VkIGJvb3Rsb2FkZXIgdXBkYXRl
IGJ1bmRsZXMuDQo+Pj4+IA0KPj4+PiBJZiB0aGUgY29tcGF0aWJsZSBtYXRjaCBmYWlscywgZmFs
bCB0aHJvdWdoIHVzaW5nIGEgZ2xvYmFsDQo+Pj4+IHZhcmlhYmxlIGJvb3QuZml0bm9kZSBhbGxv
d2luZyBhIG1hdGNoIGFnYWluc3QgdGhlIGNvbmZpZ3VyYXRpb24NCj4+Pj4gbm9kZSBuYW1lLg0K
Pj4+PiANCj4+Pj4gVGhpcyBhbGxvd3MgdmFyaWFudCBib2FyZHMgdG8gcGljayB0aGUgY29ycmVj
dCBjb25maWd1cmF0aW9uLg0KPj4+IA0KPj4+IFRoYW5rcyBmb3IgeW91ciBwYXRjaC4NCj4+PiAN
Cj4+Pj4gDQo+Pj4+IC0tLQ0KPj4+PiBjb21tb24vaW1hZ2UtZml0LmMgfCAxOCArKysrKysrKysr
KysrKysrKysNCj4+Pj4gMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykNCj4+Pj4gDQo+
Pj4+IGRpZmYgLS1naXQgYS9jb21tb24vaW1hZ2UtZml0LmMgYi9jb21tb24vaW1hZ2UtZml0LmMN
Cj4+Pj4gaW5kZXggYTQxMDYzMmQ3MC4uZjkyZTgxM2E4YiAxMDA2NDQNCj4+Pj4gLS0tIGEvY29t
bW9uL2ltYWdlLWZpdC5jDQo+Pj4+ICsrKyBiL2NvbW1vbi9pbWFnZS1maXQuYw0KPj4+PiBAQCAt
Nyw2ICs3LDcgQEANCj4+Pj4gDQo+Pj4+ICNkZWZpbmUgcHJfZm10KGZtdCkgIkZJVDogIiBmbXQN
Cj4+Pj4gI2luY2x1ZGUgPGNvbW1vbi5oPg0KPj4+PiArI2luY2x1ZGUgPGVudmlyb25tZW50Lmg+
DQo+Pj4+ICNpbmNsdWRlIDxpbml0Lmg+DQo+Pj4+ICNpbmNsdWRlIDxib290bS5oPg0KPj4+PiAj
aW5jbHVkZSA8bGliZmlsZS5oPg0KPj4+PiBAQCAtNjYzLDYgKzY2NCw3IEBAIHN0YXRpYyBpbnQg
Zml0X2ZpbmRfY29tcGF0aWJsZV91bml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqY29uZl9ub2RlLA0K
Pj4+PiBzdHJ1Y3QgZGV2aWNlX25vZGUgKmJhcmVib3hfcm9vdDsNCj4+Pj4gY29uc3QgY2hhciAq
bWFjaGluZTsNCj4+Pj4gaW50IHJldDsNCj4+Pj4gKyBjb25zdCBjaGFyICpjb25maWdfbm9kZTsN
Cj4+Pj4gDQo+Pj4+IGJhcmVib3hfcm9vdCA9IG9mX2dldF9yb290X25vZGUoKTsNCj4+Pj4gaWYg
KCFiYXJlYm94X3Jvb3QpDQo+Pj4+IEBAIC02ODAsNiArNjgyLDIyIEBAIHN0YXRpYyBpbnQgZml0
X2ZpbmRfY29tcGF0aWJsZV91bml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqY29uZl9ub2RlLA0KPj4+
PiB9DQo+Pj4+IH0NCj4+Pj4gDQo+Pj4+ICsgLyoNCj4+Pj4gKyAqIElmIHRoZSBtYXRjaCBhZ2Fp
bnN0IGNvbXBhdGlibGUgaW4gY29uZmlnIG5vZGUgZG9lcyBub3QgbWF0Y2gNCj4+Pj4gKyAqIChv
ciBpcyBtaXNzaW5nIGFzIGluIFlvY3RvIGZpdGltYWdlIHJlY2lwZSkNCj4+Pj4gKyAqIGNoZWNr
IGZvciBtYXRjaGluZyBub2RlIG5hbWUgdXNpbmcgZ2xvYmFsLmJvb3QuZml0bm9kZQ0KPj4+PiAr
ICovDQo+Pj4+ICsgY29uZmlnX25vZGUgPSBnZXRlbnYoImdsb2JhbC5ib290LmZpdG5vZGUiKTsN
Cj4+Pj4gKyBpZiAoY29uZmlnX25vZGUpIHsNCj4+Pj4gKyBmb3JfZWFjaF9jaGlsZF9vZl9ub2Rl
IChjb25mX25vZGUsIGNoaWxkKSB7DQo+Pj4+ICsgaWYgKHN0cmNtcChjaGlsZC0+bmFtZSwgY29u
ZmlnX25vZGUpID09IDApIHsNCj4+Pj4gKyAqdW5pdCA9IGNoaWxkLT5uYW1lOw0KPj4+PiArIHBy
X2luZm8oIm1hdGNoaW5nIG5vZGUgbmFtZSB1bml0ICclcycgZm91bmRcbiIsICp1bml0KTsNCj4+
Pj4gKyByZXR1cm4gMDsNCj4+Pj4gKyB9DQo+Pj4+ICsgfQ0KPj4+PiArIH0NCj4+PiANCj4+PiBX
aGl0ZXNwYWNlIGlzIGJyb2tlbiAoZ2l0IHNlbmQtZW1haWwgbm9ybWFsbHkgZG9lcyB0aGUgY29y
cmVjdCB0aGluZykuDQo+Pj4gDQo+Pj4gQnV0IGFyZSB5b3UgYXdhcmUgdGhhdCB5b3UgY2FuIGhh
dmUgeW91ciBib290LXRhcmdldCBsaWtlOg0KPj4+IA0KPj4+IGJvb3RtIC9kZXYvbW1jMC5maXRA
Y29uZmlndXJhdGlvbjENCj4+PiANCj4+PiBhbmQgdGhhdCBjb25maWd1cmF0aW9uMSB3aWxsIGJl
IGNob3Nlbj8gRG9lcyB0aGlzIGFscmVhZHkgY292ZXINCj4+PiB5b3VyIHVzZSBjYXNlPyBJZiBp
dCBkb2VzLCBhIGRvY3VtZW50YXRpb24gcGF0Y2ggYWRkaW5nIHRoaXMNCj4+PiBpbmZvcm1hdGlv
biBhdCB0aGUgcGxhY2Ugd2hlcmUgeW91IGRpZG4ndCBmaW5kIGl0IGlzIHN1cmVseQ0KPj4+IGEg
d2VsY29tZSBhbHRlcm5hdGUgY29udHJpYnV0aW9uLiA7KQ0KPj4+IA0KPj4+IChhbHNvIGdlbmVy
YWxseSBzcGVha2luZyBtYWdpY3ZhcnMgbmVlZCB0byBiZSBkb2N1bWVudGVkIHdpdGgNCj4+PiBC
QVJFQk9YX01BR0lDVkFSKS4NCj4+PiANCj4+PiBDaGVlcnMsDQo+Pj4gQWhtYWQNCj4+PiANCj4+
PiANCj4+Pj4gKw0KPj4+PiBkZWZhdWx0X3VuaXQ6DQo+Pj4+IHByX2luZm8oIk5vIG1hdGNoIGZv
dW5kLiBUcnlpbmcgZGVmYXVsdC5cbiIpOw0KPj4+PiBpZiAob2ZfcHJvcGVydHlfcmVhZF9zdHJp
bmcoY29uZl9ub2RlLCAiZGVmYXVsdCIsIHVuaXQpID09IDApDQo+Pj4gDQo+Pj4gDQo+Pj4gLS0g
DQo+Pj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwNCj4+PiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAg
ICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfA0KPj4+IDMxMTM3
IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0y
MDY5MTctMCAgICB8DQo+Pj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAg
ICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwNCj4+IA0KPiANCj4gDQo+IC0tIA0K
PiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfA0KPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAg
ICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfA0KPiAzMTEzNyBIaWxkZXNo
ZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAg
ICAgfA0KPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6
ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0KDQo=


