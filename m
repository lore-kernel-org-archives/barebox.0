Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cal19-0000U0-Hi
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 15:15:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 16:13:14 +0100
Message-Id: <20170206151314.30990-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX7: Initialize CSU
To: Barebox List <barebox@lists.infradead.org>

The CSU needs to be initialized, otherwise we cannot access memory
in non secure mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx7.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index 65e02d626..96a9dd244 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -79,6 +79,18 @@ static int imx7_timer_init(void)
 	return 0;
 }
 
+#define CSU_NUM_REGS               64
+#define CSU_INIT_SEC_LEVEL0        0x00FF00FF
+
+static void imx7_init_csu(void)
+{
+	void __iomem *csu = IOMEM(MX7_CSU_BASE_ADDR);
+	int i = 0;
+
+	for (i = 0; i < CSU_NUM_REGS; i++)
+		writel(CSU_INIT_SEC_LEVEL0, csu + i * 4);
+}
+
 int imx7_init(void)
 {
 	const char *cputypestr;
@@ -86,6 +98,8 @@ int imx7_init(void)
 
 	imx7_init_lowlevel();
 
+	imx7_init_csu();
+
 	imx7_timer_init();
 
 	imx7_boot_save_loc();
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
