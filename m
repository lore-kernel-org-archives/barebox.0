Delivery-date: Wed, 15 Jun 2022 14:40:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1SK5-0030UK-73
	for lore@lore.pengutronix.de; Wed, 15 Jun 2022 14:40:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1SK4-0003DK-W2
	for lore@pengutronix.de; Wed, 15 Jun 2022 14:40:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sk0i9LAEQL2U52euch0YwRiyuJuTPU85N2Lj5CZ/fnQ=; b=OlGYfyl4+RXUHfxVcrio3i3c//
	K+RZfzjWyQGqasS2z6iqS1GDHAY934wzfo9XV3HT7xqZA5twF+CfX33rcbsr1U+FvfIFHqAUgxCOU
	eVH8YH/O1SiTIreI4dUIOIDR1FectjaCRy8PVE+DF2kfmdciO3QCa9Y2px1RkxpI/ouGvGSltOmdn
	oIBHkY/5oUtduLQ6YBTGYLr1mjIdo6iyS4sUkevnz2CrwLcVi8X5sCxMwVLZS10xvcvKMWRrK6aV+
	Oqr6FdB/Ztk/hmlvISlRgUgzWixVET8pTaLGCzBXMUyEEtEjAP8lBwbzxbUsub2sJ36q1nO28KRLb
	2qYOycfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1SIO-00EUU8-MP; Wed, 15 Jun 2022 12:38:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1SII-00EUSt-Ty
	for barebox@lists.infradead.org; Wed, 15 Jun 2022 12:38:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o1SIB-0002tf-Su; Wed, 15 Jun 2022 14:38:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o1SI9-000gUS-Pu; Wed, 15 Jun 2022 14:38:39 +0200
Received: from ukl by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o1SIA-00BWkl-Hi; Wed, 15 Jun 2022 14:38:38 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 15 Jun 2022 14:38:37 +0200
Message-Id: <20220615123837.2747466-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_053847_012553_4AFE1AB9 
X-CRM114-Status: GOOD (  20.22  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: imx-usb-loader: simplify code flow for file size calculations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This change contains several changes that make the code flow easier to
understand (in my eyes at least):

 - Rename max_length to fststage_length
   In some cases the image is loaded in two stages: First the PBL which
   is started after the PBL is loaded completely and then the whole
   image. So the size of the first stage isn't about some maximum.

 - Drop unintuitive total_size variable
   This variable used to be 0 in the one stage case and the filesize
   otherwise. Just use fststage_length for the first stage and use the
   filesize for the second stage (if needed).

 - Don't call the first stage size "fsize" in the debug output.

 - Add offset for second stage to debug output.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 37 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 96d36fa0a85e..3676f87abb3a 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1213,7 +1213,7 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
 }
 
 static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
-		unsigned cnt, unsigned *max_length, unsigned *plugin,
+		unsigned cnt, size_t *fststage_length, unsigned *plugin,
 		unsigned *header_addr)
 {
 	const unsigned char *file_end = file_start + cnt;
@@ -1228,7 +1228,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 		*header_addr = ohdr->dcd_ptr_ptr - offsetof(struct imx_flash_header, dcd);
 		*plugin = 0;
 		if (err >= 0)
-			*max_length = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
+			*fststage_length = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
 
 		break;
 	}
@@ -1244,7 +1244,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 			return -1;
 		}
 
-		*max_length = ((struct imx_boot_data *)bd)->size;
+		*fststage_length = ((struct imx_boot_data *)bd)->size;
 		*plugin = ((struct imx_boot_data *)bd)->plugin;
 		((struct imx_boot_data *)bd)->plugin = 0;
 
@@ -1271,7 +1271,7 @@ static int get_payload_start(const unsigned char *p, uint32_t *ofs)
 }
 
 static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
-		unsigned *p_max_length, unsigned *p_plugin,
+		size_t *p_fststage_length, unsigned *p_plugin,
 		unsigned *p_header_addr)
 {
 	int ret;
@@ -1286,7 +1286,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 		if (!is_header(p))
 			continue;
 
-		ret = get_dl_start(p, buf, cnt, p_max_length, p_plugin, p_header_addr);
+		ret = get_dl_start(p, buf, cnt, p_fststage_length, p_plugin, p_header_addr);
 		if (ret < 0) {
 			printf("!!get_dl_start returned %i\n", ret);
 			return ret;
@@ -1303,7 +1303,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 
 		if (*p_plugin && (!curr->plug) && (!header_cnt)) {
 			header_cnt++;
-			header_max = header_offset + *p_max_length + 0x400;
+			header_max = header_offset + *p_fststage_length + 0x400;
 			if (header_max > cnt - 32)
 				header_max = cnt - 32;
 			printf("header_max=%x\n", header_max);
@@ -1329,18 +1329,17 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	unsigned char *buf = NULL;
 	unsigned char *image;
 	unsigned char *verify_buffer = NULL;
-	unsigned max_length;
+	size_t fststage_length;
 	unsigned plugin = 0;
 	unsigned header_addr = 0;
-	unsigned total_size = 0;
 
 	buf = read_file(curr->filename, &fsize);
 	if (!buf)
 		return -errno;
 
-	max_length = fsize;
+	fststage_length = fsize;
 
-	ret = process_header(curr, buf, fsize, &max_length, &plugin, &header_addr);
+	ret = process_header(curr, buf, fsize, &fststage_length, &plugin, &header_addr);
 	if (ret < 0)
 		goto cleanup;
 
@@ -1352,14 +1351,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		goto cleanup;
 	}
 
+	/* skip over the imx-image-part */
 	image = buf + header_offset;
 	fsize -= header_offset;
 
-	if (fsize > max_length) {
-		total_size = fsize;
-		fsize = max_length;
-	}
-
 	type = FT_APP;
 
 	if (verify) {
@@ -1379,10 +1374,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		}
 	}
 
-	printf("loading binary file(%s) to 0x%08x, fsize=%zu type=%d...\n",
-			curr->filename, header_addr, fsize, type);
+	printf("loading binary file(%s) to 0x%08x, fststage_length=%zu type=%d, hdroffset=%u...\n",
+			curr->filename, header_addr, fststage_length, type, header_offset);
 
-	ret = load_file(image, fsize, header_addr, type, false);
+	ret = load_file(image, fststage_length, header_addr, type, false);
 	if (ret < 0)
 		goto cleanup;
 
@@ -1420,7 +1415,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 			return ret;
 	}
 
-	if (total_size) {
+	if (fststage_length < fsize) {
 		uint32_t ofs;
 
 		ret = get_payload_start(image, &ofs);
@@ -1428,9 +1423,9 @@ static int do_irom_download(struct usb_work *curr, int verify)
 			printf("Cannot get offset of payload\n");
 			goto cleanup;
 		}
-		printf("Loading full image\n");
+		printf("Loading full image from offset %u\n", ofs);
 		printf("Note: This needs board support on the other end\n");
-		load_file(image + ofs, total_size - ofs, 0, 0, true);
+		load_file(image + ofs, fsize - ofs, 0, 0, true);
 	}
 
 	ret = 0;

base-commit: a91d44f25b0a279260d2c5710d7c8a7d7d0d1d78
-- 
2.30.2



