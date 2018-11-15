Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gN7th-0005eT-As
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 03:00:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id v1-v6so1613063plo.2
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2018 19:00:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 14 Nov 2018 19:00:24 -0800
Message-Id: <20181115030024.11029-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: Do not build hyp.S for AArch64
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This file is only meant for ARMv7 and trying to build it on ARMv8
results in a build break.

Fixes: baa1aec03 ("ARM: allow secure monitor code to be built without PSCI")
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

I feel like this should really be gated by CONFIG_CPU32v7 since I
think the code in question is ARMv7-only, but I am not
sure. Comments/advise are wellcome.

Thanks,
Andrey Smirnov

 arch/arm/cpu/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 45de2728d..390fa4437 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
 obj-$(CONFIG_MMU) += mmu$(S64).o
 lwl-y += lowlevel$(S64).o
 obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
-obj-pbl-y += hyp.o
+obj-pbl-$(if $(S64),,y) += hyp.o
 AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
