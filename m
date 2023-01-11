Delivery-date: Wed, 11 Jan 2023 12:19:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZ8Y-008ks6-63
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 12:19:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZ8V-0007ID-Tu
	for lore@pengutronix.de; Wed, 11 Jan 2023 12:19:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NXYU5bqkAn45ZnKusWui0bimBq1jSI+VrngE0ZdgU0g=; b=f3hr1iBe+iBa2uc7HgVYdsqTxU
	U0fR1zx56t/tivxryQHRzanZ0Fwl9F/gHYcyrMHjK+02H3ndaVz0jfXHfqCWgCcOP0L0WVF8ZWI9V
	1+vZxwbR7eK7Org9qQ+II4cJrmEmohp1VQ+T+ijWVqEOGjfoKzY02oyQyzWLPBFucl/cCVl9r/TfQ
	xUIhCi21+1g0NhkCk0H6qwxRUuv8TDSmYJLv8hgMwM6IyDNEOY6V4wv3goE7YPBnsGrp8EqSeYzmP
	llsUH7WXfeW6wihkyEYNM+/CdxfvEDC3avf6aNBbKTJwpmunt2ToGrI+IpkN9F67tRHnUl8UbcV/5
	anyePKyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ6x-00B2CZ-7N; Wed, 11 Jan 2023 11:17:39 +0000
Received: from mail-dbaeur03on2132.outbound.protection.outlook.com ([40.107.104.132] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZ6r-00B2B0-IH
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 11:17:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jCyQrDtJegVEgvC6jLehLvKBd+ed1FOOKTJiwwJewM4kkcbwGuY0Eg6LaKiPtFgksWXfBJoZjuaG3BzifhrsMJeOP+ZypzEn1giLtQ8BKZnW6ToOlOGNcDNZ6GTEvVJMNQ3nponZwoLZEdNZlVHe6jwQ/+2SF4deVRPG837/u5EJn0dw2tlJxTA3yjQjMgQR23yOX3hzWILtqLYr1+lWgu+TwjknMTi6sPk8cum5wAk9hXoUMqeO020c8OwlEKaaIFhv/l5WPQsXitYAuxFfnmxLpiiys11mOAVz59XXiJG3jEeVFE/pVd1fzUa7F13PEDQrwaOHDs6r+G3G5Gl7aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NXYU5bqkAn45ZnKusWui0bimBq1jSI+VrngE0ZdgU0g=;
 b=JaDmlfVvF7np5VIclABZAdF9xHK0ekCCP68Oy+iraqTtqiwjHXdXZxy3H0KVZhWSkDQZ3aiIe89UgjczBHanW+yFQJMz1JWnDHXoHjR5twS42SVRHZd9DpyGXHbhAmilpxHmm7UmgUMp/0E9PrHp49PTSP7O8NgVdaQ2BNjT8EnRLLSfi8jAk+OCtprft1ZzSXRg9b0CZGOIGBQWrmq/bE7mqZdL8zR0azrS8LnSaNVhHq1zhCDSG4DL+c4mbsZFdFxceW0bBSFr0zm5iZW2T/URjdsvVF2JBj7rW6rgNZ/6TmTXEgpbu83avwghdU4YvGFIhqcStvZXTNp91xu9lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NXYU5bqkAn45ZnKusWui0bimBq1jSI+VrngE0ZdgU0g=;
 b=lXW8nPCq8716pxUZJEgaPENXBBVesljQNgNbKguRDtWqRTYvKsC5V/7KVRv02Za16lfb0GHo27A4+tcndAPucowmZhX01w57RkPqSLMs7HOiZaqsosdBwGhDzaer5GSz/cN5axmM3/Ae2PuoYM4J8jABip2FC77aK7vGXYjw4as=
Received: from AS9PR06CA0281.eurprd06.prod.outlook.com (2603:10a6:20b:45a::30)
 by HE1PR0602MB3355.eurprd06.prod.outlook.com (2603:10a6:7:88::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 11:17:23 +0000
Received: from AM0EUR02FT063.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:45a:cafe::93) by AS9PR06CA0281.outlook.office365.com
 (2603:10a6:20b:45a::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13 via Frontend
 Transport; Wed, 11 Jan 2023 11:17:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT063.mail.protection.outlook.com (10.13.54.188) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.12 via Frontend Transport; Wed, 11 Jan 2023 11:17:23 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Wed, 11 Jan 2023 12:16:57 +0100
Message-Id: <20230111111656.757271-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT063:EE_|HE1PR0602MB3355:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 30910d22-6832-49c0-c06a-08daf3c5699c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	2l0CFOOetB1uUF33bBuxiOApa6/u5/mJ0AqIPXO9R3WMhkJssdVhptI0EYjJozajteVjFGhB2Iu9+Lkd+kxCKnvpI3BSF9iWOBMS7Y3cgUq3EL6ADi+KD5ys2yGvalnJ9K9LCZBe7FaVFMIcc2/JjGe6BGCcRmZFJPCIc3h3k5Bufal3q1M+F3BY0LgqT/AnYT31tkX5MG/b8anjKrhGmShKH9a+Vi4xNLiMJ5uffsizbUehdVJ0UhRsqDF1eNwOESTdoqE26/AGhGlq/YU8KqPBuQhZI1cr3pYP11xh2m+yuwADAgJVCwCgg3Vt70VW8hpxC9QCJGieBiGDnN9hkV/t2hWTW/6xWRlQr8xtzdYGs54r0sa3mKQism5Vpmyl5vVfrIGseegPZP7zYN8AnEENP0osIFIQ7Uh9oP3WLdAWpYN8vLaYuzYhl9V7EM7egO5/ZNN9FNYPFWmWDGDBGNV6OadqSHQM9TV6szSNAW1qtrtC7UqwX0YEEh6Pp15YiYVCCb0vU3hNp7lz/t7/2AmZ9L58jAOuixgHq8rbznuabSAfYRYEJiWDazNBKW/nChvRJR7GiT1QY153bu1we2YE0B96zyVB/hjjbNoYOGIRtbdCXyrKQa5j+EJT7JWilOCjYVSedpiJa7OV5L4ECg7M6Q2Z2XP0TRYJNLi9IhMtt5hazHwfilTkzh5qvzqEzX1l7wizPPuLnWT/xDVb2Q==
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(376002)(346002)(396003)(136003)(451199015)(46966006)(40470700004)(36840700001)(36860700001)(6506007)(82740400003)(6666004)(107886003)(81166007)(118246002)(2906002)(356005)(36736006)(6486002)(478600001)(2616005)(956004)(1076003)(26005)(186003)(6512007)(44832011)(5660300002)(40480700001)(316002)(8936002)(83380400001)(40460700003)(82310400005)(36756003)(86362001)(47076005)(9316004)(41300700001)(6916009)(8676002)(336012)(70586007)(70206006)(4326008);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2023 11:17:23.1396
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 30910d22-6832-49c0-c06a-08daf3c5699c
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM0EUR02FT063.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0602MB3355
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_031733_902421_F6CD1A4A 
X-CRM114-Status: GOOD (  11.94  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3] ARM: i.MX8M: separate function call for clock_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a separate function call for imx8mp_early_clock_init, to avoid
confusion with imx8mm.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c       |  2 +-
 arch/arm/mach-imx/imx8m.c                       | 12 +++++++++---
 arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h |  1 +
 3 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 4f24dd4cd4..3cb24df1ca 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -72,7 +72,7 @@ static void power_init_board(void)
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
 	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
 
-	imx8mm_early_clock_init();
+	imx8mp_early_clock_init();
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
 
 	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 9758525b54..7f3856e545 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -182,7 +182,7 @@ int imx8mq_init(void)
 #define IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL	0x104
 #define IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL	0x114
 
-static void __imx8mm_early_clock_init(unsigned long pll3_freq) /* and later */
+static void __imx8m_early_clock_init(unsigned long pll3_freq) /* and later */
 {
 	void __iomem *ana = IOMEM(MX8M_ANATOP_BASE_ADDR);
 	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
@@ -252,14 +252,20 @@ static void __imx8mm_early_clock_init(unsigned long pll3_freq) /* and later */
 
 void imx8mm_early_clock_init(void)
 {
-	__imx8mm_early_clock_init(750000000UL);
+	__imx8m_early_clock_init(750000000UL);
 }
 
 void imx8mn_early_clock_init(void)
 {
-	__imx8mm_early_clock_init(600000000UL);
+	__imx8m_early_clock_init(600000000UL);
 }
 
+void imx8mp_early_clock_init(void)
+{
+	__imx8m_early_clock_init(750000000UL);
+}
+
+
 #define KEEP_ALIVE			0x18
 #define VER_L				0x1c
 #define VER_H				0x20
diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
index eeb15f4dd0..659615e1cc 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
@@ -53,6 +53,7 @@
 void imx8m_early_setup_uart_clock(void);
 void imx8mm_early_clock_init(void);
 void imx8mn_early_clock_init(void);
+void imx8mp_early_clock_init(void);
 void imx8m_clock_set_target_val(int clock_id, u32 val);
 void imx8m_ccgr_clock_enable(int index);
 void imx8m_ccgr_clock_disable(int index);
-- 
2.25.1



