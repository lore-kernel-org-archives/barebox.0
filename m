Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22d.google.com ([2a00:1450:400c:c09::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUG-000426-1s
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:55 +0000
Received: by wmec201 with SMTP id c201so86268460wme.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:26 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:09 +0100
Message-Id: <1448048172-10080-17-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 16/19] mtd: nand_mrvl_nfc: Add support for HW BCH ECC
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Add support for HW BCH ECC for those HW versions that support it.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index f43200dcf2c7..a5ac66195217 100644
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
@@ -426,6 +428,17 @@ static void mrvl_nand_start(struct mrvl_nand_host *host)
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
@@ -794,8 +807,14 @@ static int mrvl_nand_read_page_hwecc(struct mtd_info *mtd,
 		else
 			ret = -EBADMSG;
 	}
-	if (ndsr & NDSR_CORERR)
+	if (ndsr & NDSR_CORERR) {
 		ret = 1;
+		if ((host->hwflags & HWFLAGS_ECC_BCH) && host->ecc_bch) {
+			ret = NDSR_ERR_CNT(ndsr);
+			ndsr &= ~(NDSR_ERR_CNT_MASK << NDSR_ERR_CNT_OFF);
+			nand_writel(host, NDSR, ndsr);
+		}
+	}
 	dev_dbg(host->dev, "%s(buf=%p, page=%d, oob_required=%d) => %d\n",
 		__func__, buf, page, oob_required, ret);
 	return ret;
@@ -1008,6 +1027,11 @@ static int mrvl_nand_scan(struct mtd_info *mtd)
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
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
