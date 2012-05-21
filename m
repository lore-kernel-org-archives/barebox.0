Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWNea-0002jC-99
 for barebox@lists.infradead.org; Mon, 21 May 2012 08:07:44 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so4852784bkw.36
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 01:07:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 May 2012 12:07:09 +0400
Message-Id: <1337587631-16650-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1337587631-16650-1-git-send-email-antonynpavlov@gmail.com>
References: <1337587631-16650-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/3] MIPS: introduce C architecture-specific low-level init
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/Makefile     |    1 +
 arch/mips/boot/main_entry.c |   45 +++++++++++++++++++++++++++++++++++++++++++
 arch/mips/boot/start.S      |   14 ++------------
 3 files changed, 48 insertions(+), 12 deletions(-)
 create mode 100644 arch/mips/boot/main_entry.c

diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index f9151d2..d6d28ce 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -1 +1,2 @@
 obj-y += start.o
+obj-y += main_entry.o
diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
new file mode 100644
index 0000000..fa072de
--- /dev/null
+++ b/arch/mips/boot/main_entry.c
@@ -0,0 +1,45 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief Start of the 32 bit flat mode
+ */
+
+#include <common.h>
+#include <string.h>
+#include <asm/sections.h>
+
+extern void start_barebox(void);
+
+void main_entry(void);
+
+/**
+ * Called plainly from assembler that switches from real to flat mode
+ *
+ * @note The C environment isn't initialized yet
+ */
+void main_entry(void)
+{
+	/* clear the BSS first */
+	memset(__bss_start, 0x00, __bss_stop - __bss_start);
+
+	start_barebox();
+}
diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index e8868e1..dd302fc 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -79,7 +79,7 @@ __start:
 
 	la	a1, _start	/* link (RAM) _start address */
 
-	beq	a0, a1, clear_bss
+	beq	a0, a1, stack_setup
 	 nop
 
 	la	t0, _start
@@ -105,16 +105,6 @@ copy_loop:
 	blez		t3, copy_loop
 	addi		a1, LONGSIZE * 4
 
-clear_bss:
-	la	t0, __bss_start
-	sw	zero, (t0)
-	la	t1, _end - 4
-1:
-	addiu	t0, LONGSIZE
-	sw	zero, (t0)
-	bne	t0, t1, 1b
-	 nop
-
 	/*
 	 * Dominic Sweetman, See MIPS Run, Morgan Kaufmann, 2nd edition, 2006
 	 *
@@ -144,7 +134,7 @@ stack_setup:
 	/* reserve four 32-bit argument slots */
 	addiu	sp, -16
 
-	la	v0, start_barebox
+	la	v0, main_entry
 	jal     v0
 	 nop
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
