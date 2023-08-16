Delivery-date: Wed, 16 Aug 2023 11:40:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD19-0066Yx-0u
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:40:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD16-0000wt-R2
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:40:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sJt3shs6fUTtp7/C7bzc8HIIwQFVHFopPjl34kP9SqY=; b=cazIN4PtTXDmy7h0gtydp0IXoU
	Ztv9QUN6ws8jRX+WZOSdpqWL8dplXrkzLLzVAsNWEWnMos/dUHeCszJ536m3nQF1l2oYKsyfs2+Vc
	nI5IeWxxsF4plNYhBdfCcD4c0Y1XDBAZ2GO520oqiMy8R/CuDIZtDoHIemtrfzMywVc6yXm7C9DiA
	VySYvoeJLcKKYx1DT6Q3PFxCr0oJLpe/G6TMVbNKnUJqkmzHFiKkOLjtES0qNTd/xJf5JbZZlUSfL
	BcAhbn1Q8rm71OAkE7zh3MUQE7j5tk0+rfcCDUPaqAvznzs1JgBjo7L5PyCC/lzD8D7tEcIpySXA5
	jxq9Rwtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWCzm-003cZo-0S;
	Wed, 16 Aug 2023 09:39:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWCzg-003cY3-28
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:39:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCza-0000Sv-CL; Wed, 16 Aug 2023 11:39:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCzZ-0010Vz-0J; Wed, 16 Aug 2023 11:39:05 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCzX-00AeFB-T7; Wed, 16 Aug 2023 11:39:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Aug 2023 11:39:00 +0200
Message-Id: <20230816093902.2537934-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_023912_859812_325A54B4 
X-CRM114-Status: GOOD (  21.23  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] filetype: return error and pass filetype as pointer argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

file_name_detect_type(), file_name_detect_type_offset() and
cdev_detect_type() return the filetype. With this all errors from these
functions remain undetected and are just returned as filetype_unknown.

Explicitly return an error code and pass the filetype as pointer
argument so that callers can detect and handle errors.

This fixes a bug in the bootm code where the returned filetype was
erroneously tested for being smaller than 0. This was never true
and so the corresponding error message was never printed. Now with
this patch a non existing initrd or device tree file is responded
with a meaningful error message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/filetype.c |  6 +++++-
 common/binfmt.c     |  6 +++++-
 common/boot.c       |  6 +++++-
 common/bootm.c      | 21 +++++++++------------
 common/fastboot.c   |  6 +++++-
 common/filetype.c   | 27 ++++++++++++++-------------
 common/firmware.c   |  4 +++-
 fs/fs.c             |  7 ++++---
 include/filetype.h  |  6 +++---
 9 files changed, 53 insertions(+), 36 deletions(-)

diff --git a/commands/filetype.c b/commands/filetype.c
index 818c14fe79..7a556a980d 100644
--- a/commands/filetype.c
+++ b/commands/filetype.c
@@ -66,7 +66,11 @@ static int do_filetype(int argc, char *argv[])
 	if (S_ISDIR(s.st_mode))
 		return -EISDIR;
 
-	type = file_name_detect_type(filename);
+	ret = file_name_detect_type(filename, &type);
+	if (ret) {
+		printf("failed to detect type of %s: %s\n", filename, strerror(-ret));
+		return COMMAND_ERROR;
+	}
 
 	if (verbose)
 		printf("%s: %s (%s)\n", filename,
diff --git a/common/binfmt.c b/common/binfmt.c
index 1846477206..6a1e9fc83e 100644
--- a/common/binfmt.c
+++ b/common/binfmt.c
@@ -15,9 +15,13 @@ static LIST_HEAD(binfmt_hooks);
 static int binfmt_run(char *file, int argc, char **argv)
 {
 	struct binfmt_hook *b;
-	enum filetype type = file_name_detect_type(file);
+	enum filetype type;
 	int ret;
 
+	ret = file_name_detect_type(file, &type);
+	if (ret)
+		return ret;
+
 	list_for_each_entry(b, &binfmt_hooks, list) {
 		if (b->type != type)
 			continue;
diff --git a/common/boot.c b/common/boot.c
index 76bf52b529..dd9e26afc7 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -183,8 +183,12 @@ static int bootscript_create_entry(struct bootentries *bootentries, const char *
 {
 	struct bootentry_script *bs;
 	enum filetype type;
+	int ret;
+
+	ret = file_name_detect_type(name, &type);
+	if (ret)
+		return ret;
 
-	type = file_name_detect_type(name);
 	if (type != filetype_sh)
 		return -EINVAL;
 
diff --git a/common/bootm.c b/common/bootm.c
index 0e0eee1f59..9ec4b127f8 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -250,12 +250,10 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 		goto done1;
 	}
 
-	type = file_name_detect_type(data->initrd_file);
-
-	if ((int)type < 0) {
-		pr_err("could not open %s: %s\n", data->initrd_file,
-				strerror(-type));
-		return (int)type;
+	ret = file_name_detect_type(data->initrd_file, &type);
+	if (ret) {
+		pr_err("could not open initrd \"%s\": %s\n", data->initrd_file, strerror(-ret));
+		return ret;
 	}
 
 	if (type == filetype_uimage) {
@@ -372,12 +370,11 @@ void *bootm_get_devicetree(struct image_data *data)
 	} else if (data->oftree_file) {
 		size_t size;
 
-		type = file_name_detect_type(data->oftree_file);
-
-		if ((int)type < 0) {
-			pr_err("could not open %s: %s\n", data->oftree_file,
-			       strerror(-type));
-			return ERR_PTR((int)type);
+		ret = file_name_detect_type(data->oftree_file, &type);
+		if (ret) {
+			pr_err("could not open device tree \"%s\": %s\n", data->oftree_file,
+			       strerror(-ret));
+			return ERR_PTR(ret);
 		}
 
 		switch (type) {
diff --git a/common/fastboot.c b/common/fastboot.c
index ae7f132444..f91f398d7a 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -624,7 +624,11 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 	const char *filename = NULL;
 	enum filetype filetype;
 
-	filetype = file_name_detect_type(fb->tempname);
+	ret = file_name_detect_type(fb->tempname, &filetype);
+	if (ret) {
+		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "internal error");
+		goto out;
+	}
 
 	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Copying file to %s...",
 			  cmd);
diff --git a/common/filetype.c b/common/filetype.c
index 820bc89ea6..ffc67f5698 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -420,15 +420,14 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
-enum filetype file_name_detect_type_offset(const char *filename, loff_t pos)
+int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type)
 {
 	int fd, ret;
 	void *buf;
-	enum filetype type = filetype_unknown;
 
 	fd = open_and_lseek(filename, O_RDONLY, pos);
 	if (fd < 0)
-		goto out;
+		return fd;
 
 	buf = xzalloc(FILE_TYPE_SAFE_BUFSIZE);
 
@@ -436,33 +435,34 @@ enum filetype file_name_detect_type_offset(const char *filename, loff_t pos)
 	if (ret < 0)
 		goto err_out;
 
-	type = file_detect_type(buf, ret);
+	*type = file_detect_type(buf, ret);
 
+	ret = 0;
 err_out:
 	close(fd);
 	free(buf);
 out:
-	return type;
+	return ret;
 }
 
-enum filetype file_name_detect_type(const char *filename)
+int file_name_detect_type(const char *filename, enum filetype *type)
 {
-	return file_name_detect_type_offset(filename, 0);
+	return file_name_detect_type_offset(filename, 0, type);
 }
 
-enum filetype cdev_detect_type(const char *name)
+int cdev_detect_type(const char *name, enum filetype *type)
 {
-	enum filetype type = filetype_unknown;
 	int ret;
 	struct cdev *cdev;
 	void *buf;
 
 	cdev = cdev_open_by_name(name, O_RDONLY);
 	if (!cdev)
-		return type;
+		return -ENOENT;
 
 	if (cdev->filetype != filetype_unknown) {
-		type = cdev->filetype;
+		*type = cdev->filetype;
+		ret = 0;
 		goto cdev_close;
 	}
 
@@ -471,13 +471,14 @@ enum filetype cdev_detect_type(const char *name)
 	if (ret < 0)
 		goto err_out;
 
-	type = file_detect_type(buf, ret);
+	*type = file_detect_type(buf, ret);
+	ret = 0;
 
 err_out:
 	free(buf);
 cdev_close:
 	cdev_close(cdev);
-	return type;
+	return ret;
 }
 
 bool filetype_is_barebox_image(enum filetype ft)
diff --git a/common/firmware.c b/common/firmware.c
index 6dc621d308..3c7960581f 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -277,7 +277,9 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 		goto out;
 	}
 
-	type = file_name_detect_type(firmware);
+	ret = file_name_detect_type(firmware, &type);
+	if (ret)
+		goto out;
 
 	devicefd = open(dst, O_WRONLY);
 	if (devicefd < 0) {
diff --git a/fs/fs.c b/fs/fs.c
index e0ab826bca..1800d6826d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -903,15 +903,16 @@ const char *fs_detect(const char *filename, const char *fsoptions)
 	struct fs_driver *fdrv;
 	bool loop = false;
 	unsigned long long offset = 0;
+	int ret;
 
 	parseopt_b(fsoptions, "loop", &loop);
 	parseopt_llu_suffix(fsoptions, "offset", &offset);
 	if (loop)
-		type = file_name_detect_type_offset(filename, offset);
+		ret = file_name_detect_type_offset(filename, offset, &type);
 	else
-		type = cdev_detect_type(filename);
+		ret = cdev_detect_type(filename, &type);
 
-	if (type == filetype_unknown)
+	if (ret || type == filetype_unknown)
 		return NULL;
 
 	bus_for_each_driver(&fs_bus, drv) {
diff --git a/include/filetype.h b/include/filetype.h
index 783418c652..e5aa050ebc 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -69,9 +69,9 @@ const char *file_type_to_string(enum filetype f);
 const char *file_type_to_short_string(enum filetype f);
 enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
-enum filetype file_name_detect_type(const char *filename);
-enum filetype file_name_detect_type_offset(const char *filename, loff_t pos);
-enum filetype cdev_detect_type(const char *name);
+int file_name_detect_type(const char *filename, enum filetype *type);
+int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type);
+int cdev_detect_type(const char *name, enum filetype *type);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
 int is_fat_boot_sector(const void *_buf);
 bool filetype_is_barebox_image(enum filetype ft);
-- 
2.39.2



