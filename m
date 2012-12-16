Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp32.i.mail.ru ([94.100.177.92])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tk8sJ-0004MI-Qb
 for barebox@lists.infradead.org; Sun, 16 Dec 2012 07:43:05 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Dec 2012 11:42:55 +0400
Message-Id: <1355643775-4981-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1355643775-4981-1-git-send-email-shc_work@mail.ru>
References: <1355643775-4981-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] ARM: OMAP: Remove unneeded dependencies for GPMC
To: barebox@lists.infradead.org

ARCH_OMAP2 missing in barebox.
ARCH_OMAP3 and ARCH_OMAP4 is only choice for this target.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-omap/Kconfig |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index e4103e2..d4a4e4b 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -59,7 +59,6 @@ config OMAP3_CLOCK_CONFIG
 config OMAP_GPMC
 	prompt "Support for GPMC configuration"
 	bool
-	depends on (ARCH_OMAP2 || ARCH_OMAP3 || ARCH_OMAP4)
 	default y
 	help
 	  Enable this if you use Texas Instrument's General purpose Memory
-- 
1.7.8.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
