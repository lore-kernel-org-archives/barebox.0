Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp45.i.mail.ru ([94.100.177.105])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThEHm-0004JZ-EJ
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 06:53:19 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  8 Dec 2012 10:51:20 +0400
Message-Id: <1354949486-12917-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
References: <1354949486-12917-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/8] Remove bad Kconfig reference to HAS_CFI
To: barebox@lists.infradead.org

Barebox not contain symbol HAS_CFI, so remove all references to it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-netx/Kconfig    |    1 -
 arch/arm/mach-pxa/Kconfig     |    1 -
 arch/ppc/mach-mpc5xxx/Kconfig |    1 -
 3 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-netx/Kconfig b/arch/arm/mach-netx/Kconfig
index b9e3457..b767e54 100644
--- a/arch/arm/mach-netx/Kconfig
+++ b/arch/arm/mach-netx/Kconfig
@@ -45,7 +45,6 @@ choice
 config MACH_NXDB500
 	bool "Hilscher Netx nxdb500"
 	select HAS_NETX_ETHER
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Hilscher Netx nxdb500 board
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 029fd8b..6671da9 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -42,7 +42,6 @@ config MACH_MIOA701
 
 config MACH_PCM027
 	bool "Phytec phyCORE-PXA270"
-	select HAS_CFI
 	select MACH_HAS_LOWLEVEL_INIT
 	select HAVE_MMU
 	help
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index db001d7..34254eb 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -17,7 +17,6 @@ choice
 
 config MACH_PHYCORE_MPC5200B_TINY
 	bool "Phycore mpc5200b tiny"
-	select HAS_CFI
 	help
 	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
 	  board aka pcm030.
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
