Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S73Rp-0004ZZ-5U
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 11:29:53 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C5346DC6A6D
 for <barebox@lists.infradead.org>; Mon, 12 Mar 2012 12:33:04 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Mar 2012 12:17:53 +0100
Message-Id: <1331551082-7730-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
References: <1331551082-7730-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/14] at91sam9263ek: update defconfig
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

 - set max size to 256KiB
 - enable MMU
 - bootm: enable oftree and initrd support
 - nand: drop non used hw ecc

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/at91sam9263ek_defconfig |   17 +++++++++++++++--
 1 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index 3353601..f59eab9 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -1,5 +1,9 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9263-EK:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -20,11 +24,15 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
@@ -38,8 +46,13 @@ CONFIG_NET_TFTP=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_INTEL is not set
 CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_USB_GADGET=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
