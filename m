Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-f47.google.com ([74.125.82.47])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUD-000404-Jk
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:53 +0000
Received: by wmvv187 with SMTP id v187so86248398wmv.1
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:23 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:00 +0100
Message-Id: <1448048172-10080-8-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 07/19] mtd: nand_mrvl_nfc: Clear OOB data with 0xff instead
 of 0x00
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

If OOB data is not required on page program, we have to clear
the corresponding data with 0xff instead of 0x00.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index bdf949de0e7f..60c34c21af25 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -719,7 +719,7 @@ static int mrvl_nand_write_page_hwecc(struct mtd_info *mtd,
 		memcpy(host->data_buff + mtd->writesize, chip->oob_poi,
 		       mtd->oobsize);
 	else
-		memset(host->data_buff + mtd->writesize, 0, mtd->oobsize);
+		memset(host->data_buff + mtd->writesize, 0xff, mtd->oobsize);
 	dev_dbg(host->dev, "%s(buf=%p, oob_required=%d) => 0\n",
 		__func__, buf, oob_required);
 	return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
