Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSibg-00034R-ID
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 13:13:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gSibQ-0003ku-3f
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 14:13:04 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Nov 2018 14:13:02 +0100
Message-Id: <20181130131303.2934-5-l.stach@pengutronix.de>
In-Reply-To: <20181130131303.2934-1-l.stach@pengutronix.de>
References: <20181130131303.2934-1-l.stach@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: add prototype for mmu_early_disable
To: barebox@lists.infradead.org

This is only provided by aarch64 for now and not actually used, but
raher than deleting this potentially useful chunk of code, just
provide the prototype to shut up the warning.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/include/asm/mmu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 99833ac5b40f..417808bfcce1 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -56,5 +56,6 @@ void __dma_inv_range(unsigned long, unsigned long);
 
 void mmu_early_enable(unsigned long membase, unsigned long memsize,
 		      unsigned long ttb);
+void mmu_early_disable(void);
 
 #endif /* __ASM_MMU_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
