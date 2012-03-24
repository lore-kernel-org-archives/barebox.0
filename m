Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBUw9-0000ve-MX
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 17:39:35 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 21:39:30 +0400
Message-Id: <1332610770-2450-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] i.MX27: Added definition for 600 mHz PLL setup.
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/imx51.c |   13 +++++++------
 1 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 5483d10..40f4b1e 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -179,12 +179,13 @@ static int imx51_boot_save_loc(void)
 
 coredevice_initcall(imx51_boot_save_loc);
 
-#define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
-#define setup_pll_800(base)	imx5_setup_pll((base), 800, ((8 << 4) + ((1 - 1)  << 0)), (3 - 1), 1)
-#define setup_pll_665(base)	imx5_setup_pll((base), 665, ((6 << 4) + ((1 - 1)  << 0)), (96 - 1), 89)
-#define setup_pll_400(base)	imx5_setup_pll((base), 400, ((8 << 4) + ((2 - 1)  << 0)), (3 - 1), 1)
-#define setup_pll_455(base)	imx5_setup_pll((base), 455, ((9 << 4) + ((2 - 1)  << 0)), (48 - 1), 23)
-#define setup_pll_216(base)	imx5_setup_pll((base), 216, ((6 << 4) + ((3 - 1)  << 0)), (4 - 1), 3)
+#define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1),  5)
+#define setup_pll_800(base)	imx5_setup_pll((base), 800,  (( 8 << 4) + ((1 - 1) << 0)), ( 3 - 1),  1)
+#define setup_pll_665(base)	imx5_setup_pll((base), 665,  (( 6 << 4) + ((1 - 1) << 0)), (96 - 1), 89)
+#define setup_pll_600(base)	imx5_setup_pll((base), 600,  (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
+#define setup_pll_400(base)	imx5_setup_pll((base), 400,  (( 8 << 4) + ((2 - 1) << 0)), ( 3 - 1),  1)
+#define setup_pll_455(base)	imx5_setup_pll((base), 455,  (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
+#define setup_pll_216(base)	imx5_setup_pll((base), 216,  (( 6 << 4) + ((3 - 1) << 0)), ( 4 - 1),  3)
 
 void imx51_init_lowlevel(void)
 {
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
