Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp28.mail.ru ([94.100.176.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SccKf-0002Qj-KZ
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 13:01:01 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  7 Jun 2012 17:00:51 +0400
Message-Id: <1339074051-9781-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1339074051-9781-1-git-send-email-shc_work@mail.ru>
References: <1339074051-9781-1-git-send-email-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] i.MX51: Added support for "clko" command
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/Kconfig       |    2 +-
 arch/arm/mach-imx/speed-imx51.c |   69 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 70 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 564e2fe..3d84d63 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -517,7 +517,7 @@ menu "i.MX specific settings        "
 
 config IMX_CLKO
 	bool "clko command"
-	depends on ARCH_IMX21 || ARCH_IMX27 || ARCH_IMX35 || ARCH_IMX25
+	depends on ARCH_IMX21 || ARCH_IMX27 || ARCH_IMX35 || ARCH_IMX25 || ARCH_IMX51
 	help
 	  The i.MX SoCs have a Pin which can output different reference frequencies.
 	  Say y here if you want to have the clko command which lets you select the
diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index 8d1ecf3..f716346 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -9,6 +9,11 @@ static u32 ccm_readl(u32 ofs)
 	return readl(MX51_CCM_BASE_ADDR + ofs);
 }
 
+static void ccm_writel(u32 val, u32 ofs)
+{
+	writel(val, MX51_CCM_BASE_ADDR + ofs);
+}
+
 static unsigned long ckil_get_rate(void)
 {
 	return 32768;
@@ -221,6 +226,70 @@ unsigned long imx_get_usbclk(void)
 	return rate / (prediv * podf);
 }
 
+/*
+ * Set the divider of the CLKO pin. Returns
+ * the new divider (which may be smaller
+ * than the desired one)
+ */
+int imx_clko_set_div(int num, int div)
+{
+	u32 ccosr = ccm_readl(MX5_CCM_CCOSR);
+
+	div--;
+
+	switch (num) {
+	case 1:
+		div &= 0x7;
+		ccosr &= ~(0x7 << 4);
+		ccosr |= div << 4;
+		ccm_writel(ccosr, MX5_CCM_CCOSR);
+		break;
+	case 2:
+		div &= 0x7;
+		ccosr &= ~(0x7 << 21);
+		ccosr |= div << 21;
+		ccm_writel(ccosr, MX5_CCM_CCOSR);
+		break;
+	default:
+		break;
+	}
+
+	return div + 1;
+}
+
+/*
+ * Set the clock source for the CLKO pin
+ */
+void imx_clko_set_src(int num, int src)
+{
+	u32 ccosr = ccm_readl(MX5_CCM_CCOSR);
+
+	switch (num) {
+	case 1:
+		if (src < 0) {
+			ccosr &= ~(1 << 7);
+			break;
+		}
+		ccosr &= ~0xf;
+		ccosr |= src & 0xf;
+		ccosr |= 1 << 7;
+		break;
+	case 2:
+		if (src < 0) {
+			ccosr &= ~(1 << 24);
+			break;
+		}
+		ccosr &= ~(0x1f << 16);
+		ccosr |= (src & 0x1f) << 16;
+		ccosr |= 1 << 24;
+		break;
+	default:
+		return;
+	}
+
+	ccm_writel(ccosr, MX5_CCM_CCOSR);
+}
+
 void imx_dump_clocks(void)
 {
 	printf("pll1:   %ld\n", pll1_main_get_rate());
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
