Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STcXP-0001gX-Vt
 for barebox@lists.infradead.org; Sun, 13 May 2012 17:24:56 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so3587169lbb.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 10:24:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 13 May 2012 21:24:44 +0400
Message-Id: <1336929884-19292-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
References: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 3/3] MIPS: malta: add bogus lowlevel init
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                    |    1 +
 arch/mips/mach-malta/Makefile        |    1 +
 arch/mips/mach-malta/lowlevel_init.S |   37 ++++++++++++++++++++++++++++++++++
 3 files changed, 39 insertions(+)
 create mode 100644 arch/mips/mach-malta/lowlevel_init.S

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 50d5c67..9e4bea1 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -36,6 +36,7 @@ config MACH_MIPS_MALTA
 	select SYS_SUPPORTS_32BIT_KERNEL
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select HAS_DEBUG_LL
+	select MACH_HAS_LOWLEVEL_INIT
 
 config MACH_MIPS_BCM47XX
 	bool "Broadcom BCM47xx-based boards"
diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
index f3cc668..f4cb8f2 100644
--- a/arch/mips/mach-malta/Makefile
+++ b/arch/mips/mach-malta/Makefile
@@ -1 +1,2 @@
 obj-y += reset.o
+obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/mips/mach-malta/lowlevel_init.S b/arch/mips/mach-malta/lowlevel_init.S
new file mode 100644
index 0000000..a34de74
--- /dev/null
+++ b/arch/mips/mach-malta/lowlevel_init.S
@@ -0,0 +1,37 @@
+/*
+ * Lowlevel init code for MIPS malta
+ *
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <config.h>
+#include <asm/asm.h>
+#include <asm/regdef.h>
+#include <asm/mipsregs.h>
+
+	.section ".text_bare_init"
+
+LEAF(mach_init_lowlevel)
+
+	/* nothing special yet */
+
+	/* return */
+	b	mach_init_lowlevel_return
+	 nop
+END(mach_init_lowlevel)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
