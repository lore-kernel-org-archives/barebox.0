Delivery-date: Tue, 27 Jan 2026 09:46:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeil-005q91-0n
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:46:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeij-00017Z-It
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:46:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pkIA2sAKxo/NMdfZN/xyuLIPF0iT/vpRGKH8TjLf5dg=; b=OTSxyPfSn73DtmejQ+rWADrZmv
	TY/qWJpBjGoTED60sPfocZcD6y5a0TBf7gJbvrmwLWDleU1eKI0IyT+/Wb1ChM3nVOd6ofUy0lcGj
	Vo6qdBLKYNlup1uoExQdfKhdQUFfhznZyW9ViXRjJvyFRWozbV6Y8eglSMYfdwBVJh650rvNdhK67
	u0YQ9RJl8ga7igN2u84QUeWHDVaLQKHX3p05+4xiO64vtsFASURKpD4PgBvsPVi53xlvgdi+WLGXa
	wJ7UGDn5UdmRqYHLCjN7669Fjlt3SKWVdwbyH/hMuzOaaZoK1BBYoCSzaM5oL8ptNfh88tDWHxIbR
	hBoiv/0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkei2-0000000DrR4-1qJ2;
	Tue, 27 Jan 2026 08:46:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehu-0000000DrDv-1WRa
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:45:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000WG-Rm; Tue, 27 Jan 2026 09:45:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-002ig0-0p;
	Tue, 27 Jan 2026 09:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-0000000FmwP-00Y2;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:17 +0100
Message-ID: <20260127084546.3751357-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004554_786457_236E9FB7 
X-CRM114-Status: GOOD (  20.23  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/15] bootm: fit: move length calculation into fit_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A FIT image is a device tree and its second big-endian 32-bit word
encodes the size and fit_open() takes an extra argument, so it need not
read a whole partition, but only as many bytes as the header describes.

We are going to add a new caller for fit_open(). Instead of repeating
the max_size determination at every call site, let's just move the size
calculation into the function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm-fit.c   |  9 +--------
 common/image-fit.c   | 44 ++++++++++++++++++++++++++++++++++----------
 drivers/of/overlay.c |  6 +++---
 include/image-fit.h  |  2 +-
 include/libfile.h    |  2 ++
 lib/libfile.c        | 40 ++++++++++++++++++++++++++++++++++++++++
 6 files changed, 81 insertions(+), 22 deletions(-)

diff --git a/common/bootm-fit.c b/common/bootm-fit.c
index 5bfd8ac61d3f..70d6ba8edff2 100644
--- a/common/bootm-fit.c
+++ b/common/bootm-fit.c
@@ -129,17 +129,10 @@ static enum filetype bootm_fit_update_os_header(struct image_data *data)
 int bootm_open_fit(struct image_data *data)
 {
 	struct fit_handle *fit;
-	struct fdt_header *header;
 	static const char *kernel_img = "kernel";
-	size_t flen, hlen;
 	int ret;
 
-	header = (struct fdt_header *)data->os_header;
-	flen = bootm_get_os_size(data);
-	hlen = fdt32_to_cpu(header->totalsize);
-
-	fit = fit_open(data->os_file, data->verbose, data->verify,
-		       min(flen, hlen));
+	fit = fit_open(data->os_file, data->verbose, data->verify);
 	if (IS_ERR(fit)) {
 		pr_err("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
 		return PTR_ERR(fit);
diff --git a/common/image-fit.c b/common/image-fit.c
index 75592766941c..d42282dfa80e 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -992,7 +992,6 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
  * @filename:	The filename of the FIT image
  * @verbose:	If true, be more verbose
  * @verify:	The verify mode
- * @max_size:	maximum length to read from file
  *
  * This opens a FIT image found in @filename. The returned handle is used as
  * context for the other FIT functions.
@@ -1000,11 +999,12 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
  * Return: A handle to a FIT image or a ERR_PTR
  */
 struct fit_handle *fit_open(const char *_filename, bool verbose,
-			    enum bootm_verify verify, loff_t max_size)
+			    enum bootm_verify verify)
 {
 	struct fit_handle *handle;
+	ssize_t nbytes;
 	char *filename;
-	int ret;
+	int fd, ret;
 
 	filename = canonicalize_path(AT_FDCWD, _filename);
 	if (!filename) {
@@ -1024,15 +1024,28 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 	handle->verbose = verbose;
 	handle->verify = verify;
 
-	ret = read_file_2(filename, &handle->size, &handle->fit_alloc,
-			  max_size);
-	if (ret && ret != -EFBIG) {
-		pr_err("unable to read %s: %pe\n", filename, ERR_PTR(ret));
-		free(handle);
-		free(filename);
-		return ERR_PTR(ret);
+	fd = open_fdt(filename, &handle->size);
+	if (fd < 0) {
+		ret = fd;
+		goto free_handle;
 	}
 
+	handle->fit_alloc = malloc(handle->size);
+	if (!handle->fit_alloc) {
+		ret = -ENOMEM;
+		goto close_fd;
+	}
+
+	nbytes = read_full(fd, handle->fit_alloc, handle->size);
+	if (nbytes >= 0 && handle->size != nbytes)
+		ret = -ENODATA;
+	if (nbytes < 0) {
+		ret = nbytes;
+		goto free_fit_alloc;
+	}
+
+	close(fd);
+
 	handle->fit = handle->fit_alloc;
 	handle->filename = filename;
 
@@ -1046,6 +1059,17 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 	}
 
 	return handle;
+
+free_fit_alloc:
+	free(handle->fit_alloc);
+close_fd:
+	close(fd);
+free_handle:
+	pr_err("unable to read %s: %pe\n", filename, ERR_PTR(ret));
+	free(filename);
+	free(handle);
+	return ERR_PTR(ret);
+
 }
 
 static bool __fit_close(struct fit_handle *handle)
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index b11edebd2080..34543403e9ba 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -532,7 +532,7 @@ static bool of_overlay_valid_config(struct fit_handle *fit,
 }
 
 static int of_overlay_global_fixup_fit(struct device_node *root,
-				       const char *fit_path, loff_t fit_size)
+				       const char *fit_path)
 {
 	enum bootm_verify verify = bootm_get_verify_mode();
 	struct device_node *conf_node;
@@ -544,7 +544,7 @@ static int of_overlay_global_fixup_fit(struct device_node *root,
 		return -EINVAL;
 	}
 
-	fit = fit_open(fit_path, 0, verify, fit_size);
+	fit = fit_open(fit_path, 0, verify);
 	if (IS_ERR(fit)) {
 		pr_err("Loading FIT image %s failed with: %pe\n", fit_path, fit);
 		return PTR_ERR(fit);
@@ -595,7 +595,7 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
 	}
 
 	/* Assume a FIT image if of_overlay_path points to a file */
-	ret = of_overlay_global_fixup_fit(root, dir, s.st_size);
+	ret = of_overlay_global_fixup_fit(root, dir);
 
 out:
 	free(dir);
diff --git a/include/image-fit.h b/include/image-fit.h
index 50f0482b65ad..ede43beab12e 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -28,7 +28,7 @@ struct fit_handle {
 };
 
 struct fit_handle *fit_open(const char *filename, bool verbose,
-			    enum bootm_verify verify, loff_t max_size);
+			    enum bootm_verify verify);
 struct fit_handle *fit_open_buf(const void *buf, size_t len, bool verbose,
 				enum bootm_verify verify);
 void *fit_open_configuration(struct fit_handle *handle, const char *name,
diff --git a/include/libfile.h b/include/libfile.h
index 370f8b9725ab..f44046fb0f7b 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -59,4 +59,6 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr,
 
 int fixup_path_case(int dirfd, const char **path);
 
+int open_fdt(const char *filename, size_t *size);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 6924db587e8c..3be410855d2e 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -918,3 +918,43 @@ int fixup_path_case(int fd, const char **path)
 	free(resolved_path);
 	return -errno;
 }
+
+int open_fdt(const char *filename, size_t *size)
+{
+	__be32 fdt_hdr[2];
+	u32 fdt_size;
+	struct stat st;
+	int fd, ret;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return fd;
+
+	ret = fstat(fd, &st);
+	if (ret)
+		goto err;
+
+	ret = pread_full(fd, &fdt_hdr, sizeof(fdt_hdr), 0);
+	if (ret >= 0 && ret < sizeof(fdt_hdr))
+		ret = -EILSEQ;
+	if (ret < 0)
+		goto err;
+
+	fdt_size = be32_to_cpu(fdt_hdr[1]);
+	if (st.st_size < fdt_size) {
+		ret = -ENODATA;
+		goto err;
+	}
+
+	close(fd);
+
+	/* HACK: TFTP doesn't support backwards seeking, so reopen afresh */
+	fd = open(filename, O_RDONLY);
+	if (fd >= 0)
+		*size = fdt_size;
+
+	return fd;
+err:
+	close(fd);
+	return ret;
+}
-- 
2.47.3



