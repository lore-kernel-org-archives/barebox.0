Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fCm53-0008W8-H8
 for barebox@lists.infradead.org; Sun, 29 Apr 2018 13:09:31 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sun, 29 Apr 2018 15:09:06 +0200
Message-Id: <20180429130907.20506-7-linux@rempel-privat.de>
In-Reply-To: <20180429130907.20506-1-linux@rempel-privat.de>
References: <20180429130907.20506-1-linux@rempel-privat.de>
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
Subject: [RFC PATCH 6/7] MIPS: malta: enable kexec
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig             |   1 +
 arch/mips/mach-malta/Makefile |   1 +
 arch/mips/mach-malta/reboot.c | 106 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 108 insertions(+)
 create mode 100644 arch/mips/mach-malta/reboot.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 2b549373a..ab5a05e0d 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -51,6 +51,7 @@ config MACH_MIPS_MALTA
 	select HAS_DEBUG_LL
 	select GPIOLIB
 	select HW_HAS_PCI
+	select HAS_KEXEC
 
 config MACH_MIPS_AR231X
 	bool "Atheros ar231x-based boards"
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index 0c5a7018d..20d9204f3 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1,2 +1,3 @@
 obj-y += reset.o
 obj-$(CONFIG_PCI) += pci.o
+obj-$(CONFIG_KEXEC) += reboot.o
diff --git a/arch/mips/mach-malta/reboot.c b/arch/mips/mach-malta/reboot.c
new file mode 100644
index 000000000..b4572fc1d
--- /dev/null
+++ b/arch/mips/mach-malta/reboot.c
@@ -0,0 +1,106 @@
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
+#include <bootm.h>
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
+static inline void yamon_prom_set(char *fname)
+{
+	void *prom_buf;
+	long prom_size;
+	int prom_index = 0;
+
+	/* Setup prom parameters. */
+	prom_size = ENVP_NB_ENTRIES * (sizeof(int32_t) + ENVP_ENTRY_SIZE);
+	prom_buf = (void *)ENVP_ADDR;
+
+	prom_set(prom_buf, prom_index++, "%s", fname);
+	prom_set(prom_buf, prom_index++, "%s", linux_bootargs_get());
+
+	prom_set(prom_buf, prom_index++, "memsize");
+	prom_set(prom_buf, prom_index++, "%i", 256 << 20);
+	prom_set(prom_buf, prom_index++, "modetty0");
+	prom_set(prom_buf, prom_index++, "38400n8r");
+	prom_set(prom_buf, prom_index++, NULL);
+}
+
+int reboot(int cmd, void *opaque)
+{
+	if (cmd == LINUX_REBOOT_CMD_KEXEC) {
+		extern unsigned long reboot_code_buffer;
+		extern unsigned long kexec_args[4];
+		void (*kexec_code_buffer)(void);
+		struct image_data *data = opaque;
+
+		yamon_prom_set(data->os_file);
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
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
