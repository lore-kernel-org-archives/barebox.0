Delivery-date: Wed, 12 Feb 2025 15:10:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRG-001SMM-0M
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:10:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDRE-0001UO-HF
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:10:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=95HpNjhgfsTFXbkREG/Tg72tCHVkfppcQyNz8kmzey0=; b=GHV8ygfhbog/2AwcHTgcQJujnt
	39viS3QF/IO1Pxxsw3sQaxIHe0DGYJyoOv9kkOvthF9rAyGev1EKQH04WaJQi0hrfrsDeULKMpYob
	GuFYQ1D6llb1Jgs1DCimvjfaZEHPIAAIlnxYQlsUAxBZQK0NRNBvJUCBs7CRH+Zf9rbD/+XqSGptD
	P2TA3juYrP9WyAzVpvA7mPv1Wp6rTx9MgJJTbvX1EzwPdUvdB5dj7tSX0rg/IFwll98JO2o5d1d5k
	EHELErcvoRR6f0J3Xxe0769t7LOB+ClYASlkBS+9QH6Irwr69ibtNE2vLRd44kw3qjHMk4GQXWbAO
	pufuEOEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQo-00000007c37-1x2J;
	Wed, 12 Feb 2025 14:09:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDQi-00000007bxw-1H7e
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:09:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQh-00012B-1y; Wed, 12 Feb 2025 15:09:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-000b20-2G;
	Wed, 12 Feb 2025 15:09:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDQg-00AeO5-1t;
	Wed, 12 Feb 2025 15:09:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2025 15:09:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-k3-emmc-v2-9-8dd1bb0ce60a@pengutronix.de>
References: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
In-Reply-To: <20250212-k3-emmc-v2-0-8dd1bb0ce60a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739369370; l=5337;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=sy9dSvbjrsycaTjFSmDDAtkhfQmM0k1VXyIEjji70wA=;
 b=8spgPY+gAbDfX5fZ1HVME+Pf7czcVbW3zUG/2gXRCQyx4emDFmPtdA2Lf8gjQh3ZaxgUhT+wy
 t/Nk1zaxL3XB6ctVIh/ZxYiWy5ghR28riBrJxlWZXvv4+uds1gYE0fX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060932_358146_26E754D7 
X-CRM114-Status: GOOD (  22.24  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/20] fip: add fip_image_open()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a fip_image_open() function as an alternative to fip_parse().
Unline fip_parse() the new function:

- Allows to specify an offset with the file for reading a FIP image from
  partitions
- Does not read past the image when the FIP image is on a partition
  which is bigger than the FIP image
- less memory consumption

fip_image_open() is mainly useful for reading a FIP image without the
intent of modifying it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/fiptool.h |   4 ++
 lib/fip.c         | 132 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 135 insertions(+), 1 deletion(-)

diff --git a/include/fiptool.h b/include/fiptool.h
index 6a12466c29..bc42f7edd6 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -30,12 +30,14 @@ struct fip_image_desc {
 struct fip_image {
 	struct fip_toc_entry toc_e;
 	void                *buffer;
+	bool                 buf_no_free;
 };
 
 struct fip_state {
 	struct list_head descs;
 	size_t nr_image_descs;
 	int verbose;
+	void *buffer;
 };
 
 #define pr_verbose(...) do { \
@@ -92,4 +94,6 @@ extern toc_entry_t plat_def_toc_entries[];
 #define fip_for_each_desc_safe(fip, e, tmp) \
         list_for_each_entry_safe(e, tmp, &(fip)->descs, list)
 
+struct fip_state *fip_image_open(const char *filename, size_t offset);
+
 #endif /* FIPTOOL_H */
diff --git a/lib/fip.c b/lib/fip.c
index 075cd0e1e6..39b0fd20aa 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -58,7 +58,8 @@ void fip_free_image_desc(struct fip_image_desc *desc)
 	free(desc->cmdline_name);
 	free(desc->action_arg);
 	if (desc->image) {
-		free(desc->image->buffer);
+		if (!desc->image->buf_no_free)
+			free(desc->image->buffer);
 		free(desc->image);
 	}
 	free(desc);
@@ -92,6 +93,7 @@ void fip_free(struct fip_state *fip)
 
 	ASSERT(fip->nr_image_descs == 0);
 
+	free(fip->buffer);
 	free(fip);
 }
 
@@ -430,3 +432,131 @@ int fip_update(struct fip_state *fip)
 
 	return 0;
 }
+
+/*
+ * fip_image_open - open a FIP image for readonly access
+ * @filename: The filename of the FIP image
+ * @offset: The offset of the FIP image in the file
+ *
+ * This opens a FIP image for readonly access. This is an alternative
+ * implementation for fip_parse() with these differences:
+ * - suitable for reading FIP images from raw partitions. This function
+ *   only reads the FIP image, even when the partition is bigger than the
+ *   image
+ * - Allows to specify an offset within the partition where the FIP image
+ *   starts
+ * - Do not memdup the images from the full FIP image
+ *
+ * This function is for easy readonly access to the images within the FIP
+ * image. Do not call any of the above FIP manipulation functions other than
+ * fip_free() on an image opened with this function.
+ */
+struct fip_state *fip_image_open(const char *filename, size_t offset)
+{
+	fip_toc_header_t toc_header;
+	int ret;
+	int fd;
+	struct fip_state *fip_state;
+	LIST_HEAD(entries);
+	size_t fip_headers_size, total = 0;
+	struct fip_image_desc *desc;
+	off_t pos;
+	int n_entries = 0;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return ERR_PTR(fd);
+
+	fip_state = fip_new();
+
+	pos = lseek(fd, offset, SEEK_SET);
+	if (pos != offset) {
+		ret = -EINVAL;
+		goto err;
+	}
+
+	ret = read_full(fd, &toc_header, sizeof(toc_header));
+	if (ret < 0)
+		goto err;
+
+	if (ret < sizeof(toc_header)) {
+		ret = -ENODATA;
+		goto err;
+	}
+
+	if (toc_header.name != TOC_HEADER_NAME) {
+		pr_err("%s is not a FIP file: unknown magic = 0x%08x\n",
+		       filename, toc_header.name);
+		ret = -EINVAL;
+		goto err;
+	}
+
+	/* read all toc entries */
+	while (1) {
+		struct fip_image_desc *desc = xzalloc(sizeof(*desc));
+		struct fip_image *image = xzalloc(sizeof(*image));
+		struct fip_toc_entry *toc_entry = &image->toc_e;
+
+		desc->image = image;
+
+		ret = read_full(fd, toc_entry, sizeof(*toc_entry));
+		if (ret < 0)
+			goto err;
+		if (ret < sizeof(*toc_entry)) {
+			ret = -ENODATA;
+			goto err;
+		}
+
+		list_add_tail(&desc->list, &fip_state->descs);
+
+		pr_debug("Read TOC entry %pU %llu %llu\n", &toc_entry->uuid,
+			 toc_entry->offset_address, toc_entry->size);
+
+		/* Found the ToC terminator, we are done. */
+		if (uuid_is_null(&toc_entry->uuid))
+			break;
+	}
+
+	/* determine buffer size */
+	fip_for_each_desc(fip_state, desc) {
+		uint64_t this_end = desc->image->toc_e.offset_address + desc->image->toc_e.size;
+
+		if (this_end > total)
+			total = this_end;
+		n_entries++;
+	}
+
+	fip_headers_size = n_entries * sizeof(struct fip_toc_entry) + sizeof(fip_toc_header_t);
+
+	total -= fip_headers_size;
+
+	fip_state->buffer = malloc(total);
+	if (!fip_state->buffer) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	ret = read_full(fd, fip_state->buffer, total);
+	if (ret < 0)
+		goto err;
+
+	if (ret < total) {
+		ret = -ENODATA;
+		goto err;
+	}
+
+	close(fd);
+
+	fip_for_each_desc(fip_state, desc) {
+		desc->image->buffer = fip_state->buffer +
+			desc->image->toc_e.offset_address - fip_headers_size;
+		desc->image->buf_no_free = true;
+	}
+
+	return fip_state;
+err:
+	close(fd);
+	fip_free(fip_state);
+
+	return ERR_PTR(ret);
+}

-- 
2.39.5



