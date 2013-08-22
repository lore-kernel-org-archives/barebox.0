Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCbdH-0001vz-QI
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 20:37:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2013 22:36:58 +0200
Message-Id: <1377203819-23074-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377203819-23074-1-git-send-email-s.hauer@pengutronix.de>
References: <1377203819-23074-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] ARM: am33xx: beaglebone: configure I2C EEPROM
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/board.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index b3f39ea..ccb7004 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -97,11 +97,20 @@ static void beaglebone_eth_init(void)
 	am33xx_add_cpsw(&cpsw_data);
 }
 
+static struct i2c_board_info i2c0_devices[] = {
+	{
+		I2C_BOARD_INFO("24c256", 0x50)
+	},
+};
+
 static int beaglebone_devices_init(void)
 {
 	am33xx_add_mmc0(NULL);
 
 	am33xx_enable_i2c0_pin_mux();
+	i2c_register_board_info(0, i2c0_devices, ARRAY_SIZE(i2c0_devices));
+	am33xx_add_i2c0(NULL);
+
 	beaglebone_eth_init();
 
 	armlinux_set_bootparams((void *)0x80000100);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
