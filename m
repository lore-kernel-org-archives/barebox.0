Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzPDI-0003O4-71
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 12:53:08 +0000
Received: from antimon.flens.pengutronix.de (pd95ce108.dip0.t-ipconnect.de
 [217.92.225.8]) by lynxeye.de (Postfix) with ESMTPA id E050F26C2001
 for <barebox@lists.infradead.org>; Mon,  1 Jun 2015 14:52:13 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  1 Jun 2015 14:52:09 +0200
Message-Id: <1433163129-10039-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: imx6: hipercam: set default hostname in boardfile
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/eltec-hipercam/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/eltec-hipercam/board.c b/arch/arm/boards/eltec-hipercam/board.c
index 7486747..04ad253 100644
--- a/arch/arm/boards/eltec-hipercam/board.c
+++ b/arch/arm/boards/eltec-hipercam/board.c
@@ -26,6 +26,8 @@ static int hipercam_init(void)
 	imx6_bbu_internal_spi_i2c_register_handler("nor", "/dev/m25p0.barebox",
 			BBU_HANDLER_FLAG_DEFAULT);
 
+	barebox_set_hostname("hipercam");
+
 	return 0;
 }
 device_initcall(hipercam_init);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
