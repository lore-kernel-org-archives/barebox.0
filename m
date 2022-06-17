Delivery-date: Fri, 17 Jun 2022 10:28:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o27LT-0050AK-LI
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 10:28:48 +0200
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o27LS-0007UZ-Vn
	for lore@pengutronix.de; Fri, 17 Jun 2022 10:28:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3UG9MbYZguOv0A9ncOwL+qZBfSqTukIomsUK5e5RsP4=; b=VAGsPYuoHbQCIXiZIb2DITNfzh
	U36lCgvwJbFtvI5ausrOddf7w/iRri87K5Rrw7D07tS6iZT9si/DaPsF0dAe/PXJ34gWyoOTTQ/q8
	quWIuAl21RgeWT8TxtLTootVSK5hTRSahTxpqqEpIt3qp/UR2eKdH1jfhoQuWdaqvtymPRIDiQvhq
	EdxMAJiImTPwilSfv+1HqG4LxvOsry1p9qc8hWdJQSZ4RhRlQlnZa0y2XF6XyBLGtlWdsEd7G0f2s
	hiWYkELqcOrajX1it2HcDB39YDOU/2EK5f7lvFVngcoFCYEvTBqJE3tRHzeBDP0sn9B6SANXwwWm6
	jLqlgNjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27I3-006HtM-Fk; Fri, 17 Jun 2022 08:25:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27Hh-006HkD-BK
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 08:24:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o27He-0006sE-7W; Fri, 17 Jun 2022 10:24:50 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o27Hc-0011Wl-0v; Fri, 17 Jun 2022 10:24:49 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o27Hc-00GvRm-Os; Fri, 17 Jun 2022 10:24:48 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Jun 2022 10:24:14 +0200
Message-Id: <20220617082414.323238-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220617081357.GJ1615@pengutronix.de>
References: <20220617081357.GJ1615@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5645; h=from:subject; bh=UIaqWhnkxeCICUJBu1I5JDQGuqC8uLM0zpbjOF8w/xM=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBirDoq8JcauVJXNAl0iW4rcD7/4u2IOZQbw2597gXG 35PhIMeJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYqw6KgAKCRDB/BR4rcrsCT2jB/ 9aenXJe+/NBKDG/xfYU8V/WGwGb+YxRIVp2LcTobCY2oIL/0lckAb5OqUNRFJVFt2kNR/UPL5XMWvk 2FAwSeINiACcvFXqF0+3964o3oLOszkPJTsYY1l9pTSorNmIsxfCKYLUMsscwu3LvRM7WM+E0Hh+9U YqWnSvkX+podZFPSSBsRwQHJxfyG8F1XSNVqQK8xqTqrybte8/woENM5tZJhMam0Flp0gUom+O/ljJ KEHMQELPMzQKbc5/YUsrhv6qyDMnW8HvLYXU4PFES41jT1EcMkOOjKjXA3azSzYl3UR8/MI6Uz+jB0 +RqPwLFKgDeCGION0PMHHqRw5It/fg
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_012453_463006_C1261C76 
X-CRM114-Status: GOOD (  20.05  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: imx-usb-loader: simplify code flow for file size calculations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This change contains several changes that make the code flow easier to
understand (in my eyes at least):

 - Rename max_length to firststage_len
   In some cases the image is loaded in two stages: First the PBL which
   is started after the PBL is loaded completely and then the whole
   image. So the size of the first stage isn't about some maximum.

 - Drop unintuitive total_size variable
   This variable used to be 0 in the one stage case and the filesize
   otherwise. Just use firststage_len for the first stage and use the
   filesize for the second stage (if needed).

 - Don't call the first stage size "fsize" in the debug output.

 - Add offset for second stage to debug output.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 scripts/imx/imx-usb-loader.c | 37 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index d8b284298920..4448b19b54bb 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1218,7 +1218,7 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
 }
 
 static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
-		unsigned cnt, unsigned *max_length, unsigned *plugin,
+		unsigned cnt, size_t *firststage_len, unsigned *plugin,
 		unsigned *header_addr)
 {
 	const unsigned char *file_end = file_start + cnt;
@@ -1233,7 +1233,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 		*header_addr = ohdr->dcd_ptr_ptr - offsetof(struct imx_flash_header, dcd);
 		*plugin = 0;
 		if (err >= 0)
-			*max_length = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
+			*firststage_len = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
 
 		break;
 	}
@@ -1249,7 +1249,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
 			return -1;
 		}
 
-		*max_length = ((struct imx_boot_data *)bd)->size;
+		*firststage_len = ((struct imx_boot_data *)bd)->size;
 		*plugin = ((struct imx_boot_data *)bd)->plugin;
 		((struct imx_boot_data *)bd)->plugin = 0;
 
@@ -1276,7 +1276,7 @@ static int get_payload_start(const unsigned char *p, uint32_t *ofs)
 }
 
 static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
-		unsigned *p_max_length, unsigned *p_plugin,
+		size_t *p_firststage_len, unsigned *p_plugin,
 		unsigned *p_header_addr)
 {
 	int ret;
@@ -1291,7 +1291,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 		if (!is_header(p))
 			continue;
 
-		ret = get_dl_start(p, buf, cnt, p_max_length, p_plugin, p_header_addr);
+		ret = get_dl_start(p, buf, cnt, p_firststage_len, p_plugin, p_header_addr);
 		if (ret < 0) {
 			printf("!!get_dl_start returned %i\n", ret);
 			return ret;
@@ -1308,7 +1308,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
 
 		if (*p_plugin && (!curr->plug) && (!header_cnt)) {
 			header_cnt++;
-			header_max = header_offset + *p_max_length + 0x400;
+			header_max = header_offset + *p_firststage_len + 0x400;
 			if (header_max > cnt - 32)
 				header_max = cnt - 32;
 			printf("header_max=%x\n", header_max);
@@ -1334,18 +1334,17 @@ static int do_irom_download(struct usb_work *curr, int verify)
 	unsigned char *buf = NULL;
 	unsigned char *image;
 	unsigned char *verify_buffer = NULL;
-	unsigned max_length;
+	size_t firststage_len;
 	unsigned plugin = 0;
 	unsigned header_addr = 0;
-	unsigned total_size = 0;
 
 	buf = read_file(curr->filename, &fsize);
 	if (!buf)
 		return -errno;
 
-	max_length = fsize;
+	firststage_len = fsize;
 
-	ret = process_header(curr, buf, fsize, &max_length, &plugin, &header_addr);
+	ret = process_header(curr, buf, fsize, &firststage_len, &plugin, &header_addr);
 	if (ret < 0)
 		goto cleanup;
 
@@ -1357,14 +1356,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
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
@@ -1384,10 +1379,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		}
 	}
 
-	printf("loading binary file(%s) to 0x%08x, fsize=%zu type=%d...\n",
-			curr->filename, header_addr, fsize, type);
+	printf("loading binary file(%s) to 0x%08x, firststage_len=%zu type=%d, hdroffset=%u...\n",
+			curr->filename, header_addr, firststage_len, type, header_offset);
 
-	ret = load_file(image, fsize, header_addr, type, false);
+	ret = load_file(image, firststage_len, header_addr, type, false);
 	if (ret < 0)
 		goto cleanup;
 
@@ -1425,7 +1420,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 			return ret;
 	}
 
-	if (total_size) {
+	if (firststage_len < fsize) {
 		uint32_t ofs;
 
 		ret = get_payload_start(image, &ofs);
@@ -1433,9 +1428,9 @@ static int do_irom_download(struct usb_work *curr, int verify)
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

base-commit: 339737fcf0a7c4be1d1984283619cb14aaee6aff
-- 
2.36.1



