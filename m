Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIMiN-0002dv-FI
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 16:17:45 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 12 Apr 2012 20:20:19 +0400
Message-Id: <1334247624-24896-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
References: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/7] i.MX53: Move specific i.MX53 silicon definitions to
 imx53-regs.h
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/imx53.c                   |    6 +++---
 arch/arm/mach-imx/include/mach/imx-regs.h   |    5 -----
 arch/arm/mach-imx/include/mach/imx53-regs.h |    5 +++++
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 8742c46..951e4c6 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -55,15 +55,15 @@ static int query_silicon_revision(void)
 	rev = readl(rom + SI_REV);
 	switch (rev) {
 	case 0x10:
-		mx53_silicon_revision = IMX_CHIP_REV_1_0;
+		mx53_silicon_revision = MX53_CHIP_REV_1_0;
 		mx53_rev_string = "1.0";
 		break;
 	case 0x20:
-		mx53_silicon_revision = IMX_CHIP_REV_2_0;
+		mx53_silicon_revision = MX53_CHIP_REV_2_0;
 		mx53_rev_string = "2.0";
 		break;
 	case 0x21:
-		mx53_silicon_revision = IMX_CHIP_REV_2_1;
+		mx53_silicon_revision = MX53_CHIP_REV_2_1;
 		mx53_rev_string = "2.1";
 		break;
 	default:
diff --git a/arch/arm/mach-imx/include/mach/imx-regs.h b/arch/arm/mach-imx/include/mach/imx-regs.h
index 789397e..a272dda 100644
--- a/arch/arm/mach-imx/include/mach/imx-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx-regs.h
@@ -105,9 +105,4 @@
 
 #define GPIO_GIUS      (1<<16)
 
-/* silicon revisions  */
-#define IMX_CHIP_REV_1_0	0x10
-#define IMX_CHIP_REV_2_0	0x20
-#define IMX_CHIP_REV_2_1	0x21
-
 #endif				/* _IMX_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-imx/include/mach/imx53-regs.h
index 8fefc54..065bf08 100644
--- a/arch/arm/mach-imx/include/mach/imx53-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
@@ -135,5 +135,10 @@
 #define MX53_CS2_96MB_BASE_ADDR		0xF6000000
 #define MX53_CS3_BASE_ADDR		0xF6000000
 
+/* silicon revisions specific to i.MX53 */
+#define MX53_CHIP_REV_1_0	0x10
+#define MX53_CHIP_REV_2_0	0x20
+#define MX53_CHIP_REV_2_1	0x21
+
 #endif /* __MACH_IMX53_REGS_H */
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
