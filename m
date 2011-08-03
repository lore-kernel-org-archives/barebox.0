Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QojQA-000717-84
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 21:56:12 +0000
Received: by fxd20 with SMTP id 20so1727952fxd.36
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 14:56:04 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Wed,  3 Aug 2011 23:55:57 +0200
Message-Id: <1312408558-21782-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH-next] ARM: Fix compilation error.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Fix following error:
arch/arm/include/asm/mmu.h:29:19: error: conflicting types for 'mmu_init'
arch/arm/include/asm/mmu.h:10:6: note: previous declaration of 'mmu_init' was here
arch/arm/include/asm/mmu.h: In function 'mmu_init':
arch/arm/include/asm/mmu.h:31:10: error: 'EINVAL' undeclared (first use in this function)
arch/arm/include/asm/mmu.h:31:10: note: each undeclared identifier is reported only once for each function it appears in

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/include/asm/mmu.h |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 9ebc2cd..a121165 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -26,9 +26,9 @@ unsigned long virt_to_phys(void *virt);
 void *phys_to_virt(unsigned long phys);
 
 #else
-static inline int mmu_init(void)
+inline void mmu_init(void)
 {
-	return -EINVAL;
+
 }
 
 static inline void *dma_alloc_coherent(size_t size)
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
