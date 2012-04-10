Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHWvJ-0001sV-To
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 08:59:41 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1E42BFF9050
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2012 11:00:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Apr 2012 10:42:22 +0200
Message-Id: <1334047344-8533-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120410082259.GH29577@game.jcrosoft.org>
References: <20120410082259.GH29577@game.jcrosoft.org>
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
Subject: [PATCH 5/7] tny-a926x: udpate defconfig
To: barebox@lists.infradead.org

drop:
 - zlib
 - oob device

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/tny_a9260_defconfig |    3 +--
 arch/arm/configs/tny_a9263_defconfig |    3 +--
 arch/arm/configs/tny_a9g20_defconfig |    3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index 52bd7e4..40fc0bb 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -21,7 +21,6 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
@@ -59,6 +58,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
@@ -68,4 +68,3 @@ CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_EEPROM_AT25=y
-CONFIG_ZLIB=y
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index 1c316c8..95b597f 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -21,7 +21,6 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
@@ -59,6 +58,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
@@ -68,4 +68,3 @@ CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_EEPROM_AT25=y
-CONFIG_ZLIB=y
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index f842382..07a78c4 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -21,7 +21,6 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tny-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
@@ -59,6 +58,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
@@ -68,4 +68,3 @@ CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
 CONFIG_EEPROM_AT25=y
-CONFIG_ZLIB=y
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
