Delivery-date: Mon, 28 Feb 2022 18:04:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjRT-00DSYD-Jy
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 18:04:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjRR-0006x6-H1
	for lore@pengutronix.de; Mon, 28 Feb 2022 18:04:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TZUTDr+/G7B196zIOCjcntL3LCQBdppChu6aWvrvXdI=; b=RELct740t6L4Z6
	dK5WQ3IMhFA2WigwCi48k6mXrttBzC9NOf8EAWDEQopiAH/v9FzBKEyRBjguaOuBmKleT8SvGSTxG
	AWqU5caDDQHvxVgdQTMnmUmkWSnVWhxIr3e9wtoTvYYF9213909AzN2HyhkauG5lF2rupuaGmpWbO
	dl7J7Gf56wUIF4vcHDUwg6vL6rjMg7RYJltMWaF8RPG5ZTq5oT1YdjeYsJx1ZP3DproZYVh5NmlY1
	YwK7diohNk6zzRZRDIe8lyGazToiA/UYTpzU7rLWMdEDnOdFTOMJlFl01dw7tTv9X6hv3vPObOv/H
	L1UR+tpA326b6t0oWLGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOjQ5-00DROL-4i; Mon, 28 Feb 2022 17:02:45 +0000
Received: from mail-db8eur05on20608.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::608]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjPz-00DRLI-AN
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 17:02:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LRq6X8NYh9GuTO9Ga0J9UHOmm/RtmBHHKu3f7fMKTHo1mrdA18jC353HboVP2N0gfFVtBBSXUHb7dOCkB1lAZVRnYTmjTbjyzPYLV+xe0VkwKe9DRrgew94o/uObDsSsy4DJ/qdOaz7VNKjXhhadb2tHPy5SI4HyAaJfPFyN+UAa4fyTlDaOgVlw/RNBx9r6GsRhQrJXUOqoaxnmy4MCNm7vjggkugNmThPglPGacawbWzGZPOXKgK9FJJ8IuEiIx29GyXpi3S+AY8YCdecn+3x5abSZgxaul0a8PVx53QOdJeh1wUR5kJx5jDs714+TSdPOY/IUZ+qwuMJ+t32ksQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aUH0eWX9tONVTeUMWaGdldRkDL6uOjSZa3NAtXfvLUM=;
 b=g4QCPBAsmd8gu6OdRWS0NSO/1vCidi9Ub5hCYeaoQTD6MW6X2fGddzyuLkgfbZ53eDjQiPQrNPuhzAMMYdNJDAf3D2e3l3XfoIHa+jDvnsOOzxn1Up1sYtI5x6/qKTHn54aAsRgsE389hn0qSIyfBhioWuNJuBh/uXCoekj/ekxaN0Xzfs818IV11kapZaEH0JkJWKdcbx/SNPvNMIuhfZUKp6cEPEwgqn8KDd2lggBa1J6aR4HSR7d9oyWAX3Im6AE9eUsLvdZJ/oUTal+zka/0x6eJyQxzykco/Nter16tpc2/loh+w9GxJgWaOOBrBO9EYmzRMUpwkr76qQKlig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aUH0eWX9tONVTeUMWaGdldRkDL6uOjSZa3NAtXfvLUM=;
 b=YaSp8cju5NVBNCJjfMNcJjFiZQKYCBhHlmHtuD4wXEbwrQtAhlfbx5MDCcq9DTMyOPwwVEZvPyPdRVKE6/Bu3EO457tq7zcBFmK+wjgtR+4AL+UBIh2NpjaGHFCFnzzv9d3qdn/+dziO96IOisAlUM3zteV76PCZ+UF0B6/BsZE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AM6P192MB0293.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:3a::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.22; Mon, 28 Feb 2022 17:02:36 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 17:02:36 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Mon, 28 Feb 2022 18:02:30 +0100
Message-Id: <20220228170230.248210-1-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0108.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::19) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 139d3f90-dc64-43f6-5b81-08d9fadc1e9b
X-MS-TrafficTypeDiagnostic: AM6P192MB0293:EE_
X-Microsoft-Antispam-PRVS: <AM6P192MB0293D68F9A2F343353B78EC19C019@AM6P192MB0293.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WpwDYXbq1zK0+9/2oSQDXwpP295Cm5ICg4RTIkAVo9yq9lK+OCgmudIIL3QacR3pe7dYtoVuQASQntLH3IZkRG8A8PsHoZVtfUdeGw5NeoKV6B9oAhMu0xxv5dV+RPovmsvoJ9nWbHpcA7pKgGmIqQwm4ehQ7u/cSY8cMExsLZZB2bTGrvudJtqC+OIouhBVTn7EOJ79j5UhUA2V8JW2kZ3p58WPSeN8D5yEm6HK2c5jMliYDKoL9/CwoW5DiHYu4VPrC6lXwe+v+VtWgGBlqIK/SbPvrFO99IjWzV133iKVnAtwteqOghVEkE7GaM9atjxxHX9CkmYjsmTDZ8QWwMAJhDT0EhI0LJP9+oQW1kj4X8lub6FX6UUKBLPgCDvogJCis6PceAwllEuI5aQVtAFavpTuR9zsasR4FpxTKyiTMVDXmSLrArZxsQGkFvABuejpQYvcs02cwihg3ov4tMnfdPvjd95FFccvjGXyWgVbICtQc4OsjYTn7prU2fHDwapfvooCpR6hFQtzjpKZkyBviQtZbHBA7L72tqkqoQBUmgxf0uQCUCMwSsjb5oMG5U6a9rDROgsgDH7G0ANn/EjsfP78MgD7kGwxje1YKwAXMz1XMjUsmGR2oPNH9kBARrwysbfNyDMC0xWULbdgwmOXeJo2xglugHDUrus6oTsL0idApZkckYT926YVDSz5RC4WqR/kJllm8uACUTe8MA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66556008)(66476007)(66946007)(8676002)(4326008)(508600001)(2906002)(6486002)(8936002)(5660300002)(36756003)(1076003)(2616005)(6666004)(52116002)(36916002)(316002)(6916009)(6506007)(44832011)(6512007)(186003)(38100700002)(38350700002)(26005)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iCeG5z5fNTIXS3bM02ZRDqWBa+xiaBoBQTvGRvDZkPjakvGL4Tf+4dYM8woA?=
 =?us-ascii?Q?C0U3i6jftf6YY1FVgNGmRc7EDAdCwaL77259xxP2fzzGrEYN87ITArQJxsBH?=
 =?us-ascii?Q?OLdT/gG3/OrNhLQgXL5R//H3iN3POjFuVh+lKK+i/IPlWf25UGKP5Huqnleo?=
 =?us-ascii?Q?lueQ2tDiqId87CPsniB7eBQGQATuDgCmAuaLDAoLAi+tNDnSWp0ezPs5XbUt?=
 =?us-ascii?Q?MoRVqZwrOEXVae2DZBeXK1jjsbqfdu6oEPhQ8MBwbIFt+pFrSFP18ZPzCTY9?=
 =?us-ascii?Q?kGtv4lXi5Y22S/36EalzA/Tl8hkLy7Srmh79fk678xsrzVIRYvshJBmlJSJQ?=
 =?us-ascii?Q?UmCvEliufvXqcIdSSjgOGOPU0mK5HNiLoDdhC9pv+q1jF2vnfaCebELO9VvZ?=
 =?us-ascii?Q?EhbdcREhAD875sLG43YMbIMXviVeE9Iu+iuFgX0hi5FmOBrGVnuwTKKJ+DsQ?=
 =?us-ascii?Q?D6DZAfpbLVe1wXS7sO3XOOGfuNVoMifNWdA+CAisUApygT0ec4oXm48KSHdi?=
 =?us-ascii?Q?TaN62iog1d+M+Baxrn4mQJnKztmH6tKhSXjVOrvXzNcmaw+suek/S3zl+6gA?=
 =?us-ascii?Q?FtcbAu+BfYP3FpviuDb7TY2eVdnlVz8lRENUJj03kMQ5P7Gg19nDezmQdwHh?=
 =?us-ascii?Q?JnWeT4KSMWyktTdcN4O4VHDQD4ecn7USOtOmR1Ht+CAUk0T6L8ZL1F7vVSu1?=
 =?us-ascii?Q?7EWYvhKJp9MVvsKRPbov/q0QDMrYsiocc7PYkyY419RtYyG0gVAi6gYJCL07?=
 =?us-ascii?Q?u/jSsIQpV2R4n908IHeBE59Z4WFDf1+FWOdIAmSnRdG8zQtznXM0BwTihQVJ?=
 =?us-ascii?Q?Q3XtwiVvO80g8r41rSC9uZL+NfHKfHsTXC/Q5fODkoCnNGci50u8289goYHN?=
 =?us-ascii?Q?dq5wYn6BNOoVCUyFXFtNz4YtbA+ErIpP93X06ad5TggbOUrTXShAas94j6Mx?=
 =?us-ascii?Q?0VlLp0LmyJUhROlHEye3Vf/ploFJSQvluh6kW48avECMiN+qf7CvZLU3eez3?=
 =?us-ascii?Q?V1H0JmIxr1HW73So9EmrLj2vTVAD0QXIWQxsV9A865jxD5OXLgmJvmFr+dw+?=
 =?us-ascii?Q?wy2sZrnVqT2cIhvFmeEgpRcVSqnL3kpcOfyyzEaKJUtzROBohjDS8Gnt2L4W?=
 =?us-ascii?Q?Q2+tyGXo63NGW9iL0YU6G9Pn/7R/zw768NHZNn5h5JLkei8xROZBYQa1NQYn?=
 =?us-ascii?Q?8nHTi6QlHVXe1hwFebYjgtyGbS2Sdcb3/eAt0KYWJpuVXVvpwCXsFbgRC/KN?=
 =?us-ascii?Q?L0DZ+aJwDAKbQe7rUIVIGEQ3ADC7OX+/T+S/NkrTPOkXIY7Uyi9gLPJoWktR?=
 =?us-ascii?Q?nJWf2cJVlh67QFypVLJxne4WwV8zoQuKmXQzBwx3HkrNOUnmfoPCeCmQ0UMn?=
 =?us-ascii?Q?90QtDpf5ExKBCzTsw2gpzfjxeX+AOcgwCyZaa0mEhvqZP7KL6vp80qC5QXS0?=
 =?us-ascii?Q?KczX610JOOu7tRKsTtodzBwYnjSwf8/HJyq6knKm6R03szLb8tOphF8DSMcV?=
 =?us-ascii?Q?3RE2J7g1ZLSOMGkPSx4u79gsA4YUyuuT0oYQv7QFmnISm8CcIgm4lj9sanMn?=
 =?us-ascii?Q?curcMRGChuw3oJu178u6rySXScufo+mrT8wEjaXmxjZKY5nQGPf1XCgWhYaM?=
 =?us-ascii?Q?BVyoiJdjPOAmqnNf9ObavZ0=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 139d3f90-dc64-43f6-5b81-08d9fadc1e9b
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2022 17:02:36.4758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CcOvCRNgFbem4BKEHN+qQKZOLenx/bJ4QYhf6TdRNroVQ5pSEuz8jcMtgOV09XnkblthRleHWTw3/V9YNPml9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6P192MB0293
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 90.229.138.185
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: AM6P192MB0293.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_090239_429042_5777C42F 
X-CRM114-Status: UNSURE (   8.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] driver: mtd: spi-nor: Add Micron N25Q256 1V8 SPI flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the Micron N25Q256 1V8 SPI flash to the mtd/spi-nor driver.
The flash has the same name as the 3V variant but as an other
manufacturer ID (20 bb 19 instead of 20 ba 19).

This SPI/QSPI flash is used on i.e. NXP IMX8MN-EVK board.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index b3af3c4263b9..add6419df642 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -727,6 +727,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
 	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
 	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "n25q256a",    INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
 	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

