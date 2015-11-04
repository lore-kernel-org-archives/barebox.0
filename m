Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zu6MV-0005Xu-1n
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 22:17:00 +0000
Received: by lbbes7 with SMTP id es7so22789149lbb.2
 for <barebox@lists.infradead.org>; Wed, 04 Nov 2015 14:16:37 -0800 (PST)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Wed,  4 Nov 2015 23:16:33 +0100
Message-Id: <1446675393-402-3-git-send-email-anton.bondarenko.sama@gmail.com>
In-Reply-To: <1446675393-402-1-git-send-email-anton.bondarenko.sama@gmail.com>
References: <1446675393-402-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH v2 2/2] images: Embedsky E9: use image name like the rest of
 boards
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

Use name similar to other boards thus remove freescale from image
name since this is not a Freescale board, move SoC type after
company name.

So image name changed from barebox-freescale-imx6q-embedsky-e9.img to
barebox-embedsky-imx6q-e9.img

Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
---
 images/Makefile.imx | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index c33b153..f576ee7 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -254,8 +254,8 @@ image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom.img
 
 pblx-$(CONFIG_MACH_EMBEDSKY_E9) += start_imx6q_embedsky_e9
 CFG_start_imx6q_embedsky_e9.pblx.imximg = $(board)/embedsky-e9/flash-header-e9.imxcfg
-FILE_barebox-freescale-imx6q-embedsky-e9.img = start_imx6q_embedsky_e9.pblx.imximg
-image-$(CONFIG_MACH_EMBEDSKY_E9) += barebox-freescale-imx6q-embedsky-e9.img
+FILE_barebox-embedsky-imx6q-e9.img = start_imx6q_embedsky_e9.pblx.imximg
+image-$(CONFIG_MACH_EMBEDSKY_E9) += barebox-embedsky-imx6q-e9.img
 
 pblx-$(CONFIG_MACH_EMBEST_RIOTBOARD) += start_imx6s_riotboard
 CFG_start_imx6s_riotboard.pblx.imximg = $(board)/embest-riotboard/flash-header-embest-riotboard.imxcfg
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
