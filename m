Delivery-date: Wed, 10 Dec 2025 11:16:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTHFW-009sUD-2s
	for lore@lore.pengutronix.de;
	Wed, 10 Dec 2025 11:16:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTHFW-0001wY-6E
	for lore@pengutronix.de; Wed, 10 Dec 2025 11:16:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JxZ6zkSskwF43tomsOAbaHO4Khi1vg1O/+wzCG0giJ0=; b=qY5zOOj2zTVttDMsS3KS1upGTV
	pfZ9uZ2nlJ6AwpV1D3DiywBM23QbuWwZPVLA7h0ryI0nBvMgXmCFx8qT1Ev5F8O/qDz5rVt3M6Us3
	mU8uAqQlZWNYhmIy10D4Tz8FEqTB9Re9Tk6M2kdneeY1Y8R2pbtg1BleEXFOKAd6+uJIaGdZEKMuu
	2Y4i9j7Y3C8K1kmOCATqDq/WK4Sd0+yer0n4tPvXuvuYgOyxmrY+E65Lp6Gkh1yiaquQuGC2tZu6j
	zGCuJXGbNhyoj+yIYETCelqeBO83EBZvVrc3kbPVr/KfedE6Enhi1PLNvfg7l10Bq832cofOHJ81q
	l8WL1bJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHF6-0000000FJNW-1ZjO;
	Wed, 10 Dec 2025 10:16:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTHF4-0000000FJMg-1TXd
	for barebox@lists.infradead.org;
	Wed, 10 Dec 2025 10:16:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-0001eK-Sa; Wed, 10 Dec 2025 11:16:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-004wMJ-23;
	Wed, 10 Dec 2025 11:16:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vTHEm-00000004RFo-2KFz;
	Wed, 10 Dec 2025 11:16:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Dec 2025 11:16:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-devfs-prep-v1-3-3a2a3aa27eab@pengutronix.de>
References: <20251210-devfs-prep-v1-0-3a2a3aa27eab@pengutronix.de>
In-Reply-To: <20251210-devfs-prep-v1-0-3a2a3aa27eab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765361760; l=4382;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2VYHdRZpWRNVSkzKsxu4nMshICsaCdfJGvIfxPV2jj0=;
 b=LEntne+I4llgVo1ar4F41EA5TjzD8Wk2vI6RutLWngo/rhNStNr5msgk9vaCD9C6Ko9xCbGX7
 8o7+dOHAdPsALjBdQ5pq0vLWpoxKK+RGUP80Eij7qyeNStWIvAHxTP9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_021618_398763_B2CD9C99 
X-CRM114-Status: GOOD (  14.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] test: dirfs: use ramfs rather than devfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

devfs as a filesystem is going away, so do not use it in the dirfd test.
Switch to ramfs, but this means we have to mount it ourselves. This
has the advantage though that it might reveal some bugs in the fs layer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/self/dirfd.c | 46 +++++++++++++++++++++++++++++++++-------------
 1 file changed, 33 insertions(+), 13 deletions(-)

diff --git a/test/self/dirfd.c b/test/self/dirfd.c
index 1f9b375e84ffa948a511b7ad94cd40fabeee4af3..04cbf6e285f3184f3e5b1680271aabffc272c8be 100644
--- a/test/self/dirfd.c
+++ b/test/self/dirfd.c
@@ -9,6 +9,7 @@
 #include <linux/bitfield.h>
 #include <unistd.h>
 #include <bselftest.h>
+#include <libfile.h>
 
 BSELFTEST_GLOBALS();
 
@@ -26,7 +27,7 @@ BSELFTEST_GLOBALS();
 
 static void check_statat(const char *at, int dirfd, const char *prefix, unsigned expected)
 {
-	static const char *paths[] = { ".", "..", "zero", "dev" };
+	static const char *paths[] = { ".", "..", "testfile", "dirfdtest" };
 	struct stat s;
 
 	for (int i = 0; i < ARRAY_SIZE(paths); i++) {
@@ -63,9 +64,9 @@ static void check_statat(const char *at, int dirfd, const char *prefix, unsigned
 			    fullpath, at, testpath))
 			goto next;
 
-		ret = strcmp_ptr(fsdev1->path, "/dev");
+		ret = strcmp_ptr(fsdev1->path, "/dirfdtest");
 		if (!expect(ret == 0, FIELD_GET(BIT(0), expected),
-			    "fsdev_of(%s)->path = %s != /dev", fullpath, fsdev1->path))
+			    "fsdev_of(%s)->path = %s != /dirfdtest", fullpath, fsdev1->path))
 			goto next;
 
 next:
@@ -84,9 +85,9 @@ static void do_test_dirfd(const char *at, int dirfd,
 
 	check_statat(at, dirfd, "",             expected1);
 	check_statat(at, dirfd, "./",           expected1);
-	check_statat(at, dirfd, "/dev/",        expected2);
-	check_statat(at, dirfd, "/dev/./",      expected2);
-	check_statat(at, dirfd, "/dev/../dev/", expected2);
+	check_statat(at, dirfd, "/dirfdtest/",        expected2);
+	check_statat(at, dirfd, "/dirfdtest/./",      expected2);
+	check_statat(at, dirfd, "/dirfdtest/../dirfdtest/", expected2);
 	check_statat(at, dirfd, "/",            expected3);
 	check_statat(at, dirfd, "../",          expected4);
 
@@ -97,19 +98,31 @@ static void do_test_dirfd(const char *at, int dirfd,
 
 static void test_dirfd(void)
 {
-	int fd;
+	int fd, ret;
 
 	fd = open("/", O_PATH | O_DIRECTORY);
-	if (expect(fd < 0, false, "open(/, O_PATH | O_DIRECTORY) = %d", fd))
+	if (!expect(fd < 0, false, "open(/, O_PATH | O_DIRECTORY) = %d", fd))
 		close(fd);
 
+	ret = make_directory("/dirfdtest");
+	if (!expect(ret == 0, true, "make_directory(\"/dirfdtest\") = %d", ret))
+		return;
+
+	ret = mount("none", "ramfs", "/dirfdtest", NULL);
+	if (!expect(ret == 0, true, "mount(\"none\", \"ramfs\", \"/dirfdtest\") = %d", ret))
+		goto out;
+
+	ret = write_file("/dirfdtest/testfile", __func__, strlen(__func__));
+	if (!expect(ret == 0, true, "write_file() = %d", ret))
+		goto out;
+
 #define B(dot, dotdot, zero, dev) 0b##dev##zero##dotdot##dot
 	/* We do fiften tests for every configuration
-	 * for dir in ./ /dev / ../ ; do
-	 *	for file in . .. zero dev ; do
+	 * for dir in ./ /dirfdtest / ../ ; do
+	 *	for file in . .. zero dirfdtest ; do
 	 *		test if file exists
 	 *		test if file can be canonicalized
-	 *		test if parent FS is mounted at /dev
+	 *		test if parent FS is mounted at /dirfdtest
 	 *	done
 	 * done
 	 *
@@ -119,11 +132,18 @@ static void test_dirfd(void)
 	do_test_dirfd("AT_FDCWD", AT_FDCWD,
 		      B(110,110,000,111), B(111,110,111,000),
 		      B(110,110,000,111), B(110,110,000,111));
-	do_test_dirfd("/dev", open("/dev", O_PATH | O_DIRECTORY),
+	do_test_dirfd("/dirfdtest", open("/dirfdtest", O_PATH | O_DIRECTORY),
 		      B(111,110,111,000), B(111,110,111,000),
 		      B(110,110,000,111), B(110,110,000,111));
-	do_test_dirfd("/dev O_CHROOT", open("/dev", O_PATH | O_CHROOT),
+	do_test_dirfd("/dirfdtest O_CHROOT", open("/dirfdtest", O_PATH | O_CHROOT),
 		      B(111,111,111,000), B(000,000,000,000),
 		      B(111,111,111,000), B(111,111,111,000));
+
+out:
+	ret = umount("/dirfdtest");
+	expect(ret == 0, true, "umount(\"/dirfdtest\") = %d", ret);
+
+	ret = rmdir("/dirfdtest");
+	expect(ret == 0, true, "rmdir(\"/dirfdtest\") = %d", ret);
 }
 bselftest(core, test_dirfd);

-- 
2.47.3



