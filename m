Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uqs29-0001xe-Mu
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 21:41:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 23:40:49 +0200
Message-Id: <1372023651-13725-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: i.MX: rename initcall functions
To: barebox@lists.infradead.org

Some boards use function names locally which we introduce as
global functions in the next patch. Rename them to avoid
'static declaration follows non-static declaration' errors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c | 4 ++--
 arch/arm/boards/pcm037/pcm037.c                 | 4 ++--
 arch/arm/boards/pcm043/pcm043.c                 | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index ea4d4ba..6620a86 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -186,7 +186,7 @@ static int imx25_3ds_fec_init(void)
 }
 late_initcall(imx25_3ds_fec_init);
 
-static int imx25_devices_init(void)
+static int imx25_3ds_devices_init(void)
 {
 #ifdef CONFIG_USB
 	/* USB does not work yet. Don't know why. Maybe
@@ -222,7 +222,7 @@ static int imx25_devices_init(void)
 	return 0;
 }
 
-device_initcall(imx25_devices_init);
+device_initcall(imx25_3ds_devices_init);
 
 static iomux_v3_cfg_t imx25_pads[] = {
 	MX25_PAD_FEC_MDC__FEC_MDC,
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index 9361a9d..de83c99 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -146,7 +146,7 @@ static struct smc911x_plat smsc9217_pdata = {
 	.flags = SMC911X_FORCE_INTERNAL_PHY,
 };
 
-static int imx31_devices_init(void)
+static int pcm037_devices_init(void)
 {
 	/* CS0: Nor Flash */
 	imx31_setup_weimcs(0, 0x0000cf03, 0x10000d03, 0x00720900);
@@ -202,7 +202,7 @@ static int imx31_devices_init(void)
 	return 0;
 }
 
-device_initcall(imx31_devices_init);
+device_initcall(pcm037_devices_init);
 
 static unsigned int pcm037_iomux[] = {
 	/* UART1 */
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index b2726df..68b7864 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -113,7 +113,7 @@ struct gpio_led led0 = {
 	.gpio = 1 * 32 + 6,
 };
 
-static int imx35_devices_init(void)
+static int pcm043_devices_init(void)
 {
 	uint32_t reg;
 	char *envstr;
@@ -173,7 +173,7 @@ static int imx35_devices_init(void)
 	return 0;
 }
 
-device_initcall(imx35_devices_init);
+device_initcall(pcm043_devices_init);
 
 static iomux_v3_cfg_t pcm043_pads[] = {
 	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
