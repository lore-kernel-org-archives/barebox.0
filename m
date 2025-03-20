Delivery-date: Thu, 20 Mar 2025 06:20:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Ku-001l6d-2K
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:20:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kt-0003iD-D5
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:20:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+1oMfVZJRoI1uB6vW2j8j17bRbhYn1/Xht9ZuCm9WIw=; b=dgcrvWRPAxIfYt4zjtSaNXMj5l
	8r6D+XfkOeS3H6crkFl7jdl6Ke8oLlr2HMnKew9toZXDpCpYKG0uUyM3sGZJDaYkX8BzJbfeai6P7
	WEHHgdVCW0sZolv2lJqiF6ZcMdn3hxYxVStRK7JJqZwxityQIYFPK/mMsmaC3GLvba9rFSke7OklY
	a1MExuB3yv1LYcbZjxXvyO6aQuS0jczTwfKum/o8VVBqDo9ybdkYMMfK9V1IfBkG2Buyw2+umT9vS
	bjvMkM9XeNOoDRgSS8zI3Xp3sV/H+I4luWEpVAFF4EvcicCp9224o9x5S8SXpL2+Hsq0xsp+vBRqM
	TQQokq4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KQ-0000000BCVc-46o8;
	Thu, 20 Mar 2025 05:20:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KL-0000000BCS7-45CH
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:20:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-0003E3-P2; Thu, 20 Mar 2025 06:20:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-000hvO-0R;
	Thu, 20 Mar 2025 06:20:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-007GGZ-1V;
	Thu, 20 Mar 2025 06:20:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:17 +0100
Message-Id: <20250320052019.1726331-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
References: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222022_013141_7E6E5CF2 
X-CRM114-Status: GOOD (  20.93  )
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
Subject: [PATCH 4/6] commands: implement tree command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a very simple tree command inspired by busybox. We already have
ls -R for recursive directory listings, but tree uses indentation to
make it easier to see the directory structure.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  |   9 +++
 commands/Makefile |   1 +
 commands/tree.c   | 159 ++++++++++++++++++++++++++++++++++++++++++++++
 fs/fs.c           |   6 ++
 include/dirent.h  |   1 +
 5 files changed, 176 insertions(+)
 create mode 100644 commands/tree.c

diff --git a/commands/Kconfig b/commands/Kconfig
index fe459fa862f5..8a7a6e94f025 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1021,6 +1021,15 @@ config CMD_LS
 		  -C	column format (opposite of long format)
 		  -R	list subdirectories recursively
 
+config CMD_TREE
+	tristate
+	default y
+	prompt "tree"
+	help
+	  list contents of directories in a tree-like format.
+
+	  Usage: tree [FILEDIR...]
+
 config CMD_STAT
 	tristate
 	prompt "stat"
diff --git a/commands/Makefile b/commands/Makefile
index e152e4148b04..fa7de443cc13 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_CMD_POWEROFF)	+= poweroff.o
 obj-$(CONFIG_CMD_GO)		+= go.o
 obj-$(CONFIG_CMD_PARTITION)	+= partition.o
 obj-$(CONFIG_CMD_LS)		+= ls.o
+obj-$(CONFIG_CMD_TREE)		+= tree.o
 obj-$(CONFIG_CMD_STAT)		+= stat.o
 obj-$(CONFIG_CMD_CD)		+= cd.o
 obj-$(CONFIG_CMD_PWD)		+= pwd.o
diff --git a/commands/tree.c b/commands/tree.c
new file mode 100644
index 000000000000..9b660bb35584
--- /dev/null
+++ b/commands/tree.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2022 Roger Knecht <rknecht@pm.me>
+// SPDX-FileCopyrightText: © 2025 Ahmad Fatoum
+
+#include <stdio.h>
+#include <command.h>
+#include <dirent.h>
+#include <fcntl.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <errno.h>
+
+#define TREE_GAP	"    "
+#define TREE_BAR	"|   "
+#define TREE_MID	"|-- "
+#define TREE_END	"`-- "
+
+struct tree_buf {
+	char buf[80];
+};
+
+struct tree_iter {
+	struct tree_buf prefix;
+	unsigned ndirs;
+	unsigned nfiles;
+};
+
+static int tree_prefix_append(struct tree_buf *prefix, int pos, const char *suffix)
+{
+	int strsz = strlen(suffix);
+
+	if (pos + strsz + 1 < sizeof(prefix->buf))
+		memcpy(prefix->buf + pos, suffix, strsz + 1);
+
+	return pos + strsz;
+}
+
+static int tree(int dirfd, const char *path, int prefix_pos, struct tree_iter *iter)
+{
+	DIR *dir;
+	struct dirent *d;
+	int total, ret = 0;
+
+	if (ctrlc())
+		return -EINTR;
+
+	dirfd = openat(dirfd, path, O_DIRECTORY);
+	if (dirfd < 0)
+		return -errno;
+
+	printf("%s\n", path);
+
+	dir = fdopendir(dirfd);
+	if (!dir) {
+		ret = -errno;
+		goto out_close;
+	}
+
+	iter->ndirs++;
+
+	total = countdir(dir);
+	if (total < 0) {
+		ret = -errno;
+		goto out_close;
+	}
+
+	for (int i = 1; (d = readdir(dir)); i++) {
+		struct stat st;
+		int pos;
+
+		if (d->d_name[0] == '.')
+			continue;
+
+		ret = lstatat(dirfd, d->d_name, &st);
+		if (ret)
+			st.st_mode = S_IFREG;
+
+		if (i == total)
+			pos = tree_prefix_append(&iter->prefix, prefix_pos, TREE_END);
+		else
+			pos = tree_prefix_append(&iter->prefix, prefix_pos, TREE_MID);
+
+		printf("%*s", pos, iter->prefix.buf);
+
+		switch (st.st_mode & S_IFMT) {
+			char realname[PATH_MAX];
+		case S_IFLNK:
+			realname[PATH_MAX - 1] = '\0';
+
+			printf("%s", d->d_name);
+			if (readlinkat(dirfd, d->d_name, realname, PATH_MAX - 1) >= 0)
+				printf(" -> %s", realname);
+			printf("\n");
+
+			if (statat(dirfd, d->d_name, &st) || !S_ISDIR(st.st_mode))
+				iter->nfiles++;
+			else
+				iter->ndirs++;
+
+			break;
+		case S_IFDIR:
+			if (i == total)
+				pos = tree_prefix_append(&iter->prefix, prefix_pos, TREE_GAP);
+			else
+				pos = tree_prefix_append(&iter->prefix, prefix_pos, TREE_BAR);
+
+			ret = tree(dirfd, d->d_name, pos, iter);
+			if (ret)
+				goto out_closedir;
+			break;
+		default:
+			printf("%s\n", d->d_name);
+			iter->nfiles++;
+		}
+	}
+
+out_closedir:
+	closedir(dir);
+out_close:
+	close(dirfd);
+	return ret;
+}
+
+static int do_tree(int argc, char *argv[])
+{
+	const char *cwd, **args;
+	struct tree_iter iter;
+	int ret, exitcode = 0;
+
+	if (argc > 1) {
+		args = (const char **)argv + 1;
+		argc--;
+	} else {
+		cwd = getcwd();
+		args = &cwd;
+	}
+
+	iter.nfiles = iter.ndirs = 0;
+
+	for (int i = 0; i < argc; i++) {
+		iter.prefix.buf[0] = 0;
+		ret = tree(AT_FDCWD, args[i], 0, &iter);
+		if (ret) {
+			printf("%s  [error opening dir: %pe]\n", args[i], ERR_PTR(ret));
+			exitcode = 1;
+		}
+	}
+
+	printf("\n%u directories, %u files\n", iter.ndirs, iter.nfiles);
+
+	return exitcode;
+}
+
+BAREBOX_CMD_START(tree)
+	.cmd		= do_tree,
+	BAREBOX_CMD_DESC("list contents of directories in a tree-like format.")
+	BAREBOX_CMD_OPTS("[FILEDIR...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+BAREBOX_CMD_END
diff --git a/fs/fs.c b/fs/fs.c
index 0c698981227f..3e5eb6dc8479 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1062,6 +1062,12 @@ int unreaddir(DIR *dir, const struct dirent *d)
 }
 EXPORT_SYMBOL(unreaddir);
 
+int countdir(DIR *dir)
+{
+	return list_count_nodes(&dir->entries);
+}
+EXPORT_SYMBOL(countdir);
+
 struct dirent *readdir(DIR *dir)
 {
 	struct readdir_entry *entry;
diff --git a/include/dirent.h b/include/dirent.h
index f74541d83d26..b6806aa24799 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -22,6 +22,7 @@ DIR *fdopendir(int fd);
 struct dirent *readdir(DIR *dir);
 int unreaddir(DIR *dir, const struct dirent *d);
 int rewinddir(DIR *dir);
+int countdir(DIR *dir);
 int closedir(DIR *dir);
 
 #endif /* __DIRENT_H */
-- 
2.39.5



