Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-f66.google.com ([74.125.82.66])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIAmI-0003VN-8M
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 08:23:23 +0000
Received: by mail-wm0-f66.google.com with SMTP id c82so12404644wme.3
 for <barebox@lists.infradead.org>; Wed, 29 Jun 2016 01:23:01 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Wed, 29 Jun 2016 10:22:16 +0200
Message-Id: <1467188540-76509-10-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1467188540-76509-1-git-send-email-poggi.raph@gmail.com>
References: <1467188540-76509-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v4 09/13] arm: cpu: disable code portion in armv8 case
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Enclosed by #if directive OMAP specific code
and mmu_disable (ARMv8 code will implemented it somewhere else).

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/cpu/cpu.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index eb12166..cc54324 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -68,6 +68,7 @@ int icache_status(void)
 	return (get_cr () & CR_I) != 0;
 }
 
+#if __LINUX_ARM_ARCH__ <= 7
 /*
  * SoC like the ux500 have the l2x0 always enable
  * with or without MMU enable
@@ -86,6 +87,7 @@ void mmu_disable(void)
 	}
 	__mmu_cache_off();
 }
+#endif
 
 /**
  * Disable MMU and D-cache, flush caches
@@ -100,6 +102,8 @@ static void arch_shutdown(void)
 
 	mmu_disable();
 	flush_icache();
+
+#if __LINUX_ARM_ARCH__ <= 7
 	/*
 	 * barebox normally does not use interrupts, but some functionalities
 	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
@@ -108,6 +112,7 @@ static void arch_shutdown(void)
 	__asm__ __volatile__("mrs %0, cpsr" : "=r"(r));
 	r |= PSR_I_BIT;
 	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
+#endif
 }
 archshutdown_exitcall(arch_shutdown);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
