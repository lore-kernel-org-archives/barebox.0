Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRXYZ-0002Lh-O9
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 07:13:17 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gRXYL-0006kh-PC
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 08:13:01 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gRXYL-0007Sq-Fy
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 08:13:01 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 27 Nov 2018 08:13:00 +0100
Message-Id: <20181127071300.28645-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] mtd: nand: denali: quiet down driver
To: Barebox List <barebox@lists.infradead.org>

Instead of always printing the timing registers, make it a debug information
only.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/nand/nand_denali.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index ef3395864cf5..256196624389 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -511,7 +511,7 @@ static uint16_t denali_nand_timing_set(struct denali_nand_info *denali)
 		get_hynix_nand_para(denali, device_id);
 	}
 
-	dev_info(denali->dev,
+	dev_dbg(denali->dev,
 			"Dump timing register values:\n"
 			"acc_clks: %d, re_2_we: %d, re_2_re: %d\n"
 			"we_2_re: %d, addr_2_data: %d, rdwr_en_lo_cnt: %d\n"
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
