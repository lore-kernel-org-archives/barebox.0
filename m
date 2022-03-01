Delivery-date: Tue, 01 Mar 2022 14:24:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nP2Uh-00EPX2-FJ
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 14:24:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nP2Uf-0007ys-If
	for lore@pengutronix.de; Tue, 01 Mar 2022 14:24:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u37cDjw0VwWm5Q6X9xuOR1W3QAmTo1EnBky5VAf85x4=; b=Mxsrg8pep2qnVq
	e+xiQngxMib9ZWUmrqIr1rDHGdDhagsA/umJ9HV5ynuwERyxUVUpYzIRptmuGZF/s//jGtdb2xPl6
	zoMomCdRn2AjZ6bCXg5uT1rcbrhT5cnvfq3JSergGZbmumlWhM6WYKLjDVOSiThlh1V7FheLK8uZB
	Cu9On6lj627+XhKXgfikw9seiPd89MwvtP2CYD+IKuOJZdiKxn9tVRlRLQNPbkrAYh+2UajVAGuM0
	R7Qu9uXhfoPhcUWYmxPaiyuyQ6cBeyApxvt3/3kKE2Hy0Y/KvQPq3kAnaKawEFe5b2vb0heC3Wvbi
	uSVSOx67zFlELrWT8WiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP2T8-00Gt4n-Vq; Tue, 01 Mar 2022 13:23:11 +0000
Received: from mail-vi1eur04on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::623]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP2T2-00Gt2L-FA
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 13:23:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKETNVD2ORXG7pEaxEDqH9Gs/FNibZYtz2nGZ0N26i2+ySe3mnoC+OHaa0gFmu30WoqNUHkNWoWNCZGXMSAL07N+iValIY8WLXHKj/ONbSDsjvqhBZiDqfT9ge2QBpx8auhLCuqHCfnU7ALCFcx3ZQHgbij3zTxYpB2OD651Mq8zBnHQ/AG1emlfBCKtK57u/DIAG8EWBqM1eHqYKGhuSDCyTZBt2idtjNi9s+qwwujc8AuAaZEyYDpbH7uYElFZd16yXBa+2m2kV0GSS/pyOm/puJcXJBJVI3M554jEKD0zzhq79RzkxdxtUsm7m998Odg5MMzZRD/hlIyOsa5aWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8/By8IDoDj4RxMctBmhGi5Y1+NkNp4KEo6QDduLz5Cs=;
 b=NoIqdFP4eYgWDz/AIYalZeh8TL/nEH6zcHA2vLTdzn6thCLLf4r9jQiziYOSfLSPxf1Vh+wuucXQBxXUXESIPzdxUeHVt5OPhhiDVMmNxW1ZqMDR5oIfKj32/YUGHCNTuL9bzhLhawVcq11b3BugjcqPvJDKg4mV8MMrhiH2wqKiCF8C9JLlWOJEZd/UZtkg10LOfjNzaaMDX/OKNkXIDtU72m/XwYmE7epBda+4p3JLU4NaKqeTBaMUdcqQnpfd6Kk1/Gj/hPRF4RcrlDC2wDy9bLZj2qzRjAuHH8FUz+sTEUzcuobas70PssxrvsF1o7In7gkcEtZYZra1GFQFfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8/By8IDoDj4RxMctBmhGi5Y1+NkNp4KEo6QDduLz5Cs=;
 b=e/jFqqCcW7keA7bGYlLj1+RvR3N5dhz8QX/BtPy+OuPU1loxsZB8CBtVilhtB3LBmNSeJcOE9X8l8z0xyrjeoD3eecP43X8nWNiy1vQk0iuUl5TsC7syAStqEkMIaarhi8o1tRxcKlJ1ZNA9CAaEMlIQg1/vQNUvTPWjOLNj//8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 VI1P192MB0190.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:c3::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.26; Tue, 1 Mar 2022 13:23:00 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 13:23:00 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Tue,  1 Mar 2022 14:22:54 +0100
Message-Id: <20220301132254.343387-1-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0054.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::24) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 54c1d47c-b3d3-46f6-d9c3-08d9fb869b9e
X-MS-TrafficTypeDiagnostic: VI1P192MB0190:EE_
X-Microsoft-Antispam-PRVS: <VI1P192MB0190E48122F3E731E8E2C1579C029@VI1P192MB0190.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3QClOipqIALdTIC/d0vq+BO3lk6bkra0NWoZg4TdkDtBzgDGakmYb4siMD9T+jSJBtegfrdoECtD8h/0Qvt9jpl0W02nXx0wfV+plGLjdcO0kglYsSx5U0zDOlL3N2YEDdiCI9EmI8hAzUcIjFjrhXHKliIBRPOIk45jkK7awJdW0JhLuFjv72wbyofqUht1nMCUPGXxw+37IO+HtKuqJFnS183zgvqwTX+PAlc507Uh2FUCtEMn3n7frJ83CNdOZhBASBCFldN4qsYHj0/J2dNpVp15+ui5Bm/ZvVYMeNVHtqIh5G444gMO85OIQ+qb3bvfLtIHdwWjq8m57YGd71xq8/0PU0NdYx3QmWf4ibbWtvBlpAiA+/TF0iWFpcK0SeELnObz8LYumngrHcL5eewesZ94sc8+QLWTtORFQosmtXFdo6Q68eG2fsTVsR7irYK/wN4LEewo3NfrSmFguZZ92NRN3GXZ3HnIWjQ9Keynrbr0c6IE7SD5B9POmKpzL9zuDDqLXFdP9wAxsmdlgUh1GNU5WxPqyjNlGfLLyfaAYYLkfBjCC2lDPQ/sf3Mw8+bfnjqKeYAqNBI26U7wyYwdAjdcCMY3Y24qZlZl3kxqvIMuks4xf2nkMCqgXmMj/l7Aqtln9JKTCKqjlzGH7VNT6/nWTCxEFM28xmF1sIlFeSbTv4J7TbtX01z7sfP6CtgXwx9xPpNEHmGqvqIQdA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(44832011)(36756003)(66946007)(8936002)(508600001)(6512007)(26005)(186003)(86362001)(1076003)(2616005)(6506007)(2906002)(66556008)(66476007)(6916009)(316002)(5660300002)(52116002)(6666004)(36916002)(6486002)(38350700002)(8676002)(38100700002)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CJ1Uun0Uv0MB4rOsyqnZoaUBexbTl16dgXA2uH/uX8gaiGTnuKiVnFYd1YZp?=
 =?us-ascii?Q?wo9skkOBLDM5CS2Yt3DyA1UTe0lqh6STsEgr7fAa4ZGL8ThZX8T01okMP/uE?=
 =?us-ascii?Q?honTWiIbicGRTDwi0Gr+4cMQGHU0uV60+Lp35nJyRKITy1roDefQBC4mZ519?=
 =?us-ascii?Q?PfNEMx6Y/W9ETht0qhvGp3p3M7CInBPT8QxtziXgUBPfgiNYosRY0dU/LcLW?=
 =?us-ascii?Q?jakp0ZnnQHeMkG/a6d93wqvViVPWFv5sXUKMcqxCbngmfj7gXD5E50e4YP2C?=
 =?us-ascii?Q?xWPuQMWv1dS9rAQM14Pdi82WN7b7NPAg0ieKeY+b0ACGMzMTf9EfU94y3Vvp?=
 =?us-ascii?Q?BytNfrifo1d6HIQWAy7K5N+N3Zv64Es2TFZ1eXprPHyOdgSFDn54VU4sWK7P?=
 =?us-ascii?Q?waFIJBAN6ZBrdFOo/a1y61eiGYdTGBPodqGcM7Dh1bC9c5ftuvSKefJFX4Oz?=
 =?us-ascii?Q?a4rI/W5DSMW8U+cxrls4tP5DWAZnNFDeH9xqV2IVvWzKvYu/f2h4Ew+k7bQT?=
 =?us-ascii?Q?ZJ5kJ828nkeI4zHhKdhMl2V0JHnUePV3kJ8lwUUi/E2UgpfPaLWEsz8DFqAm?=
 =?us-ascii?Q?5DTZRcg0jy98fnI2AwG2h+Br9v4SUUipV5Jr0VVq0Phqh/BHbCFwLDXpMZHc?=
 =?us-ascii?Q?7GW1Cyw0dQnyNsFkvBlTRTC0CSb2qO+/Si3puvDkisl0+Ct31ZYlG8RjoV0p?=
 =?us-ascii?Q?+bVHPqHerzfEw1J4f0cwDxbgXceT6z2c6+tKxPcMH1zwr7HJaVoMRn8x/gW0?=
 =?us-ascii?Q?DvifxvhrRkZES4WwtDD4itAigAQr+Sl2lyvwe9o7wg724Fz01TMjt58tDexB?=
 =?us-ascii?Q?dqE4tFrlRrhevbnJ6cbmYKyHGS2SJ++rWxQEhrcSIpq7a3dNxt3P1NMPSNJo?=
 =?us-ascii?Q?O1rwjL5P+oCITAvufw5BRQyM0L9aAyLbYM7tFIS4bjMAATSNTf0U46VhC1Gn?=
 =?us-ascii?Q?OEohyCDJ1Z8xmaQFdYyVSR7cfeX8yY4V7d3yEJW1Y9Ah/aidWh/1ZBVuB7WC?=
 =?us-ascii?Q?ov6wBLKWyCm6BbmBqCjChkWmME30sq81j3jHNf5+HD31iSsb32MrZEZhRcuy?=
 =?us-ascii?Q?fGa7rM20pO1lZ0V8qvYxVOKZ0hd1SrWztQJ4W1EHbnWdNBg96oJSSwkEk6+d?=
 =?us-ascii?Q?a8dFw8eCA1B57Ix/uHxj7SE3BEwDjs8Ginswyi+COuGzxBShoDT6kisQFI7M?=
 =?us-ascii?Q?hHMm4HENw9kXnKBQEjrW3VZ4cjS5+y+Jw4z/lm2hCoQ9g+aJZ2W7RGkqNRFw?=
 =?us-ascii?Q?Qt11GbiVSbzNAdAfg/c8Sc947vr37YrLMBQkPJsmpuA6TK74C9GsRIXF/orQ?=
 =?us-ascii?Q?EzVTYzBN4/51yeNEaUn2k/rCqcJbRrL+KWCxXtjg22Zh7oxfo0K/3+YKqi3+?=
 =?us-ascii?Q?l0ecI997Te1+5BVnuKjrF7oMt/BKxqW38kFL3xcmrZUTxSjF+4i6mfsUX+01?=
 =?us-ascii?Q?tWrPNhliirlPSgZg2RKarO7n4JHjq4bArsQ6WFTxWB30sclZWzAwOLs065iC?=
 =?us-ascii?Q?o0mUrlcpCyMDpH57QJaxOO/9NiJ2v4i2OPEWfvlMPSJRF21sjjQ5SD+tMDGi?=
 =?us-ascii?Q?UIq6kCAVCOA9NBRi0cNvzv5N7LwP1fw7d9r9y2q2QySTseTI8+ugz7h6DZdS?=
 =?us-ascii?Q?vmgvh4cWUQ1uxuQf3aEhpuE=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54c1d47c-b3d3-46f6-d9c3-08d9fb869b9e
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2022 13:23:00.6422 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QLC9zHMBfBJsw8EuHo2NUApGDyTQG1seGUHrG9bdtrxrfjKiBCUZ9t8O4QBTu9c5oWbDLnKww1qVSoBQQtYT7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0190
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
X-OrganizationHeadersPreserved: VI1P192MB0190.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_052304_530930_406611A0 
X-CRM114-Status: UNSURE (   9.34  )
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
Subject: [PATCH v2] driver: mtd: spi-nor: Add Micron MT25QU256A 1V8 SPI flash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the Micron MT25QU256A 1V8 SPI flash to the mtd/spi-nor driver.
The flash has the same name as the 3V variant but as an other
manufacturer ID (20 bb 19 instead of 20 ba 19).

This SPI/QSPI flash is used on i.e. NXP IMX8MN-EVK board.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---

Changes v2:
  - Renamed the device name n25q256a to mt25qu256a
  
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index b3af3c4263b9..cf532b13999b 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -727,6 +727,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
 	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SPI_NOR_QUAD_READ) },
 	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "mt25qu256a",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K | SPI_NOR_QUAD_READ) },
 	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

