Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f193.google.com ([74.125.82.193])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGcFM-0006eW-Oz
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 22:37:37 +0000
Received: by mail-we0-f193.google.com with SMTP id w62so610636wes.8
 for <barebox@lists.infradead.org>; Thu, 20 Feb 2014 14:37:09 -0800 (PST)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Thu, 20 Feb 2014 14:36:59 -0800
Message-Id: <1392935821-14783-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 1/3] ARM: i.MX6: UDOO: rename watchdog function
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

Rename the watchdog function to fit others functions names.

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/boards/udoo/board.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/udoo/board.c b/arch/arm/boards/udoo/board.c
index 9027eb1..0a056fb 100644
--- a/arch/arm/boards/udoo/board.c
+++ b/arch/arm/boards/udoo/board.c
@@ -147,7 +147,7 @@ static iomux_v3_cfg_t const wdog_pads[] = {
 
 #define WDT_EN      IMX_GPIO_NR(5, 4)
 #define WDT_TRG     IMX_GPIO_NR(3, 19)
-static void setup_iomux_wdog(void)
+static void udoo_wdog_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(wdog_pads, ARRAY_SIZE(wdog_pads));
 	gpio_direction_output(WDT_TRG, 0);
@@ -157,11 +157,10 @@ static void setup_iomux_wdog(void)
 
 static void udoo_epit_init(void)
 {
-
-	writel(0x0000000, 0x20D0000);
-	writel(0x142000F, 0x20D0000);
-	writel(0x10000, 0x20D0008);
-	writel(0x0, 0x20D000C);
+	writel(0x0000000, MX6_EPIT1_BASE_ADDR);
+	writel(0x142000F, MX6_EPIT1_BASE_ADDR);
+	writel(0x30000, MX6_EPIT1_BASE_ADDR + 0x8);
+	writel(0x0, MX6_EPIT1_BASE_ADDR + 0xC);
 }
 
 static int udoo_devices_init(void)
@@ -169,7 +168,7 @@ static int udoo_devices_init(void)
 	if (!of_machine_is_compatible("udoo,imx6qdl-udoo"))
 		return 0;
 
-	setup_iomux_wdog();
+	udoo_wdog_init();
 	udoo_ehci_init();
 	udoo_epit_init();
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
