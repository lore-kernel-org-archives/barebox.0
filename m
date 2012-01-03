Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RhwaQ-0006R8-IF
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 05:07:02 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 71981DC3395
 for <barebox@lists.infradead.org>; Tue,  3 Jan 2012 06:07:56 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  3 Jan 2012 06:00:49 +0100
Message-Id: <1325566850-24432-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
References: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/6] ARM: add ARM_EXCEPTION_VECTOR6 options
To: barebox@lists.infradead.org

to pass the bare_init or barebox size via the vector 6

ARM_EXCEPTION_VECTOR6_BARE_INIT_SIZE    bare_init size
ARM_EXCEPTION_VECTOR6_SIZE              barebox size

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig     |   11 +++++++++++
 arch/arm/cpu/start.c |   14 ++++++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b600179..49445fb 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -26,6 +26,17 @@ config ARM_LINUX
 	default y
 	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
 
+config ARM_EXCEPTION_VECTOR6
+	bool
+
+config ARM_EXCEPTION_VECTOR6_SIZE
+	bool
+	depends on ARM_EXCEPTION_VECTOR6
+
+config  ARM_EXCEPTION_VECTOR6_BARE_INIT_SIZE
+	bool
+	depends on ARM_EXCEPTION_VECTOR6
+
 menu "System Type                   "
 
 choice
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 5e09300..09e80d7 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -27,6 +27,16 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
+#ifdef CONFIG_ARM_EXCEPTION_VECTOR6
+#ifdef CONFIG_ARM_EXCEPTION_VECTOR6_BARE_INIT_SIZE
+#define exception_vector_6	".word _barebox_bare_init_size\n"
+#else
+#define exception_vector_6	".word _barebox_image_size\n"
+#endif
+#else
+#define exception_vector_6	"1: bne 1b\n"
+#endif
+
 void __naked __section(.text_entry) exception_vectors(void)
 {
 	__asm__ __volatile__ (
@@ -36,7 +46,7 @@ void __naked __section(.text_entry) exception_vectors(void)
 		"ldr pc, =software_interrupt\n"		/* software interrupt (SWI) */
 		"ldr pc, =prefetch_abort\n"		/* prefetch abort */
 		"ldr pc, =data_abort\n"			/* data abort */
-		"1: bne 1b\n"				/* (reserved) */
+		exception_vector_6			/* (reserved) */
 		"ldr pc, =irq\n"			/* irq (interrupt) */
 		"ldr pc, =fiq\n"			/* fiq (fast interrupt) */
 #else
@@ -44,7 +54,7 @@ void __naked __section(.text_entry) exception_vectors(void)
 		"1: bne 1b\n"				/* software interrupt (SWI) */
 		"1: bne 1b\n"				/* prefetch abort */
 		"1: bne 1b\n"				/* data abort */
-		"1: bne 1b\n"				/* (reserved) */
+		exception_vector_6			/* (reserved) */
 		"1: bne 1b\n"				/* irq (interrupt) */
 		"1: bne 1b\n"				/* fiq (fast interrupt) */
 #endif
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
