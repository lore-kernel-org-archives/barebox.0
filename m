Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clz3G-0001JF-3M
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 14:28:24 +0000
Received: from player795.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id DF66B5E71F
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 15:27:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Mar 2017 15:34:09 +0100
Message-Id: <1489070050-16024-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170309143117.GI4120@mail.ovh.net>
 <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] boot: if we are in secure boot mode
To: barebox@lists.infradead.org

request confirmation before booting an unsigned image

with a default timeout

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/go.c         |  7 +++++++
 common/Kconfig        |  8 ++++++++
 common/Makefile       |  1 +
 common/bootm.c        |  7 +++++++
 common/secure_boot.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
 include/bootm.h       |  1 +
 include/secure_boot.h | 25 +++++++++++++++++++++++++
 7 files changed, 92 insertions(+)
 create mode 100644 common/secure_boot.c
 create mode 100644 include/secure_boot.h

diff --git a/commands/go.c b/commands/go.c
index fb319b320..61c9ce43f 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -26,6 +26,7 @@
 #include <fcntl.h>
 #include <linux/ctype.h>
 #include <errno.h>
+#include <secure_boot.h>
 
 static int do_go(int argc, char *argv[])
 {
@@ -37,6 +38,12 @@ static int do_go(int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
+	rcode = secure_boot_start_unsigned();
+	if (rcode)
+		return rcode ? 1 : 0;
+
+	rcode = 1;
+
 	if (!isdigit(*argv[1])) {
 		fd = open(argv[1], O_RDONLY);
 		if (fd < 0) {
diff --git a/common/Kconfig b/common/Kconfig
index f7ff04664..9e7d027a2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -21,6 +21,9 @@ config HAS_KALLSYMS
 config HAS_MODULES
 	bool
 
+config HAS_SECURE_BOOT
+	bool
+
 config HAS_CACHE
 	bool
 	help
@@ -184,6 +187,11 @@ config NVVAR
 	  while global variables can be changed during runtime without changing the
 	  default.
 
+config SECURE_BOOT_TIMEOUT
+	prompt "Secure Boot unsigned boot timeout"
+	int
+	default 3
+
 menu "memory layout"
 
 source "pbl/Kconfig"
diff --git a/common/Makefile b/common/Makefile
index 5f58c81d2..e57cc2c15 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -61,6 +61,7 @@ obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_CONSOLE_RATP)	+= ratp.o
 obj-$(CONFIG_BOOT)		+= boot.o
+obj-$(CONFIG_HAS_SECURE_BOOT)	+= secure_boot.o
 
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
diff --git a/common/bootm.c b/common/bootm.c
index 81625d915..0ebf65681 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -23,6 +23,7 @@
 #include <environment.h>
 #include <linux/stat.h>
 #include <magicvar.h>
+#include <secure_boot.h>
 
 static LIST_HEAD(handler_list);
 
@@ -625,6 +626,12 @@ int bootm_boot(struct bootm_data *bootm_data)
 		printf("Passing control to %s handler\n", handler->name);
 	}
 
+	if (!handler->is_secure_supported && is_secure_mode()) {
+		ret = secure_boot_start_unsigned();
+		if (ret)
+			goto err_out;
+	}
+
 	ret = handler->bootm(data);
 	if (data->dryrun)
 		printf("Dryrun. Aborted\n");
diff --git a/common/secure_boot.c b/common/secure_boot.c
new file mode 100644
index 000000000..e625ef4e1
--- /dev/null
+++ b/common/secure_boot.c
@@ -0,0 +1,43 @@
+/*
+ * Copyright (c) 2017 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 Only
+ */
+#include <common.h>
+#include <secure_boot.h>
+#include <console_countdown.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <init.h>
+
+static unsigned int sb_confirm_timeout = CONFIG_SECURE_BOOT_TIMEOUT;
+
+int secure_boot_start_unsigned(void)
+{
+	int ret;
+	char str[2] = { };
+	int timeout = sb_confirm_timeout;
+
+	if (!is_secure_mode())
+		return 0;
+
+	printf("Are you sure you wish to run an unsigned binary\n");
+	printf("in a secure environment?\n");
+	printf("press y to confirm\n");
+
+	ret = console_countdown(timeout, CONSOLE_COUNTDOWN_ANYKEY, str);
+	if (ret != -EINTR)
+		return -EINVAL;
+
+	return str[0] == 'y' ? 0 : -EINVAL;
+}
+
+static int init_sb_confirm_timeout(void)
+{
+	return globalvar_add_simple_int("sb.confirm_timeout",
+			&sb_confirm_timeout, "%u");
+}
+late_initcall(init_sb_confirm_timeout);
+
+BAREBOX_MAGICVAR_NAMED(global_sb_confirm_timeout, global.sb.confirm_timeout,
+		"Secure Boot Comfirm timeout in seconds before booting an unsigned image");
diff --git a/include/bootm.h b/include/bootm.h
index 6e9777a9a..12a61c007 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -89,6 +89,7 @@ struct image_handler {
 	struct list_head list;
 
 	int ih_os;
+	int is_secure_supported;
 
 	enum filetype filetype;
 	int (*bootm)(struct image_data *data);
diff --git a/include/secure_boot.h b/include/secure_boot.h
new file mode 100644
index 000000000..3aa071012
--- /dev/null
+++ b/include/secure_boot.h
@@ -0,0 +1,25 @@
+/*
+ * Copyright (c) 2017 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 Only
+ */
+
+#ifndef __SECURE_BOOT_H__
+#define __SECURE_BOOT_H__
+
+#ifdef CONFIG_HAS_SECURE_BOOT
+int is_secure_mode(void);
+int secure_boot_start_unsigned(void);
+#else
+static int inline is_secure_mode(void)
+{
+	return 0;
+}
+
+static int inline secure_boot_start_unsigned(void)
+{
+	return 0;
+}
+#endif
+
+#endif /* __SECURE_BOOT_H__ */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
