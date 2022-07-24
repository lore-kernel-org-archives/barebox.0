Delivery-date: Sun, 24 Jul 2022 20:49:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgfq-002GvY-DL
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 20:49:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgfo-000388-9j
	for lore@pengutronix.de; Sun, 24 Jul 2022 20:49:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iUK0tY6e6x4Vvhuta828QLpAXC3VXg3rwc+PCGiO8/A=; b=1svHBWSui7VFg4RnkqHLTTVGrH
	uyQlMOz8pJguVOQmKCtneWBcViwaFyTvT0kYud6eyfsV5Z1M965vF1OKL/5xiadyq827TsJ5QQqGG
	VcFGd32ETR8Y0gOCBzpKzMPCJb0o9pj0YzrRQ0NYCwHC1LadlVH9SExAX43TFC1NOjpV/ovx0N56U
	b4VLFlBiObL3rlNZbOV4klcgXbE338QlC4yBjjOelsz7SNqOudurQLa0Jbz70GN5YaZ6X+q25M4Ql
	ifIwVuH0uFBnRXbgQHJCrx1FC+9SH6kp2iV4jW89v4VPEOdicIOGyVYsIjqiJ0WQthJQ2+lGYBVTU
	I6XpjtfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgeJ-008h6D-SL; Sun, 24 Jul 2022 18:48:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgeE-008h1E-Ja
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 18:48:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgeA-00030Z-Fv; Sun, 24 Jul 2022 20:48:10 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFge9-002xyK-M4; Sun, 24 Jul 2022 20:48:09 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFge8-008uRA-Vv; Sun, 24 Jul 2022 20:48:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 20:48:06 +0200
Message-Id: <20220724184807.2123459-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724184807.2123459-1-a.fatoum@pengutronix.de>
References: <20220724184807.2123459-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_114814_718300_3308364E 
X-CRM114-Status: GOOD (  12.47  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] blspec: iterate over entries in lexical order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already iterate over boot scripts in lexical order, so it makes sense
to do the same for bootspec entries. This way, it's stable which boot
entry will be taken, when multiple match.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 43 ++++++++++---------------------------------
 1 file changed, 10 insertions(+), 33 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index d798f6f38a4b..cbaa211cb16f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -15,6 +15,7 @@
 #include <libbb.h>
 #include <init.h>
 #include <bootm.h>
+#include <glob.h>
 #include <net.h>
 #include <fs.h>
 #include <of.h>
@@ -570,54 +571,30 @@ int blspec_scan_file(struct bootentries *bootentries, const char *root,
  */
 int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 {
-	DIR *dir;
-	struct dirent *d;
+	glob_t globb;
 	char *abspath;
 	int ret, found = 0;
 	const char *dirname = "loader/entries";
+	int i;
 
 	pr_debug("%s: %s %s\n", __func__, root, dirname);
 
-	abspath = basprintf("%s/%s", root, dirname);
+	abspath = basprintf("%s/%s/*.conf", root, dirname);
 
-	dir = opendir(abspath);
-	if (!dir) {
+	ret = glob(abspath, 0, NULL, &globb);
+	if (ret) {
 		pr_debug("%s: %s: %s\n", __func__, abspath, strerror(errno));
 		ret = -errno;
 		goto err_out;
 	}
 
-	while ((d = readdir(dir))) {
-		char *configname;
+	for (i = 0; i < globb.gl_pathc; i++) {
+		const char *configname = globb.gl_pathv[i];
 		struct stat s;
-		char *dot;
-
-		if (*d->d_name == '.')
-			continue;
-
-		configname = basprintf("%s/%s", abspath, d->d_name);
-
-		dot = strrchr(configname, '.');
-		if (!dot) {
-			free(configname);
-			continue;
-		}
-
-		if (strcmp(dot, ".conf")) {
-			free(configname);
-			continue;
-		}
 
 		ret = stat(configname, &s);
-		if (ret) {
-			free(configname);
+		if (ret || !S_ISREG(s.st_mode))
 			continue;
-		}
-
-		if (!S_ISREG(s.st_mode)) {
-			free(configname);
-			continue;
-		}
 
 		ret = blspec_scan_file(bootentries, root, configname);
 		if (ret == 1)
@@ -626,7 +603,7 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 
 	ret = found;
 
-	closedir(dir);
+	globfree(&globb);
 err_out:
 	free(abspath);
 
-- 
2.30.2



