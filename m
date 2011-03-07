Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwek5-0003kq-GO
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 18:01:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Mar 2011 19:01:07 +0100
Message-Id: <1299520868-30775-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM v7: Fix typos in cache-armv7.S
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cache-armv7.S |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 538ab28..5b8491e 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -47,7 +47,7 @@ ENTRY(__mmu_cache_off)
 		mcr	p15, 0, r0, c7, c10, 4	@ DSB
 		mcr	p15, 0, r0, c7, c5, 4	@ ISB
 		mov	pc, r12
-ENDPROC(__mmu_cache_on)
+ENDPROC(__mmu_cache_off)
 
 __BARE_INIT
 ENTRY(__mmu_cache_flush)
@@ -97,7 +97,7 @@ skip:
 		bgt	loop1
 finished:
 		ldmfd	sp!, {r0-r7, r9-r11}
-		mov	r10, #0			@ swith back to cache level 0
+		mov	r10, #0			@ switch back to cache level 0
 		mcr	p15, 2, r10, c0, c0, 0	@ select current cache level in cssr
 iflush:
 		mcr	p15, 0, r10, c7, c10, 4	@ DSB
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
