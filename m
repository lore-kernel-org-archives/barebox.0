Delivery-date: Mon, 26 Feb 2024 15:41:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1recAh-0088jw-2p
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 15:41:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1recAa-0004hz-DO
	for lore@pengutronix.de; Mon, 26 Feb 2024 15:41:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xdGkU2yV/GldKFatvKizZ9ybHgs8CNtSdc5fP/P/ROg=; b=TUzBWb1XxkcfluAfaGG+6XSvj+
	GOZFLsY3pVMcyoHjsY19ByVbHKmEQQSU0So/snPBK23ajIzxPOi+VJXBz6cAIMGWZJx5LTWKpy0vY
	0n7KVjxxVA2ttEux/Zgm2mCWfY9cOq/6KkfSG0IeI95xLDS9Ut4/aEoy0dRWA1otck/xnoEqnI6Nl
	ZiWY2INgOZAdxQCSWC2rtfAIVDjwC+KYnhagqgJkj6Uv+JfbHYJ4ZyahTvHrLykuUE9di2espc9cm
	ugw/OPzyf66vjMk0ARqyKBLGT+aDCSr8RJsVuQc1i4qwJYL0H6O0GydTrTtwRa84VAOyK/Uxc0bSP
	ez112rjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rec9q-00000001Cfd-3xsN;
	Mon, 26 Feb 2024 14:40:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rec9m-00000001Ccz-2NXp
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 14:40:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9k-0004Oa-0x; Mon, 26 Feb 2024 15:40:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9j-0030wY-GR; Mon, 26 Feb 2024 15:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rec9i-002vPy-32;
	Mon, 26 Feb 2024 15:40:35 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 26 Feb 2024 15:40:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-1-2df2430da984@pengutronix.de>
References: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
In-Reply-To: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_064038_693265_3E8C5133 
X-CRM114-Status: GOOD (  17.72  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] arm: mach-imx: tzasc: lock id_swap_bypass bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This commit ports U-Boot commit 1289ff7bd7e4 ("imx8m: lock
id_swap_bypass bit in tzc380 enable") to barebox. This is the original
commit message:

> According to TRM for i.MX8M Nano and Plus, GPR10 register contains lock
> bit for TZASC_ID_SWAP_BYPASS bit. This bit is required to be set in
> order to avoid AXI bus errors when GPU is enabled on the platform.
> TZASC_ID_SWAP_BYPASS bit is alread set for all imx8m applicable
> derivatives, but is missing a lock settings to be applied.
>
> Set the TZASC_ID_SWAP_BYPASS_LOCK bit for those derivatives which have
> it implemented.
>
> Since we're here, provide also names to bits from TRM instead of using
> BIT() macro in the code.

Signed-off-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/tzasc.c | 42 ++++++++++++++++++++++++++++++++----------
 1 file changed, 32 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index 9c71108c99..1f8d7426c1 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -5,37 +5,59 @@
 #include <mach/imx/imx8m-regs.h>
 #include <io.h>
 
-#define GPR_TZASC_EN		BIT(0)
-#define GPR_TZASC_SWAP_ID	BIT(1)
-#define GPR_TZASC_EN_LOCK	BIT(16)
+#define GPR_TZASC_EN					BIT(0)
+#define GPR_TZASC_ID_SWAP_BYPASS		BIT(1)
+#define GPR_TZASC_EN_LOCK				BIT(16)
+#define GPR_TZASC_ID_SWAP_BYPASS_LOCK	BIT(17)
 
-static void enable_tzc380(bool bypass_id_swap)
+#define MX8M_TZASC_REGION_ATTRIBUTES_0		(MX8M_TZASC_BASE_ADDR + 0x108)
+#define MX8M_TZASC_REGION_ATTRIBUTES_0_SP	GENMASK(31, 28)
+
+static void enable_tzc380(bool bypass_id_swap, bool bypass_id_swap_lock)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
 
 	/* Enable TZASC and lock setting */
 	setbits_le32(&gpr[10], GPR_TZASC_EN);
 	setbits_le32(&gpr[10], GPR_TZASC_EN_LOCK);
+
+	/*
+	 * According to TRM, TZASC_ID_SWAP_BYPASS should be set in
+	 * order to avoid AXI Bus errors when GPU is in use
+	 */
 	if (bypass_id_swap)
-		setbits_le32(&gpr[10], BIT(1));
+		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS);
+
+	/*
+	 * imx8mn and imx8mp implements the lock bit for
+	 * TZASC_ID_SWAP_BYPASS, enable it to lock settings
+	 */
+	if (bypass_id_swap_lock)
+		setbits_le32(&gpr[10], GPR_TZASC_ID_SWAP_BYPASS_LOCK);
+
 	/*
 	 * set Region 0 attribute to allow secure and non-secure
 	 * read/write permission. Found some masters like usb dwc3
 	 * controllers can't work with secure memory.
 	 */
-	writel(0xf0000000, MX8M_TZASC_BASE_ADDR + 0x108);
+	writel(MX8M_TZASC_REGION_ATTRIBUTES_0_SP,
+		   MX8M_TZASC_REGION_ATTRIBUTES_0);
 }
 
 void imx8mq_tzc380_init(void)
 {
-	enable_tzc380(false);
+	enable_tzc380(false, false);
 }
 
-void imx8mn_tzc380_init(void) __alias(imx8mm_tzc380_init);
-void imx8mp_tzc380_init(void) __alias(imx8mm_tzc380_init);
 void imx8mm_tzc380_init(void)
 {
-	enable_tzc380(true);
+	enable_tzc380(true, false);
+}
+
+void imx8mn_tzc380_init(void) __alias(imx8mp_tzc380_init);
+void imx8mp_tzc380_init(void)
+{
+	enable_tzc380(true, true);
 }
 
 bool tzc380_is_enabled(void)

-- 
2.39.2



