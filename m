Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Twbad-00046r-7H
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 16:48:23 +0000
Received: from mail412.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7351EFF8657
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 17:52:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 19 Jan 2013 17:37:25 +0100
Message-Id: <1358613446-1168-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358613446-1168-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130119163524.GC26329@game.jcrosoft.org>
 <1358613446-1168-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/9] at91: add bootstrap version
To: barebox@lists.infradead.org

This will allow to boot from NAND/MMC and others.
This version of bootstrap is a non shell version of barebox compressed by the
pbl.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                  |    6 ++
 arch/arm/mach-at91/Makefile                 |    1 +
 arch/arm/mach-at91/bootstrap.c              |   86 +++++++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/bootstrap.h |   28 +++++++++
 4 files changed, 121 insertions(+)
 create mode 100644 arch/arm/mach-at91/bootstrap.c
 create mode 100644 arch/arm/mach-at91/include/mach/bootstrap.h

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 1889596..d07c900 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -490,4 +490,10 @@ config CMD_AT91_BOOT_TEST
 	  allow to upload a boot binary to sram and execute it
 	  usefull to test bootstrap or barebox lowlevel init
 
+config AT91_BOOSTRAP
+	bool "at91 bootstrap"
+	depends on MACH_HAS_LOWLEVEL_INIT
+	select HAVE_NOSHELL
+	select BOOTSTRAP
+
 endif
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 4404d23..6203793 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,6 +1,7 @@
 obj-y += setup.o clock.o gpio.o
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
+obj-$(CONFIG_BOOTSTRAP) += bootstrap.o
 lowlevel_init-y = at91sam926x_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootstrap.c
new file mode 100644
index 0000000..17fb020
--- /dev/null
+++ b/arch/arm/mach-at91/bootstrap.c
@@ -0,0 +1,86 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#include <common.h>
+#include <bootstrap.h>
+#include <mach/bootstrap.h>
+#include <sizes.h>
+#include <malloc.h>
+
+#if defined(CONFIG_MCI_ATMEL)
+#define is_mmc() 1
+#else
+#define is_mmc() 0
+#endif
+
+#ifdef CONFIG_NAND_ATMEL
+#define is_nand() 1
+#else
+#define is_nand() 0
+#endif
+
+#ifdef CONFIG_MTD_M25P80
+#define is_m25p80() 1
+#else
+#define is_m25p80() 0
+#endif
+
+#ifdef CONFIG_MTD_DATAFLASH
+#define is_dataflash() 1
+#else
+#define is_dataflash() 0
+#endif
+
+static void boot_seq(bool is_barebox)
+{
+	char *name = is_barebox ? "barebox" : "unknown";
+	int (*func)(void) = NULL;
+
+	if (is_m25p80()) {
+		func = bootstrap_board_read_m25p80();
+		printf("Boot %s from m25p80\n", name);
+		bootstrap_boot(func, is_barebox);
+		bootstrap_err("... failed\n");
+		free(func);
+	}
+	if (is_dataflash()) {
+		printf("Boot %s from dataflash\n", name);
+		func = bootstrap_board_read_dataflash();
+		bootstrap_boot(func, is_barebox);
+		bootstrap_err("... failed\n");
+		free(func);
+	}
+	if (is_nand()) {
+		printf("Boot %s from nand\n", name);
+		func = bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M);
+		bootstrap_boot(func, is_barebox);
+		bootstrap_err("... failed\n");
+		free(func);
+	}
+}
+
+int run_shell(void)
+{
+	int (*func)(void) = NULL;
+
+	if (is_mmc()) {
+		printf("Boot from mmc\n");
+		func = bootstrap_read_disk("disk0.0");
+		bootstrap_boot(func, false);
+		bootstrap_err("... failed\n");
+		free(func);
+	}
+
+	/* First only bootstrap_boot a barebox */
+	boot_seq(true);
+	/* Second bootstrap_boot any */
+	boot_seq(false);
+
+	bootstrap_err("bootstrap_booting failed\n");
+	while (1);
+
+	return 0;
+}
diff --git a/arch/arm/mach-at91/include/mach/bootstrap.h b/arch/arm/mach-at91/include/mach/bootstrap.h
new file mode 100644
index 0000000..a3d19dd
--- /dev/null
+++ b/arch/arm/mach-at91/include/mach/bootstrap.h
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#ifndef __MACH_BOOTSTRAP_H__
+#define __MACH_BOOTSTRAP_H__
+
+#ifdef CONFIG_MTD_M25P80
+void * bootstrap_board_read_m25p80(void);
+#else
+static inline void * bootstrap_board_read_m25p80(void)
+{
+	return NULL;
+}
+#endif
+
+#ifdef CONFIG_MTD_DATAFLASH
+void * bootstrap_board_read_dataflash(void);
+#else
+static inline void * bootstrap_board_read_dataflash(void)
+{
+	return NULL;
+}
+#endif
+
+#endif /* __MACH_BOOTSTRAP_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
