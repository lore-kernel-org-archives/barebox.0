Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QstAR-0006Tu-Og
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 09:09:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 11:09:03 +0200
Message-Id: <1313399344-21259-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1313399344-21259-1-git-send-email-s.hauer@pengutronix.de>
References: <1313399344-21259-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM i.MX25/35: initialize barebox_loc earlier
To: barebox@lists.infradead.org

Now that env_push_context is in a coredevice_initcall
we can initialize barebox_loc earlier so that we can
use it inside later initcalls.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c |    8 ++------
 1 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index b4bf93b..8482b60 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -41,7 +41,7 @@
  * Note also that I suspect that the boot source pins are only sampled at
  * power up.
  */
-static int imx_boot_save_loc(void)
+static int imx_25_35_boot_save_loc(void)
 {
 	const char *bareboxloc = NULL;
 	uint32_t reg;
@@ -86,10 +86,6 @@ static int imx_boot_save_loc(void)
 	return 0;
 }
 
-/*
- * This can only be called after env_push_context() has been called
- * so it is a late_initcall.
- */
-late_initcall(imx_boot_save_loc);
+coredevice_initcall(imx_25_35_boot_save_loc);
 
 #endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
