Delivery-date: Mon, 14 Aug 2023 13:43:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVVyX-003i90-Qz
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 13:43:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVVyV-0002RW-Mx
	for lore@pengutronix.de; Mon, 14 Aug 2023 13:43:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OJEhUhlKM7ULvmsBoC7ZPhE07464nm5VT0lgE+siOqs=; b=bWMbZYWokTgvhkVwcBYtcd7RuN
	u7h4Yd9irH47q6yvLlC3GWJfQ8OZej1hAQaPhY1AA5j+ztp8un3Rq9Ay7NU0wuH+RwBkfxwLx0TnD
	QuZu5xLZgpqVW7wDXGhP44PCO9f48EQGUmVXmFkwDXzmVfiQozSScAx1nG2ktdUSI1c86lM8y9ZoP
	nbp0B5WLLJyPFAGDrUooTkRLLdGh7PQyXBWKq5kb2Amo9klaRTGMf3uCGr1VgPskLvdylCm9j8SpA
	9Dtmm35OGisHT4zQJV8vbf7Eb0HdTYN9oWJG6e1bLA3JK5AXJzPGImLp0kPktz1Dzi2+r6ZpHSdpu
	NPfQkGtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVVx3-00Gyec-33;
	Mon, 14 Aug 2023 11:41:37 +0000
Received: from mail-db8eur05on20609.outbound.protection.outlook.com ([2a01:111:f400:7e1a::609] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVVx0-00GydD-2f
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 11:41:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPO4P6uJWrxiesQWkfHp+AdG8o3Y+g/5snpQr/Q39DQPMxMbLYknLZHyaXLSzz6txRcAM05431syvQdAkjtW3KVAZWKMlWXyoH9rZzP/eEITi3OyFpAlZ2a/lhS6YBwxBTd/ofAh2DVn7Wk39OIFOsUyju5YLbV4thWtxw0TJNWrgAnOz2LzNJUnTSulC42voz424JchPa6DBpN2KdTCmWMD0XS99+q1h5ADy5HXoawrWktn2egn/b6sH1LAV+qvKSwN66yv765ADelGUbAZ0xABOhLZgQsVawnHrigbUC3pz5sE6wxgV3m80jxzSriwSg03OTfWRxyaWGglkVftrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJEhUhlKM7ULvmsBoC7ZPhE07464nm5VT0lgE+siOqs=;
 b=fsxQnqyw7rClfNU+dmYDLoYFAf0auiYjUmGCbbgTtmHOLQujH/sd4+kLVOcjabVz4AofzjjirROuAQmm88PoHZwMkDPeSkciJJr6M2jh69elH3SJ/94u+gcStDEmuaGOWA2dar1JKrjlmUBx/bApOE7mchlIbb6ThvlIiRFK6rrPQzP8x3cR+nvwJS4zbsxdRnggaVE/DOlZnVA1mWBRPRxicUPHUOIWHGDHTlDJBA8a5gPqb3V9BNVwYd16cxWYGf0I6TcRPp6wdVD2grIn9KmAYzp3VSGNAP7IiOPTKs7a1EdUnqH2A2PcpzA7HNtC5ioJioIUhlgAyAPCsBPhSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pliops.com; dmarc=pass action=none header.from=pliops.com;
 dkim=pass header.d=pliops.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pliops.onmicrosoft.com; s=selector2-pliops-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OJEhUhlKM7ULvmsBoC7ZPhE07464nm5VT0lgE+siOqs=;
 b=bhiQ/l8KAXbfxdQvNYoSbXo2PiIJWMtWtEpivObsYxvIXy4Ptn3Jn1M3kx6wlQDHQm7lxoWGYZCbozLFCvgSg93rY/IUC4NxduQExB1GX3MKPNflZuhATR51HK/BMqAUceiq8NlaVKZpCJv1mpOoCqNU0sxhUr6bew2QMZqzyBw=
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:30::14)
 by AM9P195MB0838.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:1f8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 11:41:30 +0000
Received: from PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82]) by PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
 ([fe80::bfee:8874:23dc:3f82%4]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 11:41:30 +0000
From: Lior Weintraub <liorw@pliops.com>
To: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>
Thread-Topic: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
Thread-Index: AQHZzqREORFOLsrl4UeLkQG21KMSbA==
Date: Mon, 14 Aug 2023 11:41:29 +0000
Message-ID: <PR3P195MB05556C4ADDF4CEC6FC6BD769C317A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB0555C0CAAE5F70743B7DC534C317A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <PR3P195MB0555C0CAAE5F70743B7DC534C317A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pliops.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR3P195MB0555:EE_|AM9P195MB0838:EE_
x-ms-office365-filtering-correlation-id: 23200d6f-7122-4276-453b-08db9cbb66c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tPwDjjibdyGg4QLbG87N4ybgLs+cwCY/OTbAUcAdntEj5iSRN+FZ5cKPKtX+WY3JGvDUsoKoZAFCDPRyS6UOeZbTRhJQ2Do7H3IG4DNLUEyyCuzKg2Ye99fYB+QqZsYJTvrJXOfA5iktceJ6AGW5OuHFxZcegtk+OHiebNECq3Rr8ncUiyNsOQ6eofzdCqlcjam8FKs/bA3ASyjNLEj+ZJbbgFB8g+WlSOigagG54zhcr6Afvp/FZvqQ2JWV97eMLZAlQYm5QgPpT7jYlQ3r4CuuiNmtX5CFYX8WuplLQkFVpwyd3moeZ/bxodpg+n/2Bd1Z3AyJFfQYnA4rbr2h2sG3OW6G7c8EEYwaWKV1p4h/BiDQUtPnCxxXL9AkJpcEtOm9XgpGj31WEXxyJwR7wtG8j4yowrfTSyQkyqA0aABgUGfFR3XNc7dC3hc4yhvO2pBz+YsYnRFdyGA/Bjz/5HrEX8iLdc8/eMr5lrxhGjMnpvXu3vc0WTQ9ZPJOx2L3+KMqej5xJDpR/VlgnSM0SZvHww2WOPrOu2oJqbSglXippiRR+azo0yAZiJQDLkC8ebhstp4PbZTyjqeA5Vl/NdTyRCR21hL1pWlkzWv5Z7TEFq+GdIvL5Lg2lwe6Mnd9
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3P195MB0555.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(346002)(39840400004)(366004)(396003)(136003)(376002)(186006)(1800799006)(451199021)(7696005)(9686003)(33656002)(71200400001)(38070700005)(86362001)(38100700002)(83380400001)(122000001)(26005)(6506007)(2906002)(55016003)(54906003)(478600001)(2940100002)(64756008)(66556008)(66476007)(8936002)(5660300002)(8676002)(52536014)(66946007)(41300700001)(66446008)(316002)(4326008)(6916009)(76116006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUF0ZE5VVlIrT0RkMm5vWHNHK1QzOG1WS2hqVXd6a05veG55b3FZUHUxeU1H?=
 =?utf-8?B?dGxhelNxRFpCVU1mZG85S0czc1BqcUtTZnh1eklLMk5PSzhrbkdDQU9ydUdz?=
 =?utf-8?B?aXA1VlU3a0RMYmtiTzcxOHJxaVQ1MGNlUFVLWDMwSFY3QXVMYjc1N00rQi9L?=
 =?utf-8?B?RldJTm8wK2hCd2xJRm9xK1RWVkIvUFZXWWFjSWdHSFhXeUFGQW1FUUtiTm5D?=
 =?utf-8?B?NVd4TlVxR2ZyeUZuTmlsbU9hU0dweXJRT0RTWlNMZXhDTmpLT29HV1p6Qjlr?=
 =?utf-8?B?K3RaTkN3UXJ2MW5YTmJiZnpIdjZ4K29SdUFWY3hTUnFhS0dDTHVoSitxVFNB?=
 =?utf-8?B?MkNWYkdMYmN3VFBFZU9Na0VpaGpiQmxQZHQ5Y1M5NU8va08vcVNHMWZrdTdx?=
 =?utf-8?B?aUZHRlRld2d2WFJZWW9hcmsyUDNma3hrRnQvK3ZUTFJHRGFqNVlRTk0rcjNJ?=
 =?utf-8?B?RkpVQThIc0V1N2M4NVdnUE56dmtzV3JzMldPaXJWZjBUVFh2ZzlmT00vMnJz?=
 =?utf-8?B?SFhIRmNlSnowU2dnNGZDWDdZZlZWZTBkWC9kd3hRRlJOL3FrNmFqaWFQMWxn?=
 =?utf-8?B?NGRJdndSazZkWTdQSUc2amc4NEZhUlY4d3orT2dXeGhKY2s2V21ZMTBCcFJL?=
 =?utf-8?B?cVI1MndiQlpRbk9kdWtDQTd0bnd1YXQ4RzkyRTRaVWdtRlVSekVkZmxDZi9D?=
 =?utf-8?B?NFJaQmpvckk2WFAvdnNac3labDJla2xrajlkTXZ3d2JMOEU5cHFxamZlY0RC?=
 =?utf-8?B?RG1zWkNlcWdzbnZSdkMxL3J1MTJTNHJaMWJIdmlCdkpueEtMenNBM1VNR0Ey?=
 =?utf-8?B?OEsyRUluUWF4QmhwZzQvRFBxRXdSdjBnZU1SL3VEcXZoRjdOL2ZKVjVMQWxE?=
 =?utf-8?B?M2ZGZFNRWitXZnZweDd6dUxFZkF4eG5iWUl3TktudWpyUDNSSDRzMFlqNmhJ?=
 =?utf-8?B?Q05YVDNuam8yZFBwU1llc1UxM3BuQVJIT0M2Qnhoa0VMbUFQN0RaTldObjhV?=
 =?utf-8?B?QmU4NmpzaFgyT0JhcmJUUGpXbE1lQngzNWx0SlNvcnFMVjRlQlB1akNrdUcr?=
 =?utf-8?B?Z0t1MVNaSWcvVXJtby8rNnlxNmpYaTB6U0FzN1Rqd3IybUtua0FRTU8yVXNB?=
 =?utf-8?B?RzZuZlFLWkxSRGwrdEt3dC91L3NBVGtGWlRpbW5BU1QwdFBYdXQvMi9mQVdS?=
 =?utf-8?B?d0ZUb0ZaNlBkYUwrYlVhQU1PaTVtYnZuekpzYzZ1a2VzYTR2T3NtNVJ5dWNL?=
 =?utf-8?B?MVVyalBhMmdkZEgwMU9VRS9mcmpyZDRLRm5HQ3g4KytXcm1XNk9sNU5VRTNx?=
 =?utf-8?B?aDZhcFM3RlUvK1JBbWh6OXZxQ09WZ1hUUTNMVUxyTXFVV21JMHlqY2M0UmZh?=
 =?utf-8?B?Q0pDL3JPSjl1KzhxQWN1ZDdNNGxCdDJLeXN5OHJPUlk0Rm8zSDhGNWFsNmdP?=
 =?utf-8?B?ZFl2NlR1ODdiWWQ3YkF4dU5obGFqc0VQcEk1UktjRTlnUWFvWG5nNGIxbTY5?=
 =?utf-8?B?VzBweHlJb3dzcW9IbFhnRTZZNmtiR1dubWd5VzNpcWI1MERmV0t6K3kyWGUy?=
 =?utf-8?B?aFRtS3B2bk9raFMrSm16UDRhQjVuOXFaVVYxczd1cUczOWZUTFV6TFhJamFy?=
 =?utf-8?B?MVY2WWd4VTRLVVVRNFplV001VnMvLzZRbm8rT1NRRWI5bzlKV09FNWxTMlQw?=
 =?utf-8?B?UFpxRjZkK0ZBVTUyUCt4YTRTRlg4UWxXSUFKeHpqSHRHSkN4dzJpWGpENWhx?=
 =?utf-8?B?eHBtRlNRbHlkaHN1UDRobmo5cFJmZXk3VW5WdHlnWmdhSWYxVjBjYkQvSzRr?=
 =?utf-8?B?RE8xZkFRTDRCVThGMzFpbktGSUFJM0g0WnFuSHBVR0Q5ZHVnRC9DOWV5aENW?=
 =?utf-8?B?RGZhaDF1YnlwTldnT0dOdEJzMGMwTk14QkZqTkJYOHB3UFJEQmlldWNLRmFo?=
 =?utf-8?B?dG1hSGc0aVdkR2QwSGtnRFg1WGpWazlNMFBVQVlsZXcvazhJdUJhUWJtK1U1?=
 =?utf-8?B?K0g3S3NyU2xUSit6VytxTHFtbFlvTWlwTjk3cFZER1l4WENKak5yRG1zVWxq?=
 =?utf-8?B?N0tvWEhEVHUzUkQvTk9GcVBlVG80cEFGTVhjMWhqR1FkdmVya0FFTXp6Vml4?=
 =?utf-8?Q?h3t8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: pliops.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3P195MB0555.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 23200d6f-7122-4276-453b-08db9cbb66c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2023 11:41:29.9485
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40fe8f47-55ac-403a-a5ab-1be3dd209cf8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FfvqtpwVrYkH6qT6i0zPlLnFzQ1gFPQDg6E2FBq7hqqiK1yqAAFilVG9wmkKg8lF570KSf8dZ3qAgcofxRtZbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P195MB0838
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_044134_864946_013C861D 
X-CRM114-Status: GOOD (  21.55  )
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
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: ARM: aarch64: lowlevel: potential bug in arm_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SGkgQW5kcmV3LA0KDQpJIGFtIGFza2luZyBhYm91dCBhIHBhdGNoIHlvdSd2ZSBpbnRyb2R1Y2Vk
IGFib3V0IDQgeWVhcnMgYWdvOg0KQ29tbWl0OiBjZDZlMTg1N2E2YTgyNGQ1NjJiZDI3Mzc5ZDE5
MTYwMmMwNzRmNmI3DQoNCkVOVFJZKGFybV9jcHVfbG93bGV2ZWxfaW5pdCkNCglzd2l0Y2hfZWwg
eDEsIDNmLCAyZiwgMWYNCg0KMzoNCgltb3YJeDAsICMxCQkJLyogTm9uLVNlY3VyZSBFTDAvMSAq
Lw0KCW9ycgl4MCwgeDAsICMoMSA8PCAxMCkJLyogNjQtYml0IEVMMiAqLw0KCW1zcglzY3JfZWwz
LCB4MA0KCW1zcgljcHRyX2VsMywgeHpyDQoNCgltcnMJeDAsIHNjdGxyX2VsMw0KCWxkcgl4MSwg
PVNDVExSX0VMeF9GTEFHUw0KCWJpYwl4MCwgeDAsIHgxDQoJbXNyCXNjdGxyX2VsMywgeDANCglp
c2INCg0KCWIJZG9uZQ0KDQpUaGlzIGNvZGUgaGFzIGludHJvZHVjZWQgYSBidWcgaW4gb3VyIGJh
cmVib3ggcG9ydGluZy4NCkl0IGNvdWxkIGJlIG91ciBtaXN0YWtlIGJ1dCB0aGVuIGFnYWluIHdl
IGNvdWxkbid0IGZpbmQgYW55IHByZXJlcXVpc2l0ZXMgY29uZGl0aW9ucyB0aGF0IGJvb3Rsb2Fk
ZXJzIG5lZWQgdG8gbWVldCBiZWZvcmUgcGFzc2luZyBjb250cm9sIHRvIGJhcmVib3ggcGJsLg0K
VGhlcmUgYXJlIDIgYnVncyB0aGF0IGNhbiBoYXBwZW4gaGVyZToNCjEuIFRoZSBib290bG9hZGVy
IGVuYWJsZWQgTU1VIGFuZCBzZXQgdGhlIFNSQU0gKGdpdmVuIHRvIGJhcmVib3gpIGFzIG5vbi1z
ZWN1cmUg4oCTIFRoaXMgaXNzdWUgY2FuIGJlIHJlc29sdmVkIHdpdGggYWRkaW5nICJkc2Igc3ki
IGNvbW1hbmQgYmVmb3JlIHRoZSAiaXNiIg0KMi4gVGhlIGJvb3Rsb2FkZXIgZW5hYmxlZCBNTVUg
YW5kIGRjYWNoZSBvbiBTUkFNIChnaXZlbiB0byBiYXJlYm94KSBhcyBub24tc2VjdXJlIOKAkyBU
aGlzIGlzIGEgYml0IGhhcmRlciB0byBzb2x2ZSBiZWNhdXNlIGl0IG5lZWRzIHRvIGNhbGwgY2Fj
aGUgaW52YWxpZGF0ZSBvbiB0aGUgc3RhY2suDQoNClRoZSBib290cm9tIGNhbiBydW4gaW4gb25l
IG9mIHRoZSBmb2xsb3dpbmcgbW9kZXMgdG8gYXZvaWQgdGhlIGJ1ZzoNCjEuIFJ1biB3aXRoIE1N
VSBkaXNhYmxlZC4gSW4gdGhpcyBjYXNlIHRoZSBTUkFNIGlzIHRyZWF0ZWQgYXMgYSBkZXZpY2Ug
YW5kIGluIHNlY3VyZSBtb2RlLg0KMi4gUnVuIHdpdGggTU1VIGVuYWJsZWQgYnV0IHNldCB0aGUg
U1JBTSB0byBzZWN1cmUgbW9kZS4NCg0KRXhwbGFuYXRpb24gb2YgdGhlIGZpcnN0IHBvdGVudGlh
bCBidWc6DQpCZWZvcmUgdGhlIGJhcmVib3ggY2FsbHMgYXJtX2NwdV9sb3dsZXZlbF9pbml0IChm
cm9tIG91ciBzcGlkZXJfbG93bGV2ZWxfaW5pdCBmdW5jdGlvbikgaXQgcHVzaGVzIHRvIHRoZSBz
dGFjayB0aGUgcmV0dXJuIGFkZHJlc3MuDQpBdCB0aGlzIHBvaW50IHRoZSBzdGFjayBpcyBsb2Nh
dGVkIG9uIFNSQU0gaW4gbm9uLXNlY3VyZSBtb2RlLg0KV2hlbiB0aGUgZnVuY3Rpb24gYXJtX2Nw
dV9sb3dsZXZlbF9pbml0IGRpc2FibGVzIHRoZSBNTVUsIHRoZSBTUkFNIGFyZWEgYmVjb21lcyBz
ZWN1cmUgYW5kIGFzIGEgcmVzdWx0LCByZWFkaW5nIGZyb20gdGhlIHN0YWNrIChieSAicmV0Iikg
aXMgZG9uZSBiZWZvcmUgdGhlIHdyaXRlIChmZXcgY3ljbGVzIGJlZm9yZSkgd2FzIGRvbmUuDQpU
aGUgQVJNIGNvcmUgY2FuIGRvIHRoYXQgYmVjYXVzZSBpdCBhc3N1bWVzIHRob3NlIGFyZSBub3Qg
dGhlIHNhbWUgbG9jYXRpb25zIChhdCBsZWFzdCBJIHRoaW5rIHRoaXMgZXhwbGFpbnMgdGhlIGlz
c3VlIGJlY2F1c2UgdGhpcyBpcyB3aGF0IHdlIHNhdyBpbiBSVEwgdmVyaWZpY2F0aW9uIGVudmly
b25tZW50KS4NClBsYWNpbmcgYSAiZHNiIHN5IiBiZWZvcmUgdGhlICJpc2IiIGNvbW1hbmQgc29s
dmVkIHRoZSBpc3N1ZS4NCg0KRXhwbGFuYXRpb24gb2YgdGhlIHNlY29uZCBwb3RlbnRpYWwgYnVn
Og0KU2FtZSBhcyBiZWZvcmUgYnV0IG5vdyBpdCBpcyBub3QgZW5vdWdoIHRvIGNhbGwgImRzYiBz
eSIgYmVjYXVzZSB0aGUgZGF0YSBpcyBmZXRjaGVkIGZyb20gYSBkaWZmZXJlbnQgY2FjaGUgbGlu
ZSAodGhlcmUgYXJlIGRpZmZlcmVudCBjYWNoZSBsaW5lcyBmb3Igc2VjdXJlIGFuZCBub24tc2Vj
dXJlIG1vZGVzKS4NClNvIHRvIGZpeCB0aGlzIGlzc3VlLCB0aGUgZnVuY3Rpb24gbXVzdCBjYWxs
IGRhdGEgY2FjaGUgaW52YWxpZGF0ZSBvbiB0aGUgYXJlYSB3aGVyZSB0aGUgY3VycmVudCBzdGFj
ayBwb2ludGVyIGlzIGxvY2F0ZWQgZm9yIE4gY2FjaGUgbGluZXMgKEkgYXNzdW1lIDEgY2FjaGUg
bGluZSB3b3VsZCBiZSBlbm91Z2ggYnV0IEkgZGlkIG5vdCB0ZXN0ZWQgaXQpLg0KDQpGZXcgcXVl
c3Rpb25zOg0KMS4gRG8geW91IGFncmVlIHdpdGggdGhlIGFib3ZlIGFuYWx5c2lzPw0KMi4gSWYg
c28gc2hvdWxkIEkgcHJlcGFyZSBhIHBhdGNoIGZvciBpdD8NCjMuIFNob3VsZCB0aGUgcGF0Y2gg
YWxzbyBpbmNsdWRlIGEgZml4IHRvIHRoZSBkYXRhIGNhY2hlIGlzc3VlPw0KNC4gSWYgeW91IHRo
aW5rIHRoZSBjb2RlIGRvZXNuJ3QgbmVlZCB0byBjaGFuZ2UsIGRvIHlvdSBhZ3JlZSB0aGF0IEJh
cmVib3ggZG9jdW1lbnRhdGlvbiBuZWVkcyB0byBpbmNsdWRlIHNvbWUgZ3VpZGFuY2UgdG8gYm9v
dGxvYWRlcnM/DQpJTUhPLCB0aGUgYmFyZWJveCBzaG91bGQgYmVoYXZlIGNvcnJlY3RseSBubyBt
YXR0ZXIgdGhlIGluaXRpYWwgY29uZGl0aW9ucyBvZiB0aGUgYm9vdGxvYWRlci4NCkFzIHlvdSB3
cm90ZSBpbiB5b3VyIGNvbW1pdDoNCg0KIkFSTTogYWFyY2g2NDogbG93bGV2ZWw6IFJlc2V0IFND
VExSX0VMMyBpbiBhcm1fY3B1X2xvd2xldmVsX2luaXQoKQ0KDQpUaGVyZSdzIG5vIGd1YXJhbnRl
ZSB0aGF0IHdoZW4gYXJtX2NwdV9sb3dsZXZlbF9pbml0KCkgcnVucyBhdCBFTDMsDQpTQ1RMUiB3
aWxsIGJlIGluIGEgc3RhdGUgd2UgZXhwZWN0IGl0IHRvIGJlLiBBZGQgY29kZSB0byByZXNldCBp
dCB0byBhDQprbm93biBzdGF0ZSwgc28gd2UnZCBhbHdheXMgc3RhcnQgZm9ybSBjbGVhbiBzbGF0
ZS4gVGhpcyBpcyBhbHNvDQptYXRjaGVzIHdoYXQgd2UndmUgYmVlbiBkb2luZyBub24gNjQtYml0
IEFSTXMuDQoNClJlYWwgd29yZCBtb3RpdmF0aW9uIGZvciB0aGlzIHBhdGNoIGlzIGkuTVg4TVEg
d2hvc2UgcmV2IDIuMSBzaWxpY29uDQphcHBlYXIgdG8gaGF2ZSBkaWZmZXJlbnQgbWFzayBST00g
YmVoYXZpb3VyIHdoZXJlIGl0IG5vdyBsZWF2ZXMgTU1VDQplbmFibGVkIGlmIG5vIHZhbGlkIGJv
b3Qgc291cmNlIGlzIGZvdW5kLiBQYWdlIHRhYmxlIGl0IHNldHMgdXANCmRvZXNuJ3QgaW5jbHVk
ZSBERFIgcmFuZ2UsIHNvIHRyeWluZyB0byBib290c3RyYXAgdGhlIGRldmljZSB2aWENCkpUQUcv
T3Blbk9DRCByZXN1bHRzIGluIGFuIGFib3J0Lg0KDQpUaGUgdmFsdWUgZm9yIFNDVExSX0VMeF9G
TEFHUyB3YXMgdGFrZW4gZnJvbSBMaW51eCBrZXJuZWwuIg0KDQpDaGVlcnMsDQpMaW9yLg0K


