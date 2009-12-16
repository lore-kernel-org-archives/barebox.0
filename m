Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 16 Dec 2009 15:49:18 +0100
Message-Id: <1260974958-21832-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1260974958-21832-2-git-send-email-mkl@pengutronix.de>
References: <1260974958-21832-1-git-send-email-mkl@pengutronix.de>
	<1260974958-21832-2-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] arm/lib: add missing abi helper functions __aeabi_idivmod,
	__aeabi_uidivmod
To: u-boot-v2@lists.infradead.org
Cc: sha@pengutronix.de

With EABI we have two new helper functions __aeabi_idivmod and
__aeabi_uidivmod. This patch adds them to barebox.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/lib/Makefile           |    2 +
 arch/arm/lib/__aeabi_idivmod.S  |   50 ++++++++++++++++++++++++++++++++++++++
 arch/arm/lib/__aeabi_uidivmod.S |   51 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 103 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/lib/__aeabi_idivmod.S
 create mode 100644 arch/arm/lib/__aeabi_uidivmod.S

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 26c318b..c1ac1aa 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -16,6 +16,8 @@ obj-y	+= io-readsl.o
 obj-y	+= io-writesb.o
 obj-y	+= io-writesw-armv4.o
 obj-y	+= io-writesl.o
+obj-$(CONFIG_AEABI)				+= __aeabi_idivmod.o
+obj-$(CONFIG_AEABI)				+= __aeabi_uidivmod.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 
diff --git a/arch/arm/lib/__aeabi_idivmod.S b/arch/arm/lib/__aeabi_idivmod.S
new file mode 100644
index 0000000..07de06b
--- /dev/null
+++ b/arch/arm/lib/__aeabi_idivmod.S
@@ -0,0 +1,50 @@
+/*
+ * linux/arch/arm/lib/lib1funcs.S: Optimized ARM division routines
+ *
+ * Author: Nicolas Pitre <nico@fluxnic.net>
+ *   - contributed to gcc-3.4 on Sep 30, 2003
+ *   - adapted for the Linux kernel on Oct 2, 2003
+ */
+
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003 Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with this program; see the file COPYING.  If not, write to
+the Free Software Foundation, 59 Temple Place - Suite 330,
+Boston, MA 02111-1307, USA.  */
+
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+.section .text.__aeabi_idivmod
+
+ENTRY(__aeabi_idivmod)
+
+	stmfd	sp!, {r0, r1, ip, lr}
+	bl	__aeabi_idiv
+	ldmfd	sp!, {r1, r2, ip, lr}
+	mul	r3, r0, r2
+	sub	r1, r1, r3
+	mov	pc, lr
+
+ENDPROC(__aeabi_idivmod)
diff --git a/arch/arm/lib/__aeabi_uidivmod.S b/arch/arm/lib/__aeabi_uidivmod.S
new file mode 100644
index 0000000..0e7694c
--- /dev/null
+++ b/arch/arm/lib/__aeabi_uidivmod.S
@@ -0,0 +1,51 @@
+/*
+ * linux/arch/arm/lib/lib1funcs.S: Optimized ARM division routines
+ *
+ * Author: Nicolas Pitre <nico@fluxnic.net>
+ *   - contributed to gcc-3.4 on Sep 30, 2003
+ *   - adapted for the Linux kernel on Oct 2, 2003
+ */
+
+/* Copyright 1995, 1996, 1998, 1999, 2000, 2003 Free Software Foundation, Inc.
+
+This file is free software; you can redistribute it and/or modify it
+under the terms of the GNU General Public License as published by the
+Free Software Foundation; either version 2, or (at your option) any
+later version.
+
+In addition to the permissions in the GNU General Public License, the
+Free Software Foundation gives you unlimited permission to link the
+compiled version of this file into combinations with other programs,
+and to distribute those combinations without any restriction coming
+from the use of this file.  (The General Public License restrictions
+do apply in other respects; for example, they cover modification of
+the file, and distribution when not linked into a combine
+executable.)
+
+This file is distributed in the hope that it will be useful, but
+WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with this program; see the file COPYING.  If not, write to
+the Free Software Foundation, 59 Temple Place - Suite 330,
+Boston, MA 02111-1307, USA.  */
+
+
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+.section .text.__aeabi_uidivmod
+
+ENTRY(__aeabi_uidivmod)
+
+	stmfd	sp!, {r0, r1, ip, lr}
+	bl	__aeabi_uidiv
+	ldmfd	sp!, {r1, r2, ip, lr}
+	mul	r3, r0, r2
+	sub	r1, r1, r3
+	mov	pc, lr
+
+ENDPROC(__aeabi_uidivmod)
+
-- 
1.6.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
