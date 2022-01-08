Delivery-date: Sat, 08 Jan 2022 18:18:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLu-00Eck9-Bv
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:18:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FLs-0005N4-Ru
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:18:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eLxU6LE4fSoPFZQ5VIxPsjMwn3x6q+kNLYNNI/cr6/k=; b=AFrTkwnAmyxrC3
	/RUDfNs1mzoQ9zSr/t3u6m3tQD5IshoiXcYRFZuVEplX91X3gbyHpNcUYOVrxqirekI+rO8Yx45PU
	y1gx4roNYtozuVbLKCICPsjRbNORhb8iilR3JinTSl69ogDXPt8l5vqAjB0hxt+rx3iVWQDA03ZTs
	s+vwuyE9XzMdsQsWLha3qa5CYW4lf1zHKmy9m4x9xXt1UsS0pWDggRbBJuYiilVCy4z4ENHUBGQ1B
	uvnoCNaMLK5s3VFD7TvTilEydSBopA8tpKVu+MryNR4NakFmioFTnLdGz9zw+8o3eYA9zMZMHlybV
	Sj1d7NvUkd/W4tH1iNQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FKc-006kOl-83; Sat, 08 Jan 2022 17:16:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FJx-006jzg-1M
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:16:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJv-0004Nq-HZ; Sat, 08 Jan 2022 18:15:59 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FJu-002T5a-Tc; Sat, 08 Jan 2022 18:15:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:15:54 +0100
Message-Id: <20220108171555.588426-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091601_136114_1EDA4CCE 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fs: implement pushd/popd chdir wrappers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We don't have dirfd's, so running operations relative to the current
working directory always involves some allocation/freeing boilerplate.

Add pushd/popd helpers to move the boilerplate out of the callsites.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c          | 30 ++++++++++++++++++++++++++++++
 include/unistd.h |  2 ++
 2 files changed, 32 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 7da3a050c1cb..60fdb29078d6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2846,6 +2846,36 @@ out:
 }
 EXPORT_SYMBOL(chdir);
 
+char *pushd(const char *dir)
+{
+	char *oldcwd;
+	int ret;
+
+	oldcwd = strdup(getcwd());
+	if (!oldcwd)
+		return NULL;
+
+	ret = chdir(dir);
+	if (ret) {
+		free(oldcwd);
+		return NULL;
+	}
+
+	return oldcwd;
+}
+
+int popd(char *oldcwd)
+{
+	int ret;
+
+	if (!oldcwd)
+		return 0;
+
+	ret = chdir(oldcwd);
+	free(oldcwd);
+	return ret;
+}
+
 static char *get_linux_mmcblkdev(struct fs_device_d *fsdev)
 {
 	struct cdev *cdevm, *cdev;
diff --git a/include/unistd.h b/include/unistd.h
index 06ce3558099f..f7fe737d002b 100644
--- a/include/unistd.h
+++ b/include/unistd.h
@@ -20,6 +20,8 @@ int rmdir (const char *pathname);
 int symlink(const char *pathname, const char *newpath);
 int readlink(const char *path, char *buf, size_t bufsiz);
 int chdir(const char *pathname);
+char *pushd(const char *dir);
+int popd(char *dir);
 const char *getcwd(void);
 int ftruncate(int fd, loff_t length);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

