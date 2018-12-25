Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp63.i.mail.ru ([217.69.128.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gbggt-0004a8-U3
 for barebox@lists.infradead.org; Tue, 25 Dec 2018 06:59:50 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 25 Dec 2018 09:59:23 +0300
Message-Id: <20181225065923.15943-2-shc_work@mail.ru>
In-Reply-To: <20181225065923.15943-1-shc_work@mail.ru>
References: <20181225065923.15943-1-shc_work@mail.ru>
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
Subject: [PATCH 2/2] imx-bbu-nand-fcb: Remove unused variable partition_size
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/imx-bbu-nand-fcb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 8383aeacf..a29a1bf91 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1198,9 +1198,8 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	int ret, i;
 	struct fcb_block *fcb = NULL;
 	void *fw = NULL, *fw_orig = NULL;
-	unsigned fw_size, partition_size;
 	enum filetype filetype;
-	unsigned num_blocks_fw;
+	unsigned num_blocks_fw, fw_size;
 	int used = 0;
 	int fw_orig_len;
 	int used_refresh = 0, unused_refresh = 0;
@@ -1222,7 +1221,6 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	}
 
 	mtd = bcb_cdev->mtd;
-	partition_size = mtd->size;
 
 	num_blocks_fw = imx_bbu_firmware_max_blocks(mtd);
 	if (num_blocks_fw < 1) {
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
