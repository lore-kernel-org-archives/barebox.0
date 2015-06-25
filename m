Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8Buh-00013R-AV
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 18:30:17 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Jun 2015 20:29:13 +0200
Message-Id: <1435256953-7307-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1435256953-7307-1-git-send-email-dev@lynxeye.de>
References: <1435256953-7307-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH repost 4/4] ARM: pxa: move lubbock TEXTBASE to Kconfig
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

So we can drop it from the defconfig and stop bothering
the user with this choice by default.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/configs/lubbock_defconfig | 1 -
 arch/arm/mach-pxa/Kconfig          | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/lubbock_defconfig b/arch/arm/configs/lubbock_defconfig
index bf04fa3..224854c 100644
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
index 610fb1c..2b7f631 100644
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
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
