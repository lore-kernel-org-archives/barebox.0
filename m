Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wX-0002QU-QZ
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:47 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-223.citykom.de
 [82.207.195.223]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 5E50C1BF209
 for <barebox@lists.infradead.org>; Sat, 28 Nov 2020 21:39:43 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:29 +0100
Message-Id: <20201128213934.681065-6-ahmad@a3f.at>
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
Subject: [PATCH 06/11] ARM: rpi: add new init function for Raspberry Pi Zero
To: barebox@lists.infradead.org

The Raspberry Pi Zero and Zero W have no power LED and lack the USB
hub and ethernet port. The rpi_b_plus_init is thus the wrong init function
to use. Add a new init function that just configures the activity LED
and configure the new exposed USB port for OTG.

While we have a dwc2 gadget driver, it doesn't yet work for the Rpi:

	barebox@RaspberryPi Zero W:/ usbgadget -a
	udc0: registering UDC driver [g_multi]
	multi_bind: creating ACM function
	g_multi usbgadget: Multifunction Composite Gadget
	g_multi usbgadget: g_multi ready
	dwc2 20980000.usb@7e980000.of: bound driver g_multi
	WARNING: at drivers/usb/dwc2/gadget.c:1896/dwc2_gadget_pullup()!

But let's add dr_mode = otg anyway, so it can be debugged out of the box
with only config changes.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 19 +++++++++++++++++--
 arch/arm/dts/bcm2835-rpi.dts              |  4 ++++
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 46c8ad6f52d9..dba68d17992f 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -113,6 +113,15 @@ static void rpi_set_usbethaddr(void)
 	eth_register_ethaddr(0, msg->get_mac_address.body.resp.mac);
 }
 
+static void rpi_set_usbotg(const char *alias)
+{
+	struct device_node *usb;
+
+	usb = of_find_node_by_alias(NULL, alias);
+	if (usb)
+		of_property_write_string(usb, "dr_mode", "otg");
+}
+
 static struct gpio_led rpi_leds[] = {
 	{
 		.gpio	= -EINVAL,
@@ -158,6 +167,12 @@ static void rpi_b_plus_init(void)
 	rpi_set_usbethaddr();
 }
 
+static void rpi_0_init(void)
+{
+	rpi_leds[0].gpio = 47;
+	rpi_set_usbotg("usb0");
+}
+
 /* See comments in mbox.h for data source */
 static const struct rpi_model rpi_models_old_scheme[] = {
 	RPI_MODEL(0, "Unknown model", NULL),
@@ -190,10 +205,10 @@ static const struct rpi_model rpi_models_new_scheme[] = {
 	RPI_MODEL(BCM2835_BOARD_REV_CM1, 	"Compute Module", NULL ),
 	RPI_MODEL(0x7, "Unknown model", NULL),
 	RPI_MODEL(BCM2837_BOARD_REV_3_B, 	"Model 3B", 	rpi_b_init ),
-	RPI_MODEL(BCM2835_BOARD_REV_ZERO, 	"Zero", 	rpi_b_plus_init),
+	RPI_MODEL(BCM2835_BOARD_REV_ZERO, 	"Zero", 	rpi_0_init),
 	RPI_MODEL(BCM2837_BOARD_REV_CM3, 	"Compute Module 3", NULL ),
 	RPI_MODEL(0xb, "Unknown model", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_b_plus_init),
+	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_0_init),
 	RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, 	"Model 3 B+", 	rpi_b_plus_init ),
 	RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, 	"Nodel 3 A+", 	rpi_b_plus_init),
 	RPI_MODEL(0xf, "Unknown model", NULL),
diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
index 121edebdb3a0..8d352a457da6 100644
--- a/arch/arm/dts/bcm2835-rpi.dts
+++ b/arch/arm/dts/bcm2835-rpi.dts
@@ -1,5 +1,9 @@
 #include <arm/bcm2835-rpi-a.dts>
 
+&{/aliases} {
+	usb0 = &usb;
+};
+
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
