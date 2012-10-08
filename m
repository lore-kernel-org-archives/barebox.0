Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLMEm-0007PR-Q2
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:55:49 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so2739976wgb.18
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:55:47 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Tue,  9 Oct 2012 00:55:14 +0200
Message-Id: <1349736924-24667-5-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 04/14] ARM: ensure irqs are disabled
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/cpu/cpu.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 87ba877..7991c7a 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -28,6 +28,7 @@
 #include <asm/mmu.h>
 #include <asm/system.h>
 #include <asm/memory.h>
+#include <asm/irqflags.h>
 
 /**
  * Enable processor's instruction cache
@@ -85,6 +86,12 @@ void arch_shutdown(void)
 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 #endif
+	/*
+	 * barebox normally does not use interrupts, but some functionalities
+	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
+	 * disabled before exiting.
+	 */
+	arch_local_irq_disable();
 }
 
 #ifdef CONFIG_THUMB2_BAREBOX
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
