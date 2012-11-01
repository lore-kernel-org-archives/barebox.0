Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TU2AP-00028g-L8
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 21:19:10 +0000
Received: from mail624.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id CB3C6FFAAC7
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 22:26:20 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 22:16:56 +0100
Message-Id: <1351804616-31047-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351804616-31047-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121101195008.GM29599@game.jcrosoft.org>
 <1351804616-31047-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] at91sam9x5ek: add mci support
To: barebox@lists.infradead.org

only add mci0 (microSD slot) as mci1 conflict with spi0

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c     |   20 ++++++++++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig |    5 +++--
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index afb50e8..da488bd 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -115,6 +115,25 @@ static void ek_add_device_eth(void)
 	at91_add_device_eth(0, &macb_pdata);
 }
 
+/*
+ * MCI (SD/MMC)
+ */
+/* mci0 detect_pin is revision dependent */
+static struct atmel_mci_platform_data mci0_data = {
+	.bus_width	= 4,
+	.detect_pin	= AT91_PIN_PD15,
+	.wp_pin		= 0,
+};
+
+static void ek_add_device_mci(void)
+{
+	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT))
+		mci0_data.detect_pin = 0;
+
+	/* MMC0 */
+	at91_add_device_mci(0, &mci0_data);
+}
+
 static struct i2c_board_info i2c_devices[] = {
 	{
 		I2C_BOARD_INFO("qt1070", 0x1b),
@@ -218,6 +237,7 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_nand();
 	ek_add_device_eth();
 	ek_add_device_spi();
+	ek_add_device_mci();
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_led();
 	ek_add_device_i2c();
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 5611b95..d097683 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -65,8 +65,9 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
-CONFIG_DISK=y
-CONFIG_DISK_WRITE=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
