Delivery-date: Wed, 28 Feb 2024 14:15:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfJm2-00DUdT-16
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 14:15:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfJm1-0008Ff-Bx
	for lore@pengutronix.de; Wed, 28 Feb 2024 14:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mBfgEbxarjU9mFnXSoMWn9HT6oZVBLCA0iDP2SzUj/Y=; b=YHrLwnKBsN7zYZkkb7T4bes9Iy
	e+gJUZRXvlp60YO5aJVhejGw0Gzye8Jb+lq+yNoxMWKf94yfAW+gx421ShH5ldvT2bMu6N+68Fli8
	nupdqne5PS7IdW4a7Xec+xQboEohvdfvzPMV7fiWhhcO/NoZtdMe/OCc2nFxNT4Vmw0eT8qIUGTYm
	cioSIozWt49lf23EZHdS1sPwtzCgdPAb4ps9Ah9IkFKyI7Dx3m+0OHFka0YjhVy+m7BnxTeoGv7Rb
	Y9vRECT1sp0BQIb6YiuSom1WVntNwF6Tha9TyS5Bn+QUn61cHOoHBrlYC/tu8Mj4dpz9JWBTi/aQO
	UvDFjCJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJlT-00000009Qdm-2U6M;
	Wed, 28 Feb 2024 13:14:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJlM-00000009Qbz-3aSe
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 13:14:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlL-0007yl-Ik; Wed, 28 Feb 2024 14:14:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlL-003P12-2t; Wed, 28 Feb 2024 14:14:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlK-002uZZ-1h;
	Wed, 28 Feb 2024 14:14:19 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 28 Feb 2024 14:14:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-1-ee1ae48dc399@pengutronix.de>
References: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-0-ee1ae48dc399@pengutronix.de>
In-Reply-To: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-0-ee1ae48dc399@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_051420_939885_5BE5EBC9 
X-CRM114-Status: GOOD (  17.53  )
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
Subject: [PATCH v2 1/3] arm: mach-imx: tzasc: lock id_swap_bypass bit
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

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
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



