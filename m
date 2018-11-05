Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJgxb-0002rS-Gk
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:38:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gJgxN-0004tM-69
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 16:38:25 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  5 Nov 2018 16:38:24 +0100
Message-Id: <20181105153825.26450-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] fixup! ARM: add file for HYP mode related setup
To: barebox@lists.infradead.org

---
 arch/arm/cpu/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 45de2728d01a..a35db435c1b9 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
 obj-$(CONFIG_MMU) += mmu$(S64).o
 lwl-y += lowlevel$(S64).o
 obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
-obj-pbl-y += hyp.o
+obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
 AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
