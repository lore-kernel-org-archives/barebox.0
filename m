Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zz8sZ-0000Ij-D2
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 19:58:56 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBB9.dip0.t-ipconnect.de
 [87.181.251.185]) by lynxeye.de (Postfix) with ESMTPA id 462C126C2002
 for <barebox@lists.infradead.org>; Wed, 18 Nov 2015 20:57:59 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 18 Nov 2015 20:57:55 +0100
Message-Id: <1447876675-3291-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1447876675-3291-1-git-send-email-dev@lynxeye.de>
References: <1447876675-3291-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/2] ARM: mx6sx-sabresdb: set proper hostname
To: barebox@lists.infradead.org

Also move the initcall to the level matching the name of the
function.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/freescale-mx6sx-sabresdb/board.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
index 353b460..ca22eba 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/board.c
@@ -241,9 +241,11 @@ static int imx6sx_sdb_coredevices_init(void)
 
 	imx6sx_sdb_setup_fec();
 
+	barebox_set_hostname("mx6sx-sabresdb");
+
 	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc3",
 			BBU_HANDLER_FLAG_DEFAULT);
 
 	return 0;
 }
-console_initcall(imx6sx_sdb_coredevices_init);
+coredevice_initcall(imx6sx_sdb_coredevices_init);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
