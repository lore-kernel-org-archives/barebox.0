Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008HY-7C
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0003OO-Ru
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0004Cq-Qa
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:02 +0200
Message-Id: <1412691738-11145-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/19] arch/MPC5xxx: replace 'depends on' by 'select'
To: barebox@lists.infradead.org

This change will simplify the addition of new SOCs.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/Kconfig | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 1ecce3a..5eebf2a 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -14,6 +14,7 @@ choice
 
 config MACH_PHYCORE_MPC5200B_TINY
 	bool "Phycore mpc5200b tiny"
+	select MPC5200
 	help
 	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
 	  board aka pcm030.
@@ -21,19 +22,15 @@ endchoice
 
 config MPC5200
 	bool
-	depends on MACH_PHYCORE_MPC5200B_TINY
-	default y
+	select ARCH_MPC5200
 
 config ARCH_MPC5200
 	bool
-	depends on MACH_PHYCORE_MPC5200B_TINY
-	default y
+	select MPC5xxx
 
 config MPC5xxx
 	bool
-	depends on MACH_PHYCORE_MPC5200B_TINY
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-	default y
 
 menu "Board specific settings"
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
