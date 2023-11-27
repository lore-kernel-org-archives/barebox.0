Delivery-date: Mon, 27 Nov 2023 08:03:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7Ver-00Afap-1B
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 08:03:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7Ver-0003UP-9M
	for lore@pengutronix.de; Mon, 27 Nov 2023 08:03:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HG9ljDlj7d/onhiuxWnmXOsHzrXaZYLih6zDsxR2YYA=; b=w57k4zM6y31Esb
	DLlm0RDthDHxmtCZrREdMsh/iOrR42CJIQZsB0ksqb1+/JbNQsAWc1EU5WeDzqs/NmFT6Oot4lQL0
	biC+yZaJqS8+0bmrqgDcDUE5DUdqZe3sm2Ih+r1CWlY7+KXTxcHv09z5o7AnIw4GYuVqsJ6rxxA2b
	9AcPjHWIOZM6o/OMsURq7jO/jq3k1tGTfdmfYnlmJ027eXr9MEIaHq1nvDGCyRlV8bytx4iM9SQj/
	l86OfEwfKXFgz55XbHIPdX3sxqeAOxmnyjUxm0QHMlHcLMev5mVcAykTk/qH0YWpmFlUuHxQUKCDe
	ivHD4Z/mdOQZnoH2DmKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Vda-001eEQ-0d;
	Mon, 27 Nov 2023 07:02:34 +0000
Received: from mail-am7eur03on20619.outbound.protection.outlook.com ([2a01:111:f400:7eaf::619] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VdW-001eD5-1V
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 07:02:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QA5LR9Dpd6jdEpYC9YFW8Qkwy8X+wU5OMW5+d2tVjl3WU5vYte5Gr49l/HkqoYgZQTqG81VAO19rgewbutX000TYGNy6NpMCjP5U4+N6EsSJj6UUCWpt3rdUt4hLB/KNBf4dxcA4WWEwifkYWi7JBL74C1hocextKeI35lUjWfMe0pg/n83ivZbiv5drCUphJf2xysnXxHiU3FfuJwmrp8Js0h7v3qNf4NNK5ZJrVkv800biot2uNUMbjwnXAXfjUNsNuKk3B3DpCZneXf2TBSQD1xzp8O35fxBisJc7BKGN4qKVHTBarix8CW5csD4u4+ntfjnm5AGxOyg8r1XLGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HG9ljDlj7d/onhiuxWnmXOsHzrXaZYLih6zDsxR2YYA=;
 b=MtjcUr8fEknzOFQ6P2mKWdKMFJMGxuA/n1B2bAjFfo+9vGt/mHKot7tnS0K+lM3V/k7s3tP/LbrNP0SS8wBTJan2di/lp5lIo5oUewZ3yTrnnwK4YzU00DjhP7d3LKMP+nQxxVvekQhFmjxikyxora5/E7MoZxcjiAOfpOMZC8KFFFzGEtVa7GDcMxyBVGGrNGqfN+C1kh/EE48+0rgsKi4z4m1BS8YeZniPoAheFRotxOHPtSQ2k2wyX8uB2fFeK58CAlpaDi1EqCixxeZWel8ZB/gEl414tiTlgjZr4b14T1cr6yKBFmiOtjgTch1himODkC0phkFsrU2F8zHHeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HG9ljDlj7d/onhiuxWnmXOsHzrXaZYLih6zDsxR2YYA=;
 b=FYHNEFMWW7AEAkFb0AmdWVVDeOepehIU7UDWIIZCPkpRHLdMFE/T3X7HO+WHRY2RAAkVSvRoGpluhLoouIzumzWLy0dxgJT1XdHuFlYNfX5vBqHhSO9jL6dZbW7WXzlfhMDXM3+1BJ4S76Skk4OHHBXtiW0WNc9uyh9mzOd6M+o=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AS1P195MB1469.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:4a9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 07:02:08 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::e7d5:dbc3:8189:4db%5]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 07:02:08 +0000
From: Lior Weintraub <liorw@pliops.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: Pass user defines for Barebox build
Thread-Index: AdoglJiL6oGXjO/xRl+7MGGh/8RKtA==
Date: Mon, 27 Nov 2023 07:02:08 +0000
Message-ID: <PR3P195MB0555B60C3789D5DE6FCF1D4BC3BDA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AS1P195MB1469:EE_
x-ms-office365-filtering-correlation-id: 2dff5f63-6f19-4973-b17b-08dbef16c5a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MYL1XiFpxSG8zU45ce3too1eS+G8y8b7lWW/ogrW6nA5U1lSovjpKopAz+YpwOpSXgWu15QAzGOJTCqDaV5Mitw4T10KgJeNlpllNl+2XVUFUnsSQ3Vc++Kmo6uiRYY2qchRQ102XH4QeHNl56wK6PRRI9hpv5wRxaQvbXsjBjwftHzlADbBesHM+T21mM7V1DhWnqNfoq7Bmgb2R8N9Q4XPphctyh/Mwacb1HC/zYJ26ujG5sk3K1LIdpSVVerOelWWAVgSjxWCSIrPY/mAU+nuR8nPtfhyfLNfZ61vtSG+FmV3Odl0IE8/vMbyyheVn52nV5QZ+LJ+z7fp99Uk+r8fj2nbvcpGpYym+pYR583WIWtn6SfLyGY+49ERzq/eARWKJ3I4AOKCCh1AJ+oJ8TIZvDAp04fnYYqU+3ufhZP/bvIWXtuXA/4op8tpvjcL0A4iaPBgbh087L7jHjnEY72L0KIJu7umNm9w64LiUmDbgAWT6BlbTVORccvcs0sBkPb1kjMS3IUMvRW7m6WPlBIAyogIHeBwcmhDp3ukpvliLtjnKOu3OjLmAw1WHiOnoAfeZoZ8AIEmLqbifkrKhU2toEiDI5X21B7y3oGcXGbtL9WoabFGFS5UVwCfQkqD
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(346002)(39840400004)(376002)(136003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(76116006)(66946007)(66446008)(64756008)(66556008)(66476007)(316002)(6916009)(8676002)(8936002)(52536014)(2906002)(38100700002)(4744005)(55016003)(9686003)(478600001)(38070700009)(86362001)(7696005)(6506007)(122000001)(71200400001)(33656002)(41300700001)(26005)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZyttbjNGam40dHU5dy9EM2plaDZMV2o5OUtNVnlvVE5Ma21VNzVseXpTanBD?=
 =?utf-8?B?R29uZTVtVEFXVWpheVpua3hWcHFRWDFlb1NVSGdzclB1ayszQW11K2tLQTl4?=
 =?utf-8?B?OXpIcDVLcExNMlNwUUtjUDJnRmFqNW9KQlFYNFhiWlQzWURhOG5EcGFIOFB5?=
 =?utf-8?B?UXpPVGtVQUFCUXZkTVlGck9ReGlzOFdQYnU2b3dCbFo0UXpRcGNpNmNlazhS?=
 =?utf-8?B?THF2ZkU2Sm5MT003a3Z0Z2s3SHp5YzJTSWZRcHh1RnFRcUxRMXJWaWdNWHFl?=
 =?utf-8?B?eHExUlJhMW1yU3YxaFZZZ0F6dmRGaUswbjNBcnNzQ1JQdTlJcXNscFhzUmNr?=
 =?utf-8?B?NW9NenE0N3JkZHBJN096d2YzaEgwR3FsYXUyMUZYTlcwL1NuQzNkdmNVYTV0?=
 =?utf-8?B?WittZFprWHRMWDBheUtRc0hON3Y2aFRrREdYMnM1ZFo0RWViaTZiYUJyMFBq?=
 =?utf-8?B?YjZFRUFBcHNFYUtFb3IzenlQRFN4ZWxpYVQ0ZDkwU2ZhTVEwQ1hHeGRNNjVj?=
 =?utf-8?B?a3RlbVIrVVpSeXJvR25HcFZ3bDZNNU1JaUVtZkxhaG1aZlZGazJybWkySHFG?=
 =?utf-8?B?cFlaTGFvczlybG90c2ZPb1JtWWxyRmNkcFh3TlNUNE9HUEo1L0M2bVZxK2Jx?=
 =?utf-8?B?cmVwQU90NGJUQlFzU296OG9OakVmY3VSVGNmNkVoTVFRbUNPanNFcUZhS0lj?=
 =?utf-8?B?dE1YWGlQYUhyZVI3K3JFQ3lMellwMkZqbFVDeEdDdkh2WUdtRUZERVdjNU9t?=
 =?utf-8?B?c1U0SXlrTmE2blV0TmZTeUowUVJ2WWlvZERpQllaaGhRK0YwRzExV0loZ09D?=
 =?utf-8?B?RFk5UDdWcWJXblBWd3huakNQUWJ4bWJ2b2dHdnFVdVMveEdVUy9lK2wwOTBL?=
 =?utf-8?B?U3dma2VlUzRyZGhyVWgveWF3T3F1aGpHU0dlb0ZIRXNjODZUQWxWOEw2WGph?=
 =?utf-8?B?Q3drWmZEZGhUcWlqZWZUWGhmbWpENWxmeFoyWFEwamp0THhLY0hkampwWlBI?=
 =?utf-8?B?M2VVc0x4bXJQQk1BRXBYMS9mSzM4RlJpdTJWbkx6bmZDMmJWNVJRN1FFV2Vn?=
 =?utf-8?B?NG0zWDNQeFlMWGlnWG9wclFEcHh4emo4M2ZPS2htSWd1WVYyYnBsQXpBWDhY?=
 =?utf-8?B?WnllazVqMHJmZDAyWCtKTmdaVGtXQmRneVVLU3VLR3JaOWVzTjNPWGxzRGRv?=
 =?utf-8?B?cDN0eEtOOWROSVkzRnlhS3NTM1BrZll0T3ZaWGd2KzdvNEhJVlBYWUZwVTR3?=
 =?utf-8?B?WllrQTBlRHdoUzFud2hJeHp0a0VOZDB5NTlPeUFjUUlob1ZrS3JaR0o1T0g2?=
 =?utf-8?B?MjRCNEFSU1pzL3JyVzFlK2IxaWJOcVh5TWZkTm1SVmQrU2o3Y2dONW42UWZ5?=
 =?utf-8?B?TG1vc09WTEpuWXVzSWtJNWVsYnFORXpKaWxlemVtOTgrYUNMY0JGM2kwVjZl?=
 =?utf-8?B?MEVGVU9vbXM3Y3kxMCtvK0o5dUxTczNreHAzR3BrWFRqeFYwMW4vZWxaNllP?=
 =?utf-8?B?WkxYdktDQWh4STJrdUVmdEErU0phRkRQNmVLQ2VRNnU3bWxwZWxNY3F3RDNl?=
 =?utf-8?B?Y1VLdDY3Qm9aMWJKOUlqeXlwMGs1dVhlaHZHaXpiOVF2VnBHL3R4MFBSYmtN?=
 =?utf-8?B?Y1JKN2pTc0xKRGJ6TUorWlR1enAxeUJjWjkxUHFmcnU0K3V0bytlQnNUd21G?=
 =?utf-8?B?T25iS0tOQndWMlNkaGZ6WHdLUUsrR2ViYkNpYUpHcldLL014RGtRUCt0RUd5?=
 =?utf-8?B?RjA3Q1NudWliNldnRGlFVjJDWm1ua1orcXBEZ3F5KytJcmpSQ2h2R09rYkhr?=
 =?utf-8?B?bDU1RkJtOStYRVl5UGwxMzdHRW45YitJRGJzeU9nbnZheUU0enFFaS9rQlNP?=
 =?utf-8?B?QmhTUEUwSFF5Y2xjRDFoWkZ3bzUwd29RZjNGWm1lbE4xMnVHQk1qRUsxT29U?=
 =?utf-8?B?RjlxN1I2cERSTkh2ZDErVG0zdm04T0tSN244TXpEYi9vK0ZuNkhXRG5xbUVo?=
 =?utf-8?B?bGdNQzE1SkxjRGdoWmNlRXE3Y2I3ejhPbDhJOW9uelFnK3QwUnBTMW1NZDhM?=
 =?utf-8?B?eUVCd0dBVXZzTEVjZjhBVmtYU3VwQUtuTExZTkN5S2ZYZGIyWnBBei9sa0U3?=
 =?utf-8?Q?2SOo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dff5f63-6f19-4973-b17b-08dbef16c5a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2023 07:02:08.7159
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UhRb12Zu9ah6KwRKQceplQoyoCX+eBLg9KzuUH6PHTV6kbTnI+xwGJpjZarTgekYCow5zBL65k46T7pVnVfK2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1P195MB1469
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_230230_661460_6536C340 
X-CRM114-Status: UNSURE (   5.98  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Pass user defines for Barebox build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SGkgZ3V5cywNCg0KSXMgdGhlcmUgYSBmb3JtYWwgd2F5IHRvIHBhc3MgdXNlciBjb21waWxhdGlv
biBmbGFncyBpbnRvIEJhcmVib3ggYnVpbGQ/DQpJIGNvdWxkbid0IGZpbmQgb25lIHNvIEkganVz
dCBwYXRjaGVkIHRoZSBtYWluIE1ha2VmaWxlIA0KZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFr
ZWZpbGUNCmluZGV4IDQ3MWJiYzI2NzkuLmZlYmM5NGI3ZjMgMTAwNjQ0DQotLS0gYS9NYWtlZmls
ZQ0KKysrIGIvTWFrZWZpbGUNCkBAIC00NDMsNyArNDQzLDcgQEAgS0JVSUxEX0NQUEZMQUdTICAg
ICAgICA6PSAtRF9fS0VSTkVMX18gLURfX0JBUkVCT1hfXyAkKExJTlVYSU5DTFVERSkgLWZuby1i
dWlsdGkNCiBLQlVJTERfQ0ZMQUdTICAgOj0gLVdhbGwgLVd1bmRlZiAtV2Vycm9yPXN0cmljdC1w
cm90b3R5cGVzIC1Xbm8tdHJpZ3JhcGhzIFwNCiAgICAgICAgICAgICAgICAgICAtZm5vLXN0cmlj
dC1hbGlhc2luZyAtZm5vLWNvbW1vbiAtZnNob3J0LXdjaGFyIFwNCiAgICAgICAgICAgICAgICAg
ICAgLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbiAtV2Vycm9yPWltcGxpY2l0
LWludCBcDQotICAgICAgICAgICAgICAgICAgIC1PcyAtcGlwZSAtV21pc3NpbmctcHJvdG90eXBl
cyAtc3RkPWdudTg5DQorICAgICAgICAgICAgICAgICAgIC1PcyAtcGlwZSAtV21pc3NpbmctcHJv
dG90eXBlcyAtc3RkPWdudTg5ICQoQkFSRUJPWF9VU0VSX0NGTEFHUykNCiBLQlVJTERfQUZMQUdT
ICAgICAgICAgIDo9IC1EX19BU1NFTUJMWV9fDQogS0JVSUxEX0FGTEFHU19LRVJORUwgOj0NCiBL
QlVJTERfQ0ZMQUdTX0tFUk5FTCA6PQ0KDQpUaGlzIHBhdGNoIGFsbG93ZWQgbWUgdG8gc2V0IEJB
UkVCT1hfQ0ZMQUdTIGVudmlyb25tZW50IHdoZW4gY2FsbGluZyBtYWtlLg0KDQpUaGFua3MswqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqANCkxpb3IuDQoN
Cg0KDQo=


