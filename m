Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mslow2.mail.gandi.net ([217.70.178.242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68rA-0000jf-SP
 for barebox@lists.infradead.org; Mon, 24 Feb 2020 08:12:50 +0000
Received: from relay5-d.mail.gandi.net (unknown [217.70.183.197])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id 70939441365
 for <barebox@lists.infradead.org>; Mon, 24 Feb 2020 08:12:34 +0000 (UTC)
Received: from geraet.fritz.box (muedsl-82-207-211-016.citykom.de
 [82.207.211.16]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 45CD71C0009
 for <barebox@lists.infradead.org>; Mon, 24 Feb 2020 08:12:22 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Feb 2020 09:12:18 +0100
Message-Id: <20200224081218.526309-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] images: i.MX: fix marsboard image file name
To: barebox@lists.infradead.org

With 778bd9320b ("Makefile.imx: change image creation to
build_imx_habv4img for i.MX6") the barebox image file name for the
board became barebox-barebox-embest-imx6q-marsboard.img.

Drop the extra barebox-.

Fixes: 778bd9320b ("Makefile.imx: change image creation to
       build_imx_habv4img for i.MX6")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 images/Makefile.imx | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index e17e699bcdf0..59e48bc125fc 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -269,7 +269,7 @@ $(call build_imx_habv4img, CONFIG_MACH_VARISCITE_MX6, start_variscite_custom, va
 
 $(call build_imx_habv4img, CONFIG_MACH_EMBEDSKY_E9, start_imx6q_embedsky_e9, embedsky-e9/flash-header-e9, embedsky-imx6q-e9)
 
-$(call build_imx_habv4img, CONFIG_MACH_EMBEST_MARSBOARD, start_imx6q_marsboard, embest-marsboard/flash-header-embest-marsboard, barebox-embest-imx6q-marsboard)
+$(call build_imx_habv4img, CONFIG_MACH_EMBEST_MARSBOARD, start_imx6q_marsboard, embest-marsboard/flash-header-embest-marsboard, embest-imx6q-marsboard)
 
 $(call build_imx_habv4img, CONFIG_MACH_EMBEST_RIOTBOARD, start_imx6s_riotboard, embest-riotboard/flash-header-embest-riotboard, embest-imx6s-riotboard)
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
