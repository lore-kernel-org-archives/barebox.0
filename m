Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egCK3-00030p-9i
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 16:30:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1egCJo-0001SG-Hs
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 17:30:04 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Subject: [PATCH 08/10] ARM: rpi: add revision IDs for Pi 3 Model B and Pi Zero
Date: Mon, 29 Jan 2018 17:30:02 +0100
Message-Id: <20180129163004.10512-9-l.stach@pengutronix.de>
In-Reply-To: <20180129163004.10512-1-l.stach@pengutronix.de>
References: <20180129163004.10512-1-l.stach@pengutronix.de>
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
To: barebox@lists.infradead.org

From: Enrico Joerns <ejo@pengutronix.de>

Signed-off-by: Enrico Joerns <ejo@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 2 ++
 arch/arm/mach-bcm283x/include/mach/mbox.h | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 6e375bc984de..aec8cb27ed40 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -174,6 +174,8 @@ const struct rpi_model rpi_models_old_scheme[] = {
 const struct rpi_model rpi_models_new_scheme[] = {
 	RPI_MODEL(0, "Unknown model", NULL),
 	RPI_MODEL(BCM2836_BOARD_REV_2_B, "2 Model B", rpi_b_plus_init),
+	RPI_MODEL(BCM2837_BOARD_REV_3_B, "3 Model B", rpi_b_plus_init),
+	RPI_MODEL(BCM2837_BOARD_REV_ZERO, "Zero", rpi_b_plus_init),
 };
 
 static int rpi_board_rev = 0;
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index 2b5aea88ee0a..4cddf99a8429 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -129,6 +129,10 @@ struct bcm2835_mbox_tag_hdr {
 
 /* RPi 2 */
 #define BCM2836_BOARD_REV_2_B		0x4
+/* RPi 3 */
+#define BCM2837_BOARD_REV_3_B		0x8
+/* Zero */
+#define BCM2837_BOARD_REV_ZERO		0x9
 
 /*
  * 0x2..0xf from:
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
