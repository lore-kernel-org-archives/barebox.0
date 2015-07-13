Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEXK3-0006P6-3s
 for barebox@lists.infradead.org; Mon, 13 Jul 2015 06:34:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jul 2015 08:34:16 +0200
Message-Id: <1436769256-19384-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: omap: xload: Fix func uninitialized warning
To: Barebox List <barebox@lists.infradead.org>

When doing USB boot without having it enabled in the config func is used
unitialized. Explicitly set this to NULL so that booting fails in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/xload.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 4a0714e..a013717 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -293,6 +293,7 @@ static __noreturn int omap_xload(void)
 			func = omap4_xload_boot_usb();
 		} else {
 			printf("booting from USB not enabled\n");
+			func = NULL;
 		}
 		break;
 	case BOOTSOURCE_NAND:
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
