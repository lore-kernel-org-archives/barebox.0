Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og114.obsmtp.com ([64.18.0.28])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSTrP-0007xk-QC
 for barebox@lists.infradead.org; Thu, 10 May 2012 13:56:52 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 10 May 2012 14:56:46 +0100
Message-Id: <1336658206-14496-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/1] ppc reloc.S: use a common trap relocation function
To: barebox@lists.infradead.org

The trap relocation function trap_reloc can be used across several PPC
platforms and is added to the ppc library. Accordingly, the definition
of trap_reloc is removed from mach-mpc5xxx/start.S

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/lib/Makefile         |    1 +
 arch/ppc/lib/reloc.S          |   47 +++++++++++++++++++++++++++++++++++++++++
 arch/ppc/mach-mpc5xxx/start.S |   14 ------------
 3 files changed, 48 insertions(+), 14 deletions(-)
 create mode 100644 arch/ppc/lib/reloc.S

diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index 0f5e017..ba2f078 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -8,4 +8,5 @@ obj-y += misc.o
 obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
 obj-$(CONFIG_MODULES) += module.o
 obj-y += crtsavres.o
+obj-y += reloc.o
 
diff --git a/arch/ppc/lib/reloc.S b/arch/ppc/lib/reloc.S
new file mode 100644
index 0000000..92ee189
--- /dev/null
+++ b/arch/ppc/lib/reloc.S
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2009 Wolfgang Denk <wd@denx.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+
+#include <asm/ppc_asm.tmpl>
+
+	.file	"reloc.S"
+
+	.text
+	/*
+	 * Function: relocate entries for one exception vector
+	 */
+	.globl trap_reloc
+	.type	trap_reloc, @function
+trap_reloc:
+	lwz	r0, 0(r7)		/* hdlr ...		*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 0(r7)
+
+	lwz	r0, 4(r7)		/* int_return ...	*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 4(r7)
+
+	lwz	r0, 8(r7)		/* transfer_to_handler ...*/
+	add	r0, r0, r3		/*  ... += dest_addr	*/
+	stw	r0, 8(r7)
+
+	blr
+	.size	trap_reloc, .-trap_reloc
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index e098a87..04e8fe3 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -726,20 +726,6 @@ trap_init:
 	mtlr	r4			/* restore link register    */
 	blr
 
-	/*
-	 * Function: relocate entries for one exception vector
-	 */
-trap_reloc:
-	lwz	r0, 0(r7)		/* hdlr ...			*/
-	add	r0, r0, r3		/*  ... += dest_addr		*/
-	stw	r0, 0(r7)
-
-	lwz	r0, 4(r7)		/* int_return ...		*/
-	add	r0, r0, r3		/*  ... += dest_addr		*/
-	stw	r0, 4(r7)
-
-	blr
-
 .globl _text_base
 _text_base:
 	.long TEXT_BASE
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
