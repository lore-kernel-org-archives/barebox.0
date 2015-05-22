Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBD-0003Gc-Q6
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:10:58 +0200
Message-Id: <1432275071-28554-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
References: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] dma: Use generic place for dma_addr_t typedef
To: Barebox List <barebox@lists.infradead.org>

Instead of letting all architectures define their own dma_addr_t use
a common place in include/linux/types.h and use a Kconfig symbol that
architectures can select to define the width of dma_addr_t. The same
is done in the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/types.h      |  5 -----
 arch/blackfin/include/asm/types.h |  4 ----
 arch/efi/include/asm/types.h      |  4 ----
 arch/mips/Kconfig                 |  1 +
 arch/mips/include/asm/types.h     | 12 ------------
 arch/nios2/include/asm/types.h    |  3 ---
 arch/openrisc/include/asm/types.h |  4 ----
 arch/ppc/include/asm/types.h      |  3 ---
 arch/sandbox/include/asm/types.h  |  4 ----
 common/Kconfig                    |  3 +++
 include/linux/types.h             |  7 +++++++
 11 files changed, 11 insertions(+), 39 deletions(-)

diff --git a/arch/arm/include/asm/types.h b/arch/arm/include/asm/types.h
index 81bd357..680e824 100644
--- a/arch/arm/include/asm/types.h
+++ b/arch/arm/include/asm/types.h
@@ -47,11 +47,6 @@ typedef unsigned int u32;
 typedef signed long long s64;
 typedef unsigned long long u64;
 
-/* Dma addresses are 32-bits wide.  */
-
-typedef u32 dma_addr_t;
-typedef u32 dma64_addr_t;
-
 #endif /* __ASSEMBLY__ */
 
 #endif /* __KERNEL__ */
diff --git a/arch/blackfin/include/asm/types.h b/arch/blackfin/include/asm/types.h
index 3d2bd35..f1c2dc4 100644
--- a/arch/blackfin/include/asm/types.h
+++ b/arch/blackfin/include/asm/types.h
@@ -69,10 +69,6 @@ typedef unsigned int u32;
 typedef signed long long s64;
 typedef unsigned long long u64;
 
-/* Dma addresses are 32-bits wide. */
-
-typedef u32 dma_addr_t;
-
 #endif
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/efi/include/asm/types.h b/arch/efi/include/asm/types.h
index 3204448..05122ea 100644
--- a/arch/efi/include/asm/types.h
+++ b/arch/efi/include/asm/types.h
@@ -62,10 +62,6 @@ typedef unsigned long long u64;
 #define BITS_PER_LONG 32
 #endif
 
-/* Dma addresses are 32-bits wide.  */
-
-typedef u32 dma_addr_t;
-
 #endif /* __KERNEL__ */
 
 #endif
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index ed6e1ab..aeb5c04 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -269,6 +269,7 @@ config 32BIT
 config 64BIT
 	bool "64-bit barebox"
 	depends on CPU_SUPPORTS_64BIT_KERNEL && SYS_SUPPORTS_64BIT_KERNEL
+	select ARCH_DMA_ADDR_T_64BIT
 	help
 	  Select this option if you want to build a 64-bit barebox.
 
diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
index b63687d..4140c92 100644
--- a/arch/mips/include/asm/types.h
+++ b/arch/mips/include/asm/types.h
@@ -13,18 +13,6 @@
 
 #include <asm-generic/int-ll64.h>
 
-#ifndef __ASSEMBLY__
-
-#if (defined(CONFIG_HIGHMEM) && defined(CONFIG_64BIT_PHYS_ADDR)) \
-    || defined(CONFIG_64BIT)
-typedef u64 dma_addr_t;
-#else
-typedef u32 dma_addr_t;
-#endif
-typedef u64 dma64_addr_t;
-
-#endif /* __ASSEMBLY__ */
-
 /*
  * We don't use int-l64.h for the kernel anymore but still use it for
  * userspace to avoid code changes.
diff --git a/arch/nios2/include/asm/types.h b/arch/nios2/include/asm/types.h
index 21c3415..0067ea8 100644
--- a/arch/nios2/include/asm/types.h
+++ b/arch/nios2/include/asm/types.h
@@ -3,7 +3,4 @@
 
 #include <asm/int-ll64.h>
 
-typedef u32 dma_addr_t;
-
 #endif
-
diff --git a/arch/openrisc/include/asm/types.h b/arch/openrisc/include/asm/types.h
index 3338fcf..cacda42 100644
--- a/arch/openrisc/include/asm/types.h
+++ b/arch/openrisc/include/asm/types.h
@@ -64,10 +64,6 @@ typedef unsigned long long u64;
 
 #define BITS_PER_LONG 32
 
-/* Dma addresses are 32-bits wide.  */
-
-typedef u32 dma_addr_t;
-
 #endif /* __KERNEL__ */
 
 #endif /* _ASM_TYPES_H */
diff --git a/arch/ppc/include/asm/types.h b/arch/ppc/include/asm/types.h
index 4ebbb9e..37ef353 100644
--- a/arch/ppc/include/asm/types.h
+++ b/arch/ppc/include/asm/types.h
@@ -41,9 +41,6 @@ typedef unsigned long long u64;
 
 #define BITS_PER_LONG 32
 
-/* DMA addresses are 32-bits wide */
-typedef u32 dma_addr_t;
-
 #endif /* __KERNEL__ */
 #endif /* __ASSEMBLY__ */
 
diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
index d471d25..8944b47 100644
--- a/arch/sandbox/include/asm/types.h
+++ b/arch/sandbox/include/asm/types.h
@@ -56,10 +56,6 @@ typedef unsigned long long u64;
 
 #define BITS_PER_LONG 32
 
-/* Dma addresses are 32-bits wide.  */
-
-typedef u32 dma_addr_t;
-
 #endif /* __KERNEL__ */
 
 #endif
diff --git a/common/Kconfig b/common/Kconfig
index 1c5d14c..3dfb5ac 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -94,6 +94,9 @@ config EFI_DEVICEPATH
 config FILE_LIST
 	bool
 
+config ARCH_DMA_ADDR_T_64BIT
+	bool
+
 menu "General Settings"
 
 config LOCALVERSION
diff --git a/include/linux/types.h b/include/linux/types.h
index c11e148..9871a66 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -158,6 +158,13 @@ typedef __u32 __bitwise __wsum;
 #define __aligned_be64 __be64 __attribute__((aligned(8)))
 #define __aligned_le64 __le64 __attribute__((aligned(8)))
 
+/* A dma_addr_t can hold any valid DMA or bus address for the platform */
+#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
+typedef u64 dma_addr_t;
+#else
+typedef u32 dma_addr_t;
+#endif /* dma_addr_t */
+
 #ifdef CONFIG_PHYS_ADDR_T_64BIT
 typedef u64 phys_addr_t;
 typedef u64 phys_size_t;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
