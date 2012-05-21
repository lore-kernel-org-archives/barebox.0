Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWNVh-0001vQ-DW
 for barebox@lists.infradead.org; Mon, 21 May 2012 07:58:34 +0000
Received: by bkwj4 with SMTP id j4so4844318bkw.36
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 00:58:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 May 2012 11:58:22 +0400
Message-Id: <1337587102-16581-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: remove unused processor-specific constants and macros
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/asm.h      |    8 --------
 arch/mips/include/asm/mipsregs.h |   32 --------------------------------
 2 files changed, 40 deletions(-)

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 608cfcf..12e1758 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -398,12 +398,4 @@ symbol		=	value
 
 #define SSNOP		sll zero, zero, 1
 
-#ifdef CONFIG_SGI_IP28
-/* Inhibit speculative stores to volatile (e.g.DMA) or invalid addresses. */
-#include <asm/cacheops.h>
-#define R10KCBARRIER(addr)  cache   Cache_Barrier, addr;
-#else
-#define R10KCBARRIER(addr)
-#endif
-
 #endif /* __ASM_ASM_H */
diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index befccbb..16ba38e 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -102,11 +102,6 @@
 #define CP0_S3_SRSMAP	  $12	/* MIPSR2 */
 
 /*
- *  TX39 Series
- */
-#define CP0_TX39_CACHE	$7
-
-/*
  * Coprocessor 1 (FPU) register names
  */
 #define CP1_REVISION   $0
@@ -387,27 +382,6 @@
 #define R5K_CONF_SE		(_ULCAST_(1) << 12)
 #define R5K_CONF_SS		(_ULCAST_(3) << 20)
 
-/* Bits specific to the RM7000.  */
-#define RM7K_CONF_SE		(_ULCAST_(1) <<  3)
-#define RM7K_CONF_TE		(_ULCAST_(1) << 12)
-#define RM7K_CONF_CLK		(_ULCAST_(1) << 16)
-#define RM7K_CONF_TC		(_ULCAST_(1) << 17)
-#define RM7K_CONF_SI		(_ULCAST_(3) << 20)
-#define RM7K_CONF_SC		(_ULCAST_(1) << 31)
-
-/* Bits specific to the R10000.  */
-#define R10K_CONF_DN		(_ULCAST_(3) <<  3)
-#define R10K_CONF_CT		(_ULCAST_(1) <<  5)
-#define R10K_CONF_PE		(_ULCAST_(1) <<  6)
-#define R10K_CONF_PM		(_ULCAST_(3) <<  7)
-#define R10K_CONF_EC		(_ULCAST_(15)<<  9)
-#define R10K_CONF_SB		(_ULCAST_(1) << 13)
-#define R10K_CONF_SK		(_ULCAST_(1) << 14)
-#define R10K_CONF_SS		(_ULCAST_(7) << 16)
-#define R10K_CONF_SC		(_ULCAST_(7) << 19)
-#define R10K_CONF_DC		(_ULCAST_(7) << 26)
-#define R10K_CONF_IC		(_ULCAST_(7) << 29)
-
 /* Bits specific to the R30xx.  */
 #define R30XX_CONF_FDM		(_ULCAST_(1) << 19)
 #define R30XX_CONF_REV		(_ULCAST_(1) << 22)
@@ -419,12 +393,6 @@
 #define R30XX_CONF_SB		(_ULCAST_(1) << 30)
 #define R30XX_CONF_LOCK		(_ULCAST_(1) << 31)
 
-/* Bits specific to the TX49.  */
-#define TX49_CONF_DC		(_ULCAST_(1) << 16)
-#define TX49_CONF_IC		(_ULCAST_(1) << 17)  /* conflict with CONF_SC */
-#define TX49_CONF_HALT		(_ULCAST_(1) << 18)
-#define TX49_CONF_CWFON		(_ULCAST_(1) << 27)
-
 /* Bits specific to the MIPS32/64 PRA.  */
 #define MIPS_CONF_MT		(_ULCAST_(7) <<  7)
 #define MIPS_CONF_AR		(_ULCAST_(7) << 10)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
