Delivery-date: Tue, 11 Mar 2025 15:20:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ts0TE-00ChzP-1r
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 15:20:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ts0TD-0003t9-4b
	for lore@pengutronix.de; Tue, 11 Mar 2025 15:20:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mvuojzKMWqJnUN/oyxOHTS7+d8jKBV+1az7BrJYypBs=; b=TmC1bl0GY7HxdvYdTDMLg1Syez
	hWae4qk9KE5P0nKTmupeU/OawzDhuNb5xzwAWAiUrgMJEMkBjo/mvBDQ1RCXT70N2Bgegjy0RL18k
	QNhGIR7qFjYBYs11WD5UKxVZ8BuQKeLtRGpvBe0EpRa6vhtPRGa8qSAsxOaoKig7n+AkVE57IgLVc
	h6P4sJZF7iQOHC2ByfHbWPsIjZJZC4GqTbC8yq0cmAEiBqAHDhd7ZHYT35e9rHCXqD2nBWBy9SseK
	PauU0SY7rKlW5LDYe76VSG9GOsp/mpAIwQl8oeH+Wfm/tJiZQGOd7fpttsRUj5SNGBsFsJjc1M+7d
	ggRfwuXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts0SW-00000005xWV-2T0w;
	Tue, 11 Mar 2025 14:19:52 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts0QS-00000005xDO-1r7O
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 14:17:45 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-e63a159525bso1691440276.2
        for <barebox@lists.infradead.org>; Tue, 11 Mar 2025 07:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741702663; x=1742307463; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mvuojzKMWqJnUN/oyxOHTS7+d8jKBV+1az7BrJYypBs=;
        b=dD8I5AhaL9es1V7ZFRmRAgM9tMgKJEqT4M9MWGUFAg++/oLCiiMiU8j5zhnEYlR4A+
         qX85tp6Xiz4VsakpWZB6ioRQFy6fZUdLBYwAmrM6yfVXb7qK+jCsepgKdWMtY0NQWVVk
         L1q9FSXj5Ap0NWjIApvq3XBexEiGCIBGJ9h5JL5fwPyl7q3dC52TLQ6zP62Xo1I0iFxj
         lUejyRXozf/fcYiJKFGKl7na/q6vMlsFAYpTKJgRsSN4by/mz4djbwp8UNfz9ebWmFOB
         T1CqgU9Cw52gAn2DC+6W4yNjNXqh1t1gYCmvxeuCkV+nQfg7TvKexmHE7SmQcN8RQSw7
         /qJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741702663; x=1742307463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mvuojzKMWqJnUN/oyxOHTS7+d8jKBV+1az7BrJYypBs=;
        b=glrX063E+fm6AvyCbKfHW9IIDBm8h6pKkxV16VskUhk8HvxQvtvzL5/XK/1yGZZkox
         ndKTK/5pcI5fPGtDx+c9ReCl6x8RQur9lHyRHppyG1FRwFX3yco4xIwPh6WrOpfuvvil
         Xw9RgnB1WVgUW1WhIL26elSBUfW6EhPvWWDsRriho/jIdubJdIrmuF4tNaxMcSOvxstT
         oTwqVGU4VAF6t/yTjbLEAzXwD7+dRiVmxbjtDOAeXuWUMWDo6OVRJE6XJRM9/KX1CxaZ
         wxZD1YIQLXSXrWGV45xgxcbyCO7WExP1soAts3BNLnFN1pM9TPM/34l7IPeS9znZr6Gc
         tbOw==
X-Gm-Message-State: AOJu0Yxb7ce7TieerqTIRJcPgqjdO72EqXCSRjM7WaxALFs6wkkq5lR0
	Q9n7EICHjrVUeZ12lv5O0QKKJnFI1N/KUFGedxzrBr5VBHQjT16sxZpaLQ==
X-Gm-Gg: ASbGncub9QhwcGyE1VXc5JJbXhCBafHi7eavLx9QEeJIPVhQTmVm+YrbdveyB9eAgbN
	j+sTlN4aeWKQ4Xe391sQfaijxQu/4R5rd7eDGmhuk5jaHlhXVJg7MwVtLp4YGeV5f3naP8aK4RY
	Sgs77UwMrU1EuPQxLuled9z/gm+Pxce1gSV3P8GcVCtrNKnSdylesAqG032l45VjT1nwwDqJfFS
	7J+oDXdP8zIuSbp7/HnpK3JjGn7tKO5crKIlbZuSQMPLibY+baaZDNdS/+1SOQocugxIBTA5K/J
	xkSPnUbzmT3l3poo42OyQxBrwn+1G6UIJ4Qzs0GLoCOXWSW50XlEa7JtJtV34nc=
X-Google-Smtp-Source: AGHT+IGvTK1pc2g5FA2LUI9mwnioShSXGy0Hd2mLIeZGISZqooN+OhL8cMOZH/qOh3Q6naB1BkrQKw==
X-Received: by 2002:a05:6902:e0c:b0:e60:b011:5406 with SMTP id 3f1490d57ef6-e63b523383dmr4354939276.43.1741702663128;
        Tue, 11 Mar 2025 07:17:43 -0700 (PDT)
Received: from WUP-WIL0422.riedel.net ([213.240.144.190])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e634b842064sm2810811276.19.2025.03.11.07.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 07:17:42 -0700 (PDT)
From: Jonas Licht <jonas.licht@gmail.com>
To: barebox@lists.infradead.org
Cc: Jonas Licht <jonas.licht@gmail.com>
Date: Tue, 11 Mar 2025 15:17:13 +0100
Message-ID: <20250311141713.30947-1-jonas.licht@gmail.com>
X-Mailer: git-send-email 2.45.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_071744_485211_78DABF42 
X-CRM114-Status: GOOD (  13.75  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] environment: support reading and writing of efivar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

scripts/bareboxenv: skip file creation to allow reading the destination
file, when existing.

Signed-off-by: Jonas Licht <jonas.licht@gmail.com>
Fixes #29
---
 common/environment.c | 62 +++++++++++++++++++++++++++++++++++++++-----
 scripts/bareboxenv.c | 11 +-------
 2 files changed, 57 insertions(+), 16 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 37adb5d678..dee746a6b2 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -305,9 +305,10 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	struct envfs_super *super;
 	int envfd, size, ret;
 	struct action_data data = {};
-	void *buf = NULL, *wbuf;
+	void *buf = NULL, *wbuf, *bufWithEfi;
 	struct envfs_entry *env;
 	const char *defenv_path = default_environment_path_get();
+	uint32_t magic;
 
 	if (!filename)
 		filename = defenv_path;
@@ -342,7 +343,9 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 		}
 	}
 
-	buf = xzalloc(size + sizeof(struct envfs_super));
+	bufWithEfi = xzalloc(size + sizeof(struct envfs_super) +
+			     4); // four byte efi attributes
+	buf = bufWithEfi + 4;
 	data.writep = buf + sizeof(struct envfs_super);
 
 	super = buf;
@@ -370,7 +373,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	super->crc = ENVFS_32(crc32(0, buf + sizeof(struct envfs_super), size));
 	super->sb_crc = ENVFS_32(crc32(0, buf, sizeof(struct envfs_super) - 4));
 
-	envfd = open(filename, O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
+	envfd = open(filename, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
 	if (envfd < 0) {
 		printf("could not open %s: %m\n", filename);
 		ret = -errno;
@@ -385,6 +388,34 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 		goto out;
 	}
 
+	wbuf = buf;
+
+	/* check if we writing efi vars */
+	ret = pread(envfd, &magic, sizeof(uint32_t),
+		    4); // four byte efi var attributes
+	if (ret == -1 && errno == ENOENT) {
+		// skip as file don't exist
+		goto skip_efi_read;
+	}
+	if (ret < sizeof(u_int32_t)) {
+		perror("read of destination file failed");
+		ret = -errno;
+		goto skip_efi_read;
+	}
+
+	if (ENVFS_32(magic) == ENVFS_MAGIC) {
+		pr_info("looks like we writing efi vars, keep attributes\n");
+		ret = pread(envfd, bufWithEfi, sizeof(uint32_t), 0);
+		if (ret < sizeof(uint32_t)) {
+			perror("read of efi attributes failed");
+			ret = -errno;
+			goto out;
+		}
+		size += sizeof(uint32_t);
+		wbuf = bufWithEfi;
+	}
+
+skip_efi_read:
 	ret = erase(envfd, ERASE_SIZE_ALL, 0, ERASE_TO_WRITE);
 
 	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
@@ -395,8 +426,6 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	size += sizeof(struct envfs_super);
 
-	wbuf = buf;
-
 	while (size) {
 		ssize_t now = write(envfd, wbuf, size);
 		if (now < 0) {
@@ -425,7 +454,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 out:
 	close(envfd);
 out1:
-	free(buf);
+	free(bufWithEfi);
 #ifdef __BAREBOX__
 	unlink_recursive(TMPDIR, NULL);
 #endif
@@ -449,6 +478,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	int envfd;
 	int ret = 0;
 	size_t size, rsize;
+	uint32_t magic;
 
 	if (!filename)
 		filename = default_environment_path_get();
@@ -466,6 +496,26 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 		return -1;
 	}
 
+	/* check if we reading efi vars */
+	ret = pread(envfd, &magic, sizeof(uint32_t),
+		    4); // four byte efi var attributes
+	if (ret < sizeof(u_int32_t)) {
+		perror("read");
+		ret = -errno;
+		goto out;
+	}
+
+	if (ENVFS_32(magic) == ENVFS_MAGIC) {
+		pr_info("looks like we reading efi vars, skip attributes\n");
+		ret = read(envfd, &magic,
+			   sizeof(uint32_t)); // simply reuse the memory
+		if (ret < sizeof(uint32_t)) {
+			perror("read");
+			ret = -errno;
+			goto out;
+		}
+	}
+
 	/* read superblock */
 	ret = read(envfd, &super, sizeof(struct envfs_super));
 	if ( ret < sizeof(struct envfs_super)) {
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index e954447015..6b9b8d90c4 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -117,7 +117,7 @@ static void usage(char *prgname)
 int main(int argc, char *argv[])
 {
 	int opt;
-	int save = 0, load = 0, pad = 0, err = 0, fd;
+	int save = 0, load = 0, pad = 0, err = 0;
 	char *filename = NULL, *dirname = NULL;
 	unsigned envfs_flags = 0;
 	int verbose = 0;
@@ -156,15 +156,6 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
-	if (save) {
-		fd = open(filename, O_CREAT | O_TRUNC | O_WRONLY, 0644);
-		if (fd < 0) {
-			perror("open");
-			exit(1);
-		}
-		close(fd);
-	}
-
 	if (save && pad) {
 		if (truncate(filename, pad)) {
 			perror("truncate");
-- 
2.45.3



