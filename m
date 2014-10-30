Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XjoQT-0001Ld-Qg
 for barebox@lists.infradead.org; Thu, 30 Oct 2014 12:02:02 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4863BA0040A
 for <barebox@lists.infradead.org>; Thu, 30 Oct 2014 13:01:44 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Thu, 30 Oct 2014 13:01:36 +0100
Message-Id: <1414670496-25123-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1414670496-25123-1-git-send-email-w.egorov@phytec.de>
References: <1414670496-25123-1-git-send-email-w.egorov@phytec.de>
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
Subject: [For next PATCH 2/2] phyFLEX: Select RMII2_CRS_DV on GPMC_A9 pin
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/boards/phytec-phyflex-am335x/board.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-am335x/board.c b/arch/arm/boards/phytec-phyflex-am335x/board.c
index 12fad8f..cf7dd2e 100644
--- a/arch/arm/boards/phytec-phyflex-am335x/board.c
+++ b/arch/arm/boards/phytec-phyflex-am335x/board.c
@@ -89,6 +89,8 @@ static int pfla03_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_PFLA03);
 	defaultenv_append_directory(defaultenv_phyflex_am335x);
 
+	am33xx_select_rmii2_crs_dv();
+
 	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
 	am33xx_bbu_spi_nor_register_handler("spi", "/dev/m25p0.barebox");
 	am33xx_bbu_nand_xloadslots_register_handler("MLO.nand",
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
