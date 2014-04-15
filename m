Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZy62-0007tF-CV
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:47:58 +0000
Received: by mail-la0-f54.google.com with SMTP id mc6so6617771lab.13
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:47:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:34 +0400
Message-Id: <1397547514-19925-11-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 10/10] MIPS: mach-malta: add kexec-capable reboot()
To: barebox@lists.infradead.org

This patch is based on qemu.git/hw/mips/mips_malta.c code.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig             |   1 +
 arch/mips/mach-malta/Makefile |   1 +
 arch/mips/mach-malta/reboot.c | 104 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 106 insertions(+)
 create mode 100644 arch/mips/mach-malta/reboot.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 9a240b7..759dcc8 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -44,6 +44,7 @@ config MACH_MIPS_MALTA
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select HAS_DEBUG_LL
+	select HAS_KEXEC
 
 config MACH_MIPS_AR231X
 	bool "Atheros ar231x-based boards"
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index f3cc668..ed740ef 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1 +1,2 @@
 obj-y += reset.o
+obj-y += reboot.o
diff --git a/arch/mips/mach-malta/reboot.c b/arch/mips/mach-malta/reboot.c
new file mode 100644
index 0000000..17c7ff8
--- /dev/null
+++ b/arch/mips/mach-malta/reboot.c
@@ -0,0 +1,104 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include <asm/io.h>
+#include <linux/reboot.h>
+#include "../../../lib/kexec/kexec.h"
+#include <boot.h>
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
+static inline void yamon_jump(void *entry)
+{
+	int argnum;
+	void (*kernel)(int a0, int a1, int a2, int a3);
+	void *prom_buf;
+	long prom_size;
+	int prom_index = 0;
+
+	kernel = entry;
+	argnum = 2;
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
+
+	kernel(argnum,              /* number of arguments? */
+		ENVP_ADDR,
+		ENVP_ADDR + 8,
+		0x10000000      /* no matter */
+	);
+}
+
+int reboot(int cmd)
+{
+	if (cmd == LINUX_REBOOT_CMD_KEXEC) {
+		extern unsigned long reboot_code_buffer;
+
+		shutdown_barebox();
+		yamon_jump(phys_to_virt(reboot_code_buffer));
+	}
+
+	return -1;
+}
+EXPORT_SYMBOL(reboot);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
