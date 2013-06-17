Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVnE-0001rB-LA
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 09:32:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 11:31:43 +0200
Message-Id: <1371461504-18782-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX: Make timer available earlier
To: barebox@lists.infradead.org

This moves the CCM drivers to core_initcall since this has no dependencies.
This way we can be sure that the clock for the clocksource is available in
at postcore_initcall time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx1.c    | 2 +-
 arch/arm/mach-imx/clk-imx21.c   | 2 +-
 arch/arm/mach-imx/clk-imx25.c   | 2 +-
 arch/arm/mach-imx/clk-imx27.c   | 2 +-
 arch/arm/mach-imx/clk-imx31.c   | 2 +-
 arch/arm/mach-imx/clk-imx35.c   | 2 +-
 arch/arm/mach-imx/clk-imx5.c    | 4 ++--
 arch/arm/mach-imx/clk-imx6.c    | 2 +-
 arch/arm/mach-imx/clocksource.c | 2 +-
 9 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
index 0d04a92..6fcd6fa 100644
--- a/arch/arm/mach-imx/clk-imx1.c
+++ b/arch/arm/mach-imx/clk-imx1.c
@@ -114,4 +114,4 @@ static int imx1_ccm_init(void)
 {
 	return platform_driver_register(&imx1_ccm_driver);
 }
-postcore_initcall(imx1_ccm_init);
+core_initcall(imx1_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index 6e91424..295ef3a 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -189,4 +189,4 @@ static int imx21_ccm_init(void)
 {
 	return platform_driver_register(&imx21_ccm_driver);
 }
-postcore_initcall(imx21_ccm_init);
+core_initcall(imx21_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 95b105d..9817990 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -174,4 +174,4 @@ static int imx25_ccm_init(void)
 {
 	return platform_driver_register(&imx25_ccm_driver);
 }
-postcore_initcall(imx25_ccm_init);
+core_initcall(imx25_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index e221928..6fd3cd6 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -229,4 +229,4 @@ static int imx27_ccm_init(void)
 {
 	return platform_driver_register(&imx27_ccm_driver);
 }
-postcore_initcall(imx27_ccm_init);
+core_initcall(imx27_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx31.c b/arch/arm/mach-imx/clk-imx31.c
index aa1b652..4935595 100644
--- a/arch/arm/mach-imx/clk-imx31.c
+++ b/arch/arm/mach-imx/clk-imx31.c
@@ -139,4 +139,4 @@ static int imx31_ccm_init(void)
 {
 	return platform_driver_register(&imx31_ccm_driver);
 }
-postcore_initcall(imx31_ccm_init);
+core_initcall(imx31_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
index f50c07d..6ea4577 100644
--- a/arch/arm/mach-imx/clk-imx35.c
+++ b/arch/arm/mach-imx/clk-imx35.c
@@ -192,4 +192,4 @@ static int imx35_ccm_init(void)
 {
 	return platform_driver_register(&imx35_ccm_driver);
 }
-postcore_initcall(imx35_ccm_init);
+core_initcall(imx35_ccm_init);
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 8b5bffd..8c7ed1c 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -253,7 +253,7 @@ static int imx51_ccm_init(void)
 {
 	return platform_driver_register(&imx51_ccm_driver);
 }
-postcore_initcall(imx51_ccm_init);
+core_initcall(imx51_ccm_init);
 #endif
 
 #ifdef CONFIG_ARCH_IMX53
@@ -316,5 +316,5 @@ static int imx53_ccm_init(void)
 {
 	return platform_driver_register(&imx53_ccm_driver);
 }
-postcore_initcall(imx53_ccm_init);
+core_initcall(imx53_ccm_init);
 #endif
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 5c84df2..3061779 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -337,4 +337,4 @@ static int imx6_ccm_init(void)
 {
 	return platform_driver_register(&imx6_ccm_driver);
 }
-postcore_initcall(imx6_ccm_init);
+core_initcall(imx6_ccm_init);
diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index e18685e..c04af63 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -165,4 +165,4 @@ static int imx_gpt_init(void)
 {
 	return platform_driver_register(&imx_gpt_driver);
 }
-coredevice_initcall(imx_gpt_init);
+postcore_initcall(imx_gpt_init);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
