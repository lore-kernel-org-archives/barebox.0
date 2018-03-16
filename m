Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos8-00068L-HE
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 15/78] ARM: aarch64: Add runtime-offset
Date: Fri, 16 Mar 2018 13:52:51 +0100
Message-Id: <20180316125354.23462-16-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib64/Makefile         |  1 +
 arch/arm/lib64/runtime-offset.S | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 arch/arm/lib64/runtime-offset.S

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 4b7b7e3cc5..679ca556e5 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -3,5 +3,6 @@ obj-y	+= div0.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 extra-y += barebox.lds
+obj-pbl-y   += runtime-offset.o
 
 pbl-y	+= div0.o
diff --git a/arch/arm/lib64/runtime-offset.S b/arch/arm/lib64/runtime-offset.S
new file mode 100644
index 0000000000..177ca64784
--- /dev/null
+++ b/arch/arm/lib64/runtime-offset.S
@@ -0,0 +1,19 @@
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+
+.section ".text_bare_init","ax"
+
+/*
+ * Get the offset between the link address and the address
+ * we are currently running at.
+ */
+ENTRY(get_runtime_offset)
+1:	adr x0, 1b
+	ldr x1, linkadr
+	subs x0, x0, x1
+	ret
+
+.align 3
+linkadr:
+.quad get_runtime_offset
+ENDPROC(get_runtime_offset)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
