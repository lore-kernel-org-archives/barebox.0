Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIDFl-00037p-AK
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:57:25 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZIBNj-00021X-NX
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 09:57:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 23 Jul 2015 11:56:51 +0200
Message-Id: <1437645413-18057-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1437645413-18057-1-git-send-email-l.stach@pengutronix.de>
References: <1437645413-18057-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: pxa: move mainstone TEXTBASE to Kconfig
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

So we can drop it from the defconfig and stop bothering
the user with this choice by default.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/configs/mainstone_defconfig | 1 -
 arch/arm/mach-pxa/Kconfig            | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/mainstone_defconfig b/arch/arm/configs/mainstone_defconfig
index 946902d200ee..1e735d4a6dbb 100644
--- a/arch/arm/configs/mainstone_defconfig
+++ b/arch/arm/configs/mainstone_defconfig
@@ -7,7 +7,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0xa3d00000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 2b7f631757b7..54094f4ca0ed 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -5,6 +5,7 @@ config ARCH_TEXT_BASE
 	default 0xa0000000 if MACH_MIOA701
 	default 0xa3f00000 if MACH_PCM027
 	default 0xa3d00000 if MACH_LUBBOCK
+	default 0xa3d00000 if MACH_MAINSTONE
 	default 0x83f00000 if MACH_ZYLONITE
 
 # ----------------------------------------------------------
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
