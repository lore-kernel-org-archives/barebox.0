Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9MM6-0005Jo-HH
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 20:37:48 +0000
Received: by weyr3 with SMTP id r3so691446wey.36
 for <barebox@lists.infradead.org>; Wed, 05 Sep 2012 13:37:44 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed,  5 Sep 2012 22:37:26 +0200
Message-Id: <1346877446-13368-1-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
References: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] [OpenRISC] Add __ashrdi3 and remove link to libgcc
To: barebox@lists.infradead.org

In a previous patch, Sascha needed to add __ashrdi3 and then linked to
libgcc. This patch add the ashrdi3 function in the arch/openrisc/lib
directory and remove the libgcc link.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/Makefile      |    4 +-
 arch/openrisc/lib/Makefile  |    1 +
 arch/openrisc/lib/ashrdi3.S |   59 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 62 insertions(+), 2 deletions(-)
 create mode 100644 arch/openrisc/lib/ashrdi3.S

diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index 1f4b175..9e88a51 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -1,6 +1,6 @@
 CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
 
-LIBGCC          := $(shell $(CC) $(KBUILD_CFLAGS) -print-libgcc-file-name)
+#LIBGCC := $(shell $(CC) $(KBUILD_CFLAGS) -print-libgcc-file-name)
 
 board-$(CONFIG_GENERIC) := generic
 
@@ -20,6 +20,6 @@ common-y += $(BOARD)
 common-y += arch/openrisc/lib/
 common-y += arch/openrisc/cpu/
 
-common-y          += $(LIBGCC)
+#common-y += $(LIBGCC)
 
 lds-y += arch/openrisc/cpu/barebox.lds
diff --git a/arch/openrisc/lib/Makefile b/arch/openrisc/lib/Makefile
index aaf93cb..0b3cc50 100644
--- a/arch/openrisc/lib/Makefile
+++ b/arch/openrisc/lib/Makefile
@@ -4,3 +4,4 @@ obj-y                 += cpuinfo.o
 obj-y                 += muldi3.o
 obj-y                 += lshrdi3.o
 obj-y                 += ashldi3.o
+obj-y                 += ashrdi3.o
diff --git a/arch/openrisc/lib/ashrdi3.S b/arch/openrisc/lib/ashrdi3.S
new file mode 100644
index 0000000..c656d9f
--- /dev/null
+++ b/arch/openrisc/lib/ashrdi3.S
@@ -0,0 +1,59 @@
+/*
+ * (C) Copyright 2012 - Franck JULLIEN <elec4fun@gmail.com>
+ *
+ * Extracted from gcc generated assembly.
+ *
+ * Extended precision shifts.
+ *
+ * R3/R4 (MSW, LSW) has 64 bit value
+ * R5    has shift count
+ * result in R11/R12
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
+
+.globl __ashrdi3
+
+__ashrdi3:
+	l.sfeqi r5,0x0			/* if count = 0, go out                   */
+	l.bf out
+
+	l.addi r6,r0,0x20		/* r6 = 32                                */
+	l.sub r6,r6,r5			/* r6 = 32 - count                        */
+	l.sfgtsi r6,0x0			/* if count >= 32                         */
+	l.bnf more_than_32		/* branch to more_than_32                 */
+	l.nop 0x0
+
+
+ less_than_32:
+	l.sll r6,r3,r6			/* r6 gets the bits moved from MSW to LSW */
+	l.srl r4,r4,r5			/* shift LSW                              */
+	l.sra r5,r3,r5			/* shift MSW to r5                        */
+	l.or r4,r6,r4			/* LSW gets bits shifted from MSW         */
+	l.ori r3,r5,0x0			/* r3 = MSW                               */
+
+ out:
+	l.ori r11,r3,0x0
+	l.jr r9
+	l.ori r12,r4,0x0
+
+ more_than_32:
+	l.srai r5,r3,0x1f		/* r5 = MSW sign extended                 */
+	l.sub r4,r0,r6			/* r4 = -r6, the number of bits above 32  */
+	l.sra r4,r3,r4			/* LSW gets bits shifted from MSB         */
+	l.j out				/* go out                                 */
+	l.ori r3,r5,0x0			/* r3 = MSW                               */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
