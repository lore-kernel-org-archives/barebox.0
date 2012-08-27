Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T5wzL-000081-9o
 for barebox@lists.infradead.org; Mon, 27 Aug 2012 10:56:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B4076BF0E9
 for <barebox@lists.infradead.org>; Mon, 27 Aug 2012 12:56:04 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Mon, 27 Aug 2012 12:56:04 +0200
Message-Id: <1346064964-7734-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] pcm049: use NAND_BUSWIDTH_AUTO
To: barebox@lists.infradead.org

autodetect bus width

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/pcm049/board.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 456c9a7..57b24af 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -101,7 +101,6 @@ static struct i2c_board_info i2c_devices[] = {
 
 static struct gpmc_nand_platform_data nand_plat = {
 	.wait_mon_pin = 1,
-	.device_width = 8,
 	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
 	.nand_cfg = &omap4_nand_cfg,
 };
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
