Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVA2-0003uu-FT
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 20:51:47 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 51C6DFF94EE
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 22:58:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 22:49:24 +0200
Message-Id: <1350247764-18132-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350247764-18132-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014204622.GT13639@game.jcrosoft.org>
 <1350247764-18132-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] usb-a9263: add spi dataflash support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/init.c            |   21 +++++++++++++++++++++
 arch/arm/configs/usb_a9263_128mib_defconfig |    3 ++-
 arch/arm/configs/usb_a9263_defconfig        |    3 ++-
 3 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 7b946a3..9708aaa 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -39,6 +39,7 @@
 #include <mach/at91_rstc.h>
 #include <gpio_keys.h>
 #include <readkey.h>
+#include <spi/spi.h>
 
 static void usb_a9260_set_board_type(void)
 {
@@ -148,6 +149,25 @@ static void usb_a9260_phy_reset(void)
 				     AT91_RSTC_URSTEN);
 }
 
+static const struct spi_board_info usb_a9263_spi_devices[] = {
+	{
+		.name		= "mtd_dataflash",
+		.chip_select	= 0,
+		.max_speed_hz	= 15 * 1000 * 1000,
+		.bus_num	= 0,
+	}
+};
+
+static void usb_a9260_add_spi(void)
+{
+	if (!machine_is_usb_a9263())
+		return;
+
+	spi_register_board_info(usb_a9263_spi_devices,
+			ARRAY_SIZE(usb_a9263_spi_devices));
+	at91_add_device_spi(0, NULL);
+}
+
 #if defined(CONFIG_MCI_ATMEL)
 static struct atmel_mci_platform_data __initdata usb_a9260_mci_data = {
 	.bus_width	= 4,
@@ -314,6 +334,7 @@ static int usb_a9260_devices_init(void)
 	usb_a9260_phy_reset();
 	at91_add_device_eth(0, &macb_pdata);
 	usb_a9260_add_device_mci();
+	usb_a9260_add_spi();
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_device_udc();
 	ek_add_led();
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index 87f708f..71774f9 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -64,9 +64,10 @@ CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 9bfb7e7..251c654 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -63,9 +63,10 @@ CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
