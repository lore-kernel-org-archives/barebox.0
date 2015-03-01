Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS6RL-0004Qv-MN
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 16:10:00 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p4FD7E534.dip0.t-ipconnect.de [79.215.229.52])
 by lynxeye.de (Postfix) with ESMTPA id 90A2726C2001
 for <barebox@lists.infradead.org>; Sun,  1 Mar 2015 17:09:05 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  1 Mar 2015 17:08:54 +0100
Message-Id: <1425226134-4000-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: Kconfig: remove stale option CPU_V7_DCACHE_SKIP
To: barebox@lists.infradead.org

I stumbled across this option a few times already and always found it
to be at least confusing when and why it should be enabled.

Since commit b7451329b5d2 (ARM: OMAP3: invalidate L2 cache using ROM API)
it is actually unused and only adds confusion. Better remove it.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/Kconfig | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f682803bf1da..9b6c626dfbd1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -298,14 +298,6 @@ endmenu
 
 menu "ARM specific settings"
 
-config CPU_V7_DCACHE_SKIP
-	bool "Skip DCache Invalidate"
-	depends on CPU_V7
-	default n
-	help
-	  If your architecture configuration uses some other method of disabling caches, enable this
-	  So that the D-Cache invalidation logic is skipped
-
 config ARM_OPTIMZED_STRING_FUNCTIONS
 	bool "use assembler optimized string functions"
 	help
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
