Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gK5Nb-0007ex-Ok
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 17:43:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gK5NO-0000gK-Ts
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 18:42:54 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  6 Nov 2018 18:42:53 +0100
Message-Id: <20181106174254.21371-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: nxp-imx8mq-evk: remove SDRAM reservation for ATF
To: barebox@lists.infradead.org

Recent versions of the i.MX8MQ ATF (like the one shipped with Barebox)
reside in a part of OCRAM, so there is no need to reserve any part of
SDRAM anymore.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/board.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
index 764eadb766a9..7918b5fb3e36 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -45,17 +45,6 @@ static int ar8031_phy_fixup(struct phy_device *phydev)
 	return 0;
 }
 
-static int imx8mq_evk_mem_init(void)
-{
-	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
-		return 0;
-
-	request_sdram_region("ATF", 0x40000000, SZ_128K);
-
-	return 0;
-}
-mem_initcall(imx8mq_evk_mem_init);
-
 static int nxp_imx8mq_evk_init(void)
 {
 	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
