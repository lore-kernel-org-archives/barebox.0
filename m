Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUbvn-0006kY-VI
 for barebox@lists.infradead.org; Wed, 16 May 2012 10:58:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 12:58:04 +0200
Message-Id: <1337165884-17993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX51 babbage: use dedicated chipselect for PMIC spi
To: barebox@lists.infradead.org

This got broken while updating the iomux definitions from the
kernel. Since then the PMIC did not work anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 635e1d0..0bb2ffe 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -66,7 +66,7 @@ static iomux_v3_cfg_t f3s_pads[] = {
 	MX51_PAD_NANDF_D11__FEC_RX_DV,
 	MX51_PAD_NANDF_D9__FEC_RDATA0,
 	MX51_PAD_NANDF_D8__FEC_TDATA0,
-	MX51_PAD_CSPI1_SS0__GPIO4_24,
+	MX51_PAD_CSPI1_SS0__ECSPI1_SS0,
 	MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI,
 	MX51_PAD_CSPI1_MISO__ECSPI1_MISO,
 	MX51_PAD_CSPI1_RDY__ECSPI1_RDY,
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
