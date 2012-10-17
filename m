Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOY13-0003w7-SV
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 18:06:50 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A1410DC22C7
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 20:13:24 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Oct 2012 20:04:25 +0200
Message-Id: <1350497065-21893-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350497065-21893-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121017180024.GB446@game.jcrosoft.org>
 <1350497065-21893-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] at91sam9x5ek: switch to hw pmecc nand support
To: barebox@lists.infradead.org

now we can flash barebox by itself as the bootstrap need to use pmecc

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c     |    3 +++
 arch/arm/configs/at91sam9x5ek_defconfig |   11 ++++++-----
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 58c945c..d15b75a 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -45,6 +45,9 @@ static struct atmel_nand_data nand_pdata = {
 	.det_pin	= 0,
 	.rdy_pin	= AT91_PIN_PD5,
 	.enable_pin	= AT91_PIN_PD4,
+	.ecc_mode	= NAND_ECC_HW,
+	.pmecc_sector_size = 512,
+	.pmecc_corr_cap = 2,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
 	.bus_width_16	= 1,
 #endif
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index cda360d..7ce5b71 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -23,11 +23,10 @@ CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_INITRD=y
@@ -38,6 +37,8 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
@@ -47,17 +48,16 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_SOFT is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
+CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_UBI=y
 CONFIG_DISK=y
 CONFIG_DISK_WRITE=y
@@ -65,6 +65,7 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_KEYBOARD_GPIO=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
