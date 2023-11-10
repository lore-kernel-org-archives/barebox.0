Delivery-date: Fri, 10 Nov 2023 13:59:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6u-005rVe-3D
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6r-0003KC-Rd
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GC52G3asukUoCryvqUhrIwLAmXmp9S8QrOJRflMKiLA=; b=YYwwOVcKVP+QXa9Wk4K5I+dWqX
	Do6gO61cJd3aX02KUYhpDbn/2GM287ArtBxweIMZGdHqUe5RO0oR8eHBYYbMJWlKA9wDepC7asa/F
	jrCx4WC0eb4DcqIWwM3LyukjUxY2lvXpmT8Tg8dSdG7tyzsY7QpN4TLzcEduJ/cZF/NDdK7pIVL6D
	O4cyc2joljGcyYPS6UKuDHQc7qrY77dHsujHLKsPK+muqr2jYfLkCtzkp8NWjvygrZPhL3EexyR1b
	P2YVohKK1cboA/qCol4X5GmtMIDbPaZFufJitKA2E4eNvYVu57V9haS/EB/zHhZ/b2XVYMG+V/LAZ
	UN1awA6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5h-008k9b-2e;
	Fri, 10 Nov 2023 12:58:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5Y-008jyP-32
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 12:58:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GC52G3asukUoCryvqUhrIwLAmXmp9S8QrOJRflMKiLA=; b=dTVb0Ks9hQl2STUGcNXXkgTkZJ
	lSXtZ/VBNx0gik2DIr9k9Pt01jKdF0h//e9I9dLtGmXLtxYXPk8d5W05+8pLByfljgubqJ7oMiyQq
	n3vxNZkIWFlxD6yUkq//05gW1aCxcZUAF2Y0xzvpe6DHhEIAuwA9bqkvqk3gNObU84VuOA8FiaXP4
	Z01W7pNC6g2uZbf5DLOEPU88GcPjGNKJkmbOC6c2+3ZAThUQzv1A3/xgkvCvQ9I7kqL4STdyctiM8
	/YhB9a78G9/QywVJtR3tMvHmhDsGuYpoT+reh+sct8wfQIJUOvAUv9YHdec++bcx9kcrMcnChpy6t
	SElloImQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5S-00Fbun-0d
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5I-000275-0U; Fri, 10 Nov 2023 13:58:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-0081Xd-1Q; Fri, 10 Nov 2023 13:58:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008s1Y-31;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:52 +0100
Message-Id: <20231110125800.1901232-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_125814_721878_C4BEE56B 
X-CRM114-Status: GOOD (  13.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 17/25] ARM: i.MX93: Add DDR size read support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 42 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 2fca0a44a1..ac35a2de66 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -28,6 +28,7 @@
 #include <mach/imx/vf610-ddrmc.h>
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/imx7-regs.h>
+#include <mach/imx/imx9-regs.h>
 
 struct imx_esdctl_data {
 	unsigned long base0;
@@ -555,6 +556,39 @@ static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
 }
 
+#define IMX9_DDRC_CS_CONFIG(n)	(0x80 + (n) * 4)
+#define IMX9_DDRC_CS_ROW_BITS	GENMASK(10, 8)
+#define IMX9_DDRC_CS_COL_BITS	GENMASK(2, 0)
+#define IMX9_DDRC_CS_EN		BIT(31)
+
+static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+{
+	int width = 2;
+	int banks = 8;
+	unsigned long mem = 0;
+	int i;
+
+	for (i = 0; i < 2; i++) {
+		int rows, cols;
+		u32 cs, col_bits;
+
+		cs = readl(mmdcbase + IMX9_DDRC_CS_CONFIG(i));
+		if (!(cs & IMX9_DDRC_CS_EN))
+			continue;
+
+		rows = FIELD_GET(IMX9_DDRC_CS_ROW_BITS, cs) + 12;
+		col_bits = FIELD_GET(IMX9_DDRC_CS_COL_BITS, cs);
+		if (col_bits == 7)
+			cols = 7;
+		else
+			cols = col_bits + 8;
+
+		mem += memory_sdram_size(cols, rows, banks, width);
+	}
+
+	return arm_add_mem_device("ram0", data->base0, mem);
+}
+
 static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 {
 	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
@@ -695,6 +729,11 @@ static __maybe_unused struct imx_esdctl_data imx8mn_data = {
 	.add_mem = imx8mn_ddrc_add_mem,
 };
 
+static __maybe_unused struct imx_esdctl_data imx9_data = {
+	.base0 = MX9_DDR_CSD1_BASE_ADDR,
+	.add_mem = imx9_ddrc_add_mem,
+};
+
 static __maybe_unused struct imx_esdctl_data imx7d_data = {
 	.base0 = MX7_DDR_BASE_ADDR,
 	.add_mem = imx7d_ddrc_add_mem,
@@ -770,6 +809,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mn-ddrc",
 		.data = &imx8mn_data
+	}, {
+		.compatible = "fsl,imx93-ddrc",
+		.data = &imx9_data
 	}, {
 		.compatible = "fsl,imx7d-ddrc",
 		.data = &imx7d_data
-- 
2.39.2



