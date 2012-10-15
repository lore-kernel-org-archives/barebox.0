Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNYSZ-0004Cp-Nz
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 00:23:09 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so2886023wey.36
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 17:23:04 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 15 Oct 2012 02:22:37 +0200
Message-Id: <1350260560-15528-4-git-send-email-vicencb@gmail.com>
In-Reply-To: <1350260560-15528-1-git-send-email-vicencb@gmail.com>
References: <1350260560-15528-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 3/6] ARM: ensure irqs are disabled at barebox exit
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/cpu/cpu.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 51da3b5..4cf4efa 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -31,6 +31,7 @@
 #include <asm/system_info.h>
 #include <asm/cputype.h>
 #include <asm/cache.h>
+#include <asm/ptrace.h>
 
 /**
  * Enable processor's instruction cache
@@ -74,10 +75,20 @@ int icache_status(void)
  */
 void arch_shutdown(void)
 {
+	uint32_t r;
+
 #ifdef CONFIG_MMU
 	mmu_disable();
 #endif
 	flush_icache();
+	/*
+	 * barebox normally does not use interrupts, but some functionalities
+	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
+	 * disabled before exiting.
+	 */
+	__asm__ __volatile__("mrs %0, cpsr" : "=r"(r));
+	r |= PSR_I_BIT;
+	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 }
 
 #ifdef CONFIG_THUMB2_BAREBOX
-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
