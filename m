Delivery-date: Wed, 15 May 2024 13:21:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Cgz-00FjMk-1w
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 13:21:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Cgy-0003yN-Sq
	for lore@pengutronix.de; Wed, 15 May 2024 13:21:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qNDVrXivNY2eNMnZDI5UW1kYpE9M65Q5wdRyppurM3Y=; b=YaxLZu3Qr1AMlrOY6SAD8/uWIa
	2gyiAbxtqMsuyiGl75lpA2kg7TrFntspzRHMRI6Xw3CB30BhVlgtZ8XiDMQ248uaqVGc6YXyr8U1A
	cw3Bax0ZSNc4L0FvzVlMdhDlLMPvARjDL0SmooWxIYWdcbzQGIX++6SCp/4TVYPseDlhw/+mzjicX
	cHCbhae6vREKd4C/XMd3yDJh0DNcy7incJZ4G7qcvxx6ZagGurRVqdht+M1RAAA0o1LFJLWKRCQr3
	a0iVE8qmjItJ58Ex3xAjcbZSNIHrc+8IKaX1H81aE2xPxYIcpG+rE3Mpcf1QOd3OiPAATZsS9Nndi
	Qeqwi+og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7CgZ-00000001LJb-1cqp;
	Wed, 15 May 2024 11:20:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7CgV-00000001LIc-2IB9
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 11:20:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CgU-0003l6-6g; Wed, 15 May 2024 13:20:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CgT-001WX8-Pj; Wed, 15 May 2024 13:20:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CgT-001CPm-2H;
	Wed, 15 May 2024 13:20:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: san@skov.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 13:20:33 +0200
Message-Id: <20240515112033.286037-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240515112033.286037-1-a.fatoum@pengutronix.de>
References: <20240515112033.286037-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_042035_611608_FDBC76A1 
X-CRM114-Status: GOOD (  11.80  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8MP: skov: update timing parameters for Samsung RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Soren Andersen <san@skov.com>

The RAM is to be operated at a slightly higher data rate of 3200 MT/s,
hence the timings have to be adjusted.

Signed-off-by: Soren Andersen <san@skov.com>
Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/lpddr4-timing.c | 46 ++++++++++-----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/skov-imx8mp/lpddr4-timing.c b/arch/arm/boards/skov-imx8mp/lpddr4-timing.c
index a93506b0bdeb..96882910a2df 100644
--- a/arch/arm/boards/skov-imx8mp/lpddr4-timing.c
+++ b/arch/arm/boards/skov-imx8mp/lpddr4-timing.c
@@ -15,29 +15,29 @@ static struct dram_cfg_param ddr_ddrc_cfg[] = {
 	{ 0x3d400030, 0x1 },
 	{ 0x3d400000, 0xa1080020 },
 	{ 0x3d400020, 0x1223 },
-	{ 0x3d400024, 0x16e3600 },
-	{ 0x3d400064, 0x5b00d2 },
+	{ 0x3d400024, 0x186a000 },
+	{ 0x3d400064, 0x6100e0 },
 	{ 0x3d400070, 0x7027f90 },
 	{ 0x3d400074, 0x790 },
-	{ 0x3d4000d0, 0xc00305ba },
-	{ 0x3d4000d4, 0x940000 },
+	{ 0x3d4000d0, 0xc003061c },
+	{ 0x3d4000d4, 0x9e0000 },
 	{ 0x3d4000dc, 0xd4002d },
 	{ 0x3d4000e0, 0x310000 },
 	{ 0x3d4000e8, 0x660048 },
 	{ 0x3d4000ec, 0x160048 },
-	{ 0x3d400100, 0x191e1920 },
-	{ 0x3d400104, 0x60630 },
-	{ 0x3d40010c, 0xb0b000 },
-	{ 0x3d400110, 0xe04080e },
+	{ 0x3d400100, 0x1a201b22 },
+	{ 0x3d400104, 0x60633 },
+	{ 0x3d40010c, 0xc0c000 },
+	{ 0x3d400110, 0xf04080f },
 	{ 0x3d400114, 0x2040c0c },
 	{ 0x3d400118, 0x1010007 },
 	{ 0x3d40011c, 0x402 },
 	{ 0x3d400130, 0x20600 },
 	{ 0x3d400134, 0xc100002 },
-	{ 0x3d400138, 0xd8 },
-	{ 0x3d400144, 0x96004b },
-	{ 0x3d400180, 0x2ee0017 },
-	{ 0x3d400184, 0x2605b8e },
+	{ 0x3d400138, 0xe6 },
+	{ 0x3d400144, 0xa00050 },
+	{ 0x3d400180, 0x3200018 },
+	{ 0x3d400184, 0x28061a8 },
 	{ 0x3d400188, 0x0 },
 	{ 0x3d400190, 0x497820a },
 	{ 0x3d400194, 0x80303 },
@@ -270,7 +270,7 @@ static struct dram_cfg_param ddr_ddrphy_cfg[] = {
 	{ 0x20018, 0x3 },
 	{ 0x20075, 0x4 },
 	{ 0x20050, 0x0 },
-	{ 0x20008, 0x2ee },
+	{ 0x20008, 0x320 },
 	{ 0x120008, 0x64 },
 	{ 0x220008, 0x19 },
 	{ 0x20088, 0x9 },
@@ -335,7 +335,7 @@ static struct dram_cfg_param ddr_ddrphy_cfg[] = {
 /* P0 message block paremeter for training firmware */
 static struct dram_cfg_param ddr_fsp0_cfg[] = {
 	{ 0xd0000, 0x0 },
-	{ 0x54003, 0xbb8 },
+	{ 0x54003, 0xc80 },
 	{ 0x54004, 0x2 },
 	{ 0x54005, 0x2228 },
 	{ 0x54006, 0x14 },
@@ -457,7 +457,7 @@ static struct dram_cfg_param ddr_fsp2_cfg[] = {
 /* P0 2D message block paremeter for training firmware */
 static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
 	{ 0xd0000, 0x0 },
-	{ 0x54003, 0xbb8 },
+	{ 0x54003, 0xc80 },
 	{ 0x54004, 0x2 },
 	{ 0x54005, 0x2228 },
 	{ 0x54006, 0x14 },
@@ -976,9 +976,9 @@ static struct dram_cfg_param ddr_phy_pie[] = {
 	{ 0x400d7, 0x20b },
 	{ 0x2003a, 0x2 },
 	{ 0x200be, 0x3 },
-	{ 0x2000b, 0x34b },
-	{ 0x2000c, 0xbb },
-	{ 0x2000d, 0x753 },
+	{ 0x2000b, 0x384 },
+	{ 0x2000c, 0xc8 },
+	{ 0x2000d, 0x7d0 },
 	{ 0x2000e, 0x2c },
 	{ 0x12000b, 0x70 },
 	{ 0x12000c, 0x19 },
@@ -1081,8 +1081,8 @@ static struct dram_cfg_param ddr_phy_pie[] = {
 
 static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 	{
-		/* P0 3000mts 1D */
-		.drate = 3000,
+		/* P0 3200mts 1D */
+		.drate = 3200,
 		.fw_type = FW_1D_IMAGE,
 		.fsp_cfg = ddr_fsp0_cfg,
 		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg),
@@ -1102,8 +1102,8 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp2_cfg),
 	},
 	{
-		/* P0 3000mts 2D */
-		.drate = 3000,
+		/* P0 3200mts 2D */
+		.drate = 3200,
 		.fw_type = FW_2D_IMAGE,
 		.fsp_cfg = ddr_fsp0_2d_cfg,
 		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg),
@@ -1120,6 +1120,6 @@ struct dram_timing_info imx8mp_skov_dram_timing = {
 	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg),
 	.ddrphy_pie = ddr_phy_pie,
 	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
-	.fsp_table = { 3000, 400, 100, },
+	.fsp_table = { 3200, 400, 100, },
 };
 
-- 
2.39.2



