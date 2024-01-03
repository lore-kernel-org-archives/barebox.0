Delivery-date: Wed, 03 Jan 2024 19:35:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65c-002O2Y-1y
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65U-0006mp-DT
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fqZjlmfOJZdR76T+jafh4YZb3nL4nHX488aPwjqnQL0=; b=v7Nab49R2tQHpA4CdpGaHLHFz4
	14RSo6a17QBXZ2vzXFwfRw6uAMuSAvcTJCH1Yma15+iACJcY/NFLZ/zInd3RtZHp14SYK5AvvO+sq
	USWNAJ9eYQT4A4u9RpYXmg7btBO7HhlvFBJqUoZZYFJujZIWkSLcyQW8benwLT5GIEr4UZRJ5sT7W
	bLb3uqZZbdS+RgI78dmwTqVtrMc1sxrKxbQ3nKxo5Oaw+eF4a/IC44brt7hcwbOdDBhie96VQ8869
	cFnBgFHJmzGt5Fs2D0SEQ/PetmlirYPYspGDodRuxKRjZUZGcCAhdQo9vNY/N66ISqJYk9te/lvtZ
	9VmgdnSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL63p-00BkNw-2M;
	Wed, 03 Jan 2024 18:33:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61I-00BhM9-1K
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fqZjlmfOJZdR76T+jafh4YZb3nL4nHX488aPwjqnQL0=; b=BlIseCy1fYl9+UnE9uCdrQwaKP
	Xv6+HLBmi0fbrz2lSjpE84pxQMtm4qr10FTmwnAhKcXvr87bix84JdNgipP71SnifcS2tLojv7AWj
	2b1B9dP/IQmJDJ8ESLzuus7YHUMrAiw+W7bqrVp3G8+CfmnH/Rulv04EFAmsmCw8lhWXcwKrZ2wFR
	0ZGUE8dBapmCQlIbvonuplY9DjfXKHYgQ+RHCeirOqjMtBcnjuUQJSK/NcM0Ef6enOGS2rf71NGCw
	3WOlD9xq5COCIaLlavdz9sGAuf0N/J4GxaFOWiNhW/KfA6RWcDDk1q4gwG8/i6YzR9BfEPwdrELiL
	fjpVRt9w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL619-005eC6-0l
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001fF-JY; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000Axd-9x; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-0W;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:09 +0100
Message-Id: <20240103181312.409668-50-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183103_435743_64B9572C 
X-CRM114-Status: GOOD (  13.57  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 049/112] filetype: have cdev_detect_type take a cdev
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
index 43d292c27baf..f726a933d245 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -450,20 +450,14 @@ int file_name_detect_type(const char *filename, enum filetype *type)
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
@@ -476,8 +470,6 @@ int cdev_detect_type(const char *name, enum filetype *type)
 
 err_out:
 	free(buf);
-cdev_close:
-	cdev_close(cdev);
 	return ret;
 }
 
diff --git a/fs/fs.c b/fs/fs.c
index fc9e56168c9c..9b177911efba 100644
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
index e5aa050ebc27..4e646aec9d6f 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -65,13 +65,15 @@ enum filetype {
 
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



