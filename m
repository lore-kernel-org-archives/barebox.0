Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jr15Q-00057i-Qp
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 15:25:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jul 2020 17:25:06 +0200
Message-Id: <20200702152507.13694-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200702152507.13694-1-a.fatoum@pengutronix.de>
References: <20200702152507.13694-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] sandbox: specify sizeof(dma_addr_t) ==
 sizeof(phys_addr_t) == 8 on 64BIT
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

sizeof(dma_addr_t) == 8 shouldn't introduce any functional change, because
we can't have DMA on sandbox. For now it suppresses benign warnings about
mismatched pointer and integer sizes when some headers are included.

sizeof(phys_addr_t) == 8 was already the case on systems with
__x86_64__. As CONFIG_64BIT now is set according to the bitness
of the compiler, we can migrate this fully to Kconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig             | 5 +++++
 arch/sandbox/include/asm/elf.h   | 1 -
 arch/sandbox/include/asm/types.h | 6 ------
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 3f10709021a7..40e04919d21e 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -24,6 +24,9 @@ config SANDBOX_UNWIND
 	select ARCH_HAS_STACK_DUMP
 	depends on UBSAN || KASAN
 
+config PHYS_ADDR_T_64BIT
+	bool
+
 config CC_IS_64BIT
 	def_bool $(success,$(srctree)/scripts/gcc-64bitptr.sh $(CC))
 
@@ -34,6 +37,8 @@ config 64BIT
 	bool
 	default n if SANDBOX_LINUX_I386
 	default CC_IS_64BIT
+	select ARCH_DMA_ADDR_T_64BIT
+	select PHYS_ADDR_T_64BIT
 
 config SANDBOX_LINUX_I386
 	bool "32-bit x86 barebox" if CC_HAS_LINUX_I386_SUPPORT
diff --git a/arch/sandbox/include/asm/elf.h b/arch/sandbox/include/asm/elf.h
index 3939336ccba4..e71a60aeb93f 100644
--- a/arch/sandbox/include/asm/elf.h
+++ b/arch/sandbox/include/asm/elf.h
@@ -3,7 +3,6 @@
 
 #if __SIZEOF_POINTER__ == 8
 #define ELF_CLASS	ELFCLASS64
-#define CONFIG_PHYS_ADDR_T_64BIT
 #else
 #define ELF_CLASS	ELFCLASS32
 #endif
diff --git a/arch/sandbox/include/asm/types.h b/arch/sandbox/include/asm/types.h
index 3e4a8f7ba34f..28046670f4e2 100644
--- a/arch/sandbox/include/asm/types.h
+++ b/arch/sandbox/include/asm/types.h
@@ -10,12 +10,6 @@
  */
 #define INTERNAL_SIZE_T unsigned long
 
-/*
- * This is a Kconfig variable in the Kernel, but we want to detect
- * this during compile time, so we set it here.
- */
-#define CONFIG_PHYS_ADDR_T_64BIT
-
 #endif
 
 #endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
