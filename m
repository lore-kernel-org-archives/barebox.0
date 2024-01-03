Delivery-date: Wed, 03 Jan 2024 19:37:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL674-002OKp-2Z
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:37:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66y-000061-8C
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:37:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tGWP20InLKFqOCIVNcJZ2zom5kwjV9z5S4ryPavFeMo=; b=L2X7g1kf+FrM8e4yZ+d3YIPAXV
	ydp9tR1z11op8muATpUYEJvPGfu6ny+N5j+AFuqPEEy5D0+Yl2shLf82KZy+9NahFLaVlawSeNLaS
	dDxzJTqPEOBT4fnMYvGAZvYiKpL10adV5bbprQbwh4hl/NdLaO15lo7kvK3bmCxZ6QoyAdQpwOlnf
	0e/VhdD5DkY9FlwR6SUMR+FTUg97sSFPJf6dCPeIlJeiBmLjjj7m0ec0MLifacnRDj0hYv55kRuLa
	vxiVSwZzdRVHmTm5K9YQ1HEbj41GnHTnLah69DtwwWAwk3BSSX1rGR4H31++FltWY2rYtDAWcnzAU
	SXonL4DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL65E-00Bm3G-2K;
	Wed, 03 Jan 2024 18:35:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61R-00BhVX-0X
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tGWP20InLKFqOCIVNcJZ2zom5kwjV9z5S4ryPavFeMo=; b=lPzqHXlwvdtplZVNSdG8kVmQ/X
	Lz2/g1A/3CltkcsmGmmLv0CL/LVLBS9jJfJMRg2Bn293thbjTApDLud4U5LtKezfzHy3IQ+W5QtEz
	nc20pLRkgXph79Z4zLOxb4gUSHK25OLCrBpuJhdE59gZdgweW8UqV1/2Qzr1r/IizGaT/aVtK450j
	8ka/okPizGZCab1XuAPmd/iud1ViOFJ8Vtwu8fyO0y4PtMQDjwj43qxXuyW5hNqXcO9JU2iUZPulq
	mO74pIklapQ49yL6oT39mCHksOHH1HhGX9O4tyAfQVAdBXBZpZdn/gjNY0tqh2phtvdayXTx2NoSG
	FxTf/EhQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61F-005eBy-34
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001aL-Eo; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000AwJ-2A; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-2j;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:02 +0100
Message-Id: <20240103181312.409668-43-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183110_108910_EC8D8F29 
X-CRM114-Status: GOOD (  19.43  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 042/112] test: self: add dirfd tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adding directory fds involved a bit of rework to the VFS layer.
We have ramfs tests that check the previous behavior, so add now tests
to check that path resolution in openat and statat work as one would expect.

As we need a separate file system to test O_CHROOT, the test has a
dependency on the devfs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig  |   5 ++
 test/self/Makefile |   1 +
 test/self/dirfd.c  | 129 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 135 insertions(+)
 create mode 100644 test/self/dirfd.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 6b9a4bf4a6e4..33e478aee882 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -34,6 +34,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_OF_MANIPULATION
 	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
 	select SELFTEST_FS_RAMFS if FS_RAMFS
+	select SELFTEST_DIRFD if FS_RAMFS && FS_DEVFS
 	select SELFTEST_TFTP if FS_TFTP
 	select SELFTEST_JSON if JSMN
 	select SELFTEST_JWT if JWT
@@ -73,6 +74,10 @@ config SELFTEST_FS_RAMFS
 	bool "ramfs selftest"
 	depends on FS_RAMFS
 
+config SELFTEST_DIRFD
+	bool "dirfd selftest"
+	depends on FS_RAMFS && FS_DEVFS
+
 config SELFTEST_JSON
 	bool "JSON selftest"
 	depends on JSMN
diff --git a/test/self/Makefile b/test/self/Makefile
index 51131474f333..fbc186725487 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
+obj-$(CONFIG_SELFTEST_DIRFD) += dirfd.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
 obj-$(CONFIG_SELFTEST_JWT) += jwt.o jwt_test.pem.o
 obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
diff --git a/test/self/dirfd.c b/test/self/dirfd.c
new file mode 100644
index 000000000000..20b54258715a
--- /dev/null
+++ b/test/self/dirfd.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <string.h>
+#include <linux/bitfield.h>
+#include <unistd.h>
+#include <bselftest.h>
+
+BSELFTEST_GLOBALS();
+
+#define expect(cond, res, fmt, ...) ({ \
+	int __cond = (cond); \
+	int __res = (res); \
+	total_tests++; \
+	if (__cond != __res) { \
+		failed_tests++; \
+		printf("%s:%d failed: %s == %d: " fmt "\n", \
+		       __func__, __LINE__, #cond, __cond, ##__VA_ARGS__); \
+	} \
+	__cond == __res; \
+})
+
+static void check_statat(const char *at, int dirfd, const char *prefix, unsigned expected)
+{
+	static const char *paths[] = { ".", "..", "zero", "dev" };
+	struct stat s;
+
+	for (int i = 0; i < ARRAY_SIZE(paths); i++) {
+		const char *path = paths[i];
+		char *fullpath = NULL, *testpath = basprintf("%s%s", prefix, path);
+		struct fs_device *fsdev1, *fsdev2;
+		int ret;
+
+		ret = statat(dirfd, testpath, &s);
+		if (!expect(ret == 0, FIELD_GET(BIT(2), expected),
+			    "statat(%s, %s): %m", at, testpath))
+			goto next;
+
+		fullpath = canonicalize_path(dirfd, testpath);
+		if (!expect(fullpath != NULL, FIELD_GET(BIT(1), expected),
+			    "canonicalize_path(%s, %s): %m", at, testpath))
+			goto next;
+
+		if (!fullpath)
+			goto next;
+
+		fsdev1 = get_fsdevice_by_path(AT_FDCWD, fullpath);
+		if (!expect(IS_ERR_OR_NULL(fsdev1), false, "get_fsdevice_by_path(AT_FDCWD, %s)",
+			    fullpath))
+			goto next;
+
+		fsdev2 = get_fsdevice_by_path(dirfd, testpath);
+		if (!expect(IS_ERR_OR_NULL(fsdev1), false, "get_fsdevice_by_path(%s, %s)",
+			    at, testpath))
+			goto next;
+
+		if (!expect(fsdev1 == fsdev2, true,
+			    "get_fsdevice_by_path(%s, %s) != get_fsdevice_by_path(AT_FDCWD, %s)",
+			    fullpath, at, testpath))
+			goto next;
+
+		ret = strcmp_ptr(fsdev1->path, "/dev");
+		if (!expect(ret == 0, FIELD_GET(BIT(0), expected),
+			    "fsdev_of(%s)->path = %s != /dev", fullpath, fsdev1->path))
+			goto next;
+
+next:
+		expected >>= 3;
+		free(testpath);
+		free(fullpath);
+	}
+}
+
+static void do_test_dirfd(const char *at, int dirfd,
+			  unsigned expected1, unsigned expected2,
+			  unsigned expected3, unsigned expected4)
+{
+	if (dirfd < 0 && dirfd != AT_FDCWD)
+		return;
+
+	check_statat(at, dirfd, "",             expected1);
+	check_statat(at, dirfd, "./",           expected1);
+	check_statat(at, dirfd, "/dev/",        expected2);
+	check_statat(at, dirfd, "/dev/./",      expected2);
+	check_statat(at, dirfd, "/dev/../dev/", expected2);
+	check_statat(at, dirfd, "/",            expected3);
+	check_statat(at, dirfd, "../",          expected4);
+
+	if (dirfd >= 0)
+		close(dirfd);
+}
+
+
+static void test_dirfd(void)
+{
+	int fd;
+
+	fd = open("/", O_PATH);
+	if (expect(fd < 0, false, "open(/, O_PATH) = %d", fd))
+		close(fd);
+
+#define B(dot, dotdot, zero, dev) 0b##dev##zero##dotdot##dot
+	/* We do fiften tests for every configuration
+	 * for dir in ./ /dev / ../ ; do
+	 *	for file in . .. zero dev ; do
+	 *		test if file exists
+	 *		test if file can be canonicalized
+	 *		test if parent FS is mounted at /dev
+	 *	done
+	 * done
+	 *
+	 * The bits belows correspond to whether a test fails in the above loop
+	 */
+
+	do_test_dirfd("AT_FDCWD", AT_FDCWD,
+		      B(110,110,000,111), B(111,110,111,000),
+		      B(110,110,000,111), B(110,110,000,111));
+	do_test_dirfd("/dev", open("/dev", O_PATH),
+		      B(111,110,111,000), B(111,110,111,000),
+		      B(110,110,000,111), B(110,110,000,111));
+	do_test_dirfd("/dev O_CHROOT", open("/dev", O_PATH | O_CHROOT),
+		      B(111,111,111,000), B(000,000,000,000),
+		      B(111,111,111,000), B(111,111,111,000));
+}
+bselftest(core, test_dirfd);
-- 
2.39.2



