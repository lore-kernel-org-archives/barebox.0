Delivery-date: Fri, 25 Feb 2022 15:50:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv7-00A1Um-TQ
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 15:50:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv3-0002ph-AN
	for lore@pengutronix.de; Fri, 25 Feb 2022 15:50:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqdJfm9IbLA3zZYlHtvzw/S5o1SlYfeAAoDqsmlWGJk=; b=K9bU/7dLaozUPm
	lFgz6ITuHKK5fE23NPPJeNq5TO/ruwhU2mbf/qYBA0dQLDpbJ8fB18BeM+I96QYF1vh02fvo+C393
	pSxu3Ahz9BVXfns6IAYMc9Dp5lNkMB0MBzMItnZUKWQHgvx0BHviYZ+a1Df7dFQscf3Y0z1IPKrAA
	i6mXp6Xz3Jrsb6go3sknSgkFpNaSpLM6SZJ9tvWPURJCyY63u4QC46OZO2cjjB4Sn1Sk2L/GF6wAL
	PH7Ic15Ts8xUbRMRGb3PjRazqY6mRbl9pOm7MvJtvKXGy/K6tnBa8Pz3tRtXqCPDbU8dT546KOqEO
	w7He6pZsUIGLgHgFS48A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNbtR-005Rm8-9n; Fri, 25 Feb 2022 14:48:25 +0000
Received: from mail-db5eur03on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::617]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbtF-005Rep-Aw
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 14:48:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLhmDfJ3d8m6Nu008peHG5ewqnlRxMwIDOeSijs42LHX7X9T5WrWRAvjCTnaZv4iWfJvmfghl+PHwcRkGMx7UrPCPw7RZrxLs4w8Sfw950UvMzVgCL7Ow2/I5zeRmxyh0Gja/ueERwuFxdfgM4qcZl4OpJpyZTaNZTrR5S79IfEAm7p4QrDx278FBRR7uDS4q2vg82YbTQiHqniarsZEe8tW80xxVaavrDNoOxqfuJE9Ak+B6H1Qip0v2FeTHwzjnPZgOkmZJCkAbRJD1EFrBFt6iCWcjJyVXg/adDyfzmlxlLE/+zTifTiUqghASTvBW63Etn59UsRpf2jKiIMOOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twoP+7+SCmnaE9TclFNy4mMCQgs0tenSvgaLeHfbOEQ=;
 b=k6UABzOpbAeVkKzsMJNwMKriAOq6tGG4Q9t8Rps2pdZAzaQLYNLtNmusyntsy7AXbFMu9DaEqt8TVN4V7RUqOPsbU9dIQo/r0J1GwdhVdq+DRX7sf9wCLOgzgO3GP4lBVW1XSXg/KRxzbNhj5zN/7JzdtiEMMcLI+9Ey7/Lafzkj8fkxKKqaurka9M11lWe12y6jgfseTFUyUdgIvBRjDlr72JbIrS7tDBNhawjgmdoWE1M96nAbtuqJA9tPjGMh5ukCYjTrku6nLAxbsBthzA9lTnGcfEluppzJqqaEz/4db1GIL2uyXMSPpwESqXGgAkzbQ+Fg3K/sFuoUxQwhwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=twoP+7+SCmnaE9TclFNy4mMCQgs0tenSvgaLeHfbOEQ=;
 b=qA9Cq89blBBfvuxgBJUT+ZCSQH9BHuV1GPJKIXk3XZhbHOWL9TvVwUCMGRvdgBrEU/CKKD60RFT+Vpen5QGaq5NMGEpjdS9aMhSiT/uEVnzeHgcMIaqcFQ0pCVrPSCN1HabxQb84F8nHOv+XT+EGk1GWuJlNp4fKdk2cUj53ZOc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AS8P192MB1397.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:3c4::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.24; Fri, 25 Feb 2022 14:47:59 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.025; Fri, 25 Feb 2022
 14:47:59 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Fri, 25 Feb 2022 15:47:49 +0100
Message-Id: <20220225144751.4160843-3-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
References: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0055.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::27) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a36b9579-2b95-40a8-a0b4-08d9f86dd131
X-MS-TrafficTypeDiagnostic: AS8P192MB1397:EE_
X-Microsoft-Antispam-PRVS: <AS8P192MB13977F8D7E0CA7BCF7AD3A559C3E9@AS8P192MB1397.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ogZdHxn1GANV+5WJkZAyAYR5jU2X3/ZHaNcz2g8PDLxZmuBeuATynCazBRVJBsQDE/39kmYJ3jioKOcZPBgzuef2DNSp8TMwBufOHYHOIXwNT8nH3tevLU+QQO4A52lQja/Bkrcl6nePyBop5WZjiRZlIPtRHDroatWwP5PGbG70qClHthhwEdpjHswNcykb1Cy4wECOIqU0gLhwlMf8Q2eyGdJNpM+5srE2x/UJe4Q7QJcXBVwm+qNFsgOOKpf87YuOE5bMd2EsC9P2L8N+N0L/PTVhI0lEf+TwiT7IuQt25WFlJ4oE2e1SRmQgDO4E73RGNFVqnpbWXqQP+4pPrpEk21Uvn3V13oO+uJmNGRBsDTKhoj09MJmOtxtY9gguqBjZJrGfIbORJbYpKbN+bWFkaz/pkMyOFrbi/HvlPbC+qbkrC9W2iYfVCdAIPd2LmRLhA3542Hyqmcsdwax+yxUX1kC8DPxAC2HSCJ2OwAhh/CFU8xyWnGTmELQCRzb67rg2gNHM7DAx38++i+YuIbSscRzn32HRRroDE5jhUL83OlWANN8zzo5PvKPbR3iCeEW07h2ZAFSxbvs/Gr4kXx3Q2JG+Jgr2WXF3M2IdRmO+lJvyia+Y8/cNRhS+knFMWSq+VegjwcG3Pl83+N0ZJOkQG9W4mDkhmG+wh96WIIhmEHBM79ycjZGNi3ofxcZhJrd1JR1JoswV7SfKCs/kcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(36756003)(66556008)(66476007)(66946007)(8936002)(5660300002)(2906002)(2616005)(4326008)(86362001)(8676002)(6916009)(52116002)(36916002)(38350700002)(6512007)(38100700002)(15650500001)(83380400001)(508600001)(6506007)(186003)(1076003)(6486002)(44832011)(6666004)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ePzqo/cq94JU+S/c9j/S1m4GDqyryKZpkitA3f0wxkOBTZlh7BOZMj/wvCp1?=
 =?us-ascii?Q?EjM3CWKpju+0TFl+VQH4XCEzHmlqvBP0lk/73b86IGOwsWG0zh4Guu6/8IZk?=
 =?us-ascii?Q?N88119yX3MhJfcH1PrFftugukCALcXo7+3lNMxicn8Wosq/1/WULok/xCCCE?=
 =?us-ascii?Q?ek9P8sTeFGH/foVfnzt9n4/5WrXbdsGBpwk7xuwCNdYF9WXoH534Ae0OSk5p?=
 =?us-ascii?Q?T2WeVggYcde6uVUlQInzUibAIs9EXRJCHg3oIhysdoTvf0V1EC/VMlj6ipFj?=
 =?us-ascii?Q?OEpkZETQKT/oythBhy/AFEy3DPUO0I2vAekzrnQuwLHH5ChBVKa1xKH3WM2t?=
 =?us-ascii?Q?qLYbjE3BKN6938OjPtzeXNP2oy//V1lyMk5lMSU/UP2JsHLY1P0W5TTflha9?=
 =?us-ascii?Q?iu/Z64fuju5yTdnquXjQ63bNXNwz3DdS2fS1KFztRI1wv/FmV+C00E7vcbhx?=
 =?us-ascii?Q?XnA2xyGwtlS8/AARziCFYOEx3REUajBZ5eeRN0FHLPoG7EApy1pWLbzYEqoE?=
 =?us-ascii?Q?BHwAurc0Ff5X5pGqG3HDbIEdVKlJInCuMpCfqhZWwmtWI9qFmGo6vjKcxioY?=
 =?us-ascii?Q?1NnU+DeQf7y1gw/A94qgAPY049pXDog2rtumHtbILzmhKMXoXSmxbEOIOBbE?=
 =?us-ascii?Q?KghhFE20n6tbSrZCjq05FMg8CB4azGgBnPeWRzzUxyYsfM90iucbC7ngYAXK?=
 =?us-ascii?Q?FpVtc7xA6Gi9onP42tB1ylzIkBb6Wxqr2/QTuxWTJjwre0DjIEVnMqz5EIeF?=
 =?us-ascii?Q?b36+MxH3FrnGoSFOQF7+sQMWJIKerLbBx4MtB9jQfAHL2tc7zjhwpkS1enb9?=
 =?us-ascii?Q?HzgEZiRmYxpYhpbAvhwEb4ZDnenxMOAOF3Wld+sa2JOTKmku2obwOl+RfU4r?=
 =?us-ascii?Q?M9TfBEML47iwX85yPv4odKIx7oKykz+XAJkyNV3Mve03G5+4D/Y2qqo6LoNl?=
 =?us-ascii?Q?1oOykrzlp7VNioaXulXhVXBEmBR5J8D+DITUdETzyzoWX9QUOBZMbLZHohPU?=
 =?us-ascii?Q?v9dNmKpYc2XTyUTNxy6oXylkcAjfUqsea1QxulpaNSt6U1eVwJQCiyGANXAE?=
 =?us-ascii?Q?N5owDIvWkMAJSdZgviu7B77BlIB9mKgh8cyNIZFPVZTIP8u6k45/qRmKnPlL?=
 =?us-ascii?Q?ydlK+N5D4hHN4KVvLdvv7coRhxm8ILtD4/WROkrae+WiVXJU1Csh7KW/w3o4?=
 =?us-ascii?Q?XRMnUQX1yxRyMXwg+xBHD0iajZWw5tsizjpa8wDpXjAom/yRPXTTQ3k+6GMY?=
 =?us-ascii?Q?L8CTNdtoPTzxG9No1SZ7FoLXSq6TDvyvs+EGCDzDOY/+3bcZSFREeP6yG0ag?=
 =?us-ascii?Q?VJTAeYzFwCKmGNzAac8fGXi0T+xXgglyiCtwvRKG65WBTPwb392W5C4kzsra?=
 =?us-ascii?Q?prvZCMMTYgcbTa0vON1p2pmEscnZy3luoomjnxLJW6DtPiQhwdQ5cjg1W8JX?=
 =?us-ascii?Q?v9eseXMeZv0i4Iwcx59yCx5G3UQTctTy92fRrTR+y6+5nBU3tPQ3E6Sdu6ep?=
 =?us-ascii?Q?E/oig3Dn7bvtLCXzqww6Rvjg/wNnzZzIfgAWm82M11dCJiF8RVq771TbWR4p?=
 =?us-ascii?Q?S5padYGQnGlLhzsZjBqc7uk76SoG32xNG6YMstiZ0eBmXjZ1LkjQv7YT0e4A?=
 =?us-ascii?Q?74Y8hsI1vTKW8zlWwpMVuAM=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a36b9579-2b95-40a8-a0b4-08d9f86dd131
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 14:47:59.6012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YKH8XQRaY9tyP0OnYORdQhvNO7GhOcrdcFW9EiRvUKvNSL9ePp5taVPXqg2ajUuA6Dwld81Rl6F2mOkTZfqgmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P192MB1397
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
X-OrganizationHeadersPreserved: AS8P192MB1397.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_064813_415358_859D0EC7 
X-CRM114-Status: UNSURE (   8.83  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] ARM: imx: Add imx8 support for SDRAM with two or more
 bank groups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add bank group size to handle SDRAM with two or more bank groups
in one chip. The imx8mn DDR4 has one mem chip with ranks set to 1 and
the number of banks is 4 in 2 groups, total of 8 banks.

We need two add the DDRC_ADDRMAP8 and do a check DDRC_ADDRMAP8_BG_B0
and DDRC_ADDRMAP8_BG_B1 to get the number of bank groups in the chip.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/esdctl.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 8e2d9e0c115c..0e11033b81ae 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -346,6 +346,9 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 #define DDRC_ADDRMAP7_ROW_B17			GENMASK(11,  8)
 #define DDRC_ADDRMAP7_ROW_B16			GENMASK( 3,  0)
 
+#define DDRC_ADDRMAP8_BG_B1			GENMASK(13,  8)
+#define DDRC_ADDRMAP8_BG_B0			GENMASK(4,  0)
+
 static unsigned int
 imx_ddrc_count_bits(unsigned int bits, const u8 config[],
 		     unsigned int config_num)
@@ -409,6 +412,13 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 	if (FIELD_GET(DDRC_ADDRMAP1_BANK_B2, addrmap[1]) != 0b11111)
 		banks++;
 
+	if (addrmap[8]) {
+		if (FIELD_GET(DDRC_ADDRMAP8_BG_B0, addrmap[8]) != 0b11111)
+			banks++;
+		if (FIELD_GET(DDRC_ADDRMAP8_BG_B1, addrmap[8]) != 0b111111)
+			banks++;
+	}
+
 	columns = imx_ddrc_count_bits(col_max, col_b, col_b_num);
 	rows    = imx_ddrc_count_bits(row_max, row_b, row_b_num);
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

