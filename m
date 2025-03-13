Delivery-date: Thu, 13 Mar 2025 11:18:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdv-00DWh6-1D
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:18:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfdt-0006sK-Gx
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:18:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0UReZC/T6cuTE+Lxau8lOfsMyhnIucMSaov7Mt98Cg=; b=TR5rfsOxuNegPJNUalZRICqkgJ
	OOIPtzRNwzm+/TktkOBVrafkJKMQnI/Y9UhGZshHLpFzL+lSB37d4Nm2V72lAFfxopNwjBsDng0uU
	DoOCVoUsy/1+n4BDZqUfWjIE9v/s6iZvFqeG4RYtjWDWO8GUhJjQLRahBr7p9NhgpowgVy/MpHkWk
	m8dm5d47EIEG1VPE+54RoGZnCm22b0+IhdSblZJd+rokJBHeNo7yQ1nV+5h0o4BzVaHbnhrQmJmvO
	nokW+WL8NQozn3v4zMY86dQ1lHQlbdteUxAyC9gbtNr5Y23Rv3WJkzSEiQBwHH8T9yrRp5aNv+88l
	w1V5avKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdH-0000000Apr8-0bHf;
	Thu, 13 Mar 2025 10:17:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfdE-0000000ApoD-1SXq
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:17:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd5-0006G6-2o; Thu, 13 Mar 2025 11:17:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-005WBq-0s;
	Thu, 13 Mar 2025 11:17:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-00Gch5-0W;
	Thu, 13 Mar 2025 11:17:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:25 +0100
Message-Id: <20250313101728.3546902-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031740_399790_C26A3497 
X-CRM114-Status: GOOD (  14.52  )
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
Subject: [PATCH 08/11] libfile: give copy_file a flags parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding an additional flag input to copy_file, let's
turn the current copy_file verbose parameter in a bitmask.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/cp.c     |  8 ++++----
 commands/tftp.c   |  2 +-
 common/fastboot.c |  2 +-
 include/libfile.h |  5 ++++-
 lib/libfile.c     | 12 +++++++-----
 5 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/commands/cp.c b/commands/cp.c
index 71448f9aff6f..e2f91123ca92 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -25,13 +25,13 @@ static int do_cp(int argc, char *argv[])
 	int last_is_dir = 0;
 	int i;
 	int opt;
-	int verbose = 0, recursive = 0;
+	int flags = 0, recursive = 0;
 	int argc_min;
 
 	while ((opt = getopt(argc, argv, "vr")) > 0) {
 		switch (opt) {
 		case 'v':
-			verbose = 1;
+			flags |= COPY_FILE_VERBOSE;
 			break;
 		case 'r':
 			recursive = 1;
@@ -68,9 +68,9 @@ static int do_cp(int argc, char *argv[])
 		if (recursive)
 			ret = copy_recursive(argv[i], dst);
 		else if (last_is_dir)
-			ret = copy_file(argv[i], dst, verbose);
+			ret = copy_file(argv[i], dst, flags);
 		else
-			ret = copy_file(argv[i], argv[argc - 1], verbose);
+			ret = copy_file(argv[i], argv[argc - 1], flags);
 
 		free(dst);
 		if (ret)
diff --git a/commands/tftp.c b/commands/tftp.c
index 5e8d8d17761d..f17b589ee62d 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -81,7 +81,7 @@ static int do_tftpb(int argc, char *argv[])
 
 	debug("%s: %s -> %s\n", __func__, source, dest);
 
-	ret = copy_file(source, dest, 1);
+	ret = copy_file(source, dest, COPY_FILE_VERBOSE);
 
 	umount(TFTP_MOUNT_PATH);
 
diff --git a/common/fastboot.c b/common/fastboot.c
index 60bef0ec776b..9088b988cb6c 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -741,7 +741,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 	}
 
 copy:
-	ret = copy_file(fb->tempname, filename, 1);
+	ret = copy_file(fb->tempname, filename, COPY_FILE_VERBOSE);
 	if (ret)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
 				  "write partition: %s", strerror(-ret));
diff --git a/include/libfile.h b/include/libfile.h
index bf775b022dc4..a9bef5065d08 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -3,6 +3,7 @@
 #define __LIBFILE_H
 
 #include <linux/types.h>
+#include <linux/bits.h>
 
 struct resource;
 
@@ -26,7 +27,9 @@ int read_file_2(const char *filename, size_t *size, void **outbuf,
 int write_file(const char *filename, const void *buf, size_t size);
 int write_file_flash(const char *filename, const void *buf, size_t size);
 
-int copy_file(const char *src, const char *dst, int verbose);
+#define COPY_FILE_VERBOSE	BIT(0)
+
+int copy_file(const char *src, const char *dst, unsigned flags);
 
 int copy_recursive(const char *src, const char *dst);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index 80d4591dd6e5..76a091878ebb 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -432,11 +432,13 @@ EXPORT_SYMBOL(write_file_flash);
  * copy_file - Copy a file
  * @src:	The source filename
  * @dst:	The destination filename
- * @verbose:	if true, show a progression bar
+ * @flags:	A bitmask of COPY_FILE_* flags. Possible values:
+ *
+ *                COPY_FILE_VERBOSE: show a progression bar
  *
  * Return: 0 for success or negative error code
  */
-int copy_file(const char *src, const char *dst, int verbose)
+int copy_file(const char *src, const char *dst, unsigned flags)
 {
 	char *rw_buf = NULL;
 	int srcfd = 0, dstfd = 0;
@@ -488,7 +490,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 		}
 	}
 
-	if (verbose)
+	if (flags & COPY_FILE_VERBOSE)
 		init_progression_bar(srcstat.st_size);
 
 	while (1) {
@@ -509,7 +511,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 
 		total += r;
 
-		if (verbose) {
+		if (flags & COPY_FILE_VERBOSE) {
 			if (srcstat.st_size && srcstat.st_size != FILESIZE_MAX)
 				show_progress(total);
 			else
@@ -519,7 +521,7 @@ int copy_file(const char *src, const char *dst, int verbose)
 
 	ret = 0;
 out:
-	if (verbose)
+	if (flags & COPY_FILE_VERBOSE)
 		putchar('\n');
 
 	free(rw_buf);
-- 
2.39.5



