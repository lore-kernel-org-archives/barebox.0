Delivery-date: Fri, 14 Feb 2025 11:32:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiszt-002EOc-2b
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:32:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiszs-0002FO-Ip
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:32:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1fyxVjFX6CctRyKikTXnqXA0NYPxiRTGP7k0CwKIe6Y=; b=cWXtztnyLMHau7WccMOft0P+Lk
	Sb9rr3cxg+ljJCI8RksfgQnKcmt0v/8TyIsuoNgKGvDUKXgVuD+cf8IwHEcKtdTqB+auX0ZWNC0GT
	mGE0+4Wp133IYWAYppNQYsQLUIj/2JSUhgS4R1qOu+Vd8PXKzAg/F/OHxYTLQgRjI8lkN5x5Q6psv
	xPo8VhJongWkKW6FbQlnN/B9VeSrj4EuI3fWx2+gwro0Qs2rqjLrGNsdB2DO5nDVt1Hj47tMEAHko
	Rl2idlvcy+0+KP//bGgN6VCR8QBOryuinBpxHnHqN3P9mM+wCgkXUQdH9lzLNbiSDhqcu5sx/NV9j
	17oknR5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiszR-0000000EWC8-2Iaj;
	Fri, 14 Feb 2025 10:32:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisya-0000000EW4B-43Nr
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisyZ-0001yf-GR; Fri, 14 Feb 2025 11:31:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisyZ-000twS-11;
	Fri, 14 Feb 2025 11:31:15 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisyZ-00CAez-0j;
	Fri, 14 Feb 2025 11:31:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:31:14 +0100
Message-Id: <20250214103114.2900899-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_023117_007628_EDA3C1B4 
X-CRM114-Status: GOOD (  14.74  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mount: support specifying mount -o options more than once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Specifying -o more than once is useful for scripts: A mount.9P script
for example can specify some default options and the caller of the
script can specify an extra -o to add extra options.

This is supported by normal mount(1), but wasn't so far in the barebox
variant. Remedy that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/mount.c | 41 ++++++++++++++++++++++++++++++-----------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 81a40e951076..002a38e1959f 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -9,14 +9,18 @@
 #include <errno.h>
 #include <getopt.h>
 #include <linux/err.h>
+#include <stringlist.h>
 
 static int do_mount(int argc, char *argv[])
 {
-	int opt, verbose = 0;
+	int ret = 0, opt, verbose = 0;
 	struct driver *drv;
 	const char *type = NULL;
 	const char *mountpoint, *devstr;
-	const char *fsoptions = NULL;
+	struct string_list fsoption_list;
+	char *fsoptions = NULL;
+
+	string_list_init(&fsoption_list);
 
 	while ((opt = getopt(argc, argv, "ao:t:v")) > 0) {
 		switch (opt) {
@@ -27,7 +31,7 @@ static int do_mount(int argc, char *argv[])
 			type = optarg;
 			break;
 		case 'o':
-			fsoptions = optarg;
+			string_list_add(&fsoption_list, optarg);
 			break;
 		case 'v':
 			verbose++;
@@ -56,11 +60,22 @@ static int do_mount(int argc, char *argv[])
 			}
 		}
 
-		return 0;
+		goto out;
+	}
+
+	if (argc == 0) {
+		ret = COMMAND_ERROR_USAGE;
+		goto out;
 	}
 
 	devstr = argv[0];
 
+	fsoptions = string_list_join(&fsoption_list, " ");
+	if (!fsoptions) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
 	if (argc == 1) {
 		struct cdev *cdev;
 		const char *path;
@@ -70,8 +85,10 @@ static int do_mount(int argc, char *argv[])
 		device_detect_by_name(devstr);
 
 		cdev = cdev_by_name(devstr);
-		if (!cdev)
-			return -ENOENT;
+		if (!cdev) {
+			ret = -ENOENT;
+			goto out;
+		}
 
 		path = cdev_mount_default(cdev, fsoptions);
 		if (IS_ERR(path))
@@ -79,12 +96,9 @@ static int do_mount(int argc, char *argv[])
 
 		printf("mounted /dev/%s on %s\n", devstr, path);
 
-		return 0;
+		goto out;
 	}
 
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
 	if (argc == 3) {
 		/*
 		 * Old behaviour: mount <dev> <type> <mountpoint>
@@ -95,7 +109,12 @@ static int do_mount(int argc, char *argv[])
 		mountpoint = argv[1];
 	}
 
-	return mount(devstr, type, mountpoint, fsoptions);
+	ret = mount(devstr, type, mountpoint, fsoptions);
+
+out:
+	free(fsoptions);
+	string_list_free(&fsoption_list);
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(mount)
-- 
2.39.5



