Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC7B-0003fJ-Nb
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:38:59 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:38:42 +0100
Message-Id: <1363282729-18545-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
References: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 03/10] ARM i.MX bootsource: imx_25_35_boot_save_loc: remove
 leftover do-nothing code
To: barebox@lists.infradead.org

This patch removes some code leftover from:
    a029e32 ARM i.MX: rework bootsource setting
which is now a no-op.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 068fa22..37f1180 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -96,16 +96,11 @@ static const enum imx_bootsource locations[4][4] = {
  */
 void imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 {
-	const char *bareboxloc = NULL;
 	enum imx_bootsource src;
 
 	src = locations[ctrl][type];
 
 	imx_set_bootsource(src);
-	if (bareboxloc) {
-		setenv("barebox_loc", bareboxloc);
-		export("barebox_loc");
-	}
 }
 
 #define IMX27_SYSCTRL_GPCR	0x18
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
