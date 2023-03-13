Delivery-date: Mon, 13 Mar 2023 14:43:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSU-0061Gw-U0
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:43:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiST-00053Q-80
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:43:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=syWLrnHyAm04BGGWkxegJ/38goq9PAsZwJuRrPCaY/c=; b=MTfOImcKUMm4f06XEw4vsiM4F6
	PrUZq3HMSBXJSZiCUFExAUFig4+vUxxU22WLWd0L/XsuxNEpytUbQOIJJ5yJy0CIeWxlGMGnSv/ex
	QhmyZQX12w3vhxlRGYjYJrGdVLcsTMiapckk2o5YBxOezdR5Wwq6N4qkR/L1fIUgf1qmgjruCXQ6i
	JWPNEQxy1c1bsygf/tTT9sDbUewFy/LamLT9XHLkTZiyhakaX5kWo9/JdqNjwsv/gQ+Ldd90m3NJc
	MLz/dDCW2t+MI82shkXDFtTXo4BUCzVXzQ05tF5Zr4TSa20m4XjpAe416Zy6BWkKk1Izne1GA64cQ
	DZLtomFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiRB-005vvQ-GA; Mon, 13 Mar 2023 13:42:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQq-005vki-RS
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:48 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQp-0004N9-MO
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-6-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064145_022651_A5F1DF12 
X-CRM114-Status: GOOD (  12.50  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/23] mci: imx-esdhc-pbl: refactor the esdhc_load_image
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Loading a i.MX image always invovles a IVT and DCD header. The header
detection and verification can be reused by other boot mediums as well.
The only hardware dependencies are the custom read() implementations and
possible alignments. This commit is in preparation of adding QSPI boot
support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 42 ++++++++++++++++++++++++++++++------------
 1 file changed, 30 insertions(+), 12 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 0b6ab9b5d0..4884a68837 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -104,9 +104,13 @@ static int esdhc_read_blocks(struct fsl_esdhc_host *host, void *dst, size_t len)
 }
 
 #ifdef CONFIG_ARCH_IMX
-static int esdhc_search_header(struct fsl_esdhc_host *host,
-			       struct imx_flash_header_v2 **header_pointer,
-			       void *buffer, u32 *offset, u32 ivt_offset)
+#define HDR_SIZE	512
+
+static int
+imx_search_header(struct imx_flash_header_v2 **header_pointer,
+		  void *buffer, u32 *offset, u32 ivt_offset,
+		  int (*read)(void *dest, size_t len, void *priv),
+		  void *priv)
 {
 	int ret;
 	int i, header_count = 1;
@@ -114,15 +118,14 @@ static int esdhc_search_header(struct fsl_esdhc_host *host,
 	struct imx_flash_header_v2 *hdr;
 
 	for (i = 0; i < header_count; i++) {
-		ret = esdhc_read_blocks(host, buf,
-					*offset + ivt_offset + SECTOR_SIZE);
+		ret = read(buf, *offset + ivt_offset + HDR_SIZE, priv);
 		if (ret)
 			return ret;
 
 		hdr = buf + *offset + ivt_offset;
 
 		if (!is_imx_flash_header_v2(hdr)) {
-			pr_debug("IVT header not found on SD card. "
+			pr_debug("No IVT header! "
 				 "Found tag: 0x%02x length: 0x%04x "
 				 "version: %02x\n",
 				 hdr->header.tag, hdr->header.length,
@@ -150,9 +153,10 @@ static int esdhc_search_header(struct fsl_esdhc_host *host,
 	return 0;
 }
 
-static int
-esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
-		 ptrdiff_t entry, u32 offset, u32 ivt_offset, bool start)
+int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
+		   u32 ivt_offset, bool start, unsigned int alignment,
+		   int (*read)(void *dest, size_t len, void *priv),
+		   void *priv)
 {
 
 	void *buf = (void *)address;
@@ -162,9 +166,10 @@ esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
 	unsigned int ofs;
 
 	len = imx_image_size();
-	len = ALIGN(len, SECTOR_SIZE);
+	if (alignment)
+		len = ALIGN(len, alignment);
 
-	ret = esdhc_search_header(host, &hdr, buf, &offset, ivt_offset);
+	ret = imx_search_header(&hdr, buf, &offset, ivt_offset, read, priv);
 	if (ret)
 		return ret;
 
@@ -199,7 +204,7 @@ esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
 		buf = (void *)(entry - ofs);
 	}
 
-	ret = esdhc_read_blocks(host, buf, ofs + len);
+	ret = read(buf, ofs + len, priv);
 	if (ret) {
 		pr_err("Loading image failed with %d\n", ret);
 		return ret;
@@ -217,6 +222,19 @@ esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
 	bb();
 }
 
+static int imx_read_blocks(void *dest, size_t len, void *priv)
+{
+	return esdhc_read_blocks(priv, dest, len);
+}
+
+static int
+esdhc_load_image(struct fsl_esdhc_host *host, ptrdiff_t address,
+		 ptrdiff_t entry, u32 offset, u32 ivt_offset, bool start)
+{
+	return imx_load_image(address, entry, offset, ivt_offset, start,
+			      SECTOR_SIZE, imx_read_blocks, host);
+}
+
 static void imx_esdhc_init(struct fsl_esdhc_host *host,
 			   struct esdhc_soc_data *data)
 {

-- 
2.30.2



