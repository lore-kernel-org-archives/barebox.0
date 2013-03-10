Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEdLj-0004PM-N7
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 10:19:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 10 Mar 2013 11:19:21 +0100
Message-Id: <1362910761-1732-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
References: <1362910761-1732-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: Add missing barebox_arm_boarddata function
To: barebox@lists.infradead.org

The comment above barebox_arm_entry promises to preserve the boarddata
variable passed to it which can then later get back with
barebox_arm_boarddata(). This function was missing so far, add it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c               | 10 ++++++++++
 arch/arm/include/asm/barebox-arm.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index cd34d9c..943fa46 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -30,6 +30,15 @@
 #include "mmu-early.h"
 
 unsigned long arm_stack_top;
+static unsigned long barebox_boarddata;
+
+/*
+ * return the boarddata variable passed to barebox_arm_entry
+ */
+unsigned long barebox_arm_boarddata(void)
+{
+	return barebox_boarddata;
+}
 
 static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
@@ -39,6 +48,7 @@ static noinline __noreturn void __start(uint32_t membase, uint32_t memsize,
 
 	setup_c();
 
+	barebox_boarddata = boarddata;
 	arm_stack_top = endmem;
 	endmem -= STACK_SIZE; /* Stack */
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 9c10e36..f097092 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -41,5 +41,6 @@ uint32_t get_runtime_offset(void);
 
 void setup_c(void);
 void __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize, uint32_t boarddata);
+unsigned long barebox_arm_boarddata(void);
 
 #endif	/* _BAREBOX_ARM_H_ */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
