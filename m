Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLWk-0007qV-Q9
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:01:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 10:00:58 +0200
Message-Id: <1311840062-11446-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
References: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] ARM i.MX scb9328: create uart registration helpers and
	use them
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/scb9328/scb9328.c             |   11 +++--------
 arch/arm/mach-imx/include/mach/devices-imx1.h |   11 +++++++++++
 2 files changed, 14 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx1.h

diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index d49eaff..cf72ef4 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -32,6 +32,7 @@
 #include <fcntl.h>
 #include <dm9000.h>
 #include <led.h>
+#include <mach/devices-imx1.h>
 
 static struct dm9000_platform_data dm9000_data = {
 	.buswidth = DM9000_WIDTH_16,
@@ -120,20 +121,14 @@ static int scb9328_devices_init(void)
 
 device_initcall(scb9328_devices_init);
 
-static struct device_d scb9328_serial_device = {
-	.id	  = -1,
-	.name     = "imx_serial",
-	.map_base = IMX_UART1_BASE,
-	.size     = 4096,
-};
-
 static int scb9328_console_init(void)
 {
 	/* init gpios for serial port */
 	imx_gpio_mode(PC11_PF_UART1_TXD);
 	imx_gpio_mode(PC12_PF_UART1_RXD);
 
-	register_device(&scb9328_serial_device);
+	imx1_add_uart0();
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-imx/include/mach/devices-imx1.h b/arch/arm/mach-imx/include/mach/devices-imx1.h
new file mode 100644
index 0000000..a45363f
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices-imx1.h
@@ -0,0 +1,11 @@
+#include <mach/devices.h>
+
+static inline struct device_d *imx1_add_uart0(void)
+{
+	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+}
+
+static inline struct device_d *imx1_add_uart1(void)
+{
+	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+}
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
