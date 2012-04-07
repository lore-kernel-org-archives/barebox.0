Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGWIJ-0007Al-Nb
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 14:07:12 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 71B98FF89B3
 for <barebox@lists.infradead.org>; Sat,  7 Apr 2012 16:08:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  7 Apr 2012 15:50:36 +0200
Message-Id: <1333806636-32160-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1333767731-21927-2-git-send-email-plagnioj@jcrosoft.com>
References: <1333767731-21927-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2 v2] at91sam9260ek/9g20ek: udpate defconfig
To: barebox@lists.infradead.org

drop:
 - ZLIB
 - MTD OOB DEVICE

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
update against current tree

update the pull with it

Best Regards,
J.
 arch/arm/configs/at91sam9260ek_defconfig |    2 +-
 arch/arm/configs/at91sam9g20ek_defconfig |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index c288d39..ec8ab22 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -51,6 +51,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
@@ -69,4 +70,3 @@ CONFIG_LED_TRIGGERS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 9473488..49876c0 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -52,6 +52,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
@@ -70,4 +71,3 @@ CONFIG_LED_TRIGGERS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
