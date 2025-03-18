Delivery-date: Tue, 18 Mar 2025 15:47:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE2-0014fM-0i
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:47:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE0-0007pw-QQ
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:47:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JBvU3SyujpHl25w6X+QlsdkFpncHN60bmT5OhdKLj+I=; b=alSMReuBhhXF68Z953XeOurW4j
	7kUSJSqikaqfmUEiv4U7ISdc3tRMtB96wFWd1VePYolMKh+KdPjrKN9VVciYSQF2FGIKdd4MkN8Dq
	5JacG/6pV4i6WLS0Hbo2HkIlydy16CF9SuuAsuzENhe3ZXbWur6lrflUYS3ouCYdVNuHwNZF+4JJM
	Ga5uZFKEDin3o5n4+8bxQk/y7rRJdoELOZ2hY4HdFQ1DUk+69xY5aOcS7QkmWmI1aAYfYwdUhVizT
	Ts3/EeV6YaB8FiM5xvUjDHIxSqVwuJ8r7bg0mtTZnsjf2/xFNBxaiJi1XEHtHl2pEaKC+oOLHewVU
	Du+3+Dhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYDT-00000006E58-2Fsb;
	Tue, 18 Mar 2025 14:46:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuY8m-00000006DQI-2xMW
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:42:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8V-0006nN-Gw; Tue, 18 Mar 2025 15:41:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-000Rae-2A;
	Tue, 18 Mar 2025 15:41:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-00F87i-39;
	Tue, 18 Mar 2025 15:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2025 15:41:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-filetype-size-reduction-v1-3-4f463ffae7d0@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742308902; l=3066;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iJAfe4R4KOyj/7pN7gCjlLU8RVrWjIlE/cvdF2U4fzU=;
 b=a+XVIQS/zWa+g6wnfZKN+qrWrjhGGCA9+KLB4dSPUO4quEcJ4bBmPFz4tYPIv4al0ahLB+q4Q
 tiGrlGPpNIbCjiIulTGpfeNoEQxSn26b36woX4CYGRQHQsYfMtXM7HT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074200_745666_24A3102C 
X-CRM114-Status: GOOD (  12.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] filetype: add function pointer to
 file_name_detect_type_offset()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

file_name_detect_type_offset() calls file_detect_type() which is quite
a big function. Add a function pointer argument so the caller can
decide which file detection function shall be called. This allows
callers to depend on a function with a smaller binary size impact.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 8 +++++---
 fs/fs.c            | 3 ++-
 include/filetype.h | 3 ++-
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 2a55d5f4ea..1e2d4ed0e3 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -476,7 +476,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
-int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type)
+int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type,
+				 enum filetype (*detect)(const void *buf, size_t bufsize))
 {
 	int fd, ret;
 	void *buf;
@@ -491,7 +492,7 @@ int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype
 	if (ret < 0)
 		goto err_out;
 
-	*type = file_detect_type(buf, ret);
+	*type = detect(buf, ret);
 
 	ret = 0;
 err_out:
@@ -503,7 +504,8 @@ int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype
 
 int file_name_detect_type(const char *filename, enum filetype *type)
 {
-	return file_name_detect_type_offset(filename, 0, type);
+	return file_name_detect_type_offset(filename, 0, type,
+					    file_detect_type);
 }
 
 int cdev_detect_type(struct cdev *cdev, enum filetype *type)
diff --git a/fs/fs.c b/fs/fs.c
index 96ca60341e..9924709424 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -903,7 +903,8 @@ const char *fs_detect(const char *filename, const char *fsoptions)
 	parseopt_llu_suffix(fsoptions, "offset", &offset);
 
 	if (loop) {
-		ret = file_name_detect_type_offset(filename, offset, &type);
+		ret = file_name_detect_type_offset(filename, offset, &type,
+						   file_detect_fs_type);
 	} else {
 		struct cdev *cdev = cdev_open_by_name(filename, O_RDONLY);
 		if (cdev) {
diff --git a/include/filetype.h b/include/filetype.h
index 329ebc9e8b..03d1f1595d 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -78,7 +78,8 @@ enum filetype file_detect_compression_type(const void *_buf, size_t bufsize);
 enum filetype file_detect_fs_type(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
 int file_name_detect_type(const char *filename, enum filetype *type);
-int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type);
+int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type,
+				 enum filetype (*detect)(const void *buf, size_t bufsize));
 int cdev_detect_type(struct cdev *cdev, enum filetype *type);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
 int is_fat_boot_sector(const void *_buf);

-- 
2.39.5



