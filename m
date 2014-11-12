Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoSFd-00006w-S3
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 07:22:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Nov 2014 08:21:23 +0100
Message-Id: <1415776883-28870-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415776883-28870-1-git-send-email-s.hauer@pengutronix.de>
References: <1415776883-28870-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX51 efikasb: register init callback for PMIC init
To: barebox@lists.infradead.org

So that the PMIC initialisation is called once it's available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 02fce4b..99efd66 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -64,16 +64,9 @@ static inline int machine_is_efikasb(void)
 	return 1;
 }
 
-static int efikamx_power_init(void)
+static void efikamx_power_init(struct mc13xxx *mc)
 {
 	unsigned int val;
-	struct mc13xxx *mc;
-
-	mc = mc13xxx_get();
-	if (!mc) {
-		printf("could not get mc13892\n");
-		return -ENODEV;
-	}
 
 	/* Write needed to Power Gate 2 register */
 	mc13xxx_reg_read(mc, MC13892_REG_POWER_MISC, &val);
@@ -178,8 +171,6 @@ static int efikamx_power_init(void)
 	mc13xxx_reg_write(mc, MC13892_REG_POWER_CTL2, val);
 
 	udelay(2500);
-
-	return 0;
 }
 
 static int efikamx_usb_init(void)
@@ -189,6 +180,8 @@ static int efikamx_usb_init(void)
 
 	barebox_set_hostname("efikasb");
 
+	mc13xxx_register_init_callback(efikamx_power_init);
+
 	gpio_direction_output(GPIO_BLUETOOTH, 0);
 	gpio_direction_output(GPIO_WIFI_ENABLE, 1);
 	gpio_direction_output(GPIO_WIFI_RESET, 0);
@@ -246,8 +239,6 @@ static int efikamx_late_init(void)
 	if (!of_machine_is_compatible("genesi,imx51-sb"))
 		return 0;
 
-	efikamx_power_init();
-
 	defaultenv_append_directory(defaultenv_efikasb);
 
 	gpio_direction_output(GPIO_BACKLIGHT_POWER, 1);
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
