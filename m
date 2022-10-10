Delivery-date: Mon, 10 Oct 2022 08:16:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm5C-0033nm-PF
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:16:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm5A-0002Db-Ki
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:16:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AQYrzjfBDU3vAdr6RMTDSBDUYYiNf9GjjI/sEzGxwQ4=; b=uiteoiqBIF16Wz8iB/agbmWFOB
	SX+Ll7fcx8ap0JLhxJv6rD11m9gBZvWkc1UIe7LfsFufO+zF73hg8YFDHEUwMY+GDExaybgeyKtOu
	o6sWsoN36Uu4XL9WsxYt3CiuLSM2FZO+pPyOAOkHuZYsg/YmvkZ1DxpfvCkfXH13WraiF2M46kKqS
	NjCG1qdWc/Y0gN8BwnxjcjuQSLKIfIS4COuDrJVtVnvTLRWfXCq0ROLa+O4S/X8IssL8lrE9Bb9WK
	BVuZ3pUt8jeagfZF/Hn+y5d0OCFlqwZeZuGZ2I9V19LyYviC/eCqCeMkj9AXQ1HAdr8fme9Z/VN3g
	gFM6XPlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm3z-00HCdx-SG; Mon, 10 Oct 2022 06:14:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm3t-00HCbG-3Z
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:14:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3j-0001hy-SC; Mon, 10 Oct 2022 08:14:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3j-000dZT-4l; Mon, 10 Oct 2022 08:14:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm3i-008kWg-8y; Mon, 10 Oct 2022 08:14:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:14:36 +0200
Message-Id: <20221010061437.2085412-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
References: <20221010061437.2085412-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231449_198064_14E6040A 
X-CRM114-Status: GOOD (  20.25  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] test: self: add ramfs test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add some simple testing for ramfs: creating a directory, filling it with
files, writing some data into them, unlinking some files again, reading
data out of them, iterating over the files and cleaning up the directory
again.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  |   5 ++
 test/self/Makefile |   1 +
 test/self/ramfs.c  | 189 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 195 insertions(+)
 create mode 100644 test/self/ramfs.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 4bf4b874d5e4..052b49972329 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -33,6 +33,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_PROGRESS_NOTIFIER
 	select SELFTEST_OF_MANIPULATION
 	select SELFTEST_ENVIRONMENT_VARIABLES
+	select SELFTEST_FS_RAMFS
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -58,4 +59,8 @@ config SELFTEST_PROGRESS_NOTIFIER
 config SELFTEST_ENVIRONMENT_VARIABLES
 	bool "environment variable selftest"
 
+config SELFTEST_FS_RAMFS
+	bool "ramfs selftest"
+	depends on FS_RAMFS
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index ca9f9c34d1e5..6f2c0d394034 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
+obj-$(CONFIG_FS_RAMFS) += ramfs.o
diff --git a/test/self/ramfs.c b/test/self/ramfs.c
new file mode 100644
index 000000000000..927b035e1e8c
--- /dev/null
+++ b/test/self/ramfs.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <dirent.h>
+#include <libfile.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <bselftest.h>
+#include <linux/sizes.h>
+
+BSELFTEST_GLOBALS();
+
+#define __expect(_ret, _cond, fmt, ...) ({ \
+	bool cond = (_cond); \
+	int ret = (_ret); \
+	total_tests++; \
+	\
+	if (!cond) { \
+		failed_tests++; \
+		printf("%s:%d error %pe: " fmt "\n", \
+		       __func__, __LINE__, ERR_PTR(ret), ##__VA_ARGS__); \
+	} \
+	cond; \
+})
+
+#define expect_success(ret, ...) __expect((ret), (ret) >= 0, __VA_ARGS__)
+#define expect_fail(ret, ...) __expect((ret), (ret) < 0, __VA_ARGS__)
+
+static inline int get_file_count(int i)
+{
+	if (40 <= i && i < 50)
+		return 40;
+
+	if (i >= 50)
+		i -= 10;
+
+	/* we create a file for i == 0 as well */
+	return i + 1;
+}
+
+static void test_ramfs(void)
+{
+	char fname[128];
+	char *content = NULL;
+	char *oldpwd = NULL;
+	DIR *dir = NULL;
+	const char *dname;
+	struct stat st;
+	int i, j, ret, fd;
+	struct dirent *d;
+
+	dname = make_temp("ramfs-test");
+	ret = mkdir(dname, 0777);
+
+	if (!expect_success(ret, "creating directory"))
+		return;
+
+	ret = stat(dname, &st);
+	if (!expect_success(ret, "stating directory"))
+		goto out;
+
+	expect_success(S_ISDIR(st.st_mode) ? 0 : -ENOTDIR,
+		       "directory check");
+
+	content = malloc(99);
+	if (WARN_ON(!content))
+		goto out;
+
+	for (i = 0; i < 99; i++) {
+		scnprintf(fname, sizeof(fname), "%s/file-%02d", dname, i);
+
+		fd = open(fname, O_RDWR | O_CREAT);
+		if (!expect_success(fd, "creating file"))
+			continue;
+
+		for (j = 0; j < i; j++)
+			content[j] = i;
+
+		ret = write(fd, content, i);
+		expect_success(ret, "writing file");
+		close(fd);
+
+		if (40 <= i && i < 50) {
+			ret = unlink(fname);
+			expect_success(ret, "unlinking file");
+		}
+
+		ret = stat(fname, &st);
+		if (40 <= i && i < 50) {
+			expect_fail(ret, "stating file");
+		} else {
+			expect_success(ret, "stating file");
+
+			expect_success(S_ISREG(st.st_mode) ? 0 : -EINVAL,
+				       "stating file");
+		}
+
+		dir = opendir(dname);
+		if (!expect_success(PTR_ERR_OR_ZERO(dir), "opening parent directory"))
+			continue;
+
+		j = 0;
+
+		while ((d = readdir(dir))) {
+			if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
+				continue;
+
+			j++;
+		}
+
+		expect_success(j == get_file_count(i) ? 0 : -EINVAL,
+			       "unexpected file count iterating directory");
+
+		closedir(dir);
+	}
+
+	oldpwd = pushd(dname);
+	if (!expect_success(oldpwd != NULL ? 0 : -EINVAL, "pushd()"))
+		goto out;;
+
+	dir = opendir(".");
+	if (!expect_success(PTR_ERR_OR_ZERO(dir), "opening parent directory"))
+		goto out;
+
+	i = 1;
+
+	while ((d = readdir(dir))) {
+		size_t size = 0;
+		char *buf;
+
+		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
+			continue;
+
+		buf = read_file(d->d_name, &size);
+		if (size) {
+			for (j = 0; j < size; j++) {
+				expect_success(buf[j] == size ? 0 : -EINVAL,
+					       "unexpected file content");
+			}
+		}
+
+		scnprintf(fname, sizeof(fname), "file-%02zu", size);
+
+		expect_success(strcmp(d->d_name, fname) == 0 ? 0 : -EINVAL,
+			       "unexpected file content");
+
+		free(buf);
+
+		i++;
+	}
+
+	expect_success(i == 90 ? 0 : -EINVAL,
+		       "unexpected file count iterating directory: %u", i);
+
+	ret = make_directory("test/a/b/c/d/e/f/g/h/i/j/k/l");
+	expect_success(ret, "make_directory()");
+
+	if (!ret) {
+		const char hello[] = "hello";
+		char *buf;
+
+		ret = write_file("test/a/b/c/d/e/f/g/h/i/j/k/l/FILE",
+				 ARRAY_AND_SIZE(hello));
+		expect_success(ret, "write_file()");
+
+		buf = read_file("test/a/b/c/d/e/f/g/h/i/j/k/l/FILE", NULL);
+		if (expect_success(PTR_ERR_OR_ZERO(buf), "read_file()")) {
+			expect_success(memcmp(buf, ARRAY_AND_SIZE(hello)),
+				       "read_file() content");
+		}
+	}
+
+out:
+	popd(oldpwd);
+	free(content);
+
+	closedir(dir);
+
+	ret = unlink_recursive(dname, NULL);
+	expect_success(ret, "unlinking directory");
+
+	dir = opendir(dname);
+	expect_fail(dir ? 0 : -EISDIR, "opening removed directory");
+}
+bselftest(core, test_ramfs);
-- 
2.30.2



