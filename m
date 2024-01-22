Delivery-date: Mon, 22 Jan 2024 10:30:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqd1-00BHIX-0b
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 10:30:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqd1-0002nF-NA
	for lore@pengutronix.de; Mon, 22 Jan 2024 10:30:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Subject:From:To:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JoOgp+6gVO52ztILGvlOj5woWocs6o5dRdsGP9sEitc=; b=j5piSvfKOYvkHE
	Iw89WSJYp8MIspKJ1zDmMOJqtWe+sDP/6/uAvdpnc0aCgfeu5+bRqpwxxNE2xIqILUybY4il6yubp
	1uJlZtFWmaBLwx7V3JW6jzIJmbX3oY8Sz0+l1Gs5ombvwrxKS78Wr168VNo+dlSbgNKGdFszhvhZL
	DQ6UGZ22XDlZWdQb6zxJWMc8hHEtJx1y6YfDBr6el63T4/QowsaJFXMiq1Ic/ZqQw8dfic7BAnKPQ
	svuJ4f6Fk4toP4seukGEaKbYPYQLgR1I5lbiB5LLq7Oqko3rxZnC9mXSqtD3KcgJy+eVv9noMNU9R
	VihtLvwd4f8eA5jjaceg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqbh-00BHxu-2y;
	Mon, 22 Jan 2024 09:28:41 +0000
Received: from mail-am0eur02on20601.outbound.protection.outlook.com ([2a01:111:f403:2606::601] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqbe-00BHuu-03
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 09:28:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QPfpCctiBLFVT2CLpkOnJZJN48EoSHD5dprCnmA4ZY4UfFyKuWAp9VZdf4WYytpYxQvYQu687G7HJ2Jep4X3oWqVWMKrCVw3HpnjBFthvfFzbnVGC9ORWMe3RsgzT1sw2Hs2aRBAaT6n80LFOpuEFq0yOOLw3LlsP/MrlU4jvwq7Wl7fx4JXjMO4fWoEfDPn/kpIKySG1/bwaS8AnqVrFhZxW8fo5Efs+f6FxUwLFZFWqJXNGco7YaWOmL40qDbp9aE55hq/orozy5BU/Un/tfGr9LdaOqzDjZwJdtTsI5oA+XSkPaWYWliQjV8HTMWQmE7pH0L6xBnZAB1cghLWcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JoOgp+6gVO52ztILGvlOj5woWocs6o5dRdsGP9sEitc=;
 b=YHz0QiiR12Xo6jBDh5mD57WRTHzKTLSd99jJMsiQ8XSCJ25MUE7j85bT9R3mcIdtPQzUimKoawrF+XaA80ghrpviB6FLOXJ7iCg5aC3h7Kcq2Z+EvoNe0SODcZtM68xubMP5StzSE0kcWKRSu+fbdmfRtw5KevZYeMpSwmNqbrCowXRtFF6UaP3MOFhXCizwpcUjAQmemlXxH2qnvKwvipgwxdSMJvMB3ShqrIlf+pPuAtixbSO1HpBWRauPcmCfKeTBWantpnIoOv0kzdaCBxk4l83y8AdgL405WD+QP5QaDDfCSJN5oOdqchtdqtNZg+HhIhZ64m1Rj0JsU26O4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=t2data.com; dmarc=pass action=none header.from=t2data.com;
 dkim=pass header.d=t2data.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=t2datacom.onmicrosoft.com; s=selector1-t2datacom-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JoOgp+6gVO52ztILGvlOj5woWocs6o5dRdsGP9sEitc=;
 b=R6QnEO5dvEGWDGt6RzjcI1EPii+ogcpVBCH3pN0PWQQQb223PVjKiZsZqSnfQ17pJd9Uf6G6SF38Y/AgqA9R/Ek1GZVZx/wkg0Hz2uwSPoZLMCC2dUQkt4S9kzbkIdRJfYeFGeib1syyHg7FyUcn9LiSlKyNDV+yhzKtxjnBaBE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=t2data.com;
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:334::22)
 by DB9P251MB0739.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:37e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.27; Mon, 22 Jan
 2024 09:28:24 +0000
Received: from DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::1398:9f4f:da3f:1862]) by DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 ([fe80::1398:9f4f:da3f:1862%3]) with mapi id 15.20.7228.011; Mon, 22 Jan 2024
 09:28:24 +0000
Message-ID: <2fb45a66-28c6-4118-8bbc-b4d6c6fd141a@t2data.com>
Date: Mon, 22 Jan 2024 10:28:14 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: barebox@lists.infradead.org
From: Christian Melki <christian.melki@t2data.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: GVX0EPF0000FA92.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:4:0:15) To DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:334::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9P251MB0618:EE_|DB9P251MB0739:EE_
X-MS-Office365-Filtering-Correlation-Id: 19117440-9ef7-4ce8-f81a-08dc1b2c7b3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uGYOBgeeo61DeAfct/2C0/bQ7Z5p8d39CPNoo4UI5cYUL/TrskF5MI+PK2RpnsZUhzTh78gp/+ykP5AqdAlfXUQak3xNu5IV0G6msTydD5j0tsoZ2lXg1E7IJJ4NZnPVNZujAV89jPr3D8Nj2BOXodxv3/g7kU/L17ZzzetIyaYy6c4Bto5IHaI4k+LpLfv6mHY1V3TVsSqTKAEKvZBpkICgfQSPpSo/kpVFFFevxKeguD0wUv+YonnSYPOeuU2Tn8cP93yYDBhpQZtFpzLnvrsqpcbN6+VSiRXeE9mL+yTb6+BPUkxx4nLJqkIFUYayXxT0qXoXOKLXfhGqbVKn6xxJdNqNtFJS+qoBDtxD8w7PBASjfgou/ckZSAh9yctN3lIwWvRbHw1YAEFUXZrK1OsTNOIwkzZeYddGY1ibH8yjzalR0bjvLU0yIYUsxjjlxNbeMSQ+XCeWPIklTC7VxxeXZ97YlWCXedpgwh55yt2fS9IhRI+D6ZbmT7O75pBoRh8heEYEBDwglCZalvuXybrNA3Y+bj2xr8H8C4HxfkliTye4hkwM+Hkp11tbyo1BDsnZcB6FwLMl0uc17iIruKWLGJbSiglLOdr0AEcRNIfF8deFhPchn+48D/bjyLeggBwa455NM03qOrbRn9pNzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9P251MB0618.EURP251.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(39830400003)(366004)(136003)(346002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(86362001)(6666004)(6506007)(2616005)(26005)(36756003)(6512007)(5660300002)(83380400001)(6486002)(3480700007)(2906002)(478600001)(44832011)(41300700001)(66946007)(6916009)(66476007)(66556008)(316002)(8676002)(8936002)(4326008)(7116003)(38100700002)(31696002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWNmaG1BRDkrT1ljczZYMjYzcVJjY1NUdWdnbURTY1VxakpGTjdBRU5ZNUpP?=
 =?utf-8?B?UUZjMUNUL0s1bzAvNk4yRU5ZSG83VktIa1VaeTc4d0lKSi9zVy9QTW1WV01l?=
 =?utf-8?B?MW5MN0NHN0lKYWVra1R5RlJUOVhHZXkwQ2RGamZsc2RmSkI0VUlJNkd6NXFH?=
 =?utf-8?B?akFKS08yVFFNc2FZaGZBcVcvclppVWYydUZLaXkzV2Y5U0FzTm5KOXFtS0Zk?=
 =?utf-8?B?dXdhYXVoQ1NGS2Zab3dWeno3SEx2L21MOTlMQ1ZTOERMRGlWUEx3SXFKemFs?=
 =?utf-8?B?eWd4Szg2eEpqZVNDUDVNYnErbzlSOFdMZEhNMmRGR09jSkFwcWxWUHZacFVY?=
 =?utf-8?B?Z0gybE1VRVg1YS9yZ0tWL2M5dWRUZnBYaHhVYkVGckxXWm9HUlNwQmtrOVJ0?=
 =?utf-8?B?K1NpenpKekZmZ0Qzak51bmZtYkRnb2JmaEJvRlpvekh0SHdXUGJENzlhdEZF?=
 =?utf-8?B?eE9xdFJhR0JpbGxQR09PMnRBTGlGcFdyc05qOTNqUE9paTJVRWo0WDByQkFo?=
 =?utf-8?B?a2hKUkpaRUhQWFZaOWFEOTFHbzMvcm9sbCs3UjI1MWhqUUY0cUw0OHI2K1Bp?=
 =?utf-8?B?L2JpeUpBOU84U3NFMlkrMmI2YWVNQzJlMHhaMUoraFBLNjhDRzhGRzk1ajZP?=
 =?utf-8?B?WmtCSWltSzkzdWJlSjlRTkFSR0phSXJwMHRsM0IvYmJDNVpzYXBvU2tXQWhE?=
 =?utf-8?B?b2d5bkhhaTVNSXlhdGRaZUVTd3hwZE5ibEFNN20zQ1g2L3pvYm83aXdRS291?=
 =?utf-8?B?YWovM0U1Mk5vOVUya24rTjk3cjk0cCsycDFkRGNBMEVQMGFyUmxqZGNiTkpm?=
 =?utf-8?B?cGhBaFJRMzMySUZ4WVJsenlPeGh3Rit6K1ZVVWswUkpZM0ZyUE8zK1RZVmNp?=
 =?utf-8?B?RExwK0M5MWVTdGVIR2RyZHljQ08va0JTcFFWRTA4WjVVa3czRVcrbGhOMWFU?=
 =?utf-8?B?dXMxV1ZZN3BQRzV6bGpQeUJjNjNSNW5mS2FDNlVvR0JMaDI1L2RVZ2w3L0d1?=
 =?utf-8?B?WE1hanJnSG9yUnVnamNlRkVYYWF6OXNNdkdjYlh4cUdYTFJyMk90V2E5a0ZC?=
 =?utf-8?B?MGxjbmkwc0R4TXd3cG4zVHdQY3hhdXFZbmpkWWFnUG1ZTlhtdVVGQ1NlOHR2?=
 =?utf-8?B?UFEwcWdPWnF5dnQzTHVlekF1ZWlIS1ljaVdIbEdHb291cWpUMkJPQzI2ZmM1?=
 =?utf-8?B?OUFsN3JIWGNCbTFxL2NpMVVGRmcyazRHN0VIeGl2U0RXd3MybHpzc2EvaEwy?=
 =?utf-8?B?Nmg3cUNiWnpRdUVPcVJZeGdhcFNKMVVJVUQyT1lEWTJkZXpENnNRK0c3THRX?=
 =?utf-8?B?VWpzVVNHOHlFc0R2VFJQaVpFUHFsTjJlNjVtWTBnWS9FQlhHNW12ZXVLOWZj?=
 =?utf-8?B?TjZ4TmtDQXl2dE1YdDN1S0ZsWE12YU05MTlIREtDc3lRb1JXaWZOWTBBZmFp?=
 =?utf-8?B?anU5QzNKUzJBN2t0MGcvTjFGT0RMaXhWdzl0RGFvK2s2OEJaOGgrS21EOUJJ?=
 =?utf-8?B?OEVJTGRwVHpXamd1YVllMDFNOU85ODVZbXRWaG4wWUlrTDNyMUFKWGYrRS8r?=
 =?utf-8?B?UmkyTVJSem9adEFmSEtqSVhCNnlRc2Vsa25FNnQ0Y1BEZWFOaVVNdHN6dDFF?=
 =?utf-8?B?K3NENEtvdVBLUTNSNWI2MGt1T1h3VlNOa3AyakJvKzNPMnZ1eW5VQ0pqQTVy?=
 =?utf-8?B?VlIwQmpsWE9rTGtnSHo5TUg0S3pNaHJuOUMyYXRXVHBoeTZia28ycGpJVGZj?=
 =?utf-8?B?Ri9aQ3haZUgyK3ZMS2pVU2lIeUo2ZUVHTHl1ZXhtVGhSNlVDazA1SkZvVDF3?=
 =?utf-8?B?VG8zVGpDQU4rVGV5WlJsSExERjF3U2FiQm54Q2xCVExtaU14SGc2UUMrZCs1?=
 =?utf-8?B?aXVnU1ZUdHNTWWdVSFVPZ1V0SXhKMGVWbFZpZG5SSXhodjhXYitLM1EzSktr?=
 =?utf-8?B?YUlua0IrTGJEOWEwNzBYa1VwWU9waVVvSGgySGg1NzlocWs2NDBLbmxkRkdw?=
 =?utf-8?B?a0gxemVjWVlKTEVyTjMySUpHdGNvU3lIeVgrOURVVXQzZEVoMzZ2U2xCQ0tr?=
 =?utf-8?B?WGZDRDRualhLbUZOU3B1b2QrMXhsRXM5a2xSMllaeTZlbS9zRjNsOUlsTWNz?=
 =?utf-8?B?T0QvZWxJM1V1ZG9IdVg0YmM4RXAyS1ZBSnBLYk9kWHR6QTNtOXhsQ0RtSHdY?=
 =?utf-8?B?UWc9PQ==?=
X-OriginatorOrg: t2data.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19117440-9ef7-4ce8-f81a-08dc1b2c7b3c
X-MS-Exchange-CrossTenant-AuthSource: DB9P251MB0618.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2024 09:28:24.1489
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 27928da5-aacd-4ba1-9566-c748a6863e6c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GDCwhsRG371ZAWmlwwR44mHYbkwlbgaUryE4B+uDnFtp4BxPZ/MJ0yi0Hs2/i3R63NT+7CQx9dvFtXvjYGwTvcvL3/7qKiYvijcprG25xAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P251MB0739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_012838_073685_FA20E910 
X-CRM114-Status: UNSURE (   6.48  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: PPC initrd placement.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi.

I encountered some initrd issues I can't explain.
Using a 2023.05 and can't find any significant differences to master related to this.
Barebox iomem output looks like:

0x0000000000000000 - 0xffffffffffffffff (size 0x0000000000000000) iomem
   0x0000000000000000 - 0x000000001fffffff (size 0x0000000020000000) ram0
     0x000000000fe94000 - 0x000000001fe93fff (size 0x0000000010000000) malloc space
     0x000000001fe94464 - 0x000000001fe9c463 (size 0x0000000000008000) stack
     0x000000001fe9c464 - 0x000000001fefb32f (size 0x000000000005eecc) barebox
     0x000000001fefb330 - 0x000000001ff1df0b (size 0x0000000000022bdc) barebox data
     0x000000001fffc464 - 0x000000001fffefff (size 0x0000000000002b9c) bss
   0x00000000e8000000 - 0x00000000efffffff (size 0x0000000008000000) cfi_flash0
   0x00000000fe118000 - 0x00000000fe1180ff (size 0x0000000000000100) i2c-fsl0
   0x00000000fe118100 - 0x00000000fe1181ff (size 0x0000000000000100) i2c-fsl1
   0x00000000fe119000 - 0x00000000fe1190ff (size 0x0000000000000100) i2c-fsl2
   0x00000000fe11c500 - 0x00000000fe11c50f (size 0x0000000000000010) ns16550_serial0

When loading a newer FIT image (Around 25M size) with 5.17 kernel, things work just fine.
Placement ends up at (kernel print):

Found initrd at 0xc111a000:0xc2458000

With an older image (slightly smaller) with a 4.11 kernel, placement ends up with kernel
not recognizing the initrd (squashfs).
Placement here ends up at:

Found initrd at 0xc097e000:0xc19c1000

Now if I hand pick the initrd loadaddr for the older itb, to the same as the newer one or just slightly bigger,
ie, 0x111a000 or 0x1200000. Then everything loads just fine.

I can't find anything relevant in barebox or u-boot regarding this.
There seems to be some 64M limit in ppclinux.c but that looks historical and does not make much sense to me.
Either way, it should be fine with the lower address.

Any hints would be much appreciated.

/Christian



