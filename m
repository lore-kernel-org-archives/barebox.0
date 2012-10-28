Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSGhu-0000Pm-Pu
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 00:26:33 +0000
Received: from mail409.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DB5D9FFA523
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 02:33:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 28 Oct 2012 02:24:07 +0200
Message-Id: <1351383852-8488-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121028002134.GD28904@game.jcrosoft.org>
 <1351383852-8488-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] pm9g45: add 1-wire support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pm9g45/init.c     |   11 ++++++++++-
 arch/arm/configs/pm9g45_defconfig |    2 ++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index a12896b..907c6bb 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ * Copyright (C) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
  *
  * Copyright (C) 2007 Sascha Hauer, Pengutronix
  *
@@ -35,6 +35,12 @@
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
+#include <linux/w1-gpio.h>
+
+struct w1_gpio_platform_data w1_pdata = {
+	.pin = AT91_PIN_PA31,
+	.is_open_drain = 0,
+};
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
@@ -132,6 +138,9 @@ mem_initcall(pm9g45_mem_init);
 
 static int pm9g45_devices_init(void)
 {
+	at91_set_gpio_input(w1_pdata.pin, 0);
+	add_generic_device_res("w1-gpio", DEVICE_ID_SINGLE, NULL, 0, &w1_pdata);
+
 	pm_add_device_nand();
 	pm9g45_add_device_mci();
 	pm9g45_phy_init();
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index 958301d..d242bdc 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -56,6 +56,8 @@ CONFIG_USB_OHCI_AT91=y
 CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_ATMEL=y
+CONFIG_W1=y
+CONFIG_W1_MASTER_GPIO=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
