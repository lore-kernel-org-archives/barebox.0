Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yk7V0-00073E-S9
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 08:56:16 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Yk7Ue-00089K-VC
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 10:55:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Apr 2015 10:55:52 +0200
Message-Id: <1429520152-27399-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
References: <1429520152-27399-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: pxa: move lubbock TEXTBASE to Kconfig
To: barebox@lists.infradead.org

So we can drop it from the defconfig and stop bothering
the user with this choice by default.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/configs/lubbock_defconfig | 1 -
 arch/arm/mach-pxa/Kconfig          | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/lubbock_defconfig b/arch/arm/configs/lubbock_defconfig
index bf04fa3b18e1..224854c7cc60 100644
--- a/arch/arm/configs/lubbock_defconfig
+++ b/arch/arm/configs/lubbock_defconfig
@@ -6,7 +6,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 # CONFIG_BANNER is not set
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0xa3d00000
 CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x1000000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 610fb1c80e4d..2b7f631757b7 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -4,6 +4,7 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0000000 if MACH_MIOA701
 	default 0xa3f00000 if MACH_PCM027
+	default 0xa3d00000 if MACH_LUBBOCK
 	default 0x83f00000 if MACH_ZYLONITE
 
 # ----------------------------------------------------------
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
