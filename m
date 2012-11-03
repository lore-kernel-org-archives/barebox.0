Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUbxK-0001r2-Uy
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 11:32:03 +0000
Received: from mail401.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 39A3ADC2078
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 12:39:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 12:29:48 +0100
Message-Id: <1351942188-25775-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351795928-18677-1-git-send-email-plagnioj@jcrosoft.com>
References: <1351795928-18677-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 v3] at91sam9x5ek: add i2c support
To: barebox@lists.infradead.org

enable qt1070 support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:

	provide irq_pin for qt1070
	and enable it by default

	branch updated

The following changes since commit 220c2476bc88b8297607ca0a3f8e2e3495da6edb:

  i2c: add versatile support (2012-11-03 04:09:17 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_i2c

for you to fetch changes up to 5824ffb7201d38315a24fa4ba21124ffaf86068f:

  at91sam9x5ek: add i2c support (2012-11-03 04:09:55 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      at91sam9x5: add i2c support
      at91rm9200: add i2c support
      at91sam9260/sam9g20: add i2c support
      at91sam9263: add i2c support
      at91sam9261/sam9g10: add i2c support
      at91sam9g45: add i2c support
      at91sam9x5ek: add i2c support

 arch/arm/boards/at91sam9x5ek/init.c      |   21 ++++++++++++++++++++-
 arch/arm/configs/at91sam9x5ek_defconfig  |    5 ++++-
 arch/arm/mach-at91/at91rm9200_devices.c  |   28 ++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9260_devices.c |   32 ++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9261_devices.c |   31 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c |   31 +++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9g45_devices.c |   50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/at91sam9x5_devices.c  |   58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h  |    3 +++
 9 files changed, 257 insertions(+), 2 deletions(-)

Best Regards,
J.
 arch/arm/boards/at91sam9x5ek/init.c     |   21 ++++++++++++++++++++-
 arch/arm/configs/at91sam9x5ek_defconfig |    5 ++++-
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 78f7349..dbb9bb5 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -37,7 +37,7 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 #include <mach/at91sam9x5_matrix.h>
-#include <gpio_keys.h>
+#include <input/qt1070.h>
 #include <readkey.h>
 #include <linux/w1-gpio.h>
 #include <w1_mac_address.h>
@@ -114,6 +114,24 @@ static void ek_add_device_eth(void)
 	at91_add_device_eth(0, &macb_pdata);
 }
 
+struct qt1070_platform_data qt1070_pdata = {
+	.irq_pin	= AT91_PIN_PA7,
+};
+
+static struct i2c_board_info i2c_devices[] = {
+	{
+		.platform_data = &qt1070_pdata,
+		I2C_BOARD_INFO("qt1070", 0x1b),
+	},
+};
+
+static void ek_add_device_i2c(void)
+{
+	at91_set_gpio_input(qt1070_pdata.irq_pin, 0);
+	at91_set_deglitch(qt1070_pdata.irq_pin, 1);
+	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+}
+
 /*
  * USB Host port
  */
@@ -172,6 +190,7 @@ static int at91sam9x5ek_devices_init(void)
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
