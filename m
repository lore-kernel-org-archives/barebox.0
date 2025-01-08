Delivery-date: Wed, 08 Jan 2025 10:16:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVSBO-000g4q-33
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 10:16:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVSBO-00070p-Q7
	for lore@pengutronix.de; Wed, 08 Jan 2025 10:16:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DJ0DaoARH+5nF+UJRB8zj/iO8/ebumAYTci15kF3LCM=; b=E7eVhuzwWTeZdETOxSp4l7nXQP
	GGFRmUgfAcgxdw3isf+l3WCmUhd/vl9PuskKG+OYyTgW9hjgsa3+SODeyRy2bKsjvzVNUSrgTpy0W
	BmrCfGkJ8hLJ3MYmKBXFRD9y4LhU59H8D4D8xBDitmz9vcCpOR7x7cPVkVQea/t/b3UN647JraFjk
	Gw+96/5iXLreKHE97K0bMGrSl2phe7TbqqO4J2aQmMlwSPK6rUpv3WFsJkZ8BrPTQG0H6hAv76GP2
	JWD0+bC02/PX28Zc61L8FzsyqB4/TC23C798kjldAAErJ32GC/mAmKd15zXUfCVVflHe5IchHyzn5
	+zxKwbPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVSAn-00000007imL-12H8;
	Wed, 08 Jan 2025 09:16:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVS8x-00000007iP0-3quj
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 09:14:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVS8w-0006Pu-GX; Wed, 08 Jan 2025 10:14:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVS8v-007UVX-1k;
	Wed, 08 Jan 2025 10:14:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVS8w-003p9y-0j;
	Wed, 08 Jan 2025 10:14:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jan 2025 10:14:24 +0100
Message-Id: <20250108091425.911629-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_011427_961556_80332184 
X-CRM114-Status: GOOD (  11.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] test: self: ramfs: add regression test for recursive opendir
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Recursive opendir with parent and child directory having the same name
is currently broken. Add a failing test, which will be fixed in the
follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/ramfs.c | 54 ++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 51 insertions(+), 3 deletions(-)

diff --git a/test/self/ramfs.c b/test/self/ramfs.c
index 239e3e690740..3fb3812cb629 100644
--- a/test/self/ramfs.c
+++ b/test/self/ramfs.c
@@ -51,6 +51,44 @@ static inline int get_file_count(int i)
 	return i + 1;
 }
 
+struct test_tree_ctx {
+	unsigned nfiles;
+	unsigned ndirs;
+};
+
+static void test_tree(const char *path, struct test_tree_ctx *ctx)
+{
+	DIR *dir;
+	struct dirent *d;
+	char *oldwd;
+
+	dir = opendir(path);
+	if (!dir)
+		return;
+
+	oldwd = pushd(path);
+
+	while ((d = readdir(dir))) {
+		struct stat st;
+
+		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
+			continue;
+
+		if (stat(d->d_name, &st))
+			continue;
+
+		if (S_ISDIR(st.st_mode))
+			ctx->ndirs++;
+		else if (S_ISREG(st.st_mode))
+			ctx->nfiles++;
+
+		test_tree(d->d_name, ctx);
+
+	}
+
+	popd(oldwd);
+}
+
 static void test_ramfs(void)
 {
 	int files[] = { 1, 3, 5, 7, 11, 13, 17 };
@@ -180,24 +218,34 @@ static void test_ramfs(void)
 	expect_success(i == 90 ? 0 : -EINVAL,
 		       "unexpected file count iterating directory: %u", i);
 
-	ret = make_directory("test/a/b/c/d/e/f/g/h/i/j/k/l");
+	ret = make_directory("test/a/b/c/d/d/f/g/h/i/j/k/l");
 	expect_success(ret, "make_directory()");
 
 	if (!ret) {
+		struct test_tree_ctx ctx = {};
 		const char hello[] = "hello";
 		char *buf;
 
-		ret = write_file("test/a/b/c/d/e/f/g/h/i/j/k/l/FILE",
+		ret = write_file("test/a/b/c/d/d/f/g/h/i/j/k/l/FILE",
 				 ARRAY_AND_SIZE(hello));
 		expect_success(ret, "write_file()");
 
-		buf = read_file("test/a/b/c/d/e/f/g/h/i/j/k/l/FILE", NULL);
+		buf = read_file("test/a/b/c/d/d/f/g/h/i/j/k/l/FILE", NULL);
 		if (expect_ptrok(buf, "read_file()")) {
 			expect_success(memcmp(buf, ARRAY_AND_SIZE(hello)),
 				       "read_file() content");
 		}
 
 		free(buf);
+
+		test_tree("test/", &ctx);
+
+		expect_success(ctx.nfiles == 1 ? 0 : -EINVAL,
+			       "wrong recursive opendir file count: %u",
+			       ctx.nfiles);
+		expect_success(ctx.ndirs == 12 ? 0 : -EINVAL,
+			       "wrong recursive opendir directory count: %u",
+			       ctx.ndirs);
 	}
 
 out:
-- 
2.39.5



