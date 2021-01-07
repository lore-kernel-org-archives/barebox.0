Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg403.qq.com ([113.96.223.47] helo=qq.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxKu8-0006OM-Ge
 for barebox@lists.infradead.org; Thu, 07 Jan 2021 02:20:03 +0000
From: "=?ISO-8859-1?B?amFtZXN6eGo=?=" <jameszxj@gmail.com>
Mime-Version: 1.0
Date: Thu, 7 Jan 2021 10:19:38 +0800
Message-ID: <tencent_1F5884D31C07819F5E1EA02A84FDD10FDC0A@qq.com>
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
Subject: [PATCH 1/1]mtd:nand_mxs:update get/set features legacy function call
To: =?ISO-8859-1?B?YmFyZWJveA==?= <barebox@lists.infradead.org>

update get/set features legacy function call to avoid NULL pointer crash.

Signed-off-by: zhengxiaojun <jameszxj at gmail.com>
--- 
 drivers/mtd/nand/nand_mxs.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 9f7ab1442..ad8aeb41f 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -2055,14 +2055,12 @@ static int mxs_nand_enable_edo_mode(struct mxs_nand_info *info)
 		/* [1] send SET FEATURE commond to NAND */
 		feature[0] = mode;
 
-		ret = chip->legacy.set_features(chip,
-				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
+		ret = nand_set_features(chip, ONFI_FEATURE_ADDR_TIMING_MODE, feature);
 		if (ret)
 			goto err_out;
 
 		/* [2] send GET FEATURE command to double-check the timing mode */
-		ret = chip->legacy.get_features(chip,
-				ONFI_FEATURE_ADDR_TIMING_MODE, feature);
+		ret = nand_get_features(chip, ONFI_FEATURE_ADDR_TIMING_MODE, feature);
 		if (ret || feature[0] != mode)
 			goto err_out;
 	}
-- 
2.29.2
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
