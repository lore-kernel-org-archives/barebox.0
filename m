Delivery-date: Thu, 13 Mar 2025 11:37:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfwo-00DX1x-2p
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:37:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfwn-0002Ca-Ih
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:37:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kriNbPA4NNp5H7IBwEXAE7o1WpPXMpunPQE2nlKrFX0=; b=LTEblR1173X9MNhe1tHUhAlknT
	Zp5etn7nF0rYwoFlw7GrHOZ2QEiFV0IDsF0u3DLriP2Z0PBqUOaLYgV1yN0iO3OlOSwPqKNJUkps4
	aEA9+O3crkTfk91aCSEa+B6W9VZodfLnoD9uv6bYJvevgfShsLLimSWiN+Jy36+8Js2nVQBm+f8MM
	BiFw1eHPFiHyWHJJ0YEn3S1PFbnQbdtgomfIP0L7iU7UmgUnSfl1iSQeyNAMg4z9OK6zP84xhi/lb
	bs0ZbjsKYMgYDR+PDzy2EYuPJCdKpKXy4c7XvLE+z+igIn0xM1/Nc2oQP07j+V+2F1kIaSMEElLky
	c5qgH/hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfwJ-0000000AtZ2-3ZD6;
	Thu, 13 Mar 2025 10:37:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfuw-0000000AtQp-3F7d
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:36:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfus-0001ki-DE; Thu, 13 Mar 2025 11:35:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfus-005WJD-0X;
	Thu, 13 Mar 2025 11:35:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-00Gch5-0s;
	Thu, 13 Mar 2025 11:17:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:27 +0100
Message-Id: <20250313101728.3546902-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_033558_837264_5B063C33 
X-CRM114-Status: GOOD (  16.15  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/11] libfile: add support for not clobbering files in copy_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

copy_file will always overwrite overwrite an existing file and so will
copy_recursive. This is not always the intended behavior, so add a flag
to control this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  |  4 +++-
 commands/cp.c     |  8 ++++++--
 include/libfile.h |  1 +
 lib/libfile.c     | 17 ++++++++++++-----
 4 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index fe459fa862f5..0d60566ba9c6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -921,11 +921,13 @@ config CMD_CP
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
index 00a7f86a1477..74333a2648f8 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -28,6 +28,7 @@ int write_file(const char *filename, const void *buf, size_t size);
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



