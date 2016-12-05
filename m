Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-x244.google.com ([2a00:1450:400c:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDplt-0002BZ-VD
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 09:41:27 +0000
Received: by mail-wj0-x244.google.com with SMTP id j10so10883034wjb.3
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 01:40:59 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Dec 2016 12:40:33 +0300
Message-Id: <20161205094033.31569-9-antonynpavlov@gmail.com>
In-Reply-To: <20161205094033.31569-1-antonynpavlov@gmail.com>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
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
Subject: [RFC v2 8/8] MIPS: malta: enable kexec
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig             |   1 +
 arch/mips/mach-malta/Makefile |   1 +
 arch/mips/mach-malta/reboot.c | 104 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 106 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 06a516d..241bc27 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -48,6 +48,7 @@ config MACH_MIPS_MALTA
 	select HAS_DEBUG_LL
 	select GPIOLIB
 	select HW_HAS_PCI
+	select HAS_KEXEC
 
 config MACH_MIPS_AR231X
 	bool "Atheros ar231x-based boards"
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index 0c5a701..20d9204 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1,2 +1,3 @@
 obj-y += reset.o
 obj-$(CONFIG_PCI) += pci.o
+obj-$(CONFIG_KEXEC) += reboot.o
diff --git a/arch/mips/mach-malta/reboot.c b/arch/mips/mach-malta/reboot.c
new file mode 100644
index 0000000..5f68383
--- /dev/null
+++ b/arch/mips/mach-malta/reboot.c
@@ -0,0 +1,104 @@
+/*
+ * Copyright (C) 2014, 2016 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+#include <boot.h>
+#include <linux/reboot.h>
+#include "../../../lib/kexec/kexec.h"
+#include <asm/io.h>
+
+#define ENVP_ADDR	0x80002000l
+#define ENVP_NB_ENTRIES	16
+#define ENVP_ENTRY_SIZE	256
+
+static int reserve_yamon_prom_env(void)
+{
+	request_sdram_region("yamon env",
+		(unsigned long)ENVP_ADDR,
+		ENVP_NB_ENTRIES * ENVP_ENTRY_SIZE);
+
+	return 0;
+}
+late_initcall(reserve_yamon_prom_env);
+
+static void prom_set(uint32_t *prom_buf, int index,
+			const char *string, ...)
+{
+	va_list ap;
+	int32_t table_addr;
+
+	if (index >= ENVP_NB_ENTRIES)
+		return;
+
+	if (string == NULL) {
+		prom_buf[index] = 0;
+		return;
+	}
+
+	table_addr = sizeof(int32_t) * ENVP_NB_ENTRIES + index * ENVP_ENTRY_SIZE;
+	prom_buf[index] = (ENVP_ADDR + table_addr);
+
+	va_start(ap, string);
+	vsnprintf((char *)prom_buf + table_addr, ENVP_ENTRY_SIZE, string, ap);
+	va_end(ap);
+}
+
+static inline void yamon_prom_set(void)
+{
+	void *prom_buf;
+	long prom_size;
+	int prom_index = 0;
+
+	/* Setup prom parameters. */
+	prom_size = ENVP_NB_ENTRIES * (sizeof(int32_t) + ENVP_ENTRY_SIZE);
+	prom_buf = (void *)ENVP_ADDR;
+
+	prom_set(prom_buf, prom_index++, "%s", getenv("global.bootm.image"));
+	prom_set(prom_buf, prom_index++, "%s", linux_bootargs_get());
+
+	prom_set(prom_buf, prom_index++, "memsize");
+	prom_set(prom_buf, prom_index++, "%i", 256 << 20);
+	prom_set(prom_buf, prom_index++, "modetty0");
+	prom_set(prom_buf, prom_index++, "38400n8r");
+	prom_set(prom_buf, prom_index++, NULL);
+}
+
+int reboot(int cmd)
+{
+	if (cmd == LINUX_REBOOT_CMD_KEXEC) {
+		extern unsigned long reboot_code_buffer;
+		extern unsigned long kexec_args[4];
+		void (*kexec_code_buffer)(void);
+
+		yamon_prom_set();
+
+		shutdown_barebox();
+
+		kexec_code_buffer = phys_to_virt(reboot_code_buffer);
+
+		kexec_args[0] = 2; /* number of arguments? */
+		kexec_args[1] = ENVP_ADDR;
+		kexec_args[2] = ENVP_ADDR + 8;
+		kexec_args[3] = 0x10000000; /* no matter */
+		kexec_code_buffer();
+	}
+
+	return -1;
+}
+EXPORT_SYMBOL(reboot);
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
