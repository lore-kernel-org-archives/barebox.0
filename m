Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwek5-0003kr-GJ
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 18:01:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Mar 2011 19:01:08 +0100
Message-Id: <1299520868-30775-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1299520868-30775-1-git-send-email-s.hauer@pengutronix.de>
References: <1299520868-30775-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: use memalign to allocate page table
To: barebox@lists.infradead.org

We have the proper function for getting aligned memory, so use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index df664f6..7b5686b 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -31,8 +31,7 @@ void mmu_init(void)
 {
 	int i;
 
-	ttb = xzalloc(0x8000);
-	ttb = (void *)(((unsigned long)ttb + 0x4000) & ~0x3fff);
+	ttb = memalign(0x10000, 0x4000);
 
 	/* Set the ttb register */
 	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
