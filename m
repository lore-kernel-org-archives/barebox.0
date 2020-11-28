Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wY-0002QS-M0
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:48 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-223.citykom.de
 [82.207.195.223]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 4E69E1BF206
 for <barebox@lists.infradead.org>; Sat, 28 Nov 2020 21:39:42 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:27 +0100
Message-Id: <20201128213934.681065-4-ahmad@a3f.at>
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
Subject: [PATCH 04/11] ARM: rpi: move rpi_model_init() to postcore
To: barebox@lists.infradead.org

rpi_model_init() was so far run at late initcall level, at which time
most drivers have already been probed and it's too late to modify the
built-in device tree and see the changes take effect.

To use the same barebox image for multiple boards, it would be
nice to be able to fix up the device tree a bit. Facilitate this by
moving rpi_model_init() to postcore.

This is ok to do because eth_register_ethaddr() can be called prior
to Ethernet driver probe as well. This was tested on a Raspberry Pi 3B.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 2535146af488..292bcba608d4 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -279,7 +279,6 @@ static void rpi_model_init(void)
 		return;
 
 	model->init();
-	rpi_add_led();
 }
 
 static int rpi_mem_init(void)
@@ -301,6 +300,7 @@ static int rpi_postcore_init(void)
 {
 	rpi_get_board_rev();
 	barebox_set_hostname("rpi");
+	rpi_model_init();
 
 	return 0;
 }
@@ -463,7 +463,7 @@ static int rpi_devices_init(void)
 {
 	struct regulator *reg;
 
-	rpi_model_init();
+	rpi_add_led();
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	rpi_env_init();
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
