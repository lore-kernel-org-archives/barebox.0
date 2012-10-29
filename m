Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSpiS-0000br-QK
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 13:49:22 +0000
Received: from mail172.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A69AF104E8A4
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2012 14:56:22 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 29 Oct 2012 14:47:03 +0100
Message-Id: <1351518424-29523-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] pm9261: add 1-wire support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/pm9261/init.c     |    8 ++++++++
 arch/arm/configs/pm9261_defconfig |    2 ++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 5214394..2c3615f 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -1,4 +1,6 @@
 /*
+ * Copyright (C) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
  * Copyright (C) 2007 Sascha Hauer, Pengutronix
  *
  * This program is free software; you can redistribute it and/or
@@ -34,6 +36,12 @@
 #include <mach/at91sam9_smc.h>
 #include <mach/sam9_smc.h>
 #include <dm9000.h>
+#include <linux/w1-gpio.h>
+
+struct w1_gpio_platform_data w1_pdata = {
+	.pin = AT91_PIN_PA7,
+	.is_open_drain = 0,
+};
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 22,
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index 1db16d5..0aea2c9 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -50,3 +50,5 @@ CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_W1=y
+CONFIG_W1_MASTER_GPIO=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
