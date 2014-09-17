Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUCNN-0007yN-QL
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:22:18 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 17 Sep 2014 18:21:30 +0800
Message-ID: <1410949295-30296-5-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 4/9] nand: atmel: runtime to generate galois table
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 drivers/mtd/nand/atmel_nand.c | 121 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 117 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 1e7c6c6..fa4fac2 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -766,12 +766,105 @@ static void atmel_pmecc_core_init(struct mtd_info *mtd)
 	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_ENABLE);
 }
 
+static uint16_t *pmecc_galois_table;
+static int pmecc_build_galois_table(unsigned int mm, int16_t *index_of,
+				    int16_t *alpha_to)
+{
+	unsigned int i, mask, nn;
+	unsigned int p[15];
+
+	nn = (1 << mm) - 1;
+	/* set default value */
+	for (i = 1; i < mm; i++)
+		p[i] = 0;
+
+	/* 1 + X^mm */
+	p[0]  = 1;
+	p[mm] = 1;
+
+	/* others  */
+	switch (mm) {
+	case 3:
+	case 4:
+	case 6:
+	case 15:
+		p[1] = 1;
+		break;
+	case 5:
+	case 11:
+		p[2] = 1;
+		break;
+	case 7:
+	case 10:
+		p[3] = 1;
+		break;
+	case 8:
+		p[2] = p[3] = p[4] = 1;
+		break;
+	case 9:
+		p[4] = 1;
+		break;
+	case 12:
+		p[1] = p[4] = p[6] = 1;
+		break;
+	case 13:
+		p[1] = p[3] = p[4] = 1;
+		break;
+	case 14:
+		p[1] = p[6] = p[10] = 1;
+		break;
+	default:
+		/* Error */
+		return -EINVAL;
+	}
+
+	/* Build alpha ^ mm it will help to generate the field (primitiv) */
+	alpha_to[mm] = 0;
+	for (i = 0; i < mm; i++)
+		if (p[i])
+			alpha_to[mm] |= 1 << i;
+
+	/*
+	 * Then build elements from 0 to mm - 1. As degree is less than mm
+	 * so it is just a logical shift.
+	 */
+	mask = 1;
+	for (i = 0; i < mm; i++) {
+		alpha_to[i] = mask;
+		index_of[alpha_to[i]] = i;
+		mask <<= 1;
+	}
+
+	index_of[alpha_to[mm]] = mm;
+
+	/* use a mask to select the MSB bit of the LFSR */
+	mask >>= 1;
+
+	/* then finish the building */
+	for (i = mm + 1; i <= nn; i++) {
+		/* check if the msb bit of the lfsr is set */
+		if (alpha_to[i - 1] & mask)
+			alpha_to[i] = alpha_to[mm] ^
+				((alpha_to[i - 1] ^ mask) << 1);
+		else
+			alpha_to[i] = alpha_to[i - 1] << 1;
+
+		index_of[alpha_to[i]] = i % nn;
+	}
+
+	/* index of 0 is undefined in a multiplicative field */
+	index_of[0] = -1;
+
+	return 0;
+}
+
 static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
 					 struct atmel_nand_host *host)
 {
 	struct mtd_info *mtd = &host->mtd;
 	struct nand_chip *nand_chip = &host->nand_chip;
 	int cap, sector_size, err_no;
+	int ret;
 
 	cap = host->board->pmecc_corr_cap;
 	sector_size = host->board->pmecc_sector_size;
@@ -785,14 +878,34 @@ static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
 	}
 
 	host->pmerrloc_base = dev_request_mem_region(dev, 2);
-	host->pmecc_rom_base = dev_request_mem_region(dev, 3);
-
-	if (!host->pmerrloc_base || !host->pmecc_rom_base) {
+	if (!host->pmerrloc_base) {
 		dev_err(host->dev,
-			"Can not get I/O resource for PMECC ERRLOC controller or ROM!\n");
+			"Can not get I/O resource for PMECC ERRLOC controller!\n");
 		return -EIO;
 	}
 
+	host->pmecc_rom_base = dev_request_mem_region(dev, 3);
+	if (!host->pmecc_rom_base) {
+		/* Set pmecc_rom_base as the begin of gf table */
+		int size = sector_size == 512 ? 0x2000 : 0x4000;
+		pmecc_galois_table = xzalloc(2 * size * sizeof(uint16_t));
+		if (!pmecc_galois_table)
+			return -ENOMEM;
+		host->pmecc_rom_base = pmecc_galois_table;
+		ret = pmecc_build_galois_table((sector_size == 512) ?
+						PMECC_GF_DIMENSION_13 :
+						PMECC_GF_DIMENSION_14,
+						host->pmecc_rom_base,
+						host->pmecc_rom_base + (size * sizeof(int16_t)));
+		if (ret) {
+			dev_err(host->dev,
+				"Can not get I/O resource for ROM!\n");
+			return -EIO;
+		}
+
+		host->board->pmecc_lookup_table_offset = 0;
+	}
+
 	/* ECC is calculated for the whole page (1 step) */
 	nand_chip->ecc.size = mtd->writesize;
 
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
