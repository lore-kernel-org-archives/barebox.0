Delivery-date: Mon, 25 Nov 2024 16:33:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb5o-000GEk-1V
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:33:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb5o-0004Lf-1f
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:33:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xpgoe2u5i+mC+q5OeUGy3n33NPsQkzZv4DL6sApkwno=; b=qvSjym6hsNIDEKOhxf0dqgMELe
	zWXQedBHq+XPmfUeL47g/si5TgofwQhbHIRoLlVF2/y0J/14LnqDRNMUbXNAVux89RxiuW7PHZPHN
	xEfoT9Q//QAaCZVaUWRbPnixHW0KvNZV+SjXbJOCzmV2lV4mJVC1WqY/8pBd7pVC4Bo7XNqxrbh74
	ip/pi8Jejvv8Nm0BqZlZcxFCdaniCP8/AHR2tYHG2TvRT0uYOMO7w3STUHxF+cxk1deuyq/4wUZ7S
	kLljal+MiZ21tALEAI7j8yAzWtF7mlI4yNovULjgmDPsMRWwaLBspqZSD+vQWdcUNJobQnFr20tO3
	Ow4LYzoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb5N-00000008VMw-3XlM;
	Mon, 25 Nov 2024 15:33:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb1u-00000008UKf-2Xox
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:29:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1l-00036M-Av; Mon, 25 Nov 2024 16:29:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-0006QR-18;
	Mon, 25 Nov 2024 16:29:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-002dWd-1J;
	Mon, 25 Nov 2024 16:29:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:29:24 +0100
Message-Id: <20241125152927.546493-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152927.546493-1-a.fatoum@pengutronix.de>
References: <20241125152927.546493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072938_797713_0C826A2D 
X-CRM114-Status: GOOD (  18.66  )
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
Subject: [PATCH 4/7] treewide: replace basename with kbasename
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox has three functions for basename():

  - posix_basename: This is basename() as specified by POSIX and
    may modify the buffer pointed at by its char * argument.

  - kbasename: The Linux kernel version never modifies the input and
    takes a const char * to indicate this

  - basename: The GNU version of basename behaves like the kernel
    version, but takes a char * as argument, which is internally casted
    away.

Let's improve const-safety in barebox by explicitly using kbasename.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/nand.c      | 4 ++--
 commands/partition.c | 6 +++---
 commands/tftp.c      | 5 +++--
 common/boot.c        | 2 +-
 common/complete.c    | 8 ++++----
 fs/bpkfs.c           | 8 ++++----
 net/nfs.c            | 8 ++++----
 7 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index d80ec24a7b92..d756092c64c0 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -71,7 +71,7 @@ static int do_nand(int argc, char *argv[])
 
 	if (command == NAND_ADD) {
 		while (optind < argc) {
-			if (dev_add_bb_dev(basename(argv[optind]), NULL))
+			if (dev_add_bb_dev(kbasename(argv[optind]), NULL))
 				return 1;
 
 			optind++;
@@ -82,7 +82,7 @@ static int do_nand(int argc, char *argv[])
 
 	if (command == NAND_DEL) {
 		while (optind < argc) {
-			if (dev_remove_bb_dev(basename(argv[optind])))
+			if (dev_remove_bb_dev(kbasename(argv[optind])))
 				return 1;
 			optind++;
 		}
diff --git a/commands/partition.c b/commands/partition.c
index 14f400ccb433..1b655f853b3b 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -27,7 +27,7 @@
 
 static int do_addpart(int argc, char *argv[])
 {
-	char *devname;
+	const char *devname;
 	loff_t devsize;
 	struct stat s;
 	int opt;
@@ -50,7 +50,7 @@ static int do_addpart(int argc, char *argv[])
 	}
 	devsize = s.st_size;
 
-	devname = basename(argv[optind]);
+	devname = kbasename(argv[optind]);
 
 	return cmdlinepart_do_parse(devname, argv[optind + 1], devsize, flags);
 }
@@ -84,7 +84,7 @@ static int do_delpart(int argc, char *argv[])
 	int i, err;
 
 	for (i = 1; i < argc; i++) {
-		err = devfs_del_partition(basename(argv[i]));
+		err = devfs_del_partition(kbasename(argv[i]));
 		if (err) {
 			printf("cannot delete %s: %s\n", argv[i], strerror(-err));
 			break;
diff --git a/commands/tftp.c b/commands/tftp.c
index 6ac822c9e832..5e8d8d17761d 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -18,7 +18,8 @@
 
 static int do_tftpb(int argc, char *argv[])
 {
-	char *source, *dest, *freep;
+	const char *source, *dest;
+	char *freep;
 	int opt;
 	int tftp_push = 0;
 	int port = -1;
@@ -50,7 +51,7 @@ static int do_tftpb(int argc, char *argv[])
 	source = argv[optind++];
 
 	if (argc == optind)
-		dest = basename(source);
+		dest = kbasename(source);
 	else
 		dest = argv[optind];
 
diff --git a/common/boot.c b/common/boot.c
index cbfe6649b3a3..89eb7a974566 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -204,7 +204,7 @@ static int bootscript_create_entry(struct bootentries *bootentries, const char *
 	bs->entry.release = bootscript_entry_release;
 	bs->entry.boot = bootscript_boot;
 	bs->scriptpath = xstrdup(name);
-	bs->entry.title = xstrdup(basename(bs->scriptpath));
+	bs->entry.title = xstrdup(kbasename(bs->scriptpath));
 	bs->entry.description = basprintf("script: %s", name);
 	bootentries_add_entry(bootentries, &bs->entry);
 
diff --git a/common/complete.c b/common/complete.c
index 3911535621b1..5b8b499ed38f 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -43,9 +43,9 @@ static int file_complete(struct string_list *sl, char *instr,
 	DIR *dir;
 	struct dirent *d;
 	char tmp[PATH_MAX];
-	char *base;
+	const char *base;
 
-	base = basename(instr);
+	base = kbasename(instr);
 	dirn = dirn ?: dirname(path);
 
 	dir = opendir(dirn);
@@ -236,12 +236,12 @@ EXPORT_SYMBOL(devicetree_alias_complete);
 int devicetree_nodepath_complete(struct string_list *sl, char *instr)
 {
 	struct device_node *node, *child;
-	char *dirn, *base;
+	const char *dirn, *base;
 	char *path = strdup(instr);
 
 	if (*instr == '/') {
 		dirn = dirname(path);
-		base = basename(instr);
+		base = kbasename(instr);
 		node = of_find_node_by_path(dirn);
 		if (!node)
 			goto out;
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index ea2c27958520..7b714de66158 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -132,7 +132,7 @@ static int bpkfs_open(struct device *dev, FILE *f, const char *filename)
 	struct bpkfs_handle *priv = dev->priv;
 	struct bpkfs_handle_data *d;
 	struct bpkfs_handle_hw *h;
-	char *dir, *file;
+	const char *dir, *file;
 	int ret = -EINVAL;
 	char *tmp = xstrdup(filename);
 	char *tmp2 = xstrdup(filename);
@@ -146,7 +146,7 @@ static int bpkfs_open(struct device *dev, FILE *f, const char *filename)
 	if (!h)
 		goto out;
 
-	file = basename(tmp2);
+	file = kbasename(tmp2);
 	d = bpkfs_data_get_by_name(h, file);
 	if (!d)
 		goto out;
@@ -284,7 +284,7 @@ static int bpkfs_stat(struct device *dev, const char *filename,
 	struct bpkfs_handle *priv = dev->priv;
 	struct bpkfs_handle_data *d;
 	struct bpkfs_handle_hw *h;
-	char *dir, *file;
+	const char *dir, *file;
 	int ret = -EINVAL;
 	char *tmp = xstrdup(filename);
 	char *tmp2 = xstrdup(filename);
@@ -311,7 +311,7 @@ static int bpkfs_stat(struct device *dev, const char *filename,
 	if (!h)
 		goto out;
 
-	file = basename(tmp2);
+	file = kbasename(tmp2);
 	d = bpkfs_data_get_by_name(h, file);
 	if (!d)
 		goto out;
diff --git a/net/nfs.c b/net/nfs.c
index df0840e4e7dc..68c35e11f6a9 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -147,7 +147,7 @@ static int	nfs_state;
 #define STATE_READLINK_REQ		7
 #define STATE_DONE			8
 
-static char *nfs_filename;
+static const char *nfs_filename;
 static char *nfs_path;
 static char nfs_path_buff[2048];
 
@@ -322,7 +322,7 @@ static void nfs_readlink_req(void)
 /**************************************************************************
 NFS_LOOKUP - Lookup Pathname
 **************************************************************************/
-static void nfs_lookup_req(char *fname)
+static void nfs_lookup_req(const char *fname)
 {
 	uint32_t data[1024];
 	uint32_t *p;
@@ -621,7 +621,7 @@ static void nfs_handler(void *ctx, char *packet, unsigned len)
 
 		debug("Symlink --> %s\n", nfs_path);
 
-		nfs_filename = basename(nfs_path);
+		nfs_filename = kbasename(nfs_path);
 		nfs_path     = dirname(nfs_path);
 
 		nfs_state = STATE_MOUNT_REQ;
@@ -664,7 +664,7 @@ static void nfs_start(char *p)
 
 	strcpy(nfs_path, p);
 
-	nfs_filename = basename (nfs_path);
+	nfs_filename = kbasename (nfs_path);
 	nfs_path     = dirname (nfs_path);
 
 	printf("\nFilename '%s/%s'.\n", nfs_path, nfs_filename);
-- 
2.39.5



