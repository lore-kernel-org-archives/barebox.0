Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gezD4-0002PT-BG
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 09:22:39 +0000
From: Lukasz Madej <l.madej@grinn-global.com>
Date: Thu,  3 Jan 2019 10:22:21 +0100
Message-Id: <20190103092221.5937-1-l.madej@grinn-global.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: imx7: missing config for AIPS3 bridge added
To: barebox@lists.infradead.org
Cc: Lukasz Madej <l.madej@grinn-global.com>

Access priviledges for AIPS3 bridge have been configured so peripherals
connected to it (like SDMA, SAI etc.) can work properly.

Signed-off-by: Lukasz Madej <l.madej@grinn-global.com>
---
 arch/arm/mach-imx/imx7.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index ca11e8345..ff2a828c7 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -26,6 +26,7 @@ void imx7_init_lowlevel(void)
 {
 	void __iomem *aips1 = IOMEM(MX7_AIPS1_CONFIG_BASE_ADDR);
 	void __iomem *aips2 = IOMEM(MX7_AIPS2_CONFIG_BASE_ADDR);
+	void __iomem *aips3 = IOMEM(MX7_AIPS3_CONFIG_BASE_ADDR);
 
 	/*
 	 * Set all MPROTx to be non-bufferable, trusted for R/W,
@@ -46,6 +47,14 @@ void imx7_init_lowlevel(void)
 	writel(0, aips2 + 0x48);
 	writel(0, aips2 + 0x4c);
 	writel(0, aips2 + 0x50);
+
+	writel(0x77777777, aips3);
+	writel(0x77777777, aips3 + 0x4);
+	writel(0, aips3 + 0x40);
+	writel(0, aips3 + 0x44);
+	writel(0, aips3 + 0x48);
+	writel(0, aips3 + 0x4c);
+	writel(0, aips3 + 0x50);
 }
 
 #define SC_CNTCR	0x0
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
