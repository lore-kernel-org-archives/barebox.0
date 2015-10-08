Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKv-0001mq-Jh
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:58 +0000
Received: by wiclk2 with SMTP id lk2so43824722wic.1
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:31 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:16 +0200
Message-Id: <1444341979-19157-15-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 14/17] mtd: nand_mrvl_nfc: Add support for HW BCH ECC
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Add support for HW BCH ECC for those HW versions that support it.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 7c26ad15874d..16752c1aa4d5 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -92,6 +92,8 @@
 #define NDSR_RDDREQ		(0x1 << 1)
 #define NDSR_WRCMDREQ		(0x1)
 
+#define NDECCCTRL_BCH_EN	BIT(0)
+
 #define NDCB0_LEN_OVRD		(0x1 << 28)
 #define NDCB0_ST_ROW_EN         (0x1 << 26)
 #define NDCB0_AUTO_RS		(0x1 << 25)
@@ -419,6 +421,17 @@ static void mrvl_nand_start(struct mrvl_nand_host *host)
 {
 	uint32_t ndcr;
 
+	if (host->hwflags & HWFLAGS_ECC_BCH) {
+		uint32_t reg = nand_readl(host, NDECCCTRL);
+
+		if (host->use_ecc && host->ecc_bch)
+			reg |= NDECCCTRL_BCH_EN;
+		else
+			reg &= ~NDECCCTRL_BCH_EN;
+
+		nand_writel(host, NDECCCTRL, reg);
+	}
+
 	ndcr = host->reg_ndcr;
 	if (host->use_ecc)
 		ndcr |= NDCR_ECC_EN;
@@ -787,8 +800,15 @@ static int mrvl_nand_read_page_hwecc(struct mtd_info *mtd,
 		else
 			ret = -EBADMSG;
 	}
-	if (ndsr & NDSR_CORERR)
-		ret = 1;
+	if (ndsr & NDSR_CORERR) {
+		if ((host->hwflags & HWFLAGS_ECC_BCH) && host->ecc_bch) {
+			ret = NDSR_ERR_CNT(ndsr);
+			ndsr &= ~(NDSR_ERR_CNT_MASK << NDSR_ERR_CNT_OFF);
+			nand_writel(host, NDSR, ndsr);
+		}
+		else
+			ret = 1;
+	}
 	dev_dbg(host->dev, "%s(buf=%p, page=%d, oob_required=%d) => %d\n",
 		__func__, buf, page, oob_required, ret);
 	return ret;
@@ -1001,6 +1021,11 @@ static int mrvl_nand_scan(struct mtd_info *mtd)
 	ndcr |= NDCR_RD_ID_CNT(host->read_id_bytes);
 	host->reg_ndcr = ndcr;
 
+	/* Device detection must be done with BCH ECC disabled */
+	if (host->hwflags & HWFLAGS_ECC_BCH)
+		nand_writel(host, NDECCCTRL,
+			    nand_readl(host, NDECCCTRL) & ~NDECCCTRL_BCH_EN);
+
 	mrvl_nand_set_timing(host, true);
 	if (nand_scan_ident(mtd, 1, NULL)) {
 		host->reg_ndcr |= NDCR_DWIDTH_M | NDCR_DWIDTH_C;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
