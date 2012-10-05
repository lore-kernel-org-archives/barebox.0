Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKGSe-0005Mr-2G
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 22:33:36 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so1242132wgb.18
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 15:33:35 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sat,  6 Oct 2012 00:33:06 +0200
Message-Id: <1349476393-25520-5-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 04/11] ARM: ensure irqs are disabled
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>


Signed-off-by: vj <vicencb@gmail.com>
---
 arch/arm/cpu/cpu.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 87ba877..45c3a90 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -85,6 +85,12 @@ void arch_shutdown(void)
 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
 	);
 #endif
+	/*
+	 * barebox normally does not use interrupts, but some functionalities
+	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
+	 * disabled before exiting.
+	 */
+	__asm__ __volatile__ ("cpsid i\n");
 }
 
 #ifdef CONFIG_THUMB2_BAREBOX
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
