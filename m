Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAe7k-0002NG-3I
 for barebox@lists.infradead.org; Sun, 09 Sep 2012 09:48:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  9 Sep 2012 11:47:55 +0200
Message-Id: <1347184076-15238-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347184076-15238-1-git-send-email-s.hauer@pengutronix.de>
References: <1347184076-15238-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: Add assembler function to get runtime offset
To: barebox@lists.infradead.org

This function returns the offset between the address barebox is linked at
and the address barebox is currently running at.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h |    1 +
 arch/arm/lib/Makefile              |    2 ++
 arch/arm/lib/runtime-offset.S      |   16 ++++++++++++++++
 3 files changed, 19 insertions(+)
 create mode 100644 arch/arm/lib/runtime-offset.S

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index b880dd4..3639365 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -42,5 +42,6 @@ extern char __ll_return[];
 void board_init_lowlevel(void);
 void board_init_lowlevel_return(void);
 void arch_init_lowlevel(void);
+uint32_t get_runtime_offset(void);
 
 #endif	/* _BAREBOX_ARM_H_ */
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 9d0ff7a..2e624cd 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -16,6 +16,8 @@ obj-y	+= lib1funcs.o
 obj-y	+= ashrdi3.o
 obj-y	+= ashldi3.o
 obj-y	+= lshrdi3.o
+obj-y	+= runtime-offset.o
+pbl-y	+= runtime-offset.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
diff --git a/arch/arm/lib/runtime-offset.S b/arch/arm/lib/runtime-offset.S
new file mode 100644
index 0000000..00d756d
--- /dev/null
+++ b/arch/arm/lib/runtime-offset.S
@@ -0,0 +1,16 @@
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+/*
+ * Get the offset between the link address and the address
+ * we are currently running at.
+ */
+ENTRY(get_runtime_offset)
+1:	adr r0, 1b
+	ldr r1, linkadr
+	subs r0, r1, r0
+	mov pc, lr
+
+linkadr:
+.word get_runtime_offset
+ENDPROC(get_runtime_offset)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
