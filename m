Delivery-date: Tue, 01 Apr 2025 13:05:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQr-006xw8-0u
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQq-0003Dg-5L
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LJBMUUshex4WW2EtRcODm9CgJwKn4QbAuh5GrByXDfQ=; b=Xi6+Hsm3BOXpaBqat1zu8gEOwW
	CYuZbfGLVARslFg6LqW81DSA49zgmFkYrLIFPiOgrrX1KQlR8kjPv19EUI+dfd8X+r2XJarErEbS6
	RnPuSACyUOMJtEUqqkvz412KRZCAUBoYvLJ78sim1UCGxPMjVVOrg7SAteqLfNZI0zITZao2PO1RP
	P3M/WsgkjreLuRuCHFhRmTaT/1GuL95NILi8zaT2Z8DNDxUo0mjctMgsrT3TzclklhGCDH+3KdPWn
	HWXFjghYMe5pQQa5EU7bTNKYAyL3p82s2Qw9gdgt9siukSavIVYd0h3MDPs/nCjNevjHshIv9JFAF
	f9MqKMqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQL-00000002iqW-1kih;
	Tue, 01 Apr 2025 11:04:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA8-00000002foY-3bxM
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000Mj-HN; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWZ-16;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-0o;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:52 +0200
Message-Id: <20250401104806.3959859-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034809_319946_816024F5 
X-CRM114-Status: GOOD (  17.74  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/16] boot: move nfs:// parsing out of bootloader spec code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's nothing bootloader spec specific about the current handling of
nfs:// URIs. Move it out of blspec to simplify it and allow its reuse by
other bootentry providers as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 118 +-----------------------------------------------
 common/boot.c   | 116 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 118 insertions(+), 116 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 27ac6560b97b..740726a571d2 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -16,7 +16,6 @@
 #include <init.h>
 #include <bootm.h>
 #include <glob.h>
-#include <net.h>
 #include <fs.h>
 #include <of.h>
 #include <linux/stat.h>
@@ -298,111 +297,6 @@ static int blspec_have_entry(struct bootentries *bootentries, const char *path)
 	return 0;
 }
 
-/*
- * nfs_find_mountpath - Check if a given url is already mounted
- */
-static const char *nfs_find_mountpath(const char *nfshostpath)
-{
-	struct fs_device *fsdev;
-
-	for_each_fs_device(fsdev) {
-		if (fsdev->backingstore && !strcmp(fsdev->backingstore, nfshostpath))
-			return fsdev->path;
-	}
-
-	return NULL;
-}
-
-/*
- * parse_nfs_url - check for nfs:// style url
- *
- * Check if the passed string is a NFS url and if yes, mount the
- * NFS and return the path we have mounted to.
- */
-static char *parse_nfs_url(const char *url)
-{
-	char *sep, *str, *host, *port, *path;
-	char *mountpath = NULL, *hostpath = NULL, *options = NULL;
-	const char *prevpath;
-	IPaddr_t ip;
-	int ret;
-
-	if (!IS_ENABLED(CONFIG_FS_NFS))
-		return NULL;
-
-	if (strncmp(url, "nfs://", 6))
-		return NULL;
-
-	url += 6;
-
-	str = xstrdup(url);
-
-	host = str;
-
-	sep = strchr(str, '/');
-	if (!sep) {
-		ret = -EINVAL;
-		goto out;
-	}
-
-	*sep++ = 0;
-
-	path = sep;
-
-	port = strchr(host, ':');
-	if (port)
-		*port++ = 0;
-
-	ret = ifup_all(0);
-	if (ret) {
-		pr_err("Failed to bring up networking\n");
-		goto out;
-	}
-
-	ret = resolv(host, &ip);
-	if (ret) {
-		pr_err("Cannot resolve \"%s\": %s\n", host, strerror(-ret));
-		goto out;
-	}
-
-	hostpath = basprintf("%pI4:%s", &ip, path);
-
-	prevpath = nfs_find_mountpath(hostpath);
-
-	if (prevpath) {
-		mountpath = xstrdup(prevpath);
-	} else {
-		mountpath = basprintf("/mnt/nfs-%s-bootentries-%08x", host,
-					rand());
-		if (port)
-			options = basprintf("mountport=%s,port=%s", port,
-					      port);
-
-		ret = make_directory(mountpath);
-		if (ret)
-			goto out;
-
-		pr_debug("host: %s port: %s path: %s\n", host, port, path);
-		pr_debug("hostpath: %s mountpath: %s options: %s\n", hostpath, mountpath, options);
-
-		ret = mount(hostpath, "nfs", mountpath, options);
-		if (ret)
-			goto out;
-	}
-
-	ret = 0;
-
-out:
-	free(str);
-	free(hostpath);
-	free(options);
-
-	if (ret)
-		free(mountpath);
-
-	return ret ? NULL : mountpath;
-}
-
 /*
  * entry_is_of_compatible - check if a bootspec entry is compatible with
  *                          the current machine.
@@ -798,15 +692,10 @@ static int blspec_bootentry_generate(struct bootentries *bootentries,
 	if (ret > 0)
 		found += ret;
 
-	if (*name == '/' || !strncmp(name, "nfs://", 6)) {
-		char *nfspath = parse_nfs_url(name);
-
-		if (nfspath)
-			name = nfspath;
-
+	if (*name == '/') {
 		ret = stat(name, &s);
 		if (ret)
-			goto out;
+			return found;
 
 		if (S_ISDIR(s.st_mode))
 			ret = blspec_scan_directory(bootentries, name);
@@ -814,9 +703,6 @@ static int blspec_bootentry_generate(struct bootentries *bootentries,
 			ret = blspec_scan_file(bootentries, NULL, name);
 		if (ret > 0)
 			found += ret;
-
-out:
-		free(nfspath);
 	}
 
 	return found;
diff --git a/common/boot.c b/common/boot.c
index e3bdfec581c1..bfb2eb13f67f 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -13,6 +13,9 @@
 #include <init.h>
 #include <menu.h>
 #include <unistd.h>
+#include <libfile.h>
+#include <net.h>
+#include <fs.h>
 
 #include <linux/stat.h>
 
@@ -273,6 +276,112 @@ int bootentry_register_provider(struct bootentry_provider *p)
 	return 0;
 }
 
+/*
+ * nfs_find_mountpath - Check if a given url is already mounted
+ */
+static const char *nfs_find_mountpath(const char *nfshostpath)
+{
+	struct fs_device *fsdev;
+
+	for_each_fs_device(fsdev) {
+		if (fsdev->backingstore && !strcmp(fsdev->backingstore, nfshostpath))
+			return fsdev->path;
+	}
+
+	return NULL;
+}
+
+/*
+ * parse_nfs_url - check for nfs:// style url
+ *
+ * Check if the passed string is a NFS url and if yes, mount the
+ * NFS and return the path we have mounted to.
+ */
+static char *parse_nfs_url(const char *url)
+{
+	char *sep, *str, *host, *port, *path;
+	char *mountpath = NULL, *hostpath = NULL, *options = NULL;
+	const char *prevpath;
+	IPaddr_t ip;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_FS_NFS))
+		return NULL;
+
+	if (strncmp(url, "nfs://", 6))
+		return NULL;
+
+	url += 6;
+
+	str = xstrdup(url);
+
+	host = str;
+
+	sep = strchr(str, '/');
+	if (!sep) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	*sep++ = 0;
+
+	path = sep;
+
+	port = strchr(host, ':');
+	if (port)
+		*port++ = 0;
+
+	ret = ifup_all(0);
+	if (ret) {
+		pr_err("Failed to bring up networking\n");
+		goto out;
+	}
+
+	ret = resolv(host, &ip);
+	if (ret) {
+		pr_err("Cannot resolve \"%s\": %s\n", host, strerror(-ret));
+		goto out;
+	}
+
+	hostpath = basprintf("%pI4:%s", &ip, path);
+
+	prevpath = nfs_find_mountpath(hostpath);
+
+	if (prevpath) {
+		mountpath = xstrdup(prevpath);
+	} else {
+		mountpath = basprintf("/mnt/nfs-%s-bootentries-%08x", host,
+					rand());
+		if (port)
+			options = basprintf("mountport=%s,port=%s", port,
+					      port);
+
+		ret = make_directory(mountpath);
+		if (ret)
+			goto out;
+
+		pr_debug("host: %s port: %s path: %s\n", host, port, path);
+		pr_debug("hostpath: %s mountpath: %s options: %s\n", hostpath, mountpath, options);
+
+		ret = mount(hostpath, "nfs", mountpath, options);
+		if (ret)
+			goto out;
+	}
+
+	ret = 0;
+
+out:
+	free(str);
+	free(hostpath);
+	free(options);
+
+	if (ret)
+		free(mountpath);
+
+	return ret ? NULL : mountpath;
+}
+
+
 /*
  * bootentry_create_from_name - create boot entries from a name
  *
@@ -293,6 +402,11 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 {
 	struct bootentry_provider *p;
 	int found = 0, ret;
+	char *nfspath;
+
+	nfspath = parse_nfs_url(name);
+	if (nfspath)
+		name = nfspath;
 
 	list_for_each_entry(p, &bootentry_providers, list) {
 		ret = p->generate(bootentries, name);
@@ -300,6 +414,8 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 			found += ret;
 	}
 
+	free(nfspath);
+
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT) && !found) {
 		const char *path;
 
-- 
2.39.5



