Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOY13-0003w8-SX
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 18:06:53 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8BD2FDC2283
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 20:13:24 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Oct 2012 20:04:23 +0200
Message-Id: <1350497065-21893-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121017180024.GB446@game.jcrosoft.org>
References: <20121017180024.GB446@game.jcrosoft.org>
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
Subject: [PATCH 1/3] nand: atmel add pmecc support
To: barebox@lists.infradead.org

This patch is from linux 3.7-rc1 and adapt to Barebox

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/board.h |    4 +
 drivers/mtd/nand/Kconfig                |    8 +
 drivers/mtd/nand/atmel_nand.c           |  782 +++++++++++++++++++++++++++++--
 drivers/mtd/nand/atmel_nand_ecc.h       |  114 ++++-
 4 files changed, 863 insertions(+), 45 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 670c73d..af436a8 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -53,6 +53,10 @@ struct atmel_nand_data {
 	u8		bus_width_16;	/* buswidth is 16 bit */
 	u8		ecc_mode;	/* NAND_ECC_* */
 	u8		on_flash_bbt;	/* Use flash based bbt */
+
+	u8		pmecc_corr_cap;
+	u16		pmecc_sector_size;
+	u32		pmecc_lookup_table_offset;
 };
 
 void at91_add_device_nand(struct atmel_nand_data *data);
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 6889b44..74aa47f 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -70,6 +70,14 @@ config NAND_ATMEL
 	prompt "Atmel (AT91SAM9xxx) NAND driver"
 	depends on ARCH_AT91
 
+config NAND_ATMEL_PMECC
+	bool
+	prompt "PMECC support"
+	depends on NAND_ATMEL
+	select NAND_ECC_HW
+	help
+	 Support for PMECC present on the SoC sam9x5 and sam9n12
+
 config NAND_S3C24XX
 	bool
 	prompt "Samsung S3C24XX NAND driver"
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index aa01124..f5d1c57 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -77,8 +77,31 @@ struct atmel_nand_host {
 	struct atmel_nand_data	*board;
 	struct device_d		*dev;
 	void __iomem		*ecc;
+
+	int			pmecc_bytes_per_sector;
+	int			pmecc_sector_number;
+	int			pmecc_degree;	/* Degree of remainders */
+	int			pmecc_cw_len;	/* Length of codeword */
+
+	void __iomem		*pmerrloc_base;
+	void __iomem		*pmecc_rom_base;
+
+	/* lookup table for alpha_to and index_of */
+	void __iomem		*pmecc_alpha_to;
+	void __iomem		*pmecc_index_of;
+
+	/* data for pmecc computation */
+	int16_t			*pmecc_partial_syn;
+	int16_t			*pmecc_si;
+	int16_t			*pmecc_smu;	/* Sigma table */
+	int16_t			*pmecc_lmu;	/* polynomal order */
+	int			*pmecc_mu;
+	int			*pmecc_dmu;
+	int			*pmecc_delta;
 };
 
+static struct nand_ecclayout atmel_pmecc_oobinfo;
+
 /*
  * Enable NAND.
  */
@@ -149,6 +172,663 @@ static void atmel_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
 }
 
 /*
+ * Return number of ecc bytes per sector according to sector size and
+ * correction capability
+ *
+ * Following table shows what at91 PMECC supported:
+ * Correction Capability	Sector_512_bytes	Sector_1024_bytes
+ * =====================	================	=================
+ *                2-bits                 4-bytes                  4-bytes
+ *                4-bits                 7-bytes                  7-bytes
+ *                8-bits                13-bytes                 14-bytes
+ *               12-bits                20-bytes                 21-bytes
+ *               24-bits                39-bytes                 42-bytes
+ */
+static int pmecc_get_ecc_bytes(int cap, int sector_size)
+{
+	int m = 12 + sector_size / 512;
+	return (m * cap + 7) / 8;
+}
+
+static void pmecc_config_ecc_layout(struct nand_ecclayout *layout,
+	int oobsize, int ecc_len)
+{
+	int i;
+
+	layout->eccbytes = ecc_len;
+
+	/* ECC will occupy the last ecc_len bytes continuously */
+	for (i = 0; i < ecc_len; i++)
+		layout->eccpos[i] = oobsize - ecc_len + i;
+
+	layout->oobfree[0].offset = 2;
+	layout->oobfree[0].length =
+		oobsize - ecc_len - layout->oobfree[0].offset;
+}
+
+static void __iomem *pmecc_get_alpha_to(struct atmel_nand_host *host)
+{
+	int table_size;
+
+	table_size = host->board->pmecc_sector_size == 512 ?
+		PMECC_LOOKUP_TABLE_SIZE_512 : PMECC_LOOKUP_TABLE_SIZE_1024;
+
+	return host->pmecc_rom_base + host->board->pmecc_lookup_table_offset +
+			table_size * sizeof(int16_t);
+}
+
+static void pmecc_data_free(struct atmel_nand_host *host)
+{
+	kfree(host->pmecc_partial_syn);
+	kfree(host->pmecc_si);
+	kfree(host->pmecc_lmu);
+	kfree(host->pmecc_smu);
+	kfree(host->pmecc_mu);
+	kfree(host->pmecc_dmu);
+	kfree(host->pmecc_delta);
+}
+
+static int pmecc_data_alloc(struct atmel_nand_host *host)
+{
+	const int cap = host->board->pmecc_corr_cap;
+
+	host->pmecc_partial_syn = kzalloc((2 * cap + 1) * sizeof(int16_t),
+					GFP_KERNEL);
+	host->pmecc_si = kzalloc((2 * cap + 1) * sizeof(int16_t), GFP_KERNEL);
+	host->pmecc_lmu = kzalloc((cap + 1) * sizeof(int16_t), GFP_KERNEL);
+	host->pmecc_smu = kzalloc((cap + 2) * (2 * cap + 1) * sizeof(int16_t),
+					GFP_KERNEL);
+	host->pmecc_mu = kzalloc((cap + 1) * sizeof(int), GFP_KERNEL);
+	host->pmecc_dmu = kzalloc((cap + 1) * sizeof(int), GFP_KERNEL);
+	host->pmecc_delta = kzalloc((cap + 1) * sizeof(int), GFP_KERNEL);
+
+	if (host->pmecc_partial_syn &&
+			host->pmecc_si &&
+			host->pmecc_lmu &&
+			host->pmecc_smu &&
+			host->pmecc_mu &&
+			host->pmecc_dmu &&
+			host->pmecc_delta)
+		return 0;
+
+	/* error happened */
+	pmecc_data_free(host);
+	return -ENOMEM;
+}
+
+static void pmecc_gen_syndrome(struct mtd_info *mtd, int sector)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+	int i;
+	uint32_t value;
+
+	/* Fill odd syndromes */
+	for (i = 0; i < host->board->pmecc_corr_cap; i++) {
+		value = pmecc_readl_rem_relaxed(host->ecc, sector, i / 2);
+		if (i & 1)
+			value >>= 16;
+		value &= 0xffff;
+		host->pmecc_partial_syn[(2 * i) + 1] = (int16_t)value;
+	}
+}
+
+static void pmecc_substitute(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+	int16_t __iomem *alpha_to = host->pmecc_alpha_to;
+	int16_t __iomem *index_of = host->pmecc_index_of;
+	int16_t *partial_syn = host->pmecc_partial_syn;
+	const int cap = host->board->pmecc_corr_cap;
+	int16_t *si;
+	int i, j;
+
+	/* si[] is a table that holds the current syndrome value,
+	 * an element of that table belongs to the field
+	 */
+	si = host->pmecc_si;
+
+	memset(&si[1], 0, sizeof(int16_t) * (2 * cap - 1));
+
+	/* Computation 2t syndromes based on S(x) */
+	/* Odd syndromes */
+	for (i = 1; i < 2 * cap; i += 2) {
+		for (j = 0; j < host->pmecc_degree; j++) {
+			if (partial_syn[i] & ((unsigned short)0x1 << j))
+				si[i] = readw(alpha_to + i * j) ^ si[i];
+		}
+	}
+	/* Even syndrome = (Odd syndrome) ** 2 */
+	for (i = 2, j = 1; j <= cap; i = ++j << 1) {
+		if (si[j] == 0) {
+			si[i] = 0;
+		} else {
+			int16_t tmp;
+
+			tmp = readw(index_of + si[j]);
+			tmp = (tmp * 2) % host->pmecc_cw_len;
+			si[i] = readw(alpha_to + tmp);
+		}
+	}
+
+	return;
+}
+
+static void pmecc_get_sigma(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+
+	int16_t *lmu = host->pmecc_lmu;
+	int16_t *si = host->pmecc_si;
+	int *mu = host->pmecc_mu;
+	int *dmu = host->pmecc_dmu;	/* Discrepancy */
+	int *delta = host->pmecc_delta; /* Delta order */
+	int cw_len = host->pmecc_cw_len;
+	const int16_t cap = host->board->pmecc_corr_cap;
+	const int num = 2 * cap + 1;
+	int16_t __iomem	*index_of = host->pmecc_index_of;
+	int16_t __iomem	*alpha_to = host->pmecc_alpha_to;
+	int i, j, k;
+	uint32_t dmu_0_count, tmp;
+	int16_t *smu = host->pmecc_smu;
+
+	/* index of largest delta */
+	int ro;
+	int largest;
+	int diff;
+
+	dmu_0_count = 0;
+
+	/* First Row */
+
+	/* Mu */
+	mu[0] = -1;
+
+	memset(smu, 0, sizeof(int16_t) * num);
+	smu[0] = 1;
+
+	/* discrepancy set to 1 */
+	dmu[0] = 1;
+	/* polynom order set to 0 */
+	lmu[0] = 0;
+	delta[0] = (mu[0] * 2 - lmu[0]) >> 1;
+
+	/* Second Row */
+
+	/* Mu */
+	mu[1] = 0;
+	/* Sigma(x) set to 1 */
+	memset(&smu[num], 0, sizeof(int16_t) * num);
+	smu[num] = 1;
+
+	/* discrepancy set to S1 */
+	dmu[1] = si[1];
+
+	/* polynom order set to 0 */
+	lmu[1] = 0;
+
+	delta[1] = (mu[1] * 2 - lmu[1]) >> 1;
+
+	/* Init the Sigma(x) last row */
+	memset(&smu[(cap + 1) * num], 0, sizeof(int16_t) * num);
+
+	for (i = 1; i <= cap; i++) {
+		mu[i + 1] = i << 1;
+		/* Begin Computing Sigma (Mu+1) and L(mu) */
+		/* check if discrepancy is set to 0 */
+		if (dmu[i] == 0) {
+			dmu_0_count++;
+
+			tmp = ((cap - (lmu[i] >> 1) - 1) / 2);
+			if ((cap - (lmu[i] >> 1) - 1) & 0x1)
+				tmp += 2;
+			else
+				tmp += 1;
+
+			if (dmu_0_count == tmp) {
+				for (j = 0; j <= (lmu[i] >> 1) + 1; j++)
+					smu[(cap + 1) * num + j] =
+							smu[i * num + j];
+
+				lmu[cap + 1] = lmu[i];
+				return;
+			}
+
+			/* copy polynom */
+			for (j = 0; j <= lmu[i] >> 1; j++)
+				smu[(i + 1) * num + j] = smu[i * num + j];
+
+			/* copy previous polynom order to the next */
+			lmu[i + 1] = lmu[i];
+		} else {
+			ro = 0;
+			largest = -1;
+			/* find largest delta with dmu != 0 */
+			for (j = 0; j < i; j++) {
+				if ((dmu[j]) && (delta[j] > largest)) {
+					largest = delta[j];
+					ro = j;
+				}
+			}
+
+			/* compute difference */
+			diff = (mu[i] - mu[ro]);
+
+			/* Compute degree of the new smu polynomial */
+			if ((lmu[i] >> 1) > ((lmu[ro] >> 1) + diff))
+				lmu[i + 1] = lmu[i];
+			else
+				lmu[i + 1] = ((lmu[ro] >> 1) + diff) * 2;
+
+			/* Init smu[i+1] with 0 */
+			for (k = 0; k < num; k++)
+				smu[(i + 1) * num + k] = 0;
+
+			/* Compute smu[i+1] */
+			for (k = 0; k <= lmu[ro] >> 1; k++) {
+				int16_t a, b, c;
+
+				if (!(smu[ro * num + k] && dmu[i]))
+					continue;
+				a = readw(index_of + dmu[i]);
+				b = readw(index_of + dmu[ro]);
+				c = readw(index_of + smu[ro * num + k]);
+				tmp = a + (cw_len - b) + c;
+				a = readw(alpha_to + tmp % cw_len);
+				smu[(i + 1) * num + (k + diff)] = a;
+			}
+
+			for (k = 0; k <= lmu[i] >> 1; k++)
+				smu[(i + 1) * num + k] ^= smu[i * num + k];
+		}
+
+		/* End Computing Sigma (Mu+1) and L(mu) */
+		/* In either case compute delta */
+		delta[i + 1] = (mu[i + 1] * 2 - lmu[i + 1]) >> 1;
+
+		/* Do not compute discrepancy for the last iteration */
+		if (i >= cap)
+			continue;
+
+		for (k = 0; k <= (lmu[i + 1] >> 1); k++) {
+			tmp = 2 * (i - 1);
+			if (k == 0) {
+				dmu[i + 1] = si[tmp + 3];
+			} else if (smu[(i + 1) * num + k] && si[tmp + 3 - k]) {
+				int16_t a, b, c;
+				a = readw(index_of +
+						smu[(i + 1) * num + k]);
+				b = si[2 * (i - 1) + 3 - k];
+				c = readw(index_of + b);
+				tmp = a + c;
+				tmp %= cw_len;
+				dmu[i + 1] = readw(alpha_to + tmp) ^
+					dmu[i + 1];
+			}
+		}
+	}
+
+	return;
+}
+
+static int pmecc_err_location(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+	const int cap = host->board->pmecc_corr_cap;
+	const int num = 2 * cap + 1;
+	int sector_size = host->board->pmecc_sector_size;
+	int err_nbr = 0;	/* number of error */
+	int roots_nbr;		/* number of roots */
+	int i, ret;
+	uint32_t val;
+	int16_t *smu = host->pmecc_smu;
+
+	pmerrloc_writel(host->pmerrloc_base, ELDIS, PMERRLOC_DISABLE);
+
+	for (i = 0; i <= host->pmecc_lmu[cap + 1] >> 1; i++) {
+		pmerrloc_writel_sigma_relaxed(host->pmerrloc_base, i,
+				      smu[(cap + 1) * num + i]);
+		err_nbr++;
+	}
+
+	val = (err_nbr - 1) << 16;
+	if (sector_size == 1024)
+		val |= 1;
+
+	pmerrloc_writel(host->pmerrloc_base, ELCFG, val);
+	pmerrloc_writel(host->pmerrloc_base, ELEN,
+			sector_size * 8 + host->pmecc_degree * cap);
+
+	ret = wait_on_timeout(PMECC_MAX_TIMEOUT_MS,
+		pmerrloc_readl_relaxed(host->pmerrloc_base, ELISR)
+					 & PMERRLOC_CALC_DONE);
+	if (ret) {
+		dev_err(host->dev, "PMECC: Timeout to calculate error location.\n");
+		return -ETIMEDOUT;
+	}
+
+	roots_nbr = (pmerrloc_readl_relaxed(host->pmerrloc_base, ELISR)
+		& PMERRLOC_ERR_NUM_MASK) >> 8;
+	/* Number of roots == degree of smu hence <= cap */
+	if (roots_nbr == host->pmecc_lmu[cap + 1] >> 1)
+		return err_nbr - 1;
+
+	/* Number of roots does not match the degree of smu
+	 * unable to correct error */
+	return -1;
+}
+
+static void pmecc_correct_data(struct mtd_info *mtd, uint8_t *buf, uint8_t *ecc,
+		int sector_num, int extra_bytes, int err_nbr)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+	int i = 0;
+	int byte_pos, bit_pos, sector_size, pos;
+	uint32_t tmp;
+	uint8_t err_byte;
+
+	sector_size = host->board->pmecc_sector_size;
+
+	while (err_nbr) {
+		tmp = pmerrloc_readl_el_relaxed(host->pmerrloc_base, i) - 1;
+		byte_pos = tmp / 8;
+		bit_pos  = tmp % 8;
+
+		if (byte_pos >= (sector_size + extra_bytes))
+			BUG();	/* should never happen */
+
+		if (byte_pos < sector_size) {
+			err_byte = *(buf + byte_pos);
+			*(buf + byte_pos) ^= (1 << bit_pos);
+
+			pos = sector_num * host->board->pmecc_sector_size + byte_pos;
+			dev_info(host->dev, "Bit flip in data area, byte_pos: %d, bit_pos: %d, 0x%02x -> 0x%02x\n",
+				pos, bit_pos, err_byte, *(buf + byte_pos));
+		} else {
+			/* Bit flip in OOB area */
+			tmp = sector_num * host->pmecc_bytes_per_sector
+					+ (byte_pos - sector_size);
+			err_byte = ecc[tmp];
+			ecc[tmp] ^= (1 << bit_pos);
+
+			pos = tmp + nand_chip->ecc.layout->eccpos[0];
+			dev_info(host->dev, "Bit flip in OOB, oob_byte_pos: %d, bit_pos: %d, 0x%02x -> 0x%02x\n",
+				pos, bit_pos, err_byte, ecc[tmp]);
+		}
+
+		i++;
+		err_nbr--;
+	}
+
+	return;
+}
+
+static int pmecc_correction(struct mtd_info *mtd, u32 pmecc_stat, uint8_t *buf,
+	u8 *ecc)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+	int i, err_nbr, eccbytes;
+	uint8_t *buf_pos;
+
+	eccbytes = nand_chip->ecc.bytes;
+	for (i = 0; i < eccbytes; i++)
+		if (ecc[i] != 0xff)
+			goto normal_check;
+	/* Erased page, return OK */
+	return 0;
+
+normal_check:
+	for (i = 0; i < host->pmecc_sector_number; i++) {
+		err_nbr = 0;
+		if (pmecc_stat & 0x1) {
+			buf_pos = buf + i * host->board->pmecc_sector_size;
+
+			pmecc_gen_syndrome(mtd, i);
+			pmecc_substitute(mtd);
+			pmecc_get_sigma(mtd);
+
+			err_nbr = pmecc_err_location(mtd);
+			if (err_nbr == -1) {
+				dev_err(host->dev, "PMECC: Too many errors\n");
+				mtd->ecc_stats.failed++;
+				return -EIO;
+			} else {
+				pmecc_correct_data(mtd, buf_pos, ecc, i,
+					host->pmecc_bytes_per_sector, err_nbr);
+				mtd->ecc_stats.corrected += err_nbr;
+			}
+		}
+		pmecc_stat >>= 1;
+	}
+
+	return 0;
+}
+
+static int atmel_nand_pmecc_read_page(struct mtd_info *mtd,
+		struct nand_chip *chip, uint8_t *buf)
+{
+	struct atmel_nand_host *host = chip->priv;
+	int eccsize = chip->ecc.size;
+	uint8_t *oob = chip->oob_poi;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+	uint32_t stat;
+	int ret;
+
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_RST);
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DISABLE);
+	pmecc_writel(host->ecc, CFG, (pmecc_readl_relaxed(host->ecc, CFG)
+		& ~PMECC_CFG_WRITE_OP) | PMECC_CFG_AUTO_ENABLE);
+
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_ENABLE);
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DATA);
+
+	chip->read_buf(mtd, buf, eccsize);
+	chip->read_buf(mtd, oob, mtd->oobsize);
+
+	ret = wait_on_timeout(PMECC_MAX_TIMEOUT_MS,
+		!(pmecc_readl_relaxed(host->ecc, SR) & PMECC_SR_BUSY));
+	if (ret) {
+		dev_err(host->dev, "PMECC: Timeout to calculate error location.\n");
+		return -ETIMEDOUT;
+	}
+
+	stat = pmecc_readl_relaxed(host->ecc, ISR);
+	if (stat != 0)
+		if (pmecc_correction(mtd, stat, buf, &oob[eccpos[0]]) != 0)
+			return -EIO;
+
+	return 0;
+}
+
+static void atmel_nand_pmecc_write_page(struct mtd_info *mtd,
+		struct nand_chip *chip, const uint8_t *buf)
+{
+	struct atmel_nand_host *host = chip->priv;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+	int i, j, ret;
+
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_RST);
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DISABLE);
+
+	pmecc_writel(host->ecc, CFG, (pmecc_readl_relaxed(host->ecc, CFG) |
+		PMECC_CFG_WRITE_OP) & ~PMECC_CFG_AUTO_ENABLE);
+
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_ENABLE);
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DATA);
+
+	chip->write_buf(mtd, (u8 *)buf, mtd->writesize);
+
+	ret = wait_on_timeout(PMECC_MAX_TIMEOUT_MS,
+		!(pmecc_readl_relaxed(host->ecc, SR) & PMECC_SR_BUSY));
+	if (ret) {
+		dev_err(host->dev, "PMECC: Timeout to get ECC value.\n");
+		return;
+	}
+
+	for (i = 0; i < host->pmecc_sector_number; i++) {
+		for (j = 0; j < host->pmecc_bytes_per_sector; j++) {
+			int pos;
+
+			pos = i * host->pmecc_bytes_per_sector + j;
+			chip->oob_poi[eccpos[pos]] =
+				pmecc_readb_ecc_relaxed(host->ecc, i, j);
+		}
+	}
+	chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
+}
+
+static void atmel_pmecc_core_init(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd->priv;
+	struct atmel_nand_host *host = nand_chip->priv;
+	uint32_t val = 0;
+	struct nand_ecclayout *ecc_layout;
+
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_RST);
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_DISABLE);
+
+	switch (host->board->pmecc_corr_cap) {
+	case 2:
+		val = PMECC_CFG_BCH_ERR2;
+		break;
+	case 4:
+		val = PMECC_CFG_BCH_ERR4;
+		break;
+	case 8:
+		val = PMECC_CFG_BCH_ERR8;
+		break;
+	case 12:
+		val = PMECC_CFG_BCH_ERR12;
+		break;
+	case 24:
+		val = PMECC_CFG_BCH_ERR24;
+		break;
+	}
+
+	if (host->board->pmecc_sector_size == 512)
+		val |= PMECC_CFG_SECTOR512;
+	else if (host->board->pmecc_sector_size == 1024)
+		val |= PMECC_CFG_SECTOR1024;
+
+	switch (host->pmecc_sector_number) {
+	case 1:
+		val |= PMECC_CFG_PAGE_1SECTOR;
+		break;
+	case 2:
+		val |= PMECC_CFG_PAGE_2SECTORS;
+		break;
+	case 4:
+		val |= PMECC_CFG_PAGE_4SECTORS;
+		break;
+	case 8:
+		val |= PMECC_CFG_PAGE_8SECTORS;
+		break;
+	}
+
+	val |= (PMECC_CFG_READ_OP | PMECC_CFG_SPARE_DISABLE
+		| PMECC_CFG_AUTO_DISABLE);
+	pmecc_writel(host->ecc, CFG, val);
+
+	ecc_layout = nand_chip->ecc.layout;
+	pmecc_writel(host->ecc, SAREA, mtd->oobsize - 1);
+	pmecc_writel(host->ecc, SADDR, ecc_layout->eccpos[0]);
+	pmecc_writel(host->ecc, EADDR,
+			ecc_layout->eccpos[ecc_layout->eccbytes - 1]);
+	/* See datasheet about PMECC Clock Control Register */
+	pmecc_writel(host->ecc, CLK, 2);
+	pmecc_writel(host->ecc, IDR, 0xff);
+	pmecc_writel(host->ecc, CTRL, PMECC_CTRL_ENABLE);
+}
+
+static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
+					 struct atmel_nand_host *host)
+{
+	struct mtd_info *mtd = &host->mtd;
+	struct nand_chip *nand_chip = &host->nand_chip;
+	int cap, sector_size, err_no;
+
+	cap = host->board->pmecc_corr_cap;
+	sector_size = host->board->pmecc_sector_size;
+	dev_info(host->dev, "Initialize PMECC params, cap: %d, sector: %d\n",
+		 cap, sector_size);
+
+	host->ecc = dev_request_mem_region(dev, 1);
+	if (host->ecc == NULL) {
+		dev_err(host->dev, "ioremap failed\n");
+		return -EIO;
+	}
+
+	host->pmerrloc_base = dev_request_mem_region(dev, 2);
+	host->pmecc_rom_base = dev_request_mem_region(dev, 3);
+
+	if (!host->pmerrloc_base || !host->pmecc_rom_base) {
+		dev_err(host->dev,
+			"Can not get I/O resource for PMECC ERRLOC controller or ROM!\n");
+		return -EIO;
+	}
+
+	/* ECC is calculated for the whole page (1 step) */
+	nand_chip->ecc.size = mtd->writesize;
+
+	/* set ECC page size and oob layout */
+	switch (mtd->writesize) {
+	case 2048:
+	case 4096:
+		host->pmecc_degree = PMECC_GF_DIMENSION_13;
+		host->pmecc_cw_len = (1 << host->pmecc_degree) - 1;
+		host->pmecc_sector_number = mtd->writesize / sector_size;
+		host->pmecc_bytes_per_sector = pmecc_get_ecc_bytes(
+			cap, sector_size);
+		host->pmecc_alpha_to = pmecc_get_alpha_to(host);
+		host->pmecc_index_of = host->pmecc_rom_base +
+			host->board->pmecc_lookup_table_offset;
+
+		nand_chip->ecc.steps = 1;
+		nand_chip->ecc.bytes = host->pmecc_bytes_per_sector *
+				       host->pmecc_sector_number;
+		if (nand_chip->ecc.bytes > mtd->oobsize - 2) {
+			dev_err(host->dev, "No room for ECC bytes\n");
+			return -EINVAL;
+		}
+		pmecc_config_ecc_layout(&atmel_pmecc_oobinfo,
+					mtd->oobsize,
+					nand_chip->ecc.bytes);
+		nand_chip->ecc.layout = &atmel_pmecc_oobinfo;
+		break;
+	case 512:
+	case 1024:
+		/* TODO */
+		dev_warn(host->dev,
+			"Unsupported page size for PMECC, use Software ECC\n");
+	default:
+		/* page size not handled by HW ECC */
+		/* switching back to soft ECC */
+		nand_chip->ecc.mode = NAND_ECC_SOFT;
+		return 0;
+	}
+
+	/* Allocate data for PMECC computation */
+	err_no = pmecc_data_alloc(host);
+	if (err_no) {
+		dev_err(host->dev,
+				"Cannot allocate memory for PMECC computation!\n");
+		return err_no;
+	}
+
+	nand_chip->ecc.read_page = atmel_nand_pmecc_read_page;
+	nand_chip->ecc.write_page = atmel_nand_pmecc_write_page;
+
+	atmel_pmecc_core_init(mtd);
+
+	return 0;
+}
+
+/*
  * Calculate HW ECC
  *
  * function called after a write
@@ -338,6 +1018,56 @@ static void atmel_nand_hwctl(struct mtd_info *mtd, int mode)
 #endif
 }
 
+static int atmel_hw_nand_init_params(struct device_d *dev,
+					 struct atmel_nand_host *host)
+{
+	struct mtd_info *mtd = &host->mtd;
+	struct nand_chip *nand_chip = &host->nand_chip;
+
+	host->ecc = dev_request_mem_region(dev, 1);
+	if (host->ecc == NULL) {
+		dev_err(host->dev, "ioremap failed\n");
+		return -EIO;
+	}
+
+	/* ECC is calculated for the whole page (1 step) */
+	nand_chip->ecc.size = mtd->writesize;
+
+	/* set ECC page size and oob layout */
+	switch (mtd->writesize) {
+	case 512:
+		nand_chip->ecc.layout = &atmel_oobinfo_small;
+		ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_528);
+		break;
+	case 1024:
+		nand_chip->ecc.layout = &atmel_oobinfo_large;
+		ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_1056);
+		break;
+	case 2048:
+		nand_chip->ecc.layout = &atmel_oobinfo_large;
+		ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_2112);
+		break;
+	case 4096:
+		nand_chip->ecc.layout = &atmel_oobinfo_large;
+		ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_4224);
+		break;
+	default:
+		/* page size not handled by HW ECC */
+		/* switching back to soft ECC */
+		nand_chip->ecc.mode = NAND_ECC_SOFT;
+		return 0;
+	}
+
+	/* set up for HW ECC */
+	nand_chip->ecc.calculate = atmel_nand_calculate;
+	nand_chip->ecc.correct = atmel_nand_correct;
+	nand_chip->ecc.hwctl = atmel_nand_hwctl;
+	nand_chip->ecc.read_page = atmel_nand_read_page;
+	nand_chip->ecc.bytes = 4;
+
+	return 0;
+}
+
 /*
  * Probe for the NAND device.
  */
@@ -376,17 +1106,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
 	    pdata->ecc_mode == NAND_ECC_HW) {
-		host->ecc = dev_request_mem_region(dev, 1);
-
-		if (!host->ecc)
-			return -ENODEV;
-
 		nand_chip->ecc.mode = NAND_ECC_HW;
-		nand_chip->ecc.calculate = atmel_nand_calculate;
-		nand_chip->ecc.correct = atmel_nand_correct;
-		nand_chip->ecc.hwctl = atmel_nand_hwctl;
-		nand_chip->ecc.read_page = atmel_nand_read_page;
-		nand_chip->ecc.bytes = 4;
 	}
 
 	nand_chip->chip_delay = 20;		/* 20us command delay time */
@@ -421,40 +1141,13 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
 	    nand_chip->ecc.mode == NAND_ECC_HW) {
-		/* ECC is calculated for the whole page (1 step) */
-		nand_chip->ecc.size = mtd->writesize;
-
-		/* set ECC page size and oob layout */
-		switch (mtd->writesize) {
-		case 512:
-			nand_chip->ecc.layout = &atmel_oobinfo_small;
-			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_528);
-			break;
-		case 1024:
-			nand_chip->ecc.layout = &atmel_oobinfo_large;
-			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_1056);
-			break;
-		case 2048:
-			nand_chip->ecc.layout = &atmel_oobinfo_large;
-			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_2112);
-			break;
-		case 4096:
-			nand_chip->ecc.layout = &atmel_oobinfo_large;
-			ecc_writel(host->ecc, MR, ATMEL_ECC_PAGESIZE_4224);
-			break;
-		default:
-			/* page size not handled by HW ECC */
-			/* switching back to soft ECC */
-			nand_chip->ecc.mode = NAND_ECC_SOFT;
-			nand_chip->ecc.calculate = NULL;
-			nand_chip->ecc.correct = NULL;
-			nand_chip->ecc.hwctl = NULL;
-			nand_chip->ecc.read_page = NULL;
-			nand_chip->ecc.postpad = 0;
-			nand_chip->ecc.prepad = 0;
-			nand_chip->ecc.bytes = 0;
-			break;
-		}
+		if (IS_ENABLED(CONFIG_NAND_ATMEL_PMECC))
+			res = atmel_pmecc_nand_init_params(dev, host);
+		else
+			res = atmel_hw_nand_init_params(dev, host);
+
+		if (res != 0)
+			goto err_hw_ecc;
 	}
 
 	/* second phase scan */
@@ -470,6 +1163,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 
 	nand_release(mtd);
 err_scan_tail:
+err_hw_ecc:
 err_scan_ident:
 err_no_card:
 	atmel_nand_disable(host);
diff --git a/drivers/mtd/nand/atmel_nand_ecc.h b/drivers/mtd/nand/atmel_nand_ecc.h
index 578c776..34f481e 100644
--- a/drivers/mtd/nand/atmel_nand_ecc.h
+++ b/drivers/mtd/nand/atmel_nand_ecc.h
@@ -3,7 +3,7 @@
  * Based on AT91SAM9260 datasheet revision B.
  *
  * Copyright (C) 2007 Andrew Victor
- * Copyright (C) 2007 Atmel Corporation.
+ * Copyright (C) 2007 - 2012 Atmel Corporation.
  *
  * This program is free software; you can redistribute it and/or modify it
  * under the terms of the GNU General Public License as published by the
@@ -36,4 +36,116 @@
 #define ATMEL_ECC_NPR		0x10			/* NParity register */
 #define		ATMEL_ECC_NPARITY	(0xffff << 0)		/* NParity */
 
+/* PMECC Register Definitions */
+#define ATMEL_PMECC_CFG			0x000	/* Configuration Register */
+#define		PMECC_CFG_BCH_ERR2		(0 << 0)
+#define		PMECC_CFG_BCH_ERR4		(1 << 0)
+#define		PMECC_CFG_BCH_ERR8		(2 << 0)
+#define		PMECC_CFG_BCH_ERR12		(3 << 0)
+#define		PMECC_CFG_BCH_ERR24		(4 << 0)
+
+#define		PMECC_CFG_SECTOR512		(0 << 4)
+#define		PMECC_CFG_SECTOR1024		(1 << 4)
+
+#define		PMECC_CFG_PAGE_1SECTOR		(0 << 8)
+#define		PMECC_CFG_PAGE_2SECTORS		(1 << 8)
+#define		PMECC_CFG_PAGE_4SECTORS		(2 << 8)
+#define		PMECC_CFG_PAGE_8SECTORS		(3 << 8)
+
+#define		PMECC_CFG_READ_OP		(0 << 12)
+#define		PMECC_CFG_WRITE_OP		(1 << 12)
+
+#define		PMECC_CFG_SPARE_ENABLE		(1 << 16)
+#define		PMECC_CFG_SPARE_DISABLE		(0 << 16)
+
+#define		PMECC_CFG_AUTO_ENABLE		(1 << 20)
+#define		PMECC_CFG_AUTO_DISABLE		(0 << 20)
+
+#define ATMEL_PMECC_SAREA		0x004	/* Spare area size */
+#define ATMEL_PMECC_SADDR		0x008	/* PMECC starting address */
+#define ATMEL_PMECC_EADDR		0x00c	/* PMECC ending address */
+#define ATMEL_PMECC_CLK			0x010	/* PMECC clock control */
+#define		PMECC_CLK_133MHZ		(2 << 0)
+
+#define ATMEL_PMECC_CTRL		0x014	/* PMECC control register */
+#define		PMECC_CTRL_RST			(1 << 0)
+#define		PMECC_CTRL_DATA			(1 << 1)
+#define		PMECC_CTRL_USER			(1 << 2)
+#define		PMECC_CTRL_ENABLE		(1 << 4)
+#define		PMECC_CTRL_DISABLE		(1 << 5)
+
+#define ATMEL_PMECC_SR			0x018	/* PMECC status register */
+#define		PMECC_SR_BUSY			(1 << 0)
+#define		PMECC_SR_ENABLE			(1 << 4)
+
+#define ATMEL_PMECC_IER			0x01c	/* PMECC interrupt enable */
+#define		PMECC_IER_ENABLE		(1 << 0)
+#define ATMEL_PMECC_IDR			0x020	/* PMECC interrupt disable */
+#define		PMECC_IER_DISABLE		(1 << 0)
+#define ATMEL_PMECC_IMR			0x024	/* PMECC interrupt mask */
+#define		PMECC_IER_MASK			(1 << 0)
+#define ATMEL_PMECC_ISR			0x028	/* PMECC interrupt status */
+#define ATMEL_PMECC_ECCx		0x040	/* PMECC ECC x */
+#define ATMEL_PMECC_REMx		0x240	/* PMECC REM x */
+
+/* PMERRLOC Register Definitions */
+#define ATMEL_PMERRLOC_ELCFG		0x000	/* Error location config */
+#define		PMERRLOC_ELCFG_SECTOR_512	(0 << 0)
+#define		PMERRLOC_ELCFG_SECTOR_1024	(1 << 0)
+#define		PMERRLOC_ELCFG_NUM_ERRORS(n)	((n) << 16)
+
+#define ATMEL_PMERRLOC_ELPRIM		0x004	/* Error location primitive */
+#define ATMEL_PMERRLOC_ELEN		0x008	/* Error location enable */
+#define ATMEL_PMERRLOC_ELDIS		0x00c	/* Error location disable */
+#define		PMERRLOC_DISABLE		(1 << 0)
+
+#define ATMEL_PMERRLOC_ELSR		0x010	/* Error location status */
+#define		PMERRLOC_ELSR_BUSY		(1 << 0)
+#define ATMEL_PMERRLOC_ELIER		0x014	/* Error location int enable */
+#define ATMEL_PMERRLOC_ELIDR		0x018	/* Error location int disable */
+#define ATMEL_PMERRLOC_ELIMR		0x01c	/* Error location int mask */
+#define ATMEL_PMERRLOC_ELISR		0x020	/* Error location int status */
+#define		PMERRLOC_ERR_NUM_MASK		(0x1f << 8)
+#define		PMERRLOC_CALC_DONE		(1 << 0)
+#define ATMEL_PMERRLOC_SIGMAx		0x028	/* Error location SIGMA x */
+#define ATMEL_PMERRLOC_ELx		0x08c	/* Error location x */
+
+/* Register access macros for PMECC */
+#define pmecc_readl_relaxed(addr, reg) \
+	readl((addr) + ATMEL_PMECC_##reg)
+
+#define pmecc_writel(addr, reg, value) \
+	writel((value), (addr) + ATMEL_PMECC_##reg)
+
+#define pmecc_readb_ecc_relaxed(addr, sector, n) \
+	readb((addr) + ATMEL_PMECC_ECCx + ((sector) * 0x40) + (n))
+
+#define pmecc_readl_rem_relaxed(addr, sector, n) \
+	readl((addr) + ATMEL_PMECC_REMx + ((sector) * 0x40) + ((n) * 4))
+
+#define pmerrloc_readl_relaxed(addr, reg) \
+	readl((addr) + ATMEL_PMERRLOC_##reg)
+
+#define pmerrloc_writel(addr, reg, value) \
+	writel((value), (addr) + ATMEL_PMERRLOC_##reg)
+
+#define pmerrloc_writel_sigma_relaxed(addr, n, value) \
+	writel((value), (addr) + ATMEL_PMERRLOC_SIGMAx + ((n) * 4))
+
+#define pmerrloc_readl_sigma_relaxed(addr, n) \
+	readl((addr) + ATMEL_PMERRLOC_SIGMAx + ((n) * 4))
+
+#define pmerrloc_readl_el_relaxed(addr, n) \
+	readl((addr) + ATMEL_PMERRLOC_ELx + ((n) * 4))
+
+/* Galois field dimension */
+#define PMECC_GF_DIMENSION_13			13
+#define PMECC_GF_DIMENSION_14			14
+
+#define PMECC_LOOKUP_TABLE_SIZE_512		0x2000
+#define PMECC_LOOKUP_TABLE_SIZE_1024		0x4000
+
+/* Time out value for reading PMECC status register */
+#define PMECC_MAX_TIMEOUT_MS			100
+
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
