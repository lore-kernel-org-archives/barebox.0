Delivery-date: Wed, 12 Mar 2025 12:17:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsK5D-00D6IS-10
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 12:17:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsK5B-0005v1-N7
	for lore@pengutronix.de; Wed, 12 Mar 2025 12:17:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8B/8qyHJSerWaSYF6BcycdEpZnli8p+lG6UCANzzj4s=; b=Ly1EV3RNHCnhIqVsXO9AYfL0wn
	Ono6c3n2YDjYwZ265crajAHrtRE4/YinBwtCYESfYIais7r9L3+mlFh5r/xFSLF8S8Z5kmsgLodhL
	HXCjVd0FyhxzeOgAOmitC1A+/z05vtp97FvPvSWNBgnXOhObLTuFpsauc4np6bHX6y3bYLMTu5C4K
	WtIo97TfBY//94CwDO+XMCwq9pqgpp33CQ3v8OW5ZPpKiPTH9GAo4j2IJMY9OVKcVWKt8POT2mSRB
	G+cdCkzrDLEGWDi28E7Odzmf5MDNGnQRxeT8u6Zqgv2P8e/DUwoH8UOZJlAJUJsURVB/e/9waK7o7
	gOQMXAOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsK4c-00000008EEv-2Nyi;
	Wed, 12 Mar 2025 11:16:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsJrD-00000008CUD-3Vis
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 11:02:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tsJrB-0004QV-5H; Wed, 12 Mar 2025 12:02:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsJrA-005LO9-38;
	Wed, 12 Mar 2025 12:02:36 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsJrA-009WBb-2l;
	Wed, 12 Mar 2025 12:02:36 +0100
Date: Wed, 12 Mar 2025 12:02:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <Z9FpzJGBShGoi0Ji@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
 <20250311-am625-secure-v2-5-3cbbfa092346@pengutronix.de>
 <20250311134207.x4o2ccin3jx6pdpj@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250311134207.x4o2ccin3jx6pdpj@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_040240_034602_8861FD77 
X-CRM114-Status: GOOD (  32.27  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 05/14] fip: rework fip_image_open()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 11, 2025 at 02:42:07PM +0100, Marco Felsch wrote:
> >  struct fip_state *fip_image_open(const char *filename, size_t offset)
> >  {
> > @@ -470,11 +466,13 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
> >  	int ret;
> >  	int fd;
> >  	struct fip_state *fip_state;
> > -	LIST_HEAD(entries);
> >  	size_t fip_headers_size, total = 0;
> > -	struct fip_image_desc *desc;
> >  	off_t pos;
> >  	int n_entries = 0;
> > +	struct fip_toc_entry toc_entries[16];
> 				 	 ^
> Why did you used 16?

Okay okay, I allocated the entries dynamically now to support an
arbitrary number of toc entries.

Sascha

-------------------------------8<------------------------------

>From 87bc7468e698e3404345ee601885ec186de7f4fa Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:18 +0100
Subject: [PATCH] fip: rework fip_image_open()

fip_image_open() used to do all the parsing into a struct fip_state
itself. Instead, only load the FIP image into a buffer and call
fip_do_parse_buf() with this buffer. This has the advantage that we
have all parsing of the FIP image in a single place. Also this helps
with a followup patch which calculates a sha256 over a FIP image
which can easily done when we have the whole FIP image in a contiguous
buffer.

Link: https://lore.kernel.org/r/20250311-am625-secure-v2-5-3cbbfa092346@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/fip.c | 90 ++++++++++++++++++++++++++++++++-----------------------
 1 file changed, 53 insertions(+), 37 deletions(-)

diff --git a/lib/fip.c b/lib/fip.c
index 23e82098da..0d4ea54605 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -23,6 +23,8 @@
 #include <string.h>
 #include <libfile.h>
 #include <fs.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
 
 #include <fip.h>
 #include <fiptool.h>
@@ -446,23 +448,23 @@ int fip_update(struct fip_state *fip)
 	return 0;
 }
 
+struct toc_entry_list {
+	struct fip_toc_entry toc;
+	struct list_head list;
+};
+
 /*
- * fip_image_open - open a FIP image for readonly access
+ * fip_image_open - open a FIP image
  * @filename: The filename of the FIP image
  * @offset: The offset of the FIP image in the file
  *
- * This opens a FIP image for readonly access. This is an alternative
- * implementation for fip_parse() with these differences:
+ * This opens a FIP image. This is an alternative implementation for
+ * fip_parse() with these differences:
  * - suitable for reading FIP images from raw partitions. This function
  *   only reads the FIP image, even when the partition is bigger than the
  *   image
  * - Allows to specify an offset within the partition where the FIP image
  *   starts
- * - Do not memdup the images from the full FIP image
- *
- * This function is for easy readonly access to the images within the FIP
- * image. Do not call any of the above FIP manipulation functions other than
- * fip_free() on an image opened with this function.
  */
 struct fip_state *fip_image_open(const char *filename, size_t offset)
 {
@@ -470,11 +472,13 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
 	int ret;
 	int fd;
 	struct fip_state *fip_state;
-	LIST_HEAD(entries);
 	size_t fip_headers_size, total = 0;
-	struct fip_image_desc *desc;
 	off_t pos;
 	int n_entries = 0;
+	void *buf, *ptr;
+	struct fip_toc_entry *toc_entry;
+	struct toc_entry_list *toc_entry_list, *tmp;
+	LIST_HEAD(toc_entries);
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0)
@@ -506,11 +510,10 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
 
 	/* read all toc entries */
 	while (1) {
-		struct fip_image_desc *desc = xzalloc(sizeof(*desc));
-		struct fip_image *image = xzalloc(sizeof(*image));
-		struct fip_toc_entry *toc_entry = &image->toc_e;
+		uint64_t this_end;
 
-		desc->image = image;
+		toc_entry_list = xzalloc(sizeof(*toc_entry_list));
+		toc_entry = &toc_entry_list->toc;
 
 		ret = read_full(fd, toc_entry, sizeof(*toc_entry));
 		if (ret < 0)
@@ -520,54 +523,67 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
 			goto err;
 		}
 
-		list_add_tail(&desc->list, &fip_state->descs);
-
 		pr_debug("Read TOC entry %pU %llu %llu\n", &toc_entry->uuid,
 			 toc_entry->offset_address, toc_entry->size);
 
-		/* Found the ToC terminator, we are done. */
-		if (uuid_is_null(&toc_entry->uuid))
-			break;
-	}
-
-	/* determine buffer size */
-	fip_for_each_desc(fip_state, desc) {
-		uint64_t this_end = desc->image->toc_e.offset_address + desc->image->toc_e.size;
+		this_end = toc_entry->offset_address + toc_entry->size;
 
 		if (this_end > total)
 			total = this_end;
+
 		n_entries++;
-	}
 
-	fip_headers_size = n_entries * sizeof(struct fip_toc_entry) + sizeof(fip_toc_header_t);
+		list_add_tail(&toc_entry_list->list, &toc_entries);
 
-	total -= fip_headers_size;
+		/* Found the ToC terminator, we are done. */
+		if (uuid_is_null(&toc_entry->uuid))
+			break;
+	}
 
-	fip_state->buffer = malloc(total);
-	if (!fip_state->buffer) {
+	buf = malloc(total);
+	if (!buf) {
 		ret = -ENOMEM;
 		goto err;
 	}
 
-	ret = read_full(fd, fip_state->buffer, total);
+	ptr = buf;
+	fip_state->buffer = buf;
+
+	memcpy(ptr, &toc_header, sizeof(toc_header));
+	ptr += sizeof(toc_header);
+
+	list_for_each_entry_safe(toc_entry_list, tmp, &toc_entries, list) {
+		memcpy(ptr, &toc_entry_list->toc, sizeof(*toc_entry));
+		ptr += sizeof(*toc_entry);
+
+		list_del(&toc_entry_list->list);
+		free(toc_entry_list);
+	}
+
+	fip_headers_size = n_entries * sizeof(struct fip_toc_entry) + sizeof(fip_toc_header_t);
+
+	ret = read_full(fd, ptr, total - fip_headers_size);
+	ret = -EINVAL;
 	if (ret < 0)
 		goto err;
 
-	if (ret < total) {
+	if (ret < total - fip_headers_size) {
 		ret = -ENODATA;
 		goto err;
 	}
 
-	close(fd);
+	ret = fip_do_parse_buf(fip_state, buf, total, NULL);
+	if (ret)
+		goto err;
 
-	fip_for_each_desc(fip_state, desc) {
-		desc->image->buffer = fip_state->buffer +
-			desc->image->toc_e.offset_address - fip_headers_size;
-		desc->image->buf_no_free = true;
-	}
+	close(fd);
 
 	return fip_state;
+
 err:
+	list_for_each_entry_safe(toc_entry_list, tmp, &toc_entries, list)
+		free(toc_entry_list);
+
 	close(fd);
 	fip_free(fip_state);
 
-- 
2.39.5



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


