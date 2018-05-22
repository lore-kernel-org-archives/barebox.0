Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKxmf-0001YE-2k
 for barebox@lists.infradead.org; Tue, 22 May 2018 03:16:22 +0000
Received: by mail-pl0-x243.google.com with SMTP id e6-v6so9972176plt.11
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 20:16:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 21 May 2018 20:15:09 -0700
Message-Id: <20180522031510.25505-29-andrew.smirnov@gmail.com>
In-Reply-To: <20180522031510.25505-1-andrew.smirnov@gmail.com>
References: <20180522031510.25505-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 28/29] ARM: mmu: Introduce ARM_TTB_SIZE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Commit 1c33aacf8a247ab45814b43ac0ca903677afffae ("ARM: use memalign to
allocate page table"), reasonalby changed TTB allocation size from
SZ_32K to SZ_16K (TTB's real size), but it also changed alignment from
SZ_16K to SZ_64K for unclear reasons.

Reading various TTBR related ARM documentation it seems that worst
case alignment for it is 16KiB (bits [0, 13 - N] must be zero) which
also matches early TTB allocation code.

Since both early and regular MMU code has to share this paramter,
introduce ARM_TTB_SIZE and use it in both cases for both size and
alignment.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c                 | 2 +-
 arch/arm/include/asm/barebox-arm.h | 8 +++++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 5f82b63ca..a89f420f2 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -469,7 +469,7 @@ static int mmu_init(void)
 			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
 					ttb);
 	} else {
-		ttb = xmemalign(0x10000, 0x4000);
+		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
 	}
 
 	pr_debug("ttb: 0x%p\n", ttb);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index f55c8bb0c..d97f68c54 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -32,6 +32,12 @@
 #include <linux/compiler.h>
 #include <asm/barebox-arm-head.h>
 
+/*
+ * We have a 4GiB address space split into 1MiB sections, with each
+ * section header taking 4 bytes
+ */
+#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
+
 unsigned long get_runtime_offset(void);
 
 /* global_variable_offset() - Access global variables when not running at link address
@@ -117,7 +123,7 @@ static inline unsigned long arm_mem_ttb(unsigned long membase,
 					unsigned long endmem)
 {
 	endmem = arm_mem_stack(membase, endmem);
-	endmem = ALIGN_DOWN(endmem, SZ_16K) - SZ_16K;
+	endmem = ALIGN_DOWN(endmem, ARM_TTB_SIZE) - ARM_TTB_SIZE;
 
 	return endmem;
 }
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
