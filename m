Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTwOs-0007q8-EW
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 15:09:45 +0000
Received: from mail403.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 34A1C104F788
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 16:16:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 16:07:27 +0100
Message-Id: <1351782447-32199-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351782447-32199-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121101143352.GJ29599@game.jcrosoft.org>
 <1351782447-32199-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] at91sam9x5ek: add i2c support
To: barebox@lists.infradead.org

enable qt1070 support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c     |   12 ++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig |    5 ++++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 78f7349..48eebac 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -114,6 +114,17 @@ static void ek_add_device_eth(void)
 	at91_add_device_eth(0, &macb_pdata);
 }
 
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("qt1070", 0x1b),
+	},
+};
+
+static void ek_add_device_i2c(void)
+{
+	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+}
+
 /*
  * USB Host port
  */
@@ -172,6 +183,7 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_eth();
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_led();
+	ek_add_device_i2c();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 6315d9f..3e66c44 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -41,6 +41,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
@@ -52,6 +53,8 @@ CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
@@ -64,7 +67,7 @@ CONFIG_DISK_WRITE=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
-CONFIG_KEYBOARD_GPIO=y
+CONFIG_KEYBOARD_QT1070=y
 CONFIG_W1=y
 CONFIG_W1_MASTER_GPIO=y
 CONFIG_W1_SLAVE_DS2431=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
