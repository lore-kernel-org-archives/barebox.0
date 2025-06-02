Delivery-date: Mon, 02 Jun 2025 12:05:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM234-002uzS-0n
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:05:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM233-0007Ia-Jm
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:05:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uUaoME2l1YCq4UtbAtdCw2zRsSWplHLciw8xn/TSkeY=; b=PmQOSgF/5nlVlJvFAmW/gmFUJ5
	L1fSd7clXcL4XWbHwHdQW5Qz2N5FmPwyfgtQfh2t5X8ujyELQ9m3X0JTisEDgppJWWZD7GvYLe5+Y
	/XZGXhQ1FuylP2aCEFgBbMKRgt1MRR2ljmw/r+AgdtmPFRVhX8NsfV7gCvANwLabC6ljefHfEkdPF
	aT11Th8mFIwxdZswnUHHEpLvzoXilPRRp85rX7mAT7wu9KdGk19fT/nN3+mLvaDXXHbCcNzU2GBsT
	i0A1p4XqhwN0TN03qRG06YGG76x0Rbn9ZCgdUBneq6xVDfYTBNlqlsHhKsM7SxdfXkj+blpnx+RI+
	LSsvV2mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM22Z-0000000794T-1I8x;
	Mon, 02 Jun 2025 10:05:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM22V-00000007922-2R6j
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:05:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uM22U-00071G-A3; Mon, 02 Jun 2025 12:05:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 12:05:05 +0200
Message-Id: <20250602100505.830492-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250602100505.830492-1-a.fatoum@barebox.org>
References: <20250602100505.830492-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_030507_617294_ABE5D9FD 
X-CRM114-Status: GOOD (  16.38  )
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
Subject: [PATCH 3/3] libfile: add support for not clobbering files in copy_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

copy_file will always overwrite an existing file and so will copy_recursive.
This is not always the intended behavior, so add a flag to control this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/Kconfig  |  4 +++-
 commands/cp.c     |  8 ++++++--
 include/libfile.h |  1 +
 lib/libfile.c     | 17 ++++++++++++-----
 4 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 7b84ef70e875..3ed2598ab65e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -933,11 +933,13 @@ config CMD_CP
 	help
 	  Copy files
 
-	  Usage: cp [-v] SRC DEST
+	  Usage: cp [-rnv] SRC DEST
 
 	  Copy file from SRC to DEST.
 
 	  Options:
+		  -r    recursive
+		  -n    do not overwrite an existing file
 		  -v	verbose
 
 config CMD_CMP
diff --git a/commands/cp.c b/commands/cp.c
index 5b8d976c3cfe..dc38cbab889d 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -28,11 +28,14 @@ static int do_cp(int argc, char *argv[])
 	int flags = 0, recursive = 0;
 	int argc_min;
 
-	while ((opt = getopt(argc, argv, "vr")) > 0) {
+	while ((opt = getopt(argc, argv, "vnr")) > 0) {
 		switch (opt) {
 		case 'v':
 			flags |= COPY_FILE_VERBOSE;
 			break;
+		case 'n':
+			flags |= COPY_FILE_NO_OVERWRITE;
+			break;
 		case 'r':
 			recursive = 1;
 			break;
@@ -87,13 +90,14 @@ BAREBOX_CMD_HELP_TEXT("Copy file from SRC to DEST.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-r", "recursive")
+BAREBOX_CMD_HELP_OPT ("-n", "do not overwrite an existing file")
 BAREBOX_CMD_HELP_OPT ("-v", "verbose")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cp)
 	.cmd		= do_cp,
 	BAREBOX_CMD_DESC("copy files")
-	BAREBOX_CMD_OPTS("[-rv] SRC DEST")
+	BAREBOX_CMD_OPTS("[-rnv] SRC DEST")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cp_help)
 BAREBOX_CMD_END
diff --git a/include/libfile.h b/include/libfile.h
index 4cb6e11110f5..26571945f678 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -29,6 +29,7 @@ int write_file(const char *filename, const void *buf, size_t size);
 int write_file_flash(const char *filename, const void *buf, size_t size);
 
 #define COPY_FILE_VERBOSE	BIT(0)
+#define COPY_FILE_NO_OVERWRITE	BIT(1)
 
 int copy_file(const char *src, const char *dst, unsigned flags);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index aaade34a4c34..995531248ea4 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -435,6 +435,7 @@ EXPORT_SYMBOL(write_file_flash);
  * @flags:	A bitmask of COPY_FILE_* flags. Possible values:
  *
  *                COPY_FILE_VERBOSE: show a progression bar
+ *                COPY_FILE_NO_OVERWRITE: don't clobber existing files
  *
  * Return: 0 for success or negative error code
  */
@@ -467,8 +468,13 @@ int copy_file(const char *src, const char *dst, unsigned flags)
 	}
 
 	/* Set O_TRUNC only if file exists and is a regular file */
-	if (!s && S_ISREG(dststat.st_mode))
+	if (!s && S_ISREG(dststat.st_mode)) {
+		if (flags & COPY_FILE_NO_OVERWRITE) {
+			ret = 0;
+			goto out;
+		}
 		mode |= O_TRUNC;
+	}
 
 	dstfd = open(dst, mode);
 	if (dstfd < 0) {
@@ -498,7 +504,7 @@ int copy_file(const char *src, const char *dst, unsigned flags)
 		if (r < 0) {
 			perror("read");
 			ret = r;
-			goto out;
+			goto out_newline;
 		}
 		if (!r)
 			break;
@@ -506,7 +512,7 @@ int copy_file(const char *src, const char *dst, unsigned flags)
 		ret = write_full(dstfd, rw_buf, r);
 		if (ret < 0) {
 			perror("write");
-			goto out;
+			goto out_newline;
 		}
 
 		total += r;
@@ -520,10 +526,10 @@ int copy_file(const char *src, const char *dst, unsigned flags)
 	}
 
 	ret = 0;
-out:
+out_newline:
 	if (flags & COPY_FILE_VERBOSE)
 		putchar('\n');
-
+out:
 	free(rw_buf);
 	if (srcfd > 0)
 		close(srcfd);
@@ -541,6 +547,7 @@ EXPORT_SYMBOL(copy_file);
  * @flags:	A bitmask of COPY_FILE_* flags. Possible values:
  *
  *                COPY_FILE_VERBOSE: show a progression bar
+ *                COPY_FILE_NO_OVERWRITE: don't clobber existing files
  *
  * Return: 0 for success or negative error code
  */
-- 
2.39.5



