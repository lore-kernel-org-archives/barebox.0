Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGsay-0006M5-33
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 21:27:41 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990392AbeJ1V1jg3Nhf (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 28 Oct 2018 22:27:39 +0100
Date: Sun, 28 Oct 2018 22:27:38 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181028212738.GQ14788@lenoch>
References: <20181028211947.GA14788@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181028211947.GA14788@lenoch>
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
Subject: [PATCH 16/16] mtd: nand: detect OOB size for Toshiba 24nm raw SLC
To: barebox@lists.infradead.org

Linux commit 60c673824561.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/nand_base.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 9b2d3f1cf..e290081bb 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3219,6 +3219,20 @@ static void nand_decode_ext_id(struct mtd_info *mtd, struct nand_chip *chip,
 		extid >>= 2;
 		/* Get buswidth information */
 		*busw = (extid & 0x01) ? NAND_BUSWIDTH_16 : 0;
+		/*
+		 * Toshiba 24nm raw SLC (i.e., not BENAND) have 32B OOB per
+		 * 512B page. For Toshiba SLC, we decode the 5th/6th byte as
+		 * follows:
+		 * - ID byte 6, bits[2:0]: 100b -> 43nm, 101b -> 32nm,
+		 *                         110b -> 24nm
+		 * - ID byte 5, bit[7]:    1 -> BENAND, 0 -> raw SLC
+		 */
+		if (id_len >= 6 && id_data[0] == NAND_MFR_TOSHIBA &&
+				nand_is_slc(chip) &&
+				(id_data[5] & 0x7) == 0x6 /* 24nm */ &&
+				!(id_data[4] & 0x80) /* !BENAND */) {
+			mtd->oobsize = 32 * mtd->writesize >> 9;
+		}
 	}
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
