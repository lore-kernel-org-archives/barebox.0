Delivery-date: Wed, 17 Jul 2024 09:29:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6g-0006UB-1X
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 09:29:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTz6f-0007VI-Qo
	for lore@pengutronix.de; Wed, 17 Jul 2024 09:29:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ROj60ZlW1QM5rwFrRLVjzKkAEpwUtvid3+hqURvhoH4=; b=Rrcjm+S7KBUr+GQ+Lf5urtWHkg
	tD9TSXoI6jgItxvXepbomz5TCHcmKi8kzhyFUEW1M+jzxchNDjkP3A9NoaXe4WBnLcoUdAxLQHjVl
	AdrMCa9iksE/8VjuzjrUhOAINsxxgtxYXNPU0nMMoblgxzppPuaXIlwsWaajO3892iFllQoreGTlT
	R3yI+j9MjkjOSUY4+qtZVTu778nNBYbOFJtqNincHIUU30rjvnI7cW2jzQ72HjFh/PYAG36ksltgt
	/hFxUwYpy0Ncg8kK/KmRCYvTVwbGOBQ5Tet92bkJ4O+5AqMbWBKzc9KSkr00XE1OZEWxl1a4eY1V2
	REIR+rDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz6H-0000000Cyp1-0mfO;
	Wed, 17 Jul 2024 07:29:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTz6B-0000000CymH-3vng
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 07:29:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-0007Im-I2; Wed, 17 Jul 2024 09:29:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-000A1l-4u; Wed, 17 Jul 2024 09:29:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTz6A-00BsTV-0C;
	Wed, 17 Jul 2024 09:29:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 09:29:11 +0200
Message-Id: <20240717072913.2830995-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_002915_999426_6870324F 
X-CRM114-Status: GOOD (  15.73  )
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
Subject: [PATCH master 1/3] environment: don't leak environment path buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

LeakSanitizer on sandbox reports that we always leak the environment
path. Restructure the code, so this is avoided.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/barebox.c | 49 +++++++++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 19 deletions(-)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 560d9c0d15e0..ed5d171e43a8 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -15,60 +15,71 @@
 
 #define ENV_MNT_DIR "/boot"	/* If env on filesystem, where to mount */
 
-/* If dev describes a file on a fs, mount the fs and change devpath to
- * point to the file's path.  Otherwise leave devpath alone.  Does
- * nothing in env in a file support isn't enabled.  */
-static int environment_check_mount(struct device *dev, char **devpath)
+/* If dev describes a file on a fs, mount the fs and return a pointer
+ * to the file's path.  Otherwise return an error code or NULL if the
+ * device path should be used.
+ * Does nothing in env in a file support isn't enabled.
+ */
+static char *environment_check_mount(struct device *dev, const char *devpath)
 {
 	const char *filepath;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_OF_BAREBOX_ENV_IN_FS))
-		return 0;
+		return NULL;
 
 	ret = of_property_read_string(dev->of_node, "file-path", &filepath);
 	if (ret == -EINVAL) {
 		/* No file-path so just use device-path */
-		return 0;
+		return NULL;
 	} else if (ret) {
 		/* file-path property exists, but has error */
 		dev_err(dev, "Problem with file-path property\n");
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	/* Get device env is on and mount it */
 	mkdir(ENV_MNT_DIR, 0777);
-	ret = mount(*devpath, "fat", ENV_MNT_DIR, NULL);
+	ret = mount(devpath, "fat", ENV_MNT_DIR, NULL);
 	if (ret) {
 		dev_err(dev, "Failed to load environment: mount %s failed (%d)\n",
-			*devpath, ret);
-		return ret;
+			devpath, ret);
+		return ERR_PTR(ret);
 	}
 
 	/* Set env to be in a file on the now mounted device */
 	dev_dbg(dev, "Loading default env from %s on device %s\n",
-		filepath, *devpath);
-	*devpath = basprintf("%s/%s", ENV_MNT_DIR, filepath);
-	return 0;
+		filepath, devpath);
+
+	return basprintf("%s/%s", ENV_MNT_DIR, filepath);
 }
 
 static int environment_probe(struct device *dev)
 {
-	char *path;
+	char *devpath, *filepath;
 	int ret;
 
-	ret = of_find_path(dev->of_node, "device-path", &path,
+	ret = of_find_path(dev->of_node, "device-path", &devpath,
 			   OF_FIND_PATH_FLAGS_BB);
 	if (ret)
 		return ret;
 
 	/* Do we need to mount a fs and find env there? */
-	ret = environment_check_mount(dev, &path);
-	if (ret)
+	filepath = environment_check_mount(dev, devpath);
+	if (IS_ERR(filepath)) {
+		free(devpath);
 		return ret;
+	}
 
-	dev_dbg(dev, "Setting default environment path to %s\n", path);
-	default_environment_path_set(path);
+	if (filepath)
+		free(devpath);
+	else
+		filepath = devpath;
+
+	dev_dbg(dev, "Setting default environment path to %s\n", filepath);
+	default_environment_path_set(filepath);
+
+	free(filepath);
 
 	return 0;
 }
-- 
2.39.2



