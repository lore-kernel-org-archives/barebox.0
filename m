Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGQAW-00018U-LR
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 12:25:12 +0000
Received: by mail-wm0-x241.google.com with SMTP id 187so4571890wmz.1
 for <barebox@lists.infradead.org>; Fri, 24 Jun 2016 05:24:48 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Fri, 24 Jun 2016 14:23:57 +0200
Message-Id: <1466771041-89803-11-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1466771041-89803-1-git-send-email-poggi.raph@gmail.com>
References: <1466771041-89803-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v3 10/14] arm: cpu: disable code portion in armv8 case
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
