Delivery-date: Wed, 16 Aug 2023 12:37:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWDuG-0069Lb-Qe
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 12:37:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWDuE-0001Xz-PA
	for lore@pengutronix.de; Wed, 16 Aug 2023 12:37:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZrDSXn02ukY/1jKdlZEIVTWx+WAgDiwi7t12UBO+U3A=; b=L1HRU2/662+YNqsgtcJ/xRc8oQ
	4LtzAqYRZ2wemXRUaciAL2gEcx/nLf5ekoIJomIOAMSOeFYPFbsxNNxdB5xFydHD6P4+xX0DQy+o+
	yEwYG/9h/YDo52P7JhbhzxE6IFaMDUoo3dDA5uJIXhrHjlFDOduKHdCiOQ6aIe50svzef80MOE3FM
	lShn/e/mx0XJXewZGrHpo8kV53Zez2UbJd5qA9o18k5WsdjEFA3322Ov67zP7WLBONkMWwzGLKRyR
	LyW4Z1sFEaHGFVtfLc4iAM7GV6/+93HJXOIZKNPUwUcKk4bSEPioE5xuDZz8gE5qNm9I9OFJKaTeL
	Gsrdj27A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWDt7-003rHU-0w;
	Wed, 16 Aug 2023 10:36:29 +0000
Received: from mail-vi1eur02on20604.outbound.protection.outlook.com ([2a01:111:f400:fe16::604] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWDt4-003rGl-2c
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 10:36:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BGyvyk4/LYMi/q23M3odhSJsn3qZgTuVwBbF8px5RLnRyOY61PLczx6ADCNxE+2b61Gp8brSMMQDRp0XrM10lOUl9uJpndj+Xp9/3mjVkNcdduuSfpze63kMYvWMCfpswGrlaYQ555DR3JLMyY7Uo5uXXG4Vr5+r20acoj3Oll88JycN1BgjMcCQGZBSNKG0vA5xhIF/6WYAeltKCBJqNZtPAnCHMoP29rg1GsQ5aGjChVf4Phblz5Z/bkFCN/DLsSwi08lbTGY9n+knCzVeyTz/arRFOnG3I9UybW2F6RGhuwcwhbugaUY4GYFyI55ojD08cGKA1AC0o16lLh0Pfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZrDSXn02ukY/1jKdlZEIVTWx+WAgDiwi7t12UBO+U3A=;
 b=NBEMXsxZqFZopvHDsR42lptyJatfRV6iOdBnMsXWZzelUAXm6Ck9PEOGxvPeqLfHtBRs3qKl478kfWzC0P/Tzd4SiGE8UVb44JjEN3gMIcpMuP8NMoloxgNDxR14398eeP6VVqNQkMrtfIQz8zOxiHzSmXg1h/xhzTiG4y/X8JONh/dfL0SVXfgmM4CTkudD698iy+NvcCZJmgBUiXmkj8Hm0SCjuPNXaLIaHmN5X01OFyW2eYlwnvsCjg5FIDFpK0wqDUgwPAYvSWiZ6azz54tkhcZT9VeWFfOPrgL+g2RYtvZx7uvfgXQ0QwJWaZkZJb6cWwJmg971LDjgkTmE3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZrDSXn02ukY/1jKdlZEIVTWx+WAgDiwi7t12UBO+U3A=;
 b=dIwuX9NpeGQ2o6QqirXB2s2K2+jaF0IAYrMxcMhffMi5iuuycJZQA/fx4CYR+KXLXCXWX2qSF7yvaLf7cZmgmZ75HyvtIGyPR1+IKZRn6Z8bSebZBFEbdUbpn8QynfbNLTsyXt/8FyTCFBRITRvGMIdNbnRML5LgS/+pQPT0lNA=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by GV1P195MB2033.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:5e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 10:36:17 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 10:36:17 +0000
From: Lior Weintraub <liorw@pliops.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Barebox PBL with uncompressed barebox proper
Thread-Index: AdnQLM5R08lcrCAnQASl0DOuC0F/VA==
Date: Wed, 16 Aug 2023 10:36:16 +0000
Message-ID: <PR3P195MB0555163C72FCE82E3A4052F1C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|GV1P195MB2033:EE_
x-ms-office365-filtering-correlation-id: 0a5e1886-9a54-4291-03b9-08db9e449f3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3NsdbFLmuiPAcEZkL1x/Bsqm8GFvFHUWm7lvPh6kgKJ62zf59kWqgR+DXp85g6vPrGkoqelyEjVKdoY+lRogaM1TCxDJhlS8sPskSBOpIubYPb6N34Lk7yQ+iLf1WDJusX9yWweLPFu/SWx7aqvdMmJJJy8lILfDOML0lN7rJfcYPC23XPwgy/I/XVHawwfBt3kisAMsXefKRUWFP2IcDQjJoeOOHRu57J/oe4vZxSyhcFSr7H97vGc3tUD0+J46ow3Z7UZxHvvk1CMaECbPFE4x2J9uld3dYYUz34+6AMFe7Gn1n+gBeUlYU3kVQuC2MYQwiAc0JJep0KNgxnX/USZViR3jFb/sbL20CK6QGb8xFkKa/+bv2HnZURgstTXz8RWY6OXjjmhSaP30p0EtkdDG+D7vQ9SKYZ6rFf9t3EsjnEAkh8Iy8UXX7zbd3qdItzuxZVpwT0Y5iYkhHhEc0VIRZr9SaA6npo+1HwIeqDCtY6AaWEPzuLJJyX04IU4n/Hd3jJbWifmPN/atBWYx5Z1ELUIEv6+UFlECsYOzmC77rCKJ8FseTpZLRo0fwCpG59f06axVE84tjECc2sfp6nf+4V36OXuC47rUU1q9/0Yka6lAxbrmI24I7+4LQnfQ
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(366004)(136003)(396003)(39840400004)(1800799009)(451199024)(186009)(2906002)(86362001)(478600001)(7696005)(6506007)(71200400001)(33656002)(558084003)(9686003)(26005)(55016003)(5660300002)(41300700001)(52536014)(122000001)(6916009)(54906003)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(76116006)(8676002)(8936002)(4326008)(38100700002)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVBzZFpQbUlGTXBqWlUzT3lLa1dmOGRlZzhSenE4QjJrRWlYOG9vbkJBWDk0?=
 =?utf-8?B?RmRiZDZvb1dYdXc3Z1UxbW9wVmRuL1drMEhVVkludmc0eE9XNk5kVzZBTzlU?=
 =?utf-8?B?aURub1p3eHIwTW1BcDJFUE5Xamk3bENnTnNHRW11U2p1QmpjNzgxZSs2dTIy?=
 =?utf-8?B?Z3Q4RlZBd2ZHVmpCNUkvTmh2TnhJU3JtZ0EwN3Y4RnJYL2hyYW9XamsxQmo5?=
 =?utf-8?B?bUY5QmNlN005NGlHd3Z6Nnk0eFczU2s2eW9rT0pzZVJQRHRkZDVyMStrV2xH?=
 =?utf-8?B?azZiRjdmSW1oY2dQVkZlc0lDQ040aE96TWt3UnkvcndNcGVDeERkb2lqZmc2?=
 =?utf-8?B?a0JtYjkzTW1pUk5HdFBBbzRmWGp1T0ppTU9wUlFGa0xyWnFjSjhKQldWSnNM?=
 =?utf-8?B?bnJPUjgxMW5XYUNlbG1TSmpheHNRUlRWUjh6Zk01QlhTMThwOEt1L1Bjd05W?=
 =?utf-8?B?eVRjdUsvSm04a0F2elN0SHJnNGx2bHZVNkt1QWJES0NEeTA1bFRNdzN4cVg2?=
 =?utf-8?B?cmt4U1Zlcm1GLytjc2FYWHVKNklnYXFxamJmQnM4OW5tVkxuemF0U21ObmhG?=
 =?utf-8?B?QjZIQktJd29sbi85MXhqa1RSaE5zZFVmZ1RaZFZEQkFub29UL2JGOFR0QU5a?=
 =?utf-8?B?RXlBQjhxZ1VlT2tDNUlIUE5za2NpcXE3eVVlUmthQk9ISzJUTWQ0V29tNmhh?=
 =?utf-8?B?NjBMNkkvS0cyVlY2dzNYZDBFaVc4M2w1QTlMYkZCWHpldXpvNVhsbFdLaWg3?=
 =?utf-8?B?SHdnZ3NlOHdtZ2lMbTF1QXhlVGo1K0oyOHNlSDVOWWdNcGR0WmlhWTNJNW1h?=
 =?utf-8?B?MFA1bTJFMUZseEIwR3R4TEtUbHo4RHVSR0djWktqaHZoQkxmSWY5MkUrVTh2?=
 =?utf-8?B?VkRDd2JZRWQ4UDR2MklHYk5wQzdBRVAwaGV0NU54NWdBLzVxREVBajNrMUNB?=
 =?utf-8?B?T3oyd29DancyWUFORjYwZmNBNzB3bnJmbVl4Y2Q3SkozblVZeWttbUlvdGJq?=
 =?utf-8?B?aE9ZQWRBT2hzR3o3WWlLQWZHWUZrZlFrRXpRcTZtOWVKazVHRk1XRTFRUDVZ?=
 =?utf-8?B?SEw0UmtQYW51Zm1vb3R1UGt6L0UzVFdCbC9iQXJWaTRmdUN1bTVNOC83bys1?=
 =?utf-8?B?b1YzNW9TVkF5QlQrSFVZZUxmOVprcWxiS3Z1SGFDTTV5a1gwWVFKTS80N0pE?=
 =?utf-8?B?QnFpTU9MVmk3YWVIbTdkM3RoNEJmeVFnR1hjTHBwTTRRQmlpRHJuR293bDhX?=
 =?utf-8?B?MEVYb2Zwc3BYYzNIdzFETm9NVUdycXdQUlU4ZGt6Vjl0WUJNQkNTUjE2S2cw?=
 =?utf-8?B?UHFnZDVNbHRCZVU5SGpOeG1WWkVOV1BWdGpFTW1ZRE5xc2Z3YmRXS1ozYnBH?=
 =?utf-8?B?NWF1R2pUbnNVVjBMUWhlZERodWZ4eldtU25jN01CUHdFcHlWUW0wQURQMUE1?=
 =?utf-8?B?V3l4VlYzNk9HZHM0Rmcxb2RyLzhhRHlqbWlzYndvbk1ZQ1ZDc0dPSFgrZVc4?=
 =?utf-8?B?REF5enI2S1BZUVZ2U1NWdVpONXpwVW5tejlyVSttTWUzclJvSnhxclhiNUpn?=
 =?utf-8?B?Mm5kQklJNE5DcHhrUGFneVRvQUM5Sk5YU3JNcWNIbEJaYWpnUi9pUFlWQitK?=
 =?utf-8?B?VUkrVmt1SllpdzlHb2ZzUmhLajQrNkFBNkFBK1g3cHlNR2NHMkZ4MEJnK2Vx?=
 =?utf-8?B?RzNwNEtudVplbElVdWFGSHM5M2NJU1ZFVHltZW1jaTYrMUFUS3Nidk5uME0y?=
 =?utf-8?B?dDRadnIvOGVYbXptckNVOFdkYUt5enNST0xQaFYxQWJQcHJZODNFUzBLdS9K?=
 =?utf-8?B?VjFSQ1JBM3RuM08zdmp3SGRhWVd4UzdRQkZ6eUxVakR2eG1selJoc3p3UHFh?=
 =?utf-8?B?TmZpaUsxblpYbEVvSVk4ODRWZmJVMjUxWEI3bGljZ2NsYjlIUjZVaWppemVy?=
 =?utf-8?B?N1p4dUFkbXd4bG56K1ZWMnU4cWhhQVE0d09yeERoTEp0bXhEV2M0cHVaUHVV?=
 =?utf-8?B?Y0o2a2QxdlJ1N1U2dy9MbWRJSXNPMTBVemhuK1NsSDZwSC81S1RwVTByTm9M?=
 =?utf-8?B?ZkNhZG5iNG50a3p2ZE1CR2tDUytJSnZka0tGVFBaZEdXRDFma0Q1djZHcndV?=
 =?utf-8?Q?FHz0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a5e1886-9a54-4291-03b9-08db9e449f3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 10:36:16.9632
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NI/vW0v46FbLeQmk39qjLpNPQfqPWGlFIYvRp/8H3pedVUQypbtX9ZLuMz3x6WWStEC5aASxdhhmafoviIIn7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P195MB2033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_033626_855244_D475EDB4 
X-CRM114-Status: UNSURE (   3.82  )
X-CRM114-Notice: Please train this message.
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Barebox PBL with uncompressed barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGksDQoNCklzIHRoZXJlIGFzIG9wdGlvbiB0byBidWlsZCBhIGJhcmVib3ggUEJMIHdpdGggdW5j
b21wcmVzc2VkIGJhcmVib3ggcHJvcGVyPw0KVGhlIGluY2VudGl2ZSBmb3IgdGhhdCBpcyB0byBh
Y2NlbGVyYXRlIFJUTCBzaW11bGF0aW9ucy4NCg0KQ2hlZXJzLA0KTGlvci4gIA0KDQo=


