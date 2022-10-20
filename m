Delivery-date: Thu, 20 Oct 2022 10:03:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olQWn-001fWy-Sg
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 10:03:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olQWl-0001TJ-0s
	for lore@pengutronix.de; Thu, 20 Oct 2022 10:03:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFxW40KFgBTDBtLX4ROLp+ed6N+pTTNzQDGFLjL7aKA=; b=H0esLo3+OdbEJh
	bxX3Xcjw1LFgv0qMMLC8CAu48iMBavaEoasK1XVKIl8kUZsPyXN7Lo2bBJeohHHrhCUxI8UdCRJdZ
	VK01zIAbUi58U0pfk3gWDMe6roo7Dtx4UHxSGOz7MR/GD2+8rqJczAxm/N7hY9s01JbKoHUPsEDuY
	ujRGc/LPbGJ4zx3/8ZWmYpVfIFFeI6307QitwySCsRzUCFTucCKhQr4VaQ0K55UNUcPI6BoOFw8K+
	vZdmlipFaZ4lm3wnfXDbzPttnF3AlRlXa6dkjPaP/bToosfSezswaGej8UFeDel4C3twoyGKUVlE3
	VSDNo6UoU0CU3LlX6Bwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olQVU-00C2gC-F5; Thu, 20 Oct 2022 08:02:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olQVL-00C2dh-4a
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 08:02:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVJ-00012c-Tn; Thu, 20 Oct 2022 10:02:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVJ-000HMx-6H; Thu, 20 Oct 2022 10:02:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVI-00EaDm-6Z; Thu, 20 Oct 2022 10:02:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Oct 2022 09:58:26 +0200
Message-Id: <20221020075826.3385137-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221020075826.3385137-1-s.hauer@pengutronix.de>
References: <20221020075826.3385137-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_010215_200193_7FF7CD3F 
X-CRM114-Status: GOOD (  13.36  )
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
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: i.MX bootsource: adapt boot device detection for imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

imx8mp uses sbmr2[27..24] for encoding the bootmode while existing
code reads only sbmr2[25..24].

This can detect BOOTSOURCE_SERIAL for the wrong mode.

Based on:
https://lore.barebox.org/barebox/20221014115354.4072202-1-enrico.scholz@sigma-chemnitz.de/T/#u

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 26 +++++++++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 7b3334d5e2..c0193cfa43 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -202,7 +202,8 @@ void imx51_boot_save_loc(void)
 }
 
 #define IMX53_SRC_SBMR	0x4
-#define SRC_SBMR_BMOD	GENMASK(25, 24)
+#define IMX53_SRC_SBMR_BMOD	GENMASK(25, 24)
+#define IMX8MP_SRC_SBMR_BMOD	GENMASK(27, 24)
 #define IMX53_BMOD_SERIAL	0b11
 
 #define __BOOT_CFG(n, m, l)	GENMASK((m) + ((n) - 1) * 8, \
@@ -234,7 +235,12 @@ __MAKE_BOOT_CFG_BITS(4)
 
 static unsigned int imx53_get_bmod(uint32_t r)
 {
-	return FIELD_GET(SRC_SBMR_BMOD, r);
+	return FIELD_GET(IMX53_SRC_SBMR_BMOD, r);
+}
+
+static unsigned int imx8mp_get_bmod(uint32_t r)
+{
+	return FIELD_GET(IMX8MP_SRC_SBMR_BMOD, r);
 }
 
 static int imx53_bootsource_internal(uint32_t r)
@@ -317,6 +323,8 @@ void imx53_boot_save_loc(void)
 #define IMX6_SRC_GPR10	0x44
 #define IMX6_BMOD_SERIAL	0b01
 #define IMX6_BMOD_RESERVED	0b11
+#define IMX8MP_BMOD_FUSES	0b0000
+#define IMX8MP_BMOD_SERIAL	0b0001
 #define IMX6_BMOD_FUSES		0b00
 #define BT_FUSE_SEL		BIT(4)
 #define GPR10_BOOT_FROM_GPR9	BIT(28)
@@ -338,6 +346,18 @@ static bool imx6_bootsource_serial(uint32_t sbmr2)
 		!(sbmr2 & BT_FUSE_SEL));
 }
 
+static bool imx8mp_bootsource_serial(uint32_t sbmr2)
+{
+	return imx8mp_get_bmod(sbmr2) == IMX8MP_BMOD_SERIAL ||
+		/*
+		 * If boot from fuses is selected and fuses are not
+		 * programmed by setting BT_FUSE_SEL, ROM code will
+		 * fallback to serial mode
+		 */
+		(imx8mp_get_bmod(sbmr2) == IMX8MP_BMOD_FUSES &&
+		 !(sbmr2 & BT_FUSE_SEL));
+}
+
 static bool imx6_bootsource_serial_forced(uint32_t bootmode)
 {
 	if (cpu_mx6_is_mx6ul() || cpu_mx6_is_mx6ull())
@@ -694,7 +714,7 @@ void imx8mp_get_boot_source(enum bootsource *src, int *instance)
 	void __iomem *src_base = IOMEM(MX8MP_SRC_BASE_ADDR);
 	uint32_t sbmr2 = readl(src_base + 0x70);
 
-	if (imx6_bootsource_serial(sbmr2)) {
+	if (imx8mp_bootsource_serial(sbmr2)) {
 		*src = BOOTSOURCE_SERIAL;
 		return;
 	}
-- 
2.30.2



