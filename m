Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P0BRg-0001wY-Bc
	for barebox@lists.infradead.org; Mon, 27 Sep 2010 11:00:33 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Sep 2010 12:52:17 +0200
Message-Id: <1285584737-28288-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] import __stringify from linux
To: barebox@lists.infradead.org

update the current code

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/ppc/include/asm/processor.h |   12 +++++-------
 include/command.h                |    5 +----
 include/linux/stringify.h        |   12 ++++++++++++
 3 files changed, 18 insertions(+), 11 deletions(-)
 create mode 100644 include/linux/stringify.h

diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index b336f48..9c6f79a 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -9,6 +9,7 @@
 
 #include <asm/ptrace.h>
 #include <asm/types.h>
+#include <linux/stringify.h>
 
 /* Machine State Register (MSR) Fields */
 
@@ -887,22 +888,19 @@ n:
 
 /* Macros for setting and retrieving special purpose registers */
 
-#define stringify(s)	tostring(s)
-#define tostring(s)	#s
-
 #define mfdcr(rn)	({unsigned int rval; \
-			asm volatile("mfdcr %0," stringify(rn) \
+			asm volatile("mfdcr %0," __stringify(rn) \
 				     : "=r" (rval)); rval;})
-#define mtdcr(rn, v)	asm volatile("mtdcr " stringify(rn) ",%0" : : "r" (v))
+#define mtdcr(rn, v)	asm volatile("mtdcr " __stringify(rn) ",%0" : : "r" (v))
 
 #define mfmsr()		({unsigned int rval; \
 			asm volatile("mfmsr %0" : "=r" (rval)); rval;})
 #define mtmsr(v)	asm volatile("mtmsr %0" : : "r" (v))
 
 #define mfspr(rn)	({unsigned int rval; \
-			asm volatile("mfspr %0," stringify(rn) \
+			asm volatile("mfspr %0," __stringify(rn) \
 				     : "=r" (rval)); rval;})
-#define mtspr(rn, v)	asm volatile("mtspr " stringify(rn) ",%0" : : "r" (v))
+#define mtspr(rn, v)	asm volatile("mtspr " __stringify(rn) ",%0" : : "r" (v))
 
 #define tlbie(v)	asm volatile("tlbie %0 \n sync" : : "r" (v))
 
diff --git a/include/command.h b/include/command.h
index a612d65..4a4d9cf 100644
--- a/include/command.h
+++ b/include/command.h
@@ -28,6 +28,7 @@
 #define __COMMAND_H
 
 #include <linux/list.h>
+#include <linux/stringify.h>
 
 #ifndef NULL
 #define NULL	0
@@ -75,10 +76,6 @@ void barebox_cmd_usage(struct command *cmdtp);
 
 #endif	/* __ASSEMBLY__ */
 
-#define __stringify_1(x)	#x
-#define __stringify(x)		__stringify_1(x)
-
-
 #define Struct_Section  __attribute__ ((unused,section (".barebox_cmd")))
 
 #define BAREBOX_CMD_START(_name)				\
diff --git a/include/linux/stringify.h b/include/linux/stringify.h
new file mode 100644
index 0000000..841cec8
--- /dev/null
+++ b/include/linux/stringify.h
@@ -0,0 +1,12 @@
+#ifndef __LINUX_STRINGIFY_H
+#define __LINUX_STRINGIFY_H
+
+/* Indirect stringification.  Doing two levels allows the parameter to be a
+ * macro itself.  For example, compile with -DFOO=bar, __stringify(FOO)
+ * converts to "bar".
+ */
+
+#define __stringify_1(x...)	#x
+#define __stringify(x...)	__stringify_1(x)
+
+#endif	/* !__LINUX_STRINGIFY_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
