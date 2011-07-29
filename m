Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmjbn-0005Op-0F
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 09:43:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jul 2011 11:43:46 +0200
Message-Id: <1311932630-5687-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
References: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] ARM l2x0: make init function static inline if l2 is not
	available
To: barebox@lists.infradead.org

So that the ifdeffery can be moved out of the board code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/mmu.h |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index f235448..d96c728 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -60,7 +60,13 @@ static inline void dma_inv_range(unsigned long s, unsigned long e)
 
 #endif
 
+#ifdef CONFIG_CACHE_L2X0
 void __init l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask);
+#else
+static inline void __init l2x0_init(void __iomem *base, __u32 aux_val, __u32 aux_mask)
+{
+}
+#endif
 
 struct outer_cache_fns {
 	void (*inv_range)(unsigned long, unsigned long);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
