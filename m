Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from kaylee.tinyhost.de ([2a03:4000:5:13a::1]
 helo=v22014102451321128.yourvserver.net)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOozZ-0000eC-Fj
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 19:13:55 +0000
From: Chris Fiege <chris@tinyhost.de>
Date: Mon, 19 Nov 2018 20:13:30 +0100
Message-Id: <1542654810-12087-1-git-send-email-chris@tinyhost.de>
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
Subject: [PATCH] Add Raspberry Pi Zero W Board
To: barebox@lists.infradead.org
Cc: Chris Fiege <chris@tinyhost.de>

The Raspberry Pi Zero W is basically a Raspberry Pi 1 B+
but on a smaller PCB and with Bluetooth and WiFi.
See:
https://elinux.org/RPi_Hardware

This patch adds support for Raspberry Pi Zero W to barebox.

Signed-off-by: Chris Fiege <chris@tinyhost.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 1 +
 arch/arm/mach-bcm283x/include/mach/mbox.h | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 3baed65..5a51b91 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -176,6 +176,7 @@ const struct rpi_model rpi_models_new_scheme[] = {
 	RPI_MODEL(BCM2836_BOARD_REV_2_B, "2 Model B", rpi_b_plus_init),
 	RPI_MODEL(BCM2837_BOARD_REV_3_B, "3 Model B", rpi_b_plus_init),
 	RPI_MODEL(BCM2835_BOARD_REV_ZERO, "Zero", rpi_b_plus_init),
+	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, "Zero W", rpi_b_plus_init),
 };
 
 static int rpi_board_rev = 0;
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index 0d1ac07..76b573f 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -133,6 +133,8 @@ struct bcm2835_mbox_tag_hdr {
 #define BCM2837_BOARD_REV_3_B		0x8
 /* Zero */
 #define BCM2835_BOARD_REV_ZERO		0x9
+/* Zero W */
+#define BCM2835_BOARD_REV_ZERO_W	0xc
 
 /*
  * 0x2..0xf from:
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
