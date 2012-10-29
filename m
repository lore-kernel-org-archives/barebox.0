Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSpiS-0000bp-S5
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 13:49:23 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 16502104E41D
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2012 14:56:22 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 29 Oct 2012 14:47:01 +0100
Message-Id: <1351518424-29523-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351518424-29523-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121029134033.GH28904@game.jcrosoft.org>
 <1351518424-29523-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] pm9263: add 1-wire support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pm9263/init.c     |   11 +++++++++++
 arch/arm/configs/pm9263_defconfig |    2 ++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index b17a90a..1d13e03 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -1,4 +1,6 @@
 /*
+ * Copyright (C) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
  * Copyright (C) 2007 Sascha Hauer, Pengutronix
  *
  * This program is free software; you can redistribute it and/or
@@ -34,6 +36,12 @@
 #include <mach/io.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
+#include <linux/w1-gpio.h>
+
+struct w1_gpio_platform_data w1_pdata = {
+	.pin = AT91_PIN_PB31,
+	.is_open_drain = 0,
+};
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
@@ -95,6 +103,9 @@ mem_initcall(pm9263_mem_init);
 
 static int pm9263_devices_init(void)
 {
+	at91_set_gpio_input(w1_pdata.pin, 0);
+	add_generic_device_res("w1-gpio", DEVICE_ID_SINGLE, NULL, 0, &w1_pdata);
+
 	/*
 	 * PB27 enables the 50MHz oscillator for Ethernet PHY
 	 * 1 - enable
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index 8c92894..e223e77 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -35,3 +35,5 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_W1=y
+CONFIG_W1_MASTER_GPIO=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
