Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGQAR-00017S-S5
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 12:25:08 +0000
Received: by mail-wm0-x242.google.com with SMTP id 187so4571298wmz.1
 for <barebox@lists.infradead.org>; Fri, 24 Jun 2016 05:24:42 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Fri, 24 Jun 2016 14:23:52 +0200
Message-Id: <1466771041-89803-6-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v3 05/14] arm: include: system: add arm64 helper functions
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/include/asm/system.h | 46 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index b118a42..57c7618 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -3,7 +3,11 @@
 
 #if __LINUX_ARM_ARCH__ >= 7
 #define isb() __asm__ __volatile__ ("isb" : : : "memory")
+#ifdef CONFIG_CPU_64v8
+#define dsb() __asm__ __volatile__ ("dsb sy" : : : "memory")
+#else
 #define dsb() __asm__ __volatile__ ("dsb" : : : "memory")
+#endif
 #define dmb() __asm__ __volatile__ ("dmb" : : : "memory")
 #elif defined(CONFIG_CPU_XSC3) || __LINUX_ARM_ARCH__ == 6
 #define isb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c5, 4" \
@@ -57,17 +61,58 @@
 #define CR_TE   (1 << 30)	/* Thumb exception enable		*/
 
 #ifndef __ASSEMBLY__
+#if __LINUX_ARM_ARCH__ >= 7
+static inline unsigned int current_el(void)
+{
+	unsigned int el;
+	asm volatile("mrs %0, CurrentEL" : "=r" (el) : : "cc");
+	return el >> 2;
+}
+
+static inline unsigned long read_mpidr(void)
+{
+	unsigned long val;
+
+	asm volatile("mrs %0, mpidr_el1" : "=r" (val));
+
+	return val;
+}
+#endif
 static inline unsigned int get_cr(void)
 {
 	unsigned int val;
+
+#ifdef CONFIG_CPU_64v8
+	unsigned int el = current_el();
+	if (el == 1)
+		asm volatile("mrs %0, sctlr_el1" : "=r" (val) : : "cc");
+	else if (el == 2)
+		asm volatile("mrs %0, sctlr_el2" : "=r" (val) : : "cc");
+	else
+		asm volatile("mrs %0, sctlr_el3" : "=r" (val) : : "cc");
+#else
 	asm volatile ("mrc p15, 0, %0, c1, c0, 0  @ get CR" : "=r" (val) : : "cc");
+#endif
+
 	return val;
 }
 
 static inline void set_cr(unsigned int val)
 {
+#ifdef CONFIG_CPU_64v8
+	unsigned int el;
+
+	el = current_el();
+	if (el == 1)
+		asm volatile("msr sctlr_el1, %0" : : "r" (val) : "cc");
+	else if (el == 2)
+		asm volatile("msr sctlr_el2, %0" : : "r" (val) : "cc");
+	else
+		asm volatile("msr sctlr_el3, %0" : : "r" (val) : "cc");
+#else
 	asm volatile("mcr p15, 0, %0, c1, c0, 0 @ set CR"
 	  : : "r" (val) : "cc");
+#endif
 	isb();
 }
 
@@ -90,7 +135,6 @@ static inline void set_vbar(unsigned int vbar)
 static inline unsigned int get_vbar(void) { return 0; }
 static inline void set_vbar(unsigned int vbar) {}
 #endif
-
 #endif
 
 #endif /* __ASM_ARM_SYSTEM_H */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
