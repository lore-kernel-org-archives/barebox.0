Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJKd-0003ry-8w
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 14:32:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2019 15:32:29 +0100
Message-Id: <20191220143232.28354-8-s.hauer@pengutronix.de>
In-Reply-To: <20191220143232.28354-1-s.hauer@pengutronix.de>
References: <20191220143232.28354-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] rpi: Enable USB Power domain during startup
To: Barebox List <barebox@lists.infradead.org>

Enable the USB Power domain during startup. The power domain is
abstracted as a regulator in barebox, but modelled as a power domain in
the device tree. Until this is sorted out just enable the power domain
or regulator in the board code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index acb26f6a64..45961b52ee 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -21,6 +21,7 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <envfs.h>
+#include <regulator.h>
 #include <malloc.h>
 #include <libfile.h>
 #include <gpio.h>
@@ -462,11 +463,20 @@ static void rpi_vc_fdt(void)
 
 static int rpi_devices_init(void)
 {
+	struct regulator *reg;
+
 	rpi_model_init();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	rpi_env_init();
 	rpi_vc_fdt();
+
+	reg = regulator_get_name("bcm2835_usb");
+	if (IS_ERR(reg))
+		return PTR_ERR(reg);
+
+	regulator_enable(reg);
+
 	return 0;
 }
 late_initcall(rpi_devices_init);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
