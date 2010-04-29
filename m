Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O7OXj-0008Dj-QZ
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 07:52:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Apr 2010 09:52:05 +0200
Message-Id: <1272527535-17527-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
References: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/17] ARM: Add get_cr/set_cr functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/system.h |   72 +++++++++++++++++++++++++++++++++++++++++
 1 files changed, 72 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/include/asm/system.h

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
new file mode 100644
index 0000000..77d6305
--- /dev/null
+++ b/arch/arm/include/asm/system.h
@@ -0,0 +1,72 @@
+#ifndef __ASM_ARM_SYSTEM_H
+#define __ASM_ARM_SYSTEM_H
+
+#if __LINUX_ARM_ARCH__ >= 7
+#define isb() __asm__ __volatile__ ("isb" : : : "memory")
+#define dsb() __asm__ __volatile__ ("dsb" : : : "memory")
+#define dmb() __asm__ __volatile__ ("dmb" : : : "memory")
+#elif defined(CONFIG_CPU_XSC3) || __LINUX_ARM_ARCH__ == 6
+#define isb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c5, 4" \
+                                    : : "r" (0) : "memory")
+#define dsb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 4" \
+                                    : : "r" (0) : "memory")
+#define dmb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 5" \
+                                    : : "r" (0) : "memory")
+#elif defined(CONFIG_CPU_FA526)
+#define isb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c5, 4" \
+                                    : : "r" (0) : "memory")
+#define dsb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 4" \
+                                    : : "r" (0) : "memory")
+#define dmb() __asm__ __volatile__ ("" : : : "memory")
+#else
+#define isb() __asm__ __volatile__ ("" : : : "memory")
+#define dsb() __asm__ __volatile__ ("mcr p15, 0, %0, c7, c10, 4" \
+                                    : : "r" (0) : "memory")
+#define dmb() __asm__ __volatile__ ("" : : : "memory")
+#endif
+
+/*
+ * CR1 bits (CP#15 CR1)
+ */
+#define CR_M    (1 << 0)	/* MMU enable				*/
+#define CR_A    (1 << 1)	/* Alignment abort enable		*/
+#define CR_C    (1 << 2)	/* Dcache enable			*/
+#define CR_W    (1 << 3)	/* Write buffer enable			*/
+#define CR_P    (1 << 4)	/* 32-bit exception handler		*/
+#define CR_D    (1 << 5)	/* 32-bit data address range		*/
+#define CR_L    (1 << 6)	/* Implementation defined		*/
+#define CR_B    (1 << 7)	/* Big endian				*/
+#define CR_S    (1 << 8)	/* System MMU protection		*/
+#define CR_R    (1 << 9)	/* ROM MMU protection			*/
+#define CR_F    (1 << 10)	/* Implementation defined		*/
+#define CR_Z    (1 << 11)	/* Implementation defined		*/
+#define CR_I    (1 << 12)	/* Icache enable			*/
+#define CR_V    (1 << 13)	/* Vectors relocated to 0xffff0000	*/
+#define CR_RR   (1 << 14)	/* Round Robin cache replacement	*/
+#define CR_L4   (1 << 15)	/* LDR pc can set T bit			*/
+#define CR_DT   (1 << 16)
+#define CR_IT   (1 << 18)
+#define CR_ST   (1 << 19)
+#define CR_FI   (1 << 21)	/* Fast interrupt (lower latency mode)	*/
+#define CR_U    (1 << 22)	/* Unaligned access operation		*/
+#define CR_XP   (1 << 23)	/* Extended page tables			*/
+#define CR_VE   (1 << 24)	/* Vectored interrupts			*/
+#define CR_EE   (1 << 25)	/* Exception (Big) Endian		*/
+#define CR_TRE  (1 << 28)	/* TEX remap enable			*/
+#define CR_AFE  (1 << 29)	/* Access flag enable			*/
+#define CR_TE   (1 << 30)	/* Thumb exception enable		*/
+
+static inline unsigned int get_cr(void)
+{
+	unsigned int val;
+	asm("mrc p15, 0, %0, c1, c0, 0  @ get CR" : "=r" (val) : : "cc");
+	return val;
+}
+
+static inline void set_cr(unsigned int val)
+{
+	asm volatile("mcr p15, 0, %0, c1, c0, 0 @ set CR"
+	  : : "r" (val) : "cc");
+	isb();
+}
+#endif /* __ASM_ARM_SYSTEM_H */
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
