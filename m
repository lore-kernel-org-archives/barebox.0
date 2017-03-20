Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpx23-0001Wr-Ia
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 13:07:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cpx1g-0007Bl-Ub
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 14:07:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Mar 2017 14:07:08 +0100
Message-Id: <20170320130708.15741-3-l.stach@pengutronix.de>
In-Reply-To: <20170320130708.15741-1-l.stach@pengutronix.de>
References: <20170320130708.15741-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: mvebu: only build kwbootimage support if BOOTM is
 enabled
To: barebox@lists.infradead.org

As this is the bootm image handler implementation for the kwbootimage
it is of no use if BOOTM is missing and fails to link.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-mvebu/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index fb5c4e6bcd66..89805ba5b186 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -3,4 +3,4 @@ obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
 obj-$(CONFIG_ARCH_KIRKWOOD)	+= kirkwood.o
-obj-y				+= kwbootimage.o
+obj-$(CONFIG_BOOTM)		+= kwbootimage.o
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
