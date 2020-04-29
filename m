Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTfRM-0002cb-Bf
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 05:39:26 +0000
Received: from geraet.fritz.box (i5387567C.versanet.de [83.135.86.124])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 9FCE71BF212
 for <barebox@lists.infradead.org>; Wed, 29 Apr 2020 05:39:22 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 29 Apr 2020 07:39:14 +0200
Message-Id: <20200429053914.4775-5-ahmad@a3f.at>
In-Reply-To: <20200429053914.4775-1-ahmad@a3f.at>
References: <20200429053914.4775-1-ahmad@a3f.at>
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
Subject: [PATCH 5/5] PPC: remove unused left-over Kconfig option
To: barebox@lists.infradead.org

5e50ab4f ("pcm030: cleanup config.h") removed the last reference to
MACH_PHYCORE_MPC5200B_TINY_REV_1 (The current name is a typo), so the
Kconfig option hasn't been serving a purpose for 7 years.  Drop it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/ppc/mach-mpc5xxx/Kconfig | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 180aa32ad12e..4da947dc6cfc 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -34,17 +34,4 @@ config MPC5xxx
 	depends on MACH_PHYCORE_MPC5200B_TINY
 	default y
 
-menu "Board specific settings"
-
-config MACH_PHYCORE_MPC5200B_TINY_REV
-	int "Board Revision"
-	default 1
-	depends on MACH_PHYCORE_MPC5200B_TINY
-	help
-	  Revision 0 and revision 1 of the tiny board have
-	  incompatible flash settings. Unless you have a very
-	  old board you should set this option to 1
-
-endmenu
-
 endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
