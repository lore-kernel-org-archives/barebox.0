Delivery-date: Thu, 07 Sep 2023 10:31:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAQh-006uaG-1b
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 10:31:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAQe-0001gX-O4
	for lore@pengutronix.de; Thu, 07 Sep 2023 10:31:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oGslBm+N1yia0cosB4bmOiKKJT6SWJI8xJgYplsgdys=; b=J7cNSmEX8tEaunzezby5UO+tIa
	9jQm3A6HxbcRuf+sCtw4REZgOP1l7oGr/7HsamdbBc28uRHIprbGkx7DnAaL5sZT8Eqyd31eIf/pr
	fugN9c1+C/M1AbKpsDfRhLR3tQ/lDuIUOUBSaVQUsFe0grnsYYrWadv0HcDk4MgX+E7c+Hd15/Oiv
	UZp5du3CUZHtfbVc00SYKeh5f5/7667a9imNUConChegrw7FCfu0OtMrWOhkGZwZ7yvz2ZXGDrPDE
	TEmmAwg3bZ7joLEtstgpEiXPQiayO7cbwoAb+aC8MJ41YmghkI0DDKf6ynYaL3wp2g9ULsNXTYXuH
	8GSFAq6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAPW-00Barh-1a;
	Thu, 07 Sep 2023 08:30:46 +0000
Received: from mail-vi1eur04on0619.outbound.protection.outlook.com ([2a01:111:f400:fe0e::619] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAPT-00BaqJ-0y
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 08:30:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gtEjrEIgY5+1f/r9zgdnrycHe3GSzPH2ptm/m37PQep12qqioKaP83lMmIuBEdhOTBL76dFXMsvSY/zBiIyYrtK35ynlpISLS3pqekMjcCY2IVhLUP6I/1U7+Bd93VhWAxWWvVkZjcqfo4ePhDRsbCG/0iq/MDIDXspYVrFjDDs3iG8j+u/yglkaezCgC0n6UUBNfBE2iaFiX4suPAs/Sjd160YFnFZQimnULzpsSwfiFUIC2Xtj9RKhRpFEbdIqRQKJc98aZulER+Hpy6fc5NbdziMPEqPiU0Dv9+MCA592RaHLV17kyQn0BDmEQEtR4UXrlTP8Lw364h3mNfKpnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oGslBm+N1yia0cosB4bmOiKKJT6SWJI8xJgYplsgdys=;
 b=HkoOeZkKC9Zw59dHuDa8bjEMyoedrZKYqlNn/m/Oyh6ECihvNjxAqHANjO1X27l0lWo12NcO7e7ZlkcbZ8uzK+qvlr/j0BI0sQtYCm2J6eqBMeXjLnUO6eC4SIL5ki6Tf0105TAdthvHR5qIWM/IDmhScr5huQZ+LcAZ/lUbSa6Rn9Y6MeoARIAwJ8/Zz2fiElQJZRzWI5j+nHhGETJ9sRRaSfItgxt4ip+o/gGlHz9eLXc0OH2hgD0taoqJ5HKQgHjhv9ph2rueS/m0qPwuN6vEgJ2z1vgLVW5K2LqHoAxv+Uj4U+O3OAot6GwrYOlZeMpieZ/jUMxvFuNe/sRbSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oGslBm+N1yia0cosB4bmOiKKJT6SWJI8xJgYplsgdys=;
 b=dHTdZcUNnZg5ovK/DzL/4qPj2DZ6C2d+/wIBhZMcclWc07BEFufd8ebCSjMbgCvtnwskt1AsoizdGJ7PTmILYWBs1FkftvNFqpCExMgczhz3NA8PC9z+qQw60TkTOxgxIBDSPkzmYpRI5h5VLk/yFpSq/1dGmMzzxBl7Qf1hTW4=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by DBAP195MB1081.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 08:30:35 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 08:30:35 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sascha Hauer
	<s.hauer@pengutronix.de>
CC: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: ARM: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
Thread-Index: AdnOnQXgXYDt2cKZSYekXmjH6b9DyABi6SAAAAA+kyAETtdlgAAAHtAQ
Date: Thu, 7 Sep 2023 08:30:34 +0000
Message-ID: <PR3P195MB0555BADA6D384623482DC8D1C3EEA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555C0CAAE5F70743B7DC534C317A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816100146.GF5650@pengutronix.de>
 <PR3P195MB0555474B08A4CAF79B7AF804C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <1051bfae-680e-b4d9-3036-87802801710a@pengutronix.de>
In-Reply-To: <1051bfae-680e-b4d9-3036-87802801710a@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|DBAP195MB1081:EE_
x-ms-office365-filtering-correlation-id: b618da8f-b9b4-4e7b-ef88-08dbaf7cb4f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vlp2eAXCawcbYeDQ3AJNwqSprt1qlA184yyAUltYfogcI0tefTroAhafvV2RNl0kv/p2M5bdz/asUEAAjXtFdHS1EljjJ8dCyWl60sh9G6aG/DJZISRGtmVF1iAoWHSTIkq0R8TYtUHmG5mQwY7cetn20O62gv04sP+sk6uDjT6rroV1xJBCE9NM/14VCV42Bc8zqgYBxeYPhxHl6Qo3q3CvcQoAz3kEoQKY9gS+KuCWqzd/yLOGG8xANoKT/8HLIhCqhLR5RXTKOs0aEGsNi0TKXt86B0UQYjrT/cZRonMYGKv5ajgZJsz+7SEF4c0mFqUCiFqlG7mdZ8Xkxvjsd4MyjFL0viMCYTLNZO9trAOJDkudAnSaaOC9p2IIQf7tYRyNMIggfK8DDfLp2/WMdql/M2/VFG1/GT/YVmzoRpFu21rvOrTjkDg3t58xYFl2M0fBykeiqAy3HM0gdFbbcuZRa8Pd/4qi1oNoEBteOXGRfuUDTtR7LNYjAXN1wZwEpQY//dqGT0ANyr0tFCyuPuIZ7pwpgDL17xvySuFJ5ISUa8JE1zRjI7fcB5HETVmc1iCnV2RnotJI0C1ymfEQSMTD3ZCQufZzgAz/YH2aZPY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(376002)(136003)(396003)(346002)(366004)(451199024)(1800799009)(186009)(41300700001)(33656002)(8936002)(8676002)(4326008)(86362001)(38070700005)(38100700002)(76116006)(52536014)(64756008)(66946007)(54906003)(66476007)(66556008)(66446008)(122000001)(110136005)(316002)(5660300002)(19627235002)(966005)(478600001)(84970400001)(71200400001)(2906002)(53546011)(9686003)(6506007)(7696005)(83380400001)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NENFKzVEV1pzSkdocnhtTmFuNytYeFVMZ1MwUEhKUmNKd1ZuZ1RWcWI4b1pC?=
 =?utf-8?B?S3kzRXlPc01LQitocmVnN3NFZ2UzMEhGZ281OWRGWEUzUmRZQlVxM2NlMURm?=
 =?utf-8?B?TnN4S1BtMklyQlo3TlhXOVZPblFHbGN0YjNVSWx6OGdFb2piaUVVcElCdDln?=
 =?utf-8?B?cHMycUhEeFhLNDF6ekhmUDFRNURacmlaWTdtNUpCMDgxRjhhOUVveUpvc0hX?=
 =?utf-8?B?aU5ITDdKNXlLVTIxZU4vRnNZdk5tK2x6amVHcnBvTUtjbWNYcEptMVkxTnd4?=
 =?utf-8?B?R1dBR05zWmxmM0w4MEE4TUJ6ckpzTHdEcno2RHB2bFhYRXZVTHp6RnROUnJ0?=
 =?utf-8?B?SE9KTUpBMkN3NGZ1ZE5WdXE4TjRIVFkvamVZeVM4ZUhHdWRRWW01MEVsV3hI?=
 =?utf-8?B?TmFEa1NCZlVsR3pwemhpY0dCNFZRa09MQlJmQnlhckhWL1BFUDRXUkY5SllZ?=
 =?utf-8?B?NmdHWG1tU0l4aE5hQlVINllKWjFNYkZDUllWYkJLL1d0U0Q1d21FcUg3ZEpB?=
 =?utf-8?B?UGIvYks1bGRucXFkZzRIcGZOVENsL0ZYSnZ6R2NDdnJmVWNFdmZnZTd4bkdj?=
 =?utf-8?B?SGZMVU92WWx0Qm5QTzB2NHBPWXlEN2JFT0t0UFY5U09JejY4aFlqbmdLOTlk?=
 =?utf-8?B?NHkrZ1JNL2lqQ0RiRFlPMFZHV0w2S0V0THlNMG9QT2p2T202U1orS0ozMzB3?=
 =?utf-8?B?U2s5S0xKYlRMYzlibUxtblI0YlBTcndWelNzRS90eHZWZ01xN0laV05YYUZi?=
 =?utf-8?B?TkFtV0dhYnZxeWM2RTF6UWF4eWZiZWNDUEI2U1VYcFMvcnhOSmxWYmo4QTFw?=
 =?utf-8?B?WS9pMm9hOUVudlI2NEN2c2VQMEVEcGhFZDBONkxOZ0pJL29lQ1gwK0Z0TmdN?=
 =?utf-8?B?cFVZcU5oQXdmb1FBQWs3OVROUmk0VUVvMHE4NUxwNUIzVmhkeTQ2eUhHSFJV?=
 =?utf-8?B?MEFDbHQ1NnZZdVpQNG5xMzFzMkR5U2N0VFkreDFMUTBSS1lNUzBPSFRCQUtl?=
 =?utf-8?B?Zzdmd1JBZXJpVHpORFFsM1FpWExVOUUrTjlPV3pEVHZ2eFJ2RTEzbmhTNzBx?=
 =?utf-8?B?ZGVNRU9rQzl1NnZ1YkpndHBjd3RCUnFJMXFhY3plMUQ2Q2d4R256TDFwM0hR?=
 =?utf-8?B?dmtlN3pDclVjdHdNRnhtSjBVWmRIUE5IclhBVWw1elBBWDBKUE1MVit2aEJK?=
 =?utf-8?B?RHBnaFRPS0FzUHYwaFZoVXRCVmRwVXEzNE40SGZja0dLejBMQ1k5ZDlUcmNr?=
 =?utf-8?B?RW5tR1BPU2VtYW9xVzVQalVKMFpZYXdrQUhpOXVWZFBaUmlRaUhwaGp0RXBr?=
 =?utf-8?B?UUdaZ1lWU085Tm8yaFRjT21rVWJvQUtVNS96anVsTlJQMGxtdmZPUE94M0Rw?=
 =?utf-8?B?RmRFTjNGQW9Td3J2SVNFQTVWcjcvQjVxWFU2TERsWE1CeGZ5UUx2OXJ2V1Zq?=
 =?utf-8?B?YjRoc2FaWlNvTS95SEVmR2RTakg0WG42MkZzNXhtOGcwbmtXb2JkUURXazRw?=
 =?utf-8?B?cmFiSE9rT0ppVnNRNm43U2JVYkRNTHY4OXNObHc1c1ozaGJBeW5xMTBXS1Yr?=
 =?utf-8?B?UUtLS0dsSzFMMVFiWm5jNmZJWHEvRUVaNS9rTVo4RjVnVXFEbGN4eVA3SlEy?=
 =?utf-8?B?UUpKMkdnSW92U0JUaXczNnVMKzdOVUU5NEZrd1VqTDJvcW5QWW9FeCt0WEYz?=
 =?utf-8?B?cGxXVGE3b2NSazVzQ056eWY2M3RXeUY5RDlTMlRzeXE1RTk4akxVWWNUSDJu?=
 =?utf-8?B?T0FKaldJenRWVnVHSThYNGVQblhKUTU3ODg0dTNwb3hFcHR6QmdjWDBMbFh3?=
 =?utf-8?B?UUY3dkpPSzZhMzBabEZSZUpuYytvbzc3VjRFTHpkWmVYckw4U0xqdXdPNnVk?=
 =?utf-8?B?MUxnU3Z2YXEvbkN3cUV0cTZRWC9uK0g2a1lJeVRmeTNBN0F5cWZJR3ZhUlVx?=
 =?utf-8?B?UDBxQlBlam5vWHo2bStuVXFTTkpTN0NmYXBWaWlldmxudzZsOTRNcVZYSUJL?=
 =?utf-8?B?RERsRGxYMzRYd1pPOHY0ZW12dzY2NThSb0tKVU0razFVUFBoL0NwMVk2Wkli?=
 =?utf-8?B?bytXVkZhdjhsc1lON2tOTVpsTlRLeG5OU0FWMVB4N3Q0TThLekVDOEIzTmxF?=
 =?utf-8?B?Wk54aEhDcXVCVnBxUkhlckIxOWZ2RzZuVW4xUnprOEYvMUFIZXhpYjlUaFhL?=
 =?utf-8?Q?jOSWZS2P23bbtGvT17FeYUk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b618da8f-b9b4-4e7b-ef88-08dbaf7cb4f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 08:30:34.9455
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: brq5U9cHe9ObOxSkamlhw4IdOlfr+1Njc82HMUI6uvy3G7/89ibuL1VXI73j1dj8LwkByYv2hTrIr7oXTqzqNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAP195MB1081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_013043_561919_7B1701F4 
X-CRM114-Status: GOOD (  35.27  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: RE: ARM: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

VGhhbmtzIEFobWFkLA0KQ2hlZXJzLA0KTGlvci4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiBGcm9tOiBBaG1hZCBGYXRvdW0gPGEuZmF0b3VtQHBlbmd1dHJvbml4LmRlPg0KPiBT
ZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDcsIDIwMjMgMTE6MjcgQU0NCj4gVG86IExpb3IgV2Vp
bnRyYXViIDxsaW9yd0BwbGlvcHMuY29tPjsgU2FzY2hhIEhhdWVyDQo+IDxzLmhhdWVyQHBlbmd1
dHJvbml4LmRlPg0KPiBDYzogYW5kcmV3LnNtaXJub3ZAZ21haWwuY29tOyBiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcNCj4gU3ViamVjdDogUmU6IEFSTTogYWFyY2g2NDogbG93bGV2ZWw6IHBv
dGVudGlhbCBidWcgaW4gYXJtX2NwdV9sb3dsZXZlbF9pbml0DQo+IA0KPiBDQVVUSU9OOiBFeHRl
cm5hbCBTZW5kZXINCj4gDQo+IEhlbGxvIExpb3IsDQo+IA0KPiBPbiAxNi4wOC4yMyAxMjoxNCwg
TGlvciBXZWludHJhdWIgd3JvdGU6DQo+ID4gVGhhbmtzIFNhc2NoYSENCj4gPg0KPiA+IEFjdHVh
bGx5IHRoZSBib290bG9hZGVyIGlzIHN0aWxsIHVuZGVyIGRldmVsb3BtZW50IHNvIHRoZXJlIGlz
IG5vIHByb2JsZW0gdG8NCj4gY2hhbmdlIGFuZCB3b3JrIHdpdGhvdXQgTU1VLg0KPiA+IChvciBh
dCBsZWFzZSBkaXNhYmxlIGl0IGJlZm9yZSBqdW1waW5nIHRvIEJhcmVib3gpLg0KPiA+IEkgdG90
YWxseSBhZ3JlZSB0aGF0IGlmIHZpcnR1YWwgbWFwcGluZyB3YXMgdXNlZCBpdCB3b3VsZCBiZSBp
bXBvc3NpYmxlIHRvDQo+IGRpc2FibGUgdGhlIE1NVS4NCj4gPiBKdXN0IHRob3VnaHQgdGhhdCBp
dCBpcyB0b3RhbGx5IGhhcm1sZXNzIHRvIGFkZCBgZHNiIHN5YC4NCj4gDQo+IGFzIFNhc2NoYSBt
ZW50aW9uZWQsIHdlIGV4cGVjdCBNTVUgdG8gYmUgb2ZmLCBidXQgc29tZSBCb290Uk9NcyBmYWls
IHRvDQo+IGRvIHRoYXQgaW4gc29tZSBlcnJvciBjYXNlcy4gSSB0aHVzIHRoaW5rIGlmIGEgYmFy
cmllciB3b3VsZCBzYXZlIHVzDQo+IGluIHN1Y2ggYSBjYXNlLCB3ZSBzaG91bGQgaGF2ZSBpdCBp
biBhcm1fY3B1X2xvd2xldmVsX2luaXQoKS4NCj4gDQo+IENoZWVycywNCj4gQWhtYWQNCj4gDQo+
ID4NCj4gPiBDaGVlcnMsDQo+ID4gTGlvci4NCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiA+PiBGcm9tOiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+
DQo+ID4+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDE2LCAyMDIzIDE6MDIgUE0NCj4gPj4gVG86
IExpb3IgV2VpbnRyYXViIDxsaW9yd0BwbGlvcHMuY29tPg0KPiA+PiBDYzogYW5kcmV3LnNtaXJu
b3ZAZ21haWwuY29tOyBiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmc7IEFobWFkDQo+ID4+IEZh
dG91bSA8YS5mYXRvdW1AcGVuZ3V0cm9uaXguZGU+DQo+ID4+IFN1YmplY3Q6IFJlOiBBUk06IGFh
cmNoNjQ6IGxvd2xldmVsOiBwb3RlbnRpYWwgYnVnIGluDQo+IGFybV9jcHVfbG93bGV2ZWxfaW5p
dA0KPiA+Pg0KPiA+PiBDQVVUSU9OOiBFeHRlcm5hbCBTZW5kZXINCj4gPj4NCj4gPj4gSGkgTGlv
ciwNCj4gPj4NCj4gPj4gT24gTW9uLCBBdWcgMTQsIDIwMjMgYXQgMTE6MzU6MDVBTSArMDAwMCwg
TGlvciBXZWludHJhdWIgd3JvdGU6DQo+ID4+PiAgICBMaW5rOiBbMV1GaWxlLUxpc3QNCj4gPj4+
ICAgIEhpIEFuZHJldywNCj4gPj4+DQo+ID4+PiAgICBJIGFtIGFza2luZyBhYm91dCBhIHBhdGNo
IHlvdSd2ZSBpbnRyb2R1Y2VkIGFib3V0IDQgeWVhcnMgYWdvOg0KPiA+Pj4gICAgQ29tbWl0OiBj
ZDZlMTg1N2E2YTgyNGQ1NjJiZDI3Mzc5ZDE5MTYwMmMwNzRmNmI3DQo+ID4+Pg0KPiA+Pj4gICAg
RU5UUlkoYXJtX2NwdV9sb3dsZXZlbF9pbml0KQ0KPiA+Pj4gICAgICAgICAgICAgICAgICAgIHN3
aXRjaF9lbCB4MSwgM2YsIDJmLCAxZg0KPiA+Pj4NCj4gPj4+ICAgIDM6DQo+ID4+PiAgICAgICAg
ICAgICAgICAgICAgbW92ICAgICAgIHgwLCAjMSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC8qDQo+ID4+PiAgICBOb24tU2VjdXJlIEVMMC8xICovDQo+ID4+PiAgICAgICAgICAg
ICAgICAgICAgb3JyICAgICAgICAgIHgwLCB4MCwgIygxIDw8IDEwKSAgICAgICAgICAgICAgLyog
NjQtYml0IEVMMg0KPiA+Pj4gICAgKi8NCj4gPj4+ICAgICAgICAgICAgICAgICAgICBtc3IgICAg
ICAgIHNjcl9lbDMsIHgwDQo+ID4+PiAgICAgICAgICAgICAgICAgICAgbXNyICAgICAgICBjcHRy
X2VsMywgeHpyDQo+ID4+Pg0KPiA+Pj4gICAgICAgICAgICAgICAgICAgIG1ycyAgICAgICAgeDAs
IHNjdGxyX2VsMw0KPiA+Pj4gICAgICAgICAgICAgICAgICAgIGxkciAgICAgICAgICAgeDEsID1T
Q1RMUl9FTHhfRkxBR1MNCj4gPj4+ICAgICAgICAgICAgICAgICAgICBiaWMgICAgICAgICAgeDAs
IHgwLCB4MQ0KPiA+Pj4gICAgICAgICAgICAgICAgICAgIG1zciAgICAgICAgc2N0bHJfZWwzLCB4
MA0KPiA+Pj4gICAgICAgICAgICAgICAgICAgIGlzYg0KPiA+Pj4NCj4gPj4+ICAgICAgICAgICAg
ICAgICAgICBiICAgICAgICAgICAgIGRvbmUNCj4gPj4+DQo+ID4+PiAgICBUaGlzIGNvZGUgaGFz
IGludHJvZHVjZWQgYSBidWcgaW4gb3VyIGJhcmVib3ggcG9ydGluZy4NCj4gPj4+ICAgIEl0IGNv
dWxkIGJlIG91ciBtaXN0YWtlIGJ1dCB0aGVuIGFnYWluIHdlIGNvdWxkbid0IGZpbmQgYW55IHBy
ZXJlcXVpc2l0ZXMNCj4gPj4+ICAgIGNvbmRpdGlvbnMgdGhhdCBib290bG9hZGVycyBuZWVkIHRv
IG1lZXQgYmVmb3JlIHBhc3NpbmcgY29udHJvbCB0bw0KPiA+PiBiYXJlYm94DQo+ID4+PiAgICBw
YmwuDQo+ID4+PiAgICBUaGVyZSBhcmUgMiBidWdzIHRoYXQgY2FuIGhhcHBlbiBoZXJlOg0KPiA+
Pj4gICAgIDEuIFRoZSBib290bG9hZGVyIGVuYWJsZWQgTU1VIGFuZCBzZXQgdGhlIFNSQU0gKGdp
dmVuIHRvIGJhcmVib3gpDQo+IGFzDQo+ID4+PiAgICAgICAgbm9uLXNlY3VyZSDigJMgVGhpcyBp
c3N1ZSBjYW4gYmUgcmVzb2x2ZWQgd2l0aCBhZGRpbmcgImRzYiBzeSINCj4gY29tbWFuZA0KPiA+
Pj4gICAgICAgIGJlZm9yZSB0aGUgImlzYiINCj4gPj4+ICAgICAyLiBUaGUgYm9vdGxvYWRlciBl
bmFibGVkIE1NVSBhbmQgZGNhY2hlIG9uIFNSQU0gKGdpdmVuIHRvDQo+IGJhcmVib3gpDQo+ID4+
IGFzDQo+ID4+PiAgICAgICAgbm9uLXNlY3VyZSDigJMgVGhpcyBpcyBhIGJpdCBoYXJkZXIgdG8g
c29sdmUgYmVjYXVzZSBpdCBuZWVkcyB0byBjYWxsDQo+ID4+PiAgICAgICAgY2FjaGUgaW52YWxp
ZGF0ZSBvbiB0aGUgc3RhY2suDQo+ID4+DQo+ID4+IEV2ZW50aG91Z2ggaXQgbWlnaHQgbm90IGJl
IGV4cGxpY2l0bHkgZG9jdW1lbnRlZCwgYmFyZWJveCBub3JtYWxseQ0KPiA+PiBleHBlY3RzIHRv
IGJlIGNhbGxlZCB3aXRoIE1NVSBkaXNhYmxlZC4NCj4gPj4NCj4gPj4gV2hlbiB0aGUgTU1VIGlz
IGVuYWJsZWQgaXQgY291bGQgaGF2ZSB2aXJ0dWFsbHkgYW55IG1hcHBpbmcgYW5kIHRoZXJlJ3MN
Cj4gPj4gbm8gc2FuZSB3YXkgdG8gZGlzYWJsZSB0aGUgTU1VIHRoZW4uDQo+ID4+DQo+ID4+IElm
IHlvdXIgYm9vdGxvYWRlciBlbmFibGVzIHRoZSBNTVUgYW5kIHRoZXJlIGlzIG5vIHdheSB0byBj
aGFuZ2UgdGhhdCwNCj4gPj4gdGhlbiBpdCdzIHVwIHRvIHlvdXIgYm9hcmQgZW50cnkgY29kZSB0
byBkaXNhYmxlIHRoZSBNTVUgYmVmb3JlIGNhbGxpbmcgaW50bw0KPiA+PiBiYXJlYm94LiBUaGF0
IHNhaWQsIHdoZW4gdGhlcmUncyBzb21ldGhpbmcgY2FuIGNoYW5nZSBpbg0KPiA+PiBhcm1fY3B1
X2xvd2xldmVsX2luaXQoKQ0KPiA+PiB0byBoZWxwIHlvdSB3aXRoIHlvdXIgY2FzZSwgdGhlbiB3
ZSBjYW4gZG8gdGhhdCwgYnV0IEkgd291bGRuJ3QgY29uc2lkZXINCj4gPj4gdGhpcyBhIGJ1ZyBp
biBiYXJlYm94Lg0KPiA+Pg0KPiA+PiBTYXNjaGENCj4gPj4NCj4gPj4gLS0NCj4gPj4gUGVuZ3V0
cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwNCj4gPj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAg
ICAgIHwgaHR0cDovL3NlY3VyZS0NCj4gPj4NCj4gd2ViLmNpc2NvLmNvbS8xN1JkU2NQX1RCb1hx
YzFJZXJ3aFpYOGtBSGhxdXRqQW5CeVBpVU01bE5aSnlONk9EDQo+ID4+IGprZFRueVlDenJxcFJa
OW1kTGc0d3AtZFppRWxBYWszaVM3bGYtWVF3TkZTYXR0dy00enhJdDZyb19xSGgtDQo+ID4+DQo+
IDhvdkszM1RCZE1ucjVxTDVxUEtGVXJpWVlROGJMTUFuTUhhNGJLdFRJZmhaSTJlU1hVcjZocWpE
Y25vS1oNCj4gPj4gR0tVTzJkYkJEWGNlWDNOVC1xbDlHQmx3ZEgtbW1raGQ5ZmdZVjJyMFV0UjRv
dDVkNThoZzQ1SlRKLQ0KPiA+Pg0KPiBMc3V2TlZNc0tyRlpkMUl1M0FpTVNqbWk0RTVCRGM2S3BR
eF9NZ0FENDEwRlFXQzBIcERhdmhTYzFEQw0KPiA+PiBCZ2RNTzJSbEdyWmswTC0NCj4gPj4gU3Qz
bl95SF9RWnZINFVmalkvaHR0cCUzQSUyRiUyRnd3dy5wZW5ndXRyb25peC5kZSUyRiAgfA0KPiA+
PiAzMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5
LTUxMjEtMjA2OTE3LTAgICAgfA0KPiA+PiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4
NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfA0KPiA+DQo+IA0KPiAt
LQ0KPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfA0KPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vc2VjdXJlLQ0KPiB3ZWIuY2lzY28uY29tLzFTSFVTX3A5RVlU
akVnVXZaWEtycTlOdm54Qk1tR2FjaXRqZFNFQVNoNGJVQWlrM3lrDQo+IGk1eUw1eTVubHV2UWI3
RGtyTHVxR19JUEN6WnFIOFRTYVdkT3ZKSXlyVmJ2Y0dKNHBPdFEwTlY0aW1vSlpVWA0KPiByMzdF
NC13NVN5bWpSeHBzNzZXVmF0Xzdhem0tDQo+IE96bTZjZURoUWJsZ01Ub25mbDdWdmk4WkJ3OEZR
c3VSS0NrR3I4dDVScmVVOW9leG8tDQo+IHFzdnpYUEFOR3pGenZ2OUlsM21tbVJFM1I4TTBwX1F4
SlY4eHZTNEFrWXo3SVI2NFh2N09saDZ6NUk4Vmd5DQo+IFFCeFZ5QjNkRVhYbWhwWTZVb2plX2tz
dWVpM3ZNdE5RMGFQZ1lzc213VldvbHlJaDFOS1BvcnBGeWtjdw0KPiBWaGpMOXoxay9odHRwJTNB
JTJGJTJGd3d3LnBlbmd1dHJvbml4LmRlJTJGICB8DQo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1h
bnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8DQo+IEFt
dHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEy
MS0yMDY5MTctNTU1NSB8DQo+IA0KDQo=


