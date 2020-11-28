Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wX-0002QR-S5
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:48 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-223.citykom.de
 [82.207.195.223]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id DC4151BF207
 for <barebox@lists.infradead.org>; Sat, 28 Nov 2020 21:39:41 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:26 +0100
Message-Id: <20201128213934.681065-3-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-1-ahmad@a3f.at>
References: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 03/11] ARM: rpi: make functions in rpi-common.c static
To: barebox@lists.infradead.org

They aren't (and arguably shouldn't) be used outside, so give them all
internal linkage and drop the header.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 22 +++++++++++++++------
 arch/arm/boards/raspberry-pi/rpi.h        | 24 -----------------------
 2 files changed, 16 insertions(+), 30 deletions(-)
 delete mode 100644 arch/arm/boards/raspberry-pi/rpi.h

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index d5995fb86d7f..2535146af488 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -25,9 +25,19 @@
 #include <mach/mbox.h>
 #include <mach/platform.h>
 
-#include "rpi.h"
 #include "lowlevel.h"
 
+struct rpi_model {
+	const char *name;
+	void (*init)(void);
+};
+
+#define RPI_MODEL(_id, _name, _init)	\
+	[_id] = {				\
+		.name			= _name,\
+		.init			= _init,\
+	}
+
 struct msg_get_arm_mem {
 	struct bcm2835_mbox_hdr hdr;
 	struct bcm2835_mbox_tag_get_arm_mem get_arm_mem;
@@ -85,7 +95,7 @@ static struct clk *rpi_register_firmware_clock(u32 clock_id, const char *name)
 	return clk_fixed(name, msg->get_clock_rate.body.resp.rate_hz);
 }
 
-void rpi_set_usbethaddr(void)
+static void rpi_set_usbethaddr(void)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_mac_address, msg);
 	int ret;
@@ -103,7 +113,7 @@ void rpi_set_usbethaddr(void)
 	eth_register_ethaddr(0, msg->get_mac_address.body.resp.mac);
 }
 
-struct gpio_led rpi_leds[] = {
+static struct gpio_led rpi_leds[] = {
 	{
 		.gpio	= -EINVAL,
 		.led	= {
@@ -149,7 +159,7 @@ static void rpi_b_plus_init(void)
 }
 
 /* See comments in mbox.h for data source */
-const struct rpi_model rpi_models_old_scheme[] = {
+static const struct rpi_model rpi_models_old_scheme[] = {
 	RPI_MODEL(0, "Unknown model", NULL),
 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", rpi_b_init),
 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", rpi_b_init),
@@ -170,7 +180,7 @@ const struct rpi_model rpi_models_old_scheme[] = {
 	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS_15, "Model A+", NULL),
 };
 
-const struct rpi_model rpi_models_new_scheme[] = {
+static const struct rpi_model rpi_models_new_scheme[] = {
 	RPI_MODEL(BCM2835_BOARD_REV_A, 		"Model A",	NULL ),
 	RPI_MODEL(BCM2835_BOARD_REV_B, 		"Model B", 	rpi_b_init ),
 	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, 	"Model A+", 	NULL ),
@@ -191,7 +201,7 @@ const struct rpi_model rpi_models_new_scheme[] = {
 };
 
 static int rpi_board_rev = 0;
-const struct rpi_model *model = NULL;
+static const struct rpi_model *model = NULL;
 
 static void rpi_get_board_rev(void)
 {
diff --git a/arch/arm/boards/raspberry-pi/rpi.h b/arch/arm/boards/raspberry-pi/rpi.h
deleted file mode 100644
index b2a0401bd01b..000000000000
--- a/arch/arm/boards/raspberry-pi/rpi.h
+++ /dev/null
@@ -1,24 +0,0 @@
-#ifndef __ARCH_ARM_BOARDS_RPI_H__
-#define __ARCH_ARM_BOARDS_RPI_H__
-
-#include <types.h>
-#include <led.h>
-
-#include <mach/mbox.h>
-
-#define RPI_MODEL(_id, _name, _init)	\
-	[_id] = {				\
-		.name			= _name,\
-		.init			= _init,\
-	}
-
-struct rpi_model {
-	const char *name;
-	void (*init)(void);
-};
-
-extern struct gpio_led rpi_leds[];
-
-void rpi_set_usbethaddr(void);
-
-#endif /* __ARCH_ARM_BOARDS_RPI_H__ */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
