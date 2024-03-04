Delivery-date: Mon, 04 Mar 2024 20:06:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDdX-008dGz-1L
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:06:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDdW-0001FT-Km
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:06:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PmgbCHqN0VJsyllUp6C/Lh1zWHp4yW8JQ+JDgkW3E9w=; b=Fh2j+fdg9WNwCma7naIbUJ+k0I
	EIdvtiZ9Jw2T39oJ5YT9AccBVBrkb+AZJ5qXmSOGes80sY90bdbqL7AKWtmyMS3IY4pp8F/2PAizW
	CJ3Lhfofor8S+7qvP9ZGyDKsb4XI940Q2zXV+0VINqrDf9bmA1tYhItyUITZvrNQQ3R8oBEyq3mwN
	lzje8/q8G9n9OIYKlR2ZMfBVLqI+EL5XNzHtqIPIb2cLrWbMT6McxOwHKlaU8Lf1DjR9lq0UAiS26
	og5aXgwHla3cRctBsU5LCncF2Ou96hVpRGYwmIlV5fz4vRvHuPV0feURremE5hfyJcafh5UVrhPgV
	2hlM4Vmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDcw-0000000AKFI-0hgQ;
	Mon, 04 Mar 2024 19:05:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaR-0000000AISs-2bUX
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PmgbCHqN0VJsyllUp6C/Lh1zWHp4yW8JQ+JDgkW3E9w=; b=P6/YUFf5mrp3/6blk+hJkShyqb
	lbc9Pz6zk/6VtYz2xVhjsmbuNltd+b/XaI8znTBSL3p7GRnr6U1lgBbwmIE9XDs0G7vTApUWp/lJP
	oAwO5CDJ3O4EdyOiYVaUB28EoVxXEK+4CRePl927wCt0xKcrGOoD4FwMmAgSU5w0msQ17GidBG7SY
	xrJo1VmJheMxziG5NUBQrBDREtYVWnp2ihNnNbaIdi+YArZRqBzTIg0LM0QifMUfTDGVbXpjxC4ut
	aNjglrStDuafHgGX7MHq0Sye9k5b1i04pT53iExeixuKaio9upkiZpTt14RBB2ucSLXR9M4hMOqYl
	DQ8MVmrQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaK-000000051vi-2O3y
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00061f-Ct; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PHV-Tp; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-0y;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:35 +0100
Message-Id: <20240304190038.3486881-51-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190248_691506_5B702F1C 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 050/113] filetype: have cdev_detect_type take a cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_detect_type reads as if it would take a cdev argument, but instead
it takes the adev's path. Fix it, so it takes a cdev and change the
only user. A new user will be added later that will pass in an already
open cdev.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c  | 12 ++----------
 fs/fs.c            | 14 +++++++++++---
 include/filetype.h |  4 +++-
 3 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 7f1ce20d0094..ba0f61e5d87e 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -456,20 +456,14 @@ int file_name_detect_type(const char *filename, enum filetype *type)
 	return file_name_detect_type_offset(filename, 0, type);
 }
 
-int cdev_detect_type(const char *name, enum filetype *type)
+int cdev_detect_type(struct cdev *cdev, enum filetype *type)
 {
 	int ret;
-	struct cdev *cdev;
 	void *buf;
 
-	cdev = cdev_open_by_name(name, O_RDONLY);
-	if (!cdev)
-		return -ENOENT;
-
 	if (cdev->filetype != filetype_unknown) {
 		*type = cdev->filetype;
-		ret = 0;
-		goto cdev_close;
+		return 0;
 	}
 
 	buf = xzalloc(FILE_TYPE_SAFE_BUFSIZE);
@@ -482,8 +476,6 @@ int cdev_detect_type(const char *name, enum filetype *type)
 
 err_out:
 	free(buf);
-cdev_close:
-	cdev_close(cdev);
 	return ret;
 }
 
diff --git a/fs/fs.c b/fs/fs.c
index 3bd476713595..341cf62bbca7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -890,10 +890,18 @@ const char *fs_detect(const char *filename, const char *fsoptions)
 
 	parseopt_b(fsoptions, "loop", &loop);
 	parseopt_llu_suffix(fsoptions, "offset", &offset);
-	if (loop)
+
+	if (loop) {
 		ret = file_name_detect_type_offset(filename, offset, &type);
-	else
-		ret = cdev_detect_type(filename, &type);
+	} else {
+		struct cdev *cdev = cdev_open_by_name(filename, O_RDONLY);
+		if (cdev) {
+			ret = cdev_detect_type(cdev, &type);
+			cdev_close(cdev);
+		} else {
+			ret = -ENOENT;
+		}
+	}
 
 	if (ret || type == filetype_unknown)
 		return NULL;
diff --git a/include/filetype.h b/include/filetype.h
index a1f98f2a983a..f73b2da61f5a 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -66,13 +66,15 @@ enum filetype {
 
 #define FILE_TYPE_SAFE_BUFSIZE		2048
 
+struct cdev;
+
 const char *file_type_to_string(enum filetype f);
 const char *file_type_to_short_string(enum filetype f);
 enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
 int file_name_detect_type(const char *filename, enum filetype *type);
 int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type);
-int cdev_detect_type(const char *name, enum filetype *type);
+int cdev_detect_type(struct cdev *cdev, enum filetype *type);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
 int is_fat_boot_sector(const void *_buf);
 bool filetype_is_barebox_image(enum filetype ft);
-- 
2.39.2



