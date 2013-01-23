Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Txws1-0007fa-6C
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 09:43:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Jan 2013 10:43:45 +0100
Message-Id: <1358934225-5101-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM v7: Fix register corruption in v7_mmu_cache_off
To: barebox@lists.infradead.org

v7_mmu_cache_flush stores registers on the stack and restores
them afterwards. Additionally v7_mmu_cache_flush is called
from v7_mmu_cache_off *after* disabling the MMU. With this
the following can happen:

- v7_mmu_cache_off disables the MMU. From now on no new values
  go to the data cache.
- v7_mmu_cache_off calls v7_mmu_cache_flush which in turn puts
  registers on the stack. Due to the MMU being disabled they
  do not go into the data cache.
- In v7_mmu_cache_flush the memory the stack is pointing to is
  overwritten with the values currently being in the cache.
- v7_mmu_cache_flush restores the registers from the stack with
  values from the cache and not the memory where the values have
  previously been written to.

Fix this by storing the registers on the stack *before* we disable
the MMU and restore them after we have called v7_mmu_cache_flush.
This way v7_mmu_cache_flush still restores corrupt register values
for the case when the MMU has been disabled, but we will restore
correct values afterwards.

This has been first observed when switching to gcc-4.7.2 when compiling
in Thumb2 mode, but could explain earlier problems also. The result
here was that the register holding the kernel address in start_linux()
was corrupted so that the kernel could not be started.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv7.S |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 2d68f27..13542d9 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -34,6 +34,7 @@ ENDPROC(v7_mmu_cache_on)
 
 .section .text.v7_mmu_cache_off
 ENTRY(v7_mmu_cache_off)
+		stmfd	sp!, {r0-r7, r9-r11}
 		mrc	p15, 0, r0, c1, c0
 #ifdef CONFIG_MMU
 		bic	r0, r0, #0x000d
@@ -50,6 +51,7 @@ ENTRY(v7_mmu_cache_off)
 		mcr	p15, 0, r0, c7, c5, 6	@ invalidate BTC
 		mcr	p15, 0, r0, c7, c10, 4	@ DSB
 		mcr	p15, 0, r0, c7, c5, 4	@ ISB
+		ldmfd	sp!, {r0-r7, r9-r11}
 		mov	pc, r12
 ENDPROC(v7_mmu_cache_off)
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
