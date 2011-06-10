Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUxDe-0002N7-MH
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 08:37:31 +0000
Received: by wyb28 with SMTP id 28so2286827wyb.36
	for <barebox@lists.infradead.org>; Fri, 10 Jun 2011 01:37:28 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri, 10 Jun 2011 10:37:14 +0200
Message-Id: <1307695034-11536-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] at91sam9m10g45ek: add mci0 support
To: barebox@lists.infradead.org

and enable fat support

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10g45ek/init.c     |    8 ++++++++
 arch/arm/configs/at91sam9m10g45ek_defconfig |    5 +++++
 2 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 77d51b7..4f79e42 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -22,6 +22,7 @@

 #include <common.h>
 #include <net.h>
+#include <mci.h>
 #include <init.h>
 #include <environment.h>
 #include <asm/armlinux.h>
@@ -110,11 +111,18 @@ static struct at91_ether_platform_data macb_pdata = {
 	.phy_addr = 0,
 };

+static struct atmel_mci_platform_data mci0_pdata = {
+	.bus_width	= 4,
+	.host_caps	= MMC_MODE_HS,
+	.detect_pin	= AT91_PIN_PD10,
+};
+
 static int at91sam9m10g45ek_devices_init(void)
 {
 	at91_add_device_sdram(128 * 1024 * 1024);
 	ek_add_device_nand();
 	at91_add_device_eth(&macb_pdata);
+	at91_add_device_mci(0, &mci0_pdata);

 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index e1c6cef..deca884 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -53,3 +53,8 @@ CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_UBI=y
+CONFIG_MCI=y
+CONFIG_MCI_WRITE=y
+CONFIG_MCI_ATMEL=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
--
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
