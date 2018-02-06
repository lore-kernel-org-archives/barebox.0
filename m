Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ej2pS-0008W6-Na
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 12:58:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ej2pE-0007gO-LA
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 13:58:16 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  6 Feb 2018 13:58:16 +0100
Message-Id: <20180206125816.20353-1-l.stach@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: add file for HYP mode related setup
To: barebox@lists.infradead.org

---
 arch/arm/cpu/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 537fe5b9bb8d..f86dff975bb4 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -10,9 +10,9 @@ obj-$(CONFIG_MMU) += mmu.o mmu-early.o
 pbl-$(CONFIG_MMU) += mmu-early.o
 lwl-y += lowlevel.o
 obj-y += hyp.o
-AFLAGS_hyp.o :=-Wa,-march=armv7-a
+AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 pbl-y += hyp.o
-AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a
+AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 endif
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
