Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD5mk-0006vV-4y
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 10:44:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mi-0000B0-KB
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:44:08 +0200
Received: from mfe by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mi-0007oY-Cl
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:44:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 18 Oct 2018 12:43:49 +0200
Message-Id: <20181018104349.26332-5-m.felsch@pengutronix.de>
In-Reply-To: <20181018104349.26332-1-m.felsch@pengutronix.de>
References: <20181018104349.26332-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] pinctrl: tree-wide probe devices during core_initcall
To: barebox@lists.infradead.org

Since commit 37e6bee7e5 ("gpiolib: Add support for GPIO "hog" nodes")
barebox can handle hog-gpios. To work correctly the pinctrl driver
must be initialised first. Reorder all pinctrl drivers so they will be
called first.

find drivers/pinctrl/ -type f -name *.c \
	-exec sed -i 's/\bpostcore_initcall\b/core_initcall/' "{}" +;

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v1.c       | 2 +-
 drivers/pinctrl/imx-iomux-v2.c       | 2 +-
 drivers/pinctrl/imx-iomux-v3.c       | 2 +-
 drivers/pinctrl/mvebu/armada-370.c   | 2 +-
 drivers/pinctrl/mvebu/armada-xp.c    | 2 +-
 drivers/pinctrl/mvebu/dove.c         | 2 +-
 drivers/pinctrl/mvebu/kirkwood.c     | 2 +-
 drivers/pinctrl/pinctrl-at91.c       | 4 ++--
 drivers/pinctrl/pinctrl-mxs.c        | 2 +-
 drivers/pinctrl/pinctrl-single.c     | 2 +-
 drivers/pinctrl/pinctrl-tegra-xusb.c | 2 +-
 drivers/pinctrl/pinctrl-tegra20.c    | 2 +-
 drivers/pinctrl/pinctrl-tegra30.c    | 2 +-
 drivers/pinctrl/pinctrl-vf610.c      | 2 +-
 14 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index a3f04802a2..61e8f9680f 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -314,4 +314,4 @@ static int imx_iomux_v1_init(void)
 {
 	return platform_driver_register(&imx_iomux_v1_driver);
 }
-postcore_initcall(imx_iomux_v1_init);
+core_initcall(imx_iomux_v1_init);
diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
index 0c985a69d3..60b635a8a8 100644
--- a/drivers/pinctrl/imx-iomux-v2.c
+++ b/drivers/pinctrl/imx-iomux-v2.c
@@ -154,4 +154,4 @@ static int imx_iomux_init(void)
 {
 	return platform_driver_register(&imx_iomux_driver);
 }
-postcore_initcall(imx_iomux_init);
+core_initcall(imx_iomux_init);
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 0ab97040e0..b2a67fcccc 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -266,4 +266,4 @@ static int imx_iomux_v3_init(void)
 {
 	return platform_driver_register(&imx_iomux_v3_driver);
 }
-postcore_initcall(imx_iomux_v3_init);
+core_initcall(imx_iomux_v3_init);
diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
index 2fd07a7b87..4fde16ab5d 100644
--- a/drivers/pinctrl/mvebu/armada-370.c
+++ b/drivers/pinctrl/mvebu/armada-370.c
@@ -415,4 +415,4 @@ static int armada_370_pinctrl_init(void)
 {
 	return platform_driver_register(&armada_370_pinctrl_driver);
 }
-postcore_initcall(armada_370_pinctrl_init);
+core_initcall(armada_370_pinctrl_init);
diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
index 2657db5fcf..089942d696 100644
--- a/drivers/pinctrl/mvebu/armada-xp.c
+++ b/drivers/pinctrl/mvebu/armada-xp.c
@@ -405,4 +405,4 @@ static int armada_xp_pinctrl_init(void)
 {
 	return platform_driver_register(&armada_xp_pinctrl_driver);
 }
-postcore_initcall(armada_xp_pinctrl_init);
+core_initcall(armada_xp_pinctrl_init);
diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
index 8de01e74d6..2d9d8094f8 100644
--- a/drivers/pinctrl/mvebu/dove.c
+++ b/drivers/pinctrl/mvebu/dove.c
@@ -742,4 +742,4 @@ static int dove_pinctrl_init(void)
 {
 	return platform_driver_register(&dove_pinctrl_driver);
 }
-postcore_initcall(dove_pinctrl_init);
+core_initcall(dove_pinctrl_init);
diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
index 4b2618cd2e..a347239028 100644
--- a/drivers/pinctrl/mvebu/kirkwood.c
+++ b/drivers/pinctrl/mvebu/kirkwood.c
@@ -456,4 +456,4 @@ static int kirkwood_pinctrl_init(void)
 {
 	return platform_driver_register(&kirkwood_pinctrl_driver);
 }
-postcore_initcall(kirkwood_pinctrl_init);
+core_initcall(kirkwood_pinctrl_init);
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 0303869774..84348a0530 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -538,7 +538,7 @@ static int at91_pinctrl_init(void)
 {
 	return platform_driver_register(&at91_pinctrl_driver);
 }
-postcore_initcall(at91_pinctrl_init);
+core_initcall(at91_pinctrl_init);
 
 static int at91_gpio_get(struct gpio_chip *chip, unsigned offset)
 {
@@ -718,4 +718,4 @@ static int at91_gpio_init(void)
 {
 	return platform_driver_register(&at91_gpio_driver);
 }
-postcore_initcall(at91_gpio_init);
+core_initcall(at91_gpio_init);
diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
index 479c31a426..b48ed2ace1 100644
--- a/drivers/pinctrl/pinctrl-mxs.c
+++ b/drivers/pinctrl/pinctrl-mxs.c
@@ -168,4 +168,4 @@ static int mxs_pinctrl_init(void)
 {
 	return platform_driver_register(&mxs_pinctrl_driver);
 }
-postcore_initcall(mxs_pinctrl_init);
+core_initcall(mxs_pinctrl_init);
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 15b74cc1df..3c581ed5d3 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -167,4 +167,4 @@ static int pcs_init(void)
 {
 	return platform_driver_register(&pcs_driver);
 }
-postcore_initcall(pcs_init);
+core_initcall(pcs_init);
diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
index a7a75bb9c5..e477280e62 100644
--- a/drivers/pinctrl/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
@@ -518,4 +518,4 @@ static int pinctrl_tegra_xusb_init(void)
 {
 	return platform_driver_register(&pinctrl_tegra_xusb_driver);
 }
-postcore_initcall(pinctrl_tegra_xusb_init);
+core_initcall(pinctrl_tegra_xusb_init);
diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
index eaaba9e7a7..337992c21f 100644
--- a/drivers/pinctrl/pinctrl-tegra20.c
+++ b/drivers/pinctrl/pinctrl-tegra20.c
@@ -350,4 +350,4 @@ static int pinctrl_tegra20_init(void)
 {
 	return platform_driver_register(&pinctrl_tegra20_driver);
 }
-postcore_initcall(pinctrl_tegra20_init);
+core_initcall(pinctrl_tegra20_init);
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 4b271dd0b6..d9b49c57d9 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -935,4 +935,4 @@ static int pinctrl_tegra30_init(void)
 {
 	return platform_driver_register(&pinctrl_tegra30_driver);
 }
-postcore_initcall(pinctrl_tegra30_init);
+core_initcall(pinctrl_tegra30_init);
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index a46b0e2ca0..662fa9b6c9 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -165,4 +165,4 @@ static int pinctrl_vf610_init(void)
 {
 	return platform_driver_register(&pinctrl_vf610_driver);
 }
-postcore_initcall(pinctrl_vf610_init);
+core_initcall(pinctrl_vf610_init);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
