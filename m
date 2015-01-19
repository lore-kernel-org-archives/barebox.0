Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDBT7-00051T-G8
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 12:30:10 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5E157FFA83D
 for <barebox@lists.infradead.org>; Mon, 19 Jan 2015 13:29:46 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Jan 2015 13:29:44 +0100
Message-Id: <1421670584-24287-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] raspberry-pi: mac address detection support
To: barebox@lists.infradead.org

increase the mbox timeout as it take more time to retreive the mac

fix led register too

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/raspberry-pi/rpi.c        | 44 ++++++++++++++++++++++++-------
 arch/arm/mach-bcm2835/include/mach/mbox.h | 14 ++++++++++
 arch/arm/mach-bcm2835/mbox.c              |  2 +-
 3 files changed, 50 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index 108bd28..f9406d4 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -22,6 +22,7 @@
 #include <envfs.h>
 #include <malloc.h>
 #include <gpio.h>
+#include <net.h>
 #include <led.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -47,6 +48,12 @@ struct msg_get_board_rev {
 	u32 end_tag;
 };
 
+struct msg_get_mac_address {
+	struct bcm2835_mbox_hdr hdr;
+	struct bcm2835_mbox_tag_get_mac_address get_mac_address;
+	u32 end_tag;
+};
+
 static int rpi_get_arm_mem(u32 *size)
 {
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_arm_mem, msg);
@@ -88,6 +95,23 @@ static int rpi_register_clkdev(u32 clock_id, const char *name)
 	return 0;
 }
 
+static void rpi_set_usbethaddr(void)
+{
+	BCM2835_MBOX_STACK_ALIGN(struct msg_get_mac_address, msg);
+	int ret;
+
+	BCM2835_MBOX_INIT_HDR(msg);
+	BCM2835_MBOX_INIT_TAG(&msg->get_mac_address, GET_MAC_ADDRESS);
+
+	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
+	if (ret) {
+		printf("bcm2835: Could not query MAC address\n");
+		/* Ignore error; not critical */
+		return;
+	}
+
+	eth_register_ethaddr(0, msg->get_mac_address.body.resp.mac);
+}
 
 static struct gpio_led leds[] = {
 	{
@@ -124,12 +148,14 @@ static void rpi_b_plus_init(void)
 {
 	leds[0].gpio = 47;
 	leds[1].gpio = 35;
+	rpi_set_usbethaddr();
 }
 
 static void rpi_b_init(void)
 {
 	leds[0].gpio = 16;
 	leds[0].active_low = 1;
+	rpi_set_usbethaddr();
 }
 
 #define RPI_MODEL(_id, _name, _init)	\
@@ -143,18 +169,18 @@ static const struct {
 	void (*init)(void);
 } models[] = {
 	RPI_MODEL(0, "Unknown model", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_4, "Model B", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_5, "Model B", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_6, "Model B", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", rpi_b_init),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", rpi_b_init),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_4, "Model B", rpi_b_init),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_5, "Model B", rpi_b_init),
+	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_6, "Model B", rpi_b_init),
 	RPI_MODEL(BCM2835_BOARD_REV_A_7, "Model A", NULL),
 	RPI_MODEL(BCM2835_BOARD_REV_A_8, "Model A", NULL),
 	RPI_MODEL(BCM2835_BOARD_REV_A_9, "Model A", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", NULL),
+	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", rpi_b_init),
+	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", rpi_b_init),
+	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", rpi_b_init),
+	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", rpi_b_plus_init),
 	RPI_MODEL(BCM2835_BOARD_REV_CM, "Compute Module", NULL),
 	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, "Model A+", NULL),
 };
diff --git a/arch/arm/mach-bcm2835/include/mach/mbox.h b/arch/arm/mach-bcm2835/include/mach/mbox.h
index d991ba7..4c3fd77 100644
--- a/arch/arm/mach-bcm2835/include/mach/mbox.h
+++ b/arch/arm/mach-bcm2835/include/mach/mbox.h
@@ -158,6 +158,20 @@ struct bcm2835_mbox_tag_get_board_rev {
 	} body;
 };
 
+#define BCM2835_MBOX_TAG_GET_MAC_ADDRESS	0x00010003
+
+struct bcm2835_mbox_tag_get_mac_address {
+	struct bcm2835_mbox_tag_hdr tag_hdr;
+	union {
+		struct {
+		} req;
+		struct {
+			u8 mac[6];
+			u8 pad[2];
+		} resp;
+	} body;
+};
+
 #define BCM2835_MBOX_TAG_GET_ARM_MEMORY		0x00010005
 
 struct bcm2835_mbox_tag_get_arm_mem {
diff --git a/arch/arm/mach-bcm2835/mbox.c b/arch/arm/mach-bcm2835/mbox.c
index 2bca567..0e51f08 100644
--- a/arch/arm/mach-bcm2835/mbox.c
+++ b/arch/arm/mach-bcm2835/mbox.c
@@ -13,7 +13,7 @@
 
 #include <mach/mbox.h>
 
-#define TIMEOUT (MSECOND * 100) /* 100mS */
+#define TIMEOUT (MSECOND * 1000) /* 100mS */
 
 static int bcm2835_mbox_call_raw(u32 chan, struct bcm2835_mbox_hdr *buffer,
 					u32 *recv)
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
