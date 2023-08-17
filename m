Delivery-date: Thu, 17 Aug 2023 08:24:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWWQn-007aDg-FZ
	for lore@lore.pengutronix.de; Thu, 17 Aug 2023 08:24:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWWQl-0005rl-Hs
	for lore@pengutronix.de; Thu, 17 Aug 2023 08:24:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q6x8FwHTIZJx9nN2A7NhFP61/YkJtFNEiueIalhmZHI=; b=F3b5FyTwXguWnZ/bUlKFz1oZW3
	hc/4mKtbsDfB49Pej5bxBI46VsCvRs9VtsE88APNWZhxpnOPnm/YEo6jCq/gXfFql6Sv0ZAdVCwF9
	PvZcYBLu4afCf2pse2QkHIgwpR6K9WlyeoJEktFqEzlZaJee/6Yq3R9kfVewEWhdPAp+n6OWu7XwX
	qq67K+a8m8mpabMiUolc+2sKRMl57Jf28vuxUkMGG1hjTHAOU1T2E9HbX9nn4aTRNX+xwdv1GUNJ2
	S+2MJuiUT/HBGc2oQzYjun9YegvXSIQJlCPQOwsOsNA2PUKWlgVzCLvsRTDhirdvw9AbazZsgNvO6
	K/kuhctQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWWPN-005ddt-2n;
	Thu, 17 Aug 2023 06:23:01 +0000
Received: from mail-am6eur05on20606.outbound.protection.outlook.com ([2a01:111:f400:7e1b::606] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWWPK-005dd4-1v
	for barebox@lists.infradead.org;
	Thu, 17 Aug 2023 06:22:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q1xSlleE0r7aRcglTwFBeCuZbcwxxNYDE04E5z3CkCdo2pSKD5EHmmbmlgmW20lwfFfKQpTUz/lzZmwg6q9qvol2NC5ndDZlkm/zu0UTg3soQgBK+aOPqc/HVVfHJl0ubldnWYpytYcmdqrQT/UZ2cSY4Nuda4HXSNgy4U9lApDFhUwA/EYolN3STgVvWI//NY0HzVOgYbYnhrUcCc2HxF+mW6vwAdsbslrbX4fd0dqAuIFrW52fsERRdwWxcZKR59s+4+mWvM2kM/5i+Z17XpKH4GfxAY02SRpX6AnPPC5WMLqLDG/di7UdS0G3bCKL3mvWYaDKrPU7vYGAgatacw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q6x8FwHTIZJx9nN2A7NhFP61/YkJtFNEiueIalhmZHI=;
 b=Co2RRbQOjMGohkAy4JkH7rE1o6vgOmFbzy2ebqjRGGWnKyAAtzJHbUnervRX4/11BPpl9w3NWYHxH6egmBDo1WSeDXhC0GPbN5VWE8cCnhWClI6ch5bCm5o1gzMuY1Kb2dDJx7+WnWktZO1vhdeUbhXx/bOoJaJA3Sx+Hlu9HiZ68LSKVwgpZ3AXa4u8xbYX6ckRCsAWgth6C8+VDUfkq5fN9BaRbQvT54/OMvUrGql8g5pPp3XbPH91xShfwn8EvtRR6ZQa1RjOGHM5wGBr2DCVNMr4RzadQx91GSTnf+wWakam5vXBvswMeVl5AyzQ4JOUg5ZeigLuUtWUqluW+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q6x8FwHTIZJx9nN2A7NhFP61/YkJtFNEiueIalhmZHI=;
 b=QBPdCCezbA4xs+W/NVAyaERIDOmVK0VSkYQW3k81LSOi8VJ0oTy4ovXiuLppkipxXdM7L9rTRvDou5q6EzIiwIcVir9pOGlf28i4t8j7QF3OVrV0SOF/aeUrSoxT+2LoFhuXe/adOcVLRcoh3jHyq7a1yqvHrc05FK8W95ZpQSU=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AS8P195MB2384.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:636::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Thu, 17 Aug
 2023 06:22:51 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.029; Thu, 17 Aug 2023
 06:22:51 +0000
From: Lior Weintraub <liorw@pliops.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: ARM: mmu_early_enable
Thread-Index: AdnQ0AqbwZmu71wZRaWAWG5n/7MS3w==
Date: Thu, 17 Aug 2023 06:22:50 +0000
Message-ID: <PR3P195MB0555EE60DE17128F9831C028C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AS8P195MB2384:EE_
x-ms-office365-filtering-correlation-id: a50a81e0-767c-4255-ea81-08db9eea6236
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VXjPO8L08SauW0PPf3VsxVa+863hixjbPAY43qHORVng2IHyKKlukbbz2W668KaveEUImQMH6lLJeB6UhlfZQSTKWd9XJ7PqlhxEF1XbSvmnst2G0AU6hQRzRMf/duBvoH4SYVm1rApGRUBkzTyQAPmzB5FD0QI2IMkKARqRfOpQ+NvPVPMINIORuAjEiUjPBlUWYsMhalaLNXrna8Fgxgvgj1U6K8kx+I+8ybj2YibjSV5ZqP75/EjRhZW4m1nT2rfnDdy16gRIIh7qyplmOWwMJi0Coo9BZigD7ZpNSTl1g3xikkjGfV6GiLRJ+e1Wuz9jQIFbczjL5YwYFRpZh/kT6kkaD7P2Tl3i064sR/JcAe0Up2r13at2GhkLr3fmqNRU5iwkD4Ne3IZP7Gy2T1T6cN7VK+1r3BUTx2DU/odwGh+irMssiNyxHWU+WcshrcX0LMixOBDPE45DC6Lm50EjTYgM3LXi4AX3KiooKPsaWcxugQsrMu15baYO2su9s8wF31Wlj9HIi/p81Fc9VUj41mPZAZ1OVAn5Cjgm1oNcHnqqZMTWvqIU/WOgt8j5w24apn0wonU6Wc3fTtU8BpyZndgwqtRDAfSzdxIRbBJmUXs1qR8CgO99Gqphg6bt
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(39840400004)(396003)(136003)(366004)(451199024)(1800799009)(186009)(316002)(6916009)(66556008)(66946007)(64756008)(76116006)(66476007)(66446008)(122000001)(7116003)(5660300002)(41300700001)(52536014)(38100700002)(38070700005)(4326008)(8936002)(8676002)(26005)(2906002)(4744005)(55016003)(478600001)(86362001)(9686003)(33656002)(7696005)(6506007)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWJtVUVNeTVqc0FMZUZzYzM0U2JiQkZzYTgwNElwamliSDk3RkRiK25XVWIz?=
 =?utf-8?B?aXRMUFlLMjBPeFJKZHZLd2lWWVFoWnFnRXkyU0F0NEdXSE92WlJZRm91dXdv?=
 =?utf-8?B?YXhZZ3NRZ0lXTzd4YjAvWlYzUjRQdVJnT1BkY0t5SHlZSXpJb1RSb2VFMmZm?=
 =?utf-8?B?bjBmOGFJaUNUVGRHWlJwT3puNEZFdE1mSWtaSXhhcCtRZ29wUGVSQnRkdXA1?=
 =?utf-8?B?Y3p3cExrL1RETGRlSDIrSjlmVUhaVHBDU3l3Z1lnNHd5TTZ3SXV4VHVJUm5p?=
 =?utf-8?B?blRuSjdBbTFRTzM0ZEpMVkxONTIyUFAveVJFOWx3VUx0cVVCZEZVQXJzc0l3?=
 =?utf-8?B?KzVsejJFWDR2WjNVNzhMQWRTaGQ0dE1CaXFnQjlyWkFmTzJTcyt1Ym1vMFlu?=
 =?utf-8?B?dndnRHNRTml0c3NUbjBFVE01Q1hRSzJRNFdsYkNhaG9naElubFB5cjFySWl5?=
 =?utf-8?B?eXNjb3B1TCtoNUwreFdNbHlIRFFyMEZEbEQvcEN2TkxNV0c3SmdQUFpsL3lu?=
 =?utf-8?B?ekRJNGVXaEx6Z0xQOE0yWENITjkvQ2FibVU0TU1GZUMrOEM4Y1JkRU9OY2N0?=
 =?utf-8?B?bWZiRVFhYlZnR0tzSy9oZWpjaXZUamdISXQzblV2ME9CNUxYdVNLZjU1UkR0?=
 =?utf-8?B?clhiSzA0RVlWNkVqdFNkbG9LVWlmeHZKK1hrWlhhQ2F3Qnh4YmdwdXpSSUQ2?=
 =?utf-8?B?b0JFWTZlYUVucGNoL1pNRkpYWUxhOWxialJ4K3JML25nL0NGcHV5RUpodlVx?=
 =?utf-8?B?R2tZWUhiV01SNlNYdkFWTkNweTJzRSsvR2hpNkJBdzVsckZwS1krVEIwekgy?=
 =?utf-8?B?TkdtbVhPZVlNdlgwa2phQ0Z2YVBFMEIxVmRpSzM5QzRMWmpuZldUZUZqVzZj?=
 =?utf-8?B?Y2FJcFduNHdrNExHOHpXeS94VFpjS25ZS1MyZDB1UFlsQWpiTHhuT1ZXUjFp?=
 =?utf-8?B?RzhMUTFqam1oQW95MExCSE82dHB2cGJqbnRyWkFjdFVVc2oveklMN3B3QVJv?=
 =?utf-8?B?QnNPZ2thTEs0WUl6dHZxY0g4eEkxeEljSjdvMTJ0Wm42UWwxYk1rZGEwQ3hr?=
 =?utf-8?B?ZmFiSklEZU5KZUdaeDE4OTFHS0c0UTQ1eXN2Kzd1SEJqbzUwcDVmeW9kRjd6?=
 =?utf-8?B?cFpQbHJhazBKdEc1MTJyRm9sNjZTc0RYOWZOTEU1emNOUTUrbzZmQ3pkcXUv?=
 =?utf-8?B?Q2RjSWlQWTZNSDJQLzhYSktaZ1ZUdW83UXBCYU5CTFVSQXcvRUxQZjRzTzg0?=
 =?utf-8?B?bGFLZkFsTXRtSFVCVlBpRThoL0loVE1wYVZGMHVUZ0cxem5KL2FWQ096U1Mw?=
 =?utf-8?B?eGZhU29COFRWZnlmckVENG1vWjQxb0tGL0NoTCtBWm55c0tQdGg1VEh4Wml5?=
 =?utf-8?B?ZldOOC8vYTY5U1JIa1NZUno3MFBTdUtyN0Y5NUhKbTRPWWV6OWZGNFYzdnV1?=
 =?utf-8?B?RURYUFdJbW1IdVluREk1N3VyZUVTQzFLS2F0KzhZejNONHREY3JnUUdaYjQy?=
 =?utf-8?B?bTgvYndXU280K0hUMXN4dWhHSXJ0MlV0YitiUVN5NGpKTXR3UmdqWW5DTEE4?=
 =?utf-8?B?UytxWVp1NWc5ZnVlbnhOM1pmVk82UVlDc0dyaGdMVnQxN1pma0R6ckFrNTkw?=
 =?utf-8?B?dHlNMUNOcGIyOEhnRGtIZ3BaRW9SK0FrUDZKbXFHRkFsRndVL2xuRmowQXJN?=
 =?utf-8?B?cUoraVN0VmRPV1ZRWHRrUS9lUHF5V1hia01ZeENNenZiaE40ZnZYL3RzY1Bm?=
 =?utf-8?B?OU4wcnVQRjIzRmpvZTZYVm96VU9raERsS0JuRmM5TnNFWnVuKzJtQmIzdDls?=
 =?utf-8?B?cWtCVDVjd2d3cnRqWUlsVHlEVFEwaHF6RTBKK0dQZlRWNlA4ajZyNlRDakxT?=
 =?utf-8?B?aGtzWTM4Z2NDU3crME0vL2o1bno4K3lVTUdNMFN0YzBGVEpwVlduZFI2MGwz?=
 =?utf-8?B?WEV4dGh0RC9RV0dSS3Y2NzVULzFMSTRveHVqYzV6MDVvaEt3UFRHUkhYWmx6?=
 =?utf-8?B?d01xUXU3N0VDSFE3ZWpsODdFVUdkTDJLN291S1p3MzQ1N25mMmp6MEZ3M3A4?=
 =?utf-8?B?N0pCZXd1TVBONE5DVkk2c2FoNGV0QlYyWGtoa2x6U2luSFVwVlRhTWF5Y2px?=
 =?utf-8?Q?SrknGVx1jmXkwjwKOZqVNd6Bn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a50a81e0-767c-4255-ea81-08db9eea6236
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 06:22:50.9942
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WyJ+o4v0/cnQFhRnoTQ8j+XQmAP/y2rHJJVe192j0cpGdfaRuVw1BTkBCzRPDTpAgHLFjBaDG/mXo2ehlQjBYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P195MB2384
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_232258_675271_10F00931 
X-CRM114-Status: UNSURE (   8.33  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: ARM: mmu_early_enable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgU2FzY2hhLA0KDQpJIHRoaW5rIEkgZm91bmQgYW4gaXNzdWUgd2l0aCB0aGUgQ09ORklHX01N
VSBmZWF0dXJlLg0KV2hlbiB0aGUgY29kZSB1bmRlciBiYXJlYm94X3BibF9zdGFydCBjYWxscyBt
bXVfZWFybHlfZW5hYmxlLCB0aGUgTU1VIGlzIHNldCBzdWNoIHRoYXQgb25seSB0aGUgZ2l2ZW4g
U1JBTSBpcyBkZWZpbmVkIChtZW1iYXNlLCBtZW1zaXplKS4NCkJ1dCB0aGVuLCBpZiBERUJVR19M
TCBpcyBpbiB1c2UgYW5kIHRoZSBmdW5jdGlvbiBwcl9kZWJ1ZyBpcyBjYWxsZWQgd2UgZ2V0IGFu
IGV4Y2VwdGlvbiBiZWNhdXNlIHRoZSBVQVJUIGFkZHJlc3MgaXMgbm90IGluY2x1ZGVkIGluIHRo
ZSBNTVUuDQoNCklzIHRoYXQgYSBtaXN1c2UgYnkgb3VyIHNpZGUgb3IgYSBwb3RlbnRpYWwgaXNz
dWUgaW4gYmFyZWJveD8NCklmIHRoaXMgaXMgYW4gaXNzdWUgd2l0aCBiYXJlYm94IG1heWJlIHRo
ZSBzb2x1dGlvbiBjYW4gYmU6DQpHZXQgcHV0Y19jdHggZnJvbSBjb25zb2xlLmMgYW5kIGlmIG5v
dCB6ZXJvIGxldCBtbXVfZWFybHlfZW5hYmxlIHNldCB0aGlzIHJlZ2lvbiBhbHNvICh3aXRoIHNp
emUgMHgxMDAwKSBhcyBhIGRldmljZSB0eXBlLg0KDQpDaGVlcnMsDQpMaW9yLg0K


