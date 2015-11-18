Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zz8sZ-0000Ik-DF
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 19:58:56 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBB9.dip0.t-ipconnect.de
 [87.181.251.185]) by lynxeye.de (Postfix) with ESMTPA id D753126C2001
 for <barebox@lists.infradead.org>; Wed, 18 Nov 2015 20:57:58 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 18 Nov 2015 20:57:54 +0100
Message-Id: <1447876675-3291-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] ARM: mx6sx-sabresdb: drop unneeded makefile rules
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/freescale-mx6sx-sabresdb/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile b/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
index cc4078f..01c7a25 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-mx6sx-sabresdb.dcd.o
-extra-y += flash-header-mx6sx-sabresdb.dcd.S flash-header-mx6sx-sabresdb.dcd
+obj-y += board.o
 lwl-y += lowlevel.o
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
