Delivery-date: Wed, 16 Aug 2023 11:40:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD15-0066YB-LK
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:40:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD13-0000u5-Aa
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:40:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C06WecWjqL/4vj+0tPURqgnH26i7/Z8sds42E6oseBw=; b=sOkjCmwzM+SF63KC9iCnl2IHNW
	yA8ERM81+haYq6viBQDV/dexnmIKpY/eJ52wBBsTcjTBdHBK9ho7AK6/1/9j9tpLwFm3hSWM8eS58
	KmG8NDq8LJ+i4u8ubGloDZnouGW3MWoK9iSullwRN6OJY13P41K9xgObaZ+1JR9zWyycYRskFSDhj
	T/syJQvk136EXkIC3aHKmBfrqzjNIEiGTS3+rdz69jsawa+XvPGMb+8O/y6CF/ngASIBz3mceFSVZ
	oZKR7epb0LjySl8vIGPU1695bZbU8g8V5z5gymCa1SKWN5gArbfQ9UhkkoWTEb85ERqWNSZOwVnN+
	qDTJE6Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWCzk-003cZb-1i;
	Wed, 16 Aug 2023 09:39:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWCzg-003cY2-2E
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:39:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCzZ-0000Sw-QY; Wed, 16 Aug 2023 11:39:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCzZ-0010W4-7H; Wed, 16 Aug 2023 11:39:05 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qWCzX-00AeFI-VB; Wed, 16 Aug 2023 11:39:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Aug 2023 11:39:02 +0200
Message-Id: <20230816093902.2537934-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230816093902.2537934-1-s.hauer@pengutronix.de>
References: <20230816093902.2537934-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_023912_764390_3D8579D1 
X-CRM114-Status: GOOD (  19.09  )
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
Subject: [PATCH 3/3] lib: open_and_lseek(): move error messages to callers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For some cases like in common/filetype.c the caller already prints an
error message, so to avoid duplicated error messages leave it up to
the caller to print an error. This also adds error messages to all
callers where necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/mach-ath79/art.c |  3 +--
 commands/loadb.c           |  2 +-
 commands/loadxy.c          |  2 +-
 commands/md.c              |  4 +++-
 commands/memset.c          |  4 +++-
 commands/mm.c              |  4 +++-
 commands/mw.c              |  4 +++-
 common/ratp/md.c           |  4 +++-
 common/ratp/mw.c           |  1 +
 lib/libfile.c              | 13 +++----------
 lib/misc.c                 |  5 ++++-
 11 files changed, 26 insertions(+), 20 deletions(-)

diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
index 585cccc5af..bdc14bee51 100644
--- a/arch/mips/mach-ath79/art.c
+++ b/arch/mips/mach-ath79/art.c
@@ -43,8 +43,7 @@ static int art_read_mac(struct device *dev, const char *file)
 
 	fd = open_and_lseek(file, O_RDONLY, AR93000_EPPROM_OFFSET);
 	if (fd < 0) {
-		dev_err(dev, "Failed to open eeprom path %s %d\n",
-		       file, -errno);
+		dev_err(dev, "Failed to open eeprom path \"%s\": %m\n", file);
 		return -errno;
 	}
 
diff --git a/commands/loadb.c b/commands/loadb.c
index 7ab989f459..140d3743f6 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -646,7 +646,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 	/* File should exist */
 	ofd = open_and_lseek(output_file, O_WRONLY | O_CREAT, offset);
 	if (ofd < 0) {
-		perror(argv[0]);
+		printf("Could not open \"%s\": %m\n", output_file);
 		return 3;
 	}
 
diff --git a/commands/loadxy.c b/commands/loadxy.c
index 66daa117d9..e2d1a11a2c 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -165,7 +165,7 @@ static int do_loadx(int argc, char *argv[])
 	/* File should exist */
 	ofd = open_and_lseek(output_file, O_WRONLY | O_CREAT, offset);
 	if (ofd < 0) {
-		perror(argv[0]);
+		printf("Could not open \"%s\": %m\n", output_file);
 		return 3;
 	}
 
diff --git a/commands/md.c b/commands/md.c
index 7a96634e27..f3758f571f 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -49,8 +49,10 @@ static int do_mem_md(int argc, char *argv[])
 	}
 
 	fd = open_and_lseek(filename, mode | O_RDONLY, start);
-	if (fd < 0)
+	if (fd < 0) {
+		printf("Could not open \"%s\": %m\n", filename);
 		return 1;
+	}
 
 	map = memmap(fd, PROT_READ);
 	if (map != MAP_FAILED) {
diff --git a/commands/memset.c b/commands/memset.c
index e4412533f1..1139691f2f 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -41,8 +41,10 @@ static int do_memset(int argc, char *argv[])
 	n = strtoull_suffix(argv[optind + 2], NULL, 0);
 
 	fd = open_and_lseek(file, mode | O_WRONLY | O_CREAT, s);
-	if (fd < 0)
+	if (fd < 0) {
+		printf("Could not open \"%s\": %m\n", file);
 		return 1;
+	}
 
 	buf = xmalloc(RW_BUF_SIZE);
 	memset(buf, c, RW_BUF_SIZE);
diff --git a/commands/mm.c b/commands/mm.c
index 8fe87a80a1..8755a0f2c9 100644
--- a/commands/mm.c
+++ b/commands/mm.c
@@ -40,8 +40,10 @@ static int do_mem_mm(int argc, char *argv[])
 	mask = simple_strtoull(argv[optind++], NULL, 0);
 
 	fd = open_and_lseek(filename, mode | O_RDWR | O_CREAT, adr);
-	if (fd < 0)
+	if (fd < 0) {
+		printf("Could not open \"%s\": %m\n", filename);
 		return 1;
+	}
 
 	switch (mode) {
 	case O_RWSIZE_1:
diff --git a/commands/mw.c b/commands/mw.c
index 5dcef7e2fc..915f549216 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -39,8 +39,10 @@ static int do_mem_mw(int argc, char *argv[])
 	adr = strtoull_suffix(argv[optind++], NULL, 0);
 
 	fd = open_and_lseek(filename, mode | O_WRONLY | O_CREAT, adr);
-	if (fd < 0)
+	if (fd < 0) {
+		printf("Could not open \"%s\": %m\n", filename);
 		return 1;
+	}
 
 	while (optind < argc) {
 		u8 val8;
diff --git a/common/ratp/md.c b/common/ratp/md.c
index 3e258c59a0..8221afaebc 100644
--- a/common/ratp/md.c
+++ b/common/ratp/md.c
@@ -68,8 +68,10 @@ static int do_ratp_mem_md(const char *filename,
 	char *buf = NULL;
 
 	fd = open_and_lseek(filename, O_RWSIZE_1 | O_RDONLY, start);
-	if (fd < 0)
+	if (fd < 0) {
+		printf("Could not open \"%s\": %m\n", filename);
 		return -errno;
+	}
 
 	map = memmap(fd, PROT_READ);
 	if (map != MAP_FAILED) {
diff --git a/common/ratp/mw.c b/common/ratp/mw.c
index 8945799f1d..87dc8cb95c 100644
--- a/common/ratp/mw.c
+++ b/common/ratp/mw.c
@@ -133,6 +133,7 @@ static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
 
 	fd = open_and_lseek(path, O_RWSIZE_1 | O_WRONLY, addr);
 	if (fd < 0) {
+		printf("Could not open \"%s\": %m\n", path);
 		ret = -errno;
 		goto out;
 	}
diff --git a/lib/libfile.c b/lib/libfile.c
index c7ea4e497f..a8654e6deb 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -596,10 +596,8 @@ int open_and_lseek(const char *filename, int mode, loff_t pos)
 	int fd;
 
 	fd = open(filename, mode);
-	if (fd < 0) {
-		perror("open");
+	if (fd < 0)
 		return fd;
-	}
 
 	if (!pos)
 		return fd;
@@ -608,21 +606,16 @@ int open_and_lseek(const char *filename, int mode, loff_t pos)
 		struct stat s;
 
 		ret = fstat(fd, &s);
-		if (ret < 0) {
-			perror("fstat");
+		if (ret < 0)
 			goto out;
-		}
 
 		if (s.st_size < pos) {
 			ret = ftruncate(fd, pos));
-			if (ret) {
-				perror("ftruncate");
+			if (ret)
 				goto out;
-			}
 	}
 
 	if (lseek(fd, pos, SEEK_SET) != pos) {
-		perror("lseek");
 		ret = -errno;
 		goto out;
 	}
diff --git a/lib/misc.c b/lib/misc.c
index 2d5f7c1985..1cb2a6b9b5 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -209,11 +209,14 @@ int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
 	destfile = destfile ?: "/dev/mem";
 
 	*sourcefd = open_and_lseek(sourcefile, mode | O_RDONLY, src);
-	if (*sourcefd < 0)
+	if (*sourcefd < 0) {
+		printf("Could not open source file \"%s\": %m\n", sourcefile);
 		return -1;
+	}
 
 	*destfd = open_and_lseek(destfile, mode | destmode, dest);
 	if (*destfd < 0) {
+		printf("Could not open destination file \"%s\": %m\n", destfile);
 		close(*sourcefd);
 		return -1;
 	}
-- 
2.39.2



