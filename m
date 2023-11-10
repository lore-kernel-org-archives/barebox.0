Delivery-date: Fri, 10 Nov 2023 13:59:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6d-005rQT-1K
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6c-00035V-EO
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xzji4D2AdjkFYvXlvnyH0ofvhho+oNX3C8WrSo/9hCc=; b=E/SM5D3kcuRLM1bEy73IF4knum
	Pm6hLcd9/OnwtOeZMO9svv6Mei+I1ZYM6RBcnkvcnEUIVeslc6Bb4rwt0khtrM2qsTwGNyP64Tgzf
	07CX7J6DocK9SnLw215PPevOjfrNpEc4LNX1hjr+OgNXeMgoXTeqR5mt6DfTaGcP+32zP1+oDe55o
	rIoCChw59hPoPCYXO52iP95mdqu8NBp7Gl29io5+rK48knNgvIQIRV0YFBxh5k5dOgxeJ31VEmXQm
	RKQ+RcXzGQIW4pBz9m7ukLXg34bzQZ+gHGFyROWJLGbtK3OaVWQGL7/d3UgtAOG9zK3YIDcUp7CRh
	Z/M+KS3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5R-008jtH-05;
	Fri, 10 Nov 2023 12:58:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5J-008jo3-33
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026N-Dc; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081XA-PC; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008rzH-2K;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:40 +0100
Message-Id: <20231110125800.1901232-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045805_982799_CFD4B2B9 
X-CRM114-Status: GOOD (  14.84  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/25] scripts: imx9image: Add PBL size option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX9 ROM can only load images that fit into OCRAM. The barebox
image is usually bigger. This adds a -pblsize option that has the
effect that it sets the image size in the header to the provided pbl
size, so that the ROM only partially loads the image. barebox will
then use the ROMAPI to load the rest of the image.

We also add an additional alignment of 1KiB to the pblsize. This
helps us with USB booting, as the USB protocol uploads in chunks of
1KiB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx9image.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/scripts/imx9image.c b/scripts/imx9image.c
index a991ba5f35..53fb879882 100644
--- a/scripts/imx9image.c
+++ b/scripts/imx9image.c
@@ -346,7 +346,7 @@ static void set_imx_hdr_v3(struct imx_header_v3 *imxhdr, uint32_t dcd_len,
 	fhdr_v3->version = IVT_VERSION_B0;
 }
 
-static void set_image_hash(struct boot_img *img, char *filename, uint32_t hash_type)
+static void set_image_hash(struct boot_img *img, char *filename, uint32_t hash_type, int size)
 {
 	FILE *fp = NULL;
 	char sha_command[512];
@@ -383,13 +383,11 @@ static void set_image_hash(struct boot_img *img, char *filename, uint32_t hash_t
 		break;
 	}
 
-	if (img->size == 0 || !filename)
+	if (!size || !filename)
 		sprintf(sha_command, "%s /dev/null", digest_type);
 	else
-		sprintf(sha_command, "dd status=none if=/dev/zero of=tmp_pad bs=%d count=1;\
-				dd status=none if=\'%s\' of=tmp_pad conv=notrunc;\
-				%s tmp_pad; rm -f tmp_pad",
-			img->size, filename, digest_type);
+		sprintf(sha_command, "cat \'%s\' /dev/zero | dd status=none bs=1 count=%d | %s",
+			filename, size, digest_type);
 
 	memset(img->hash, 0, HASH_MAX_LEN);
 
@@ -562,7 +560,7 @@ static void set_image_array_entry(struct flash_header_v3 *container, soc_type_t
 	img->offset = offset;  /* Is re-adjusted later */
 	img->size = size;
 
-	set_image_hash(img, tmp_filename, get_hash_algo(images_hash));
+	set_image_hash(img, tmp_filename, get_hash_algo(images_hash), size);
 
 	switch (type) {
 	case SECO:
@@ -678,7 +676,7 @@ static void set_image_array_entry(struct flash_header_v3 *container, soc_type_t
 			img = &container->img[container->num_images];
 			img->hab_flags |= IMG_TYPE_DCD_DDR;
 			img->hab_flags |= CORE_SC << BOOT_IMG_FLAGS_CORE_SHIFT;
-			set_image_hash(img, "/dev/null", IMAGE_HASH_ALGO_DEFAULT);
+			set_image_hash(img, "/dev/null", IMAGE_HASH_ALGO_DEFAULT, 0);
 			img->offset = offset + img->size;
 			img->entry = read_dcd_offset(tmp_filename);
 			img->dst = img->entry - 1;
@@ -871,6 +869,8 @@ static void copy_file(int ifd, const char *datafile, int pad, int offset)
 	(void) close (dfd);
 }
 
+static int pblsize;
+
 static int build_container_qx_qm_b0(soc_type_t soc, uint32_t sector_size, uint32_t ivt_offset,
 				    char *out_file, bool emmc_fastboot, image_t *image_stack,
 				    bool dcd_skip, uint8_t fuse_version, uint16_t sw_version,
@@ -920,6 +920,7 @@ static int build_container_qx_qm_b0(soc_type_t soc, uint32_t sector_size, uint32
 	img_sp = image_stack;
 
 	while (img_sp->option != NO_IMG) { /* stop once we reach null terminator */
+		int isize;
 		switch (img_sp->option) {
 		case FCB:
 		case AP:
@@ -934,11 +935,14 @@ static int build_container_qx_qm_b0(soc_type_t soc, uint32_t sector_size, uint32
 				exit(EXIT_FAILURE);
 			}
 			check_file(&sbuf, img_sp->filename);
+			isize = ALIGN(sbuf.st_size, sector_size);
+			if (pblsize && isize > ALIGN(pblsize, 1024))
+				isize = ALIGN(pblsize, 1024);
 			set_image_array_entry(&imx_header.fhdr[container],
 						soc,
 						img_sp,
 						file_off,
-						ALIGN(sbuf.st_size, sector_size),
+						isize,
 						img_sp->filename,
 						dcd_skip,
 						images_hash);
@@ -1788,6 +1792,7 @@ int main(int argc, char **argv)
 		{"upower", required_argument, NULL, 'w'},
 		{"fcb", required_argument, NULL, 'b'},
 		{"padding", required_argument, NULL, 'G'},
+		{"pblsize", required_argument, NULL, 0x1000},
 		{NULL, 0, NULL, 0}
 	};
 
@@ -2122,6 +2127,9 @@ int main(int argc, char **argv)
 			printf("Padding length:\t%s bytes\n", optarg);
 			file_off = atoi(optarg);
 			break;
+		case 0x1000:
+			pblsize = atoi(optarg);
+			break;
 		case '?':
 		default:
 			/* invalid option */
-- 
2.39.2



