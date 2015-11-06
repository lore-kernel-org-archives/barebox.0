Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zujpy-00034k-B2
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:26:08 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Zujpb-0000Eo-HJ
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 17:25:39 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  6 Nov 2015 17:25:34 +0100
Message-Id: <1446827139-339-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
References: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/7] ARM: microsom: delete cargo-cult from Makefile
To: barebox@lists.infradead.org

No need to carry this cruft around. It's not needed anymore.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/solidrun-microsom/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boards/solidrun-microsom/Makefile b/arch/arm/boards/solidrun-microsom/Makefile
index 8b4754e1c1ef..01c7a259e9a5 100644
--- a/arch/arm/boards/solidrun-microsom/Makefile
+++ b/arch/arm/boards/solidrun-microsom/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-solidrun-hummingboard.dcd.o
-extra-y += flash-header-solidrun-hummingboard.dcd.S flash-header-solidrun-hummingboard.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
