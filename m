Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.mail.ru ([94.100.176.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SF7Km-0000Fx-T6
 for barebox@lists.infradead.org; Tue, 03 Apr 2012 17:15:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  3 Apr 2012 21:16:23 +0400
Message-Id: <1333473384-6741-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1333473384-6741-1-git-send-email-shc_work@mail.ru>
References: <1333473384-6741-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] i.MX51: Removed 1000 MHz pll definition
To: barebox@lists.infradead.org

i.MX51 operates at speeds up to 800 MHz.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/imx51.c |   13 ++++++-------
 1 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 43cd45d..fb89199 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -179,13 +179,12 @@ static int imx51_boot_save_loc(void)
 
 coredevice_initcall(imx51_boot_save_loc);
 
-#define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1),  5)
-#define setup_pll_800(base)	imx5_setup_pll((base), 800,  (( 8 << 4) + ((1 - 1) << 0)), ( 3 - 1),  1)
-#define setup_pll_665(base)	imx5_setup_pll((base), 665,  (( 6 << 4) + ((1 - 1) << 0)), (96 - 1), 89)
-#define setup_pll_600(base)	imx5_setup_pll((base), 600,  (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
-#define setup_pll_400(base)	imx5_setup_pll((base), 400,  (( 8 << 4) + ((2 - 1) << 0)), ( 3 - 1),  1)
-#define setup_pll_455(base)	imx5_setup_pll((base), 455,  (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
-#define setup_pll_216(base)	imx5_setup_pll((base), 216,  (( 6 << 4) + ((3 - 1) << 0)), ( 4 - 1),  3)
+#define setup_pll_800(base)	imx5_setup_pll((base), 800, (( 8 << 4) + ((1 - 1) << 0)), ( 3 - 1),  1)
+#define setup_pll_665(base)	imx5_setup_pll((base), 665, (( 6 << 4) + ((1 - 1) << 0)), (96 - 1), 89)
+#define setup_pll_600(base)	imx5_setup_pll((base), 600, (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
+#define setup_pll_400(base)	imx5_setup_pll((base), 400, (( 8 << 4) + ((2 - 1) << 0)), ( 3 - 1),  1)
+#define setup_pll_455(base)	imx5_setup_pll((base), 455, (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
+#define setup_pll_216(base)	imx5_setup_pll((base), 216, (( 6 << 4) + ((3 - 1) << 0)), ( 4 - 1),  3)
 
 void imx51_init_lowlevel(void)
 {
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
