Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewos7-00068A-UY
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:52:47 +0100
Message-Id: <20180316125354.23462-12-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/78] ARM: shutdown: Fix compiler warning
To: Barebox List <barebox@lists.infradead.org>

On aarch64 we get a unused variable warning. Move the variable
declaration into the #ifdef where the variable is used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index bf604fd60d..0e70a23260 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -89,6 +89,22 @@ void mmu_disable(void)
 }
 #endif
 
+static void disable_interrupts(void)
+{
+#if __LINUX_ARM_ARCH__ <= 7
+	uint32_t r;
+
+	/*
+	 * barebox normally does not use interrupts, but some functionalities
+	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
+	 * disabled before exiting.
+	 */
+	__asm__ __volatile__("mrs %0, cpsr" : "=r"(r));
+	r |= PSR_I_BIT;
+	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
+#endif
+}
+
 /**
  * Disable MMU and D-cache, flush caches
  * @return 0 (always)
@@ -98,23 +114,13 @@ void mmu_disable(void)
  */
 static void arch_shutdown(void)
 {
-	uint32_t r;
 
 #ifdef CONFIG_MMU
 	mmu_disable();
 #endif
 	icache_invalidate();
 
-#if __LINUX_ARM_ARCH__ <= 7
-	/*
-	 * barebox normally does not use interrupts, but some functionalities
-	 * (eg. OMAP4_USBBOOT) require them enabled. So be sure interrupts are
-	 * disabled before exiting.
-	 */
-	__asm__ __volatile__("mrs %0, cpsr" : "=r"(r));
-	r |= PSR_I_BIT;
-	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
-#endif
+	disable_interrupts();
 }
 archshutdown_exitcall(arch_shutdown);
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
