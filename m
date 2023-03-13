Delivery-date: Mon, 13 Mar 2023 14:44:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiTQ-0061hb-R7
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:44:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiTQ-0005ck-Cc
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:44:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tc6WFFjME16ag+Oc++RllonDY9YQYm0LDDu1aYmitFI=; b=TQmkNx+G9di6+FBtdtGArhPOiy
	tcLAX+baIttY/2rT50hkVs8sATCYQbJWRqCjUL9IhC914NUUoo161sWQlIJ/64B2qNCtV1xr3sKKJ
	feviydkMLuQbj7nfS7UVTaN8nQahGjgl0W9zNVNBGCOcnORbVe6jsOZgZ69FXefCAUbRJsKPenY+8
	FE0a7Zx1Jrp6qpxXhbSQp+FuXLoFzuo+OMeWtkn7b1rJ/vhk3QayfEY+DYz3W5h6Lj8KJkE1RXzyY
	93HlhOfc5QbwnUDViOwCEVorxnmrVhmXvfWzp76MKD3hytSGVT2HiAcE3sT/8C1o4qar63IPoE2tx
	gOdK7yfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiRw-005wSF-Ib; Mon, 13 Mar 2023 13:42:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQr-005vmE-Sq
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:51 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQq-0004N9-OB
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-14-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064145_958002_BDFEDDCF 
X-CRM114-Status: GOOD (  10.35  )
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
Subject: [PATCH v2 14/23] scripts: imx-image: header_v2: add header_len
 parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make header_len a parameter which is required for later on i.MX8MM
FlexSPI image support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/imx-image.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index fd8dc23cf9..aaec4cc0fd 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -296,7 +296,8 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
  */
 
 static size_t
-add_header_v2(const struct config_data *data, void *buf, uint32_t offset)
+add_header_v2(const struct config_data *data, void *buf, uint32_t offset,
+	      size_t header_len)
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
@@ -308,7 +309,7 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset)
 		 * Restrict the imagesize to the PBL if given.
 		 * Also take the alignment for CSF into account.
 		 */
-		imagesize = roundup(data->pbl_code_size + HEADER_LEN, 0x4);
+		imagesize = roundup(data->pbl_code_size + header_len, 0x4);
 		if (data->csf)
 			imagesize = roundup(imagesize, 0x1000);
 	}
@@ -320,7 +321,7 @@ add_header_v2(const struct config_data *data, void *buf, uint32_t offset)
 	hdr->header.length	= htobe16(32);
 	hdr->header.version	= IVT_VERSION;
 
-	hdr->entry		= loadaddr + HEADER_LEN;
+	hdr->entry		= loadaddr + header_len;
 	if (dcdsize)
 		hdr->dcd_ptr = loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
 	if (create_usb_image) {
@@ -906,7 +907,7 @@ int main(int argc, char *argv[])
 
 		barebox_image_size += add_header_v2(&data, buf +
 						    signed_hdmi_firmware_size,
-						    data.image_ivt_offset);
+						    data.image_ivt_offset, HEADER_LEN);
 		break;
 	default:
 		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",

-- 
2.30.2



