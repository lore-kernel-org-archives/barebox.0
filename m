Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f169.google.com ([209.85.212.169])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN2Jn-0006Am-3U
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 14:03:56 +0000
Received: by mail-wi0-f169.google.com with SMTP id hq4so28991wib.0
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 07:03:53 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Sat, 13 Oct 2012 16:03:25 +0200
Message-Id: <1350137007-10135-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
References: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 3/5] ARM: ensure irqs are disabled at barebox exit
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/cpu/cpu.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 51da3b5..2bfd3ed 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -31,6 +31,7 @@
 #include <asm/system_info.h>
 #include <asm/cputype.h>
 #include <asm/cache.h>
+#include <asm/ptrace.h>
 
 /**
  * Enable processor's instruction cache
@@ -78,6 +79,16 @@ void arch_shutdown(void)
 	mmu_disable();
 #endif
 	flush_icache();
+	/*
+	 * barebox normally does not use interrupts, but some functionalities
+	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
+	 * disabled before exiting.
+	 */
+#if __LINUX_ARM_ARCH__ >= 6
+	__asm__ __volatile__("cpsid i");
+#else
+	__asm__ __volatile__("msr cpsr_c, %0" : : "I"(PSR_I_BIT | SVC_MODE));
+#endif
 }
 
 #ifdef CONFIG_THUMB2_BAREBOX
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
