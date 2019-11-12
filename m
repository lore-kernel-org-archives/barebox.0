Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLB-0006ga-BV
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:04 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:55 +0100
Message-Id: <20191112091956.26628-9-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-1-a.fatoum@pengutronix.de>
References: <20191112091956.26628-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/10] ARM: stm32mp: add stm32mp_cpu_lowlevel_init with stack
 set up
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

When barebox is invoked out of the TF-A v2.1, it's started with
sp, r0, r1, r2 all equal to zero. To use the new RAM size calculating
stm32mp1_barebox_entry, we need to have a stack to handle spillage.

Add a stm32mp_cpu_lowlevel_init wrapper around arm_cpu_lowlevel_init,
which additionally configures a 64 byte stack after the end of the
barebox binary. This should be enough to help us through the RAM size
calculation. If not, compression will fail because of data corruption
and stack size can be increased as necessary.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/include/mach/entry.h | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/include/mach/entry.h b/arch/arm/mach-stm32mp/include/mach/entry.h
index 703712a9eea7..92e15b5cf4e3 100644
--- a/arch/arm/mach-stm32mp/include/mach/entry.h
+++ b/arch/arm/mach-stm32mp/include/mach/entry.h
@@ -1,7 +1,18 @@
 #ifndef _STM32MP_MACH_ENTRY_H_
 #define _STM32MP_MACH_ENTRY_H_
 
-#include <linux/compiler.h>
+#include <linux/kernel.h>
+#include <asm/barebox-arm.h>
+
+static __always_inline void stm32mp_cpu_lowlevel_init(void)
+{
+	unsigned long stack_top;
+	arm_cpu_lowlevel_init();
+
+	stack_top = (unsigned long)__image_end + get_runtime_offset() + 64;
+	stack_top = ALIGN(stack_top, 16);
+	arm_setup_stack(stack_top);
+}
 
 void __noreturn stm32mp1_barebox_entry(void *boarddata);
 
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
