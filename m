Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxDaJ-00069Q-SN
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 13:40:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 98F4AA00400
 for <barebox@lists.infradead.org>; Thu, 20 Oct 2016 15:40:41 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Thu, 20 Oct 2016 15:40:07 +0200
Message-Id: <1476970807-43811-2-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1476970807-43811-1-git-send-email-c.hemp@phytec.de>
References: <1476970807-43811-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 2/2] mtd: nand: nand_mxs: Fix readtotal calculation
To: barebox@lists.infradead.org
Cc: Stefan Lengfeld <s.lengfeld@phytec.de>

The calculation of readtotal must be bit alligend. If not the bch core
finds bit flips in every page, because readtotal is too small.
This bug was mostly introduced since commit "51061a9 mtd: nand: nand_mxs:
Add subpage read support".

Tested with:
nand: NAND device: Manufacturer ID: 0x01, Chip ID: 0xd3 (AMD/Spansion
S34ML08G2), 1024MiB, page size: 2048, OOB size: 128

nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
MT29F4G08ABADAWP), 512MiB, page size: 2048, OOB size: 64

nand: NAND device: Manufacturer ID: 0xec, Chip ID: 0xd3 (Samsung NAND
1GiB 3,3V 8-bit), 1024MiB, page size: 2048, OOB size: 64

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 drivers/mtd/nand/nand_mxs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index fe955e8..cba0bee 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -728,15 +728,15 @@ static int __mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand
 	uint32_t corrected = 0, failed = 0;
 	uint8_t	*status;
 	unsigned int  max_bitflips = 0;
-	int i, ret, readtotal, nchunks, eccstrength, ecc_parity_size;
+	int i, ret, readtotal, nchunks, eccstrength;
 
 	eccstrength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
 
 	readlen = roundup(readlen, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
 	nchunks = mxs_nand_ecc_chunk_cnt(readlen);
-	ecc_parity_size = 13 * eccstrength / 8;
-	readtotal = MXS_NAND_METADATA_SIZE +
-		(MXS_NAND_CHUNK_DATA_CHUNK_SIZE + ecc_parity_size) * nchunks;
+	readtotal =  MXS_NAND_METADATA_SIZE;
+	readtotal += MXS_NAND_CHUNK_DATA_CHUNK_SIZE * nchunks;
+	readtotal += DIV_ROUND_UP(13 * eccstrength * nchunks, 8);
 
 	mxs_nand_config_bch(mtd, readtotal);
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
