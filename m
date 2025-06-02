Delivery-date: Mon, 02 Jun 2025 12:05:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM231-002uyh-1O
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:05:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM230-0007Hr-Pi
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:05:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qkk6ZWhHPNWmIWR3qmFiFKvX+CAy+SHWnu8cy15DMmI=; b=L6thFz61neK6ilvQsKQeEJBw2y
	mcsErHlXMniQIqIKYU6d4+EWJHB35zP10v5oELg40Cb4asLfaZ/Rd+7QFzWny++zToFSOJjn8widi
	4BtfSdDH6Ar0Un5V/X4RBgyg0kbrEl/wq4MeeXnY98KIJiTxJit9X9Hz7tKxfxqCh6OuHlc8VJ/Fi
	53GN5inBjozUvLSn6CiqhFjl0y1mWgMFH5tajyNDEhZtd8P0qz0znl3HDpgO8+3Cb1Vxthn3d32oU
	6iIgztNUO132eXyhNN3CecF2VwZoY+kJR1aIiKIDIvpWnHLBTqKu7N/LfkAIDMtImIwM19cQj+B9+
	pTBbsEBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM22Y-0000000793l-3HyC;
	Mon, 02 Jun 2025 10:05:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM22V-0000000791m-1rOq
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:05:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uM22T-00071G-Sx; Mon, 02 Jun 2025 12:05:05 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 12:05:03 +0200
Message-Id: <20250602100505.830492-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_030507_482077_15320620 
X-CRM114-Status: GOOD (  14.45  )
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
Subject: [PATCH 1/3] libfile: give copy_file a flags parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding an additional flag input to copy_file, let's
turn the current copy_file verbose parameter in a bitmask.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
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
index 4356792ce51f..53a34c8c29bf 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -78,7 +78,7 @@ static int do_tftpb(int argc, char *argv[])
 
 	debug("%s: %s -> %s\n", __func__, source, dest);
 
-	ret = copy_file(source, dest, 1);
+	ret = copy_file(source, dest, COPY_FILE_VERBOSE);
 
 	umount(TFTP_MOUNT_PATH);
 
diff --git a/common/fastboot.c b/common/fastboot.c
index de50797f31d8..7227149dfb50 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -792,7 +792,7 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 	}
 
 copy:
-	ret = copy_file(fb->tempname, filename, 1);
+	ret = copy_file(fb->tempname, filename, COPY_FILE_VERBOSE);
 	if (ret)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
 				  "write partition: %pe", ERR_PTR(ret));
diff --git a/include/libfile.h b/include/libfile.h
index b795a0253039..b3f6f18b3e46 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -4,6 +4,7 @@
 
 #include <linux/types.h>
 #include <linux/compiler.h>
+#include <linux/bits.h>
 
 struct resource;
 
@@ -27,7 +28,9 @@ int read_file_2(const char *filename, size_t *size, void **outbuf,
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



