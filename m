Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKs-0001lm-7Y
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:51 +0000
Received: by wicge5 with SMTP id ge5so44529752wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:28 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:08 +0200
Message-Id: <1444341979-19157-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 06/17] mtd: nand_mrvl_nfc: Clear OOB data with 0xff instead of
 0x00
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

If OOB data is not required on page program, we have to clear
the corresponding data with 0xff instead of 0x00.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index d220900e10db..b10d449da444 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -718,7 +718,7 @@ static int mrvl_nand_write_page_hwecc(struct mtd_info *mtd,
 		memcpy(host->data_buff + mtd->writesize, chip->oob_poi,
 		       mtd->oobsize);
 	else
-		memset(host->data_buff + mtd->writesize, 0, mtd->oobsize);
+		memset(host->data_buff + mtd->writesize, 0xff, mtd->oobsize);
 	dev_dbg(host->dev, "%s(buf=%p, oob_required=%d) => 0\n",
 		__func__, buf, oob_required);
 	return 0;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
