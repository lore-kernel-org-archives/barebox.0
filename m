Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTzuH-0008Si-2p
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 18:54:22 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id B3148FFA630
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 20:04:45 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 19:52:08 +0100
Message-Id: <1351795928-18677-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351782447-32199-7-git-send-email-plagnioj@jcrosoft.com>
References: <1351782447-32199-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 v2] at91sam9x5ek: add i2c support
To: barebox@lists.infradead.org

enable the qt1070 for debug only as this slow down barebox a lot
as we need to read the i2c via poller

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
HI

branch updated

The following changes since commit 3a5609a37a19b0b6b5f4c61e3c561b7bf2d25b72:

  i2c: add versatile support (2012-11-01 06:58:21 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_i2c

for you to fetch changes up to 3c67dcab6fc9b1ab0966b2693f2952209f18cdda:

  at91sam9x5ek: add i2c support (2012-11-01 11:26:25 +0800)

Jean-Christophe PLAGNIOL-VILLARD (7):
      at91sam9x5: add i2c support
      at91rm9200: add i2c support
      at91sam9260/sam9g20: add i2c support
      at91sam9263: add i2c support
      at91sam9261/sam9g10: add i2c support
      at91sam9g45: add i2c support
      at91sam9x5ek: add i2c support

 arch/arm/boards/at91sam9x5ek/init.c      |   12 ++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig  |    3 +++
 arch/arm/mach-at91/at91rm9200_devices.c  |   28 ++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9260_devices.c |   32 ++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c |   31 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c |   31 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c |   50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9x5_devices.c  |   58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h  |    3 +++
 9 files changed, 248 insertions(+)

Best Regards,
J.
 arch/arm/configs/at91sam9x5ek_defconfig |    3 +++
 2 files changed, 15 insertions(+)

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
index 6315d9f..c71fe0d 100644
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
