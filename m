Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFSn-0001YQ-Q0
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:10:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:10:32 +0100
Message-Id: <20191106071034.24452-5-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071034.24452-1-a.fatoum@pengutronix.de>
References: <20191106071034.24452-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/7] misc: implement PSCI system reset driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

In cases where firmware provides PSCI >0.1, it may be prudent to use it as
backend for reset and poweroff. This driver accomplishes this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/Kconfig         |  5 +++
 drivers/misc/Makefile        |  1 +
 drivers/misc/psci-sysreset.c | 62 ++++++++++++++++++++++++++++++++++++
 3 files changed, 68 insertions(+)
 create mode 100644 drivers/misc/psci-sysreset.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 0f736f8bded3..0412fcf02aa3 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -35,4 +35,9 @@ config UBOOTVAR
 	  While it can be used standalone, it is best when coupled
 	  with corresponding filesystem driver.
 
+config PSCI_SYSRESET
+	bool "PSCI system reset driver"
+	select ARM_PSCI_CLIENT
+	depends on CPU_32v7 || CPU_64v8
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index bc1c01ea4d67..0ad158b16d1b 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -7,3 +7,4 @@ obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_STATE_DRV)		+= state.o
 obj-$(CONFIG_DEV_MEM)		+= mem.o
 obj-$(CONFIG_UBOOTVAR)		+= ubootvar.o
+obj-$(CONFIG_PSCI_SYSRESET)	+= psci-sysreset.o
diff --git a/drivers/misc/psci-sysreset.c b/drivers/misc/psci-sysreset.c
new file mode 100644
index 000000000000..d05cbc76f259
--- /dev/null
+++ b/drivers/misc/psci-sysreset.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2017 Masahiro Yamada <yamada.masahiro@socionext.com>
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#define pr_fmt(fmt) "psci-sysreset: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <asm/psci.h>
+#include <poweroff.h>
+#include <restart.h>
+
+static struct restart_handler restart;
+
+static void __noreturn psci_invoke_noreturn(int function)
+{
+	int ret;
+
+	ret = psci_invoke(function, 0, 0, 0, NULL);
+
+	pr_err("psci command failed: %s\n", strerror(-ret));
+	hang();
+}
+
+static void __noreturn psci_poweroff(struct poweroff_handler *handler)
+{
+	psci_invoke_noreturn(ARM_PSCI_0_2_FN_SYSTEM_OFF);
+}
+
+static void __noreturn psci_restart(struct restart_handler *rst)
+{
+	psci_invoke_noreturn(ARM_PSCI_0_2_FN_SYSTEM_RESET);
+}
+
+static int __init psci_sysreset_init(void)
+{
+	int version;
+	int ret;
+
+	version = psci_get_version();
+	if (version < 0)
+		return version;
+
+	if (version < ARM_PSCI_VER(0,2)) {
+		pr_debug("Incompatible PSCI version: not registering reset handler\n");
+		return 0;
+	}
+
+	ret = poweroff_handler_register_fn(psci_poweroff);
+	if (ret)
+		return ret;
+
+	restart.name = "psci";
+	restart.restart = psci_restart;
+	restart.priority = 400;
+
+	return restart_handler_register(&restart);
+}
+device_initcall(psci_sysreset_init);
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
