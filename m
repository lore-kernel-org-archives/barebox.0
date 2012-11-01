Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTpd3-0007HJ-Bg
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 07:55:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 08:55:48 +0100
Message-Id: <1351756548-24640-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
References: <1351756548-24640-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM OMAP3: Put reset() into its own section
To: barebox@lists.infradead.org

Needed so that the linker can throw it away when unused. This is needed
at least on current master for being able to enable pbl support for omap3
boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap3_core.S |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index df7c5b4..c3e4086 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -39,6 +39,7 @@
 #include <asm/barebox-arm-head.h>
 
 #ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
+.section .text.__reset
 ENTRY(reset)
 	/* Invalidate all Dcaches */
 #ifndef CONFIG_CPU_V7_DCACHE_SKIP
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
