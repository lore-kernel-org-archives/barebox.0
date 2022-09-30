Delivery-date: Fri, 30 Sep 2022 17:46:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIDj-001Xig-9C
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:46:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeIDh-0001A1-SO
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:46:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QrUesadOYRiQKi7qZUAy0xEr6TDHkB0jENR8UdaT1BQ=; b=W7GFPmY+EulgEaD4rNqp8Okxnj
	08q4ShDG3mEY6h2G2hX98bm4rjzyse7fr0lopnbAhB4NqgJiFZ2zf2b18rtmNLccxjCWez8GhPfyo
	zadLSgH6PKGghR1nyCg452pAt8+loezEF+L0hl38BG8iT3p7SQB0vyrNjY33peBArgTVW8zL7K6mA
	Od8+0m4RWll/IhcTSQg419syigVAcvW3Igre/PrMBhqt590P7eHlwNwBqPzP2lUWzTAwmnbR46XF6
	e5FiWWsIb9juTTKcq0419vpxjpmoGyaNhcPWQzauUPmMsrtDBu0b7nUsQgF2g7xghe4u6R8bs83N2
	aGwpq3Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIC6-00AKuO-T4; Fri, 30 Sep 2022 15:44:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI7h-00AIBT-LW
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:40:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI7g-0007rY-BE; Fri, 30 Sep 2022 17:40:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI7h-003pNW-5N; Fri, 30 Sep 2022 17:40:19 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI7f-0039NB-1I; Fri, 30 Sep 2022 17:40:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:40:17 +0200
Message-Id: <20220930154017.750867-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_084021_767571_00822D4C 
X-CRM114-Status: GOOD (  11.02  )
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
Subject: [PATCH] fs: implement cdev_mount()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

EFI loaders provide both block device and file system access to software
running under it. For file system access, we will just want to get a
mount if available and mount at a default location if not. Provide a
helper that does just that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c      | 19 +++++++++++++++++++
 include/fs.h |  1 +
 2 files changed, 20 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 78878e7112d5..a314a49b2db7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -999,6 +999,25 @@ const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions)
 	return cdev_get_mount_path(cdev);
 }
 
+/*
+ * cdev_mount - return existing mount or mount a cdev to the default path
+ *
+ * If a cdev is already mounted anywhere return the path
+ * it's mounted on.
+ * Otherwise mount it to /mnt/<cdevname> and return the path. Returns an
+ * error pointer on failure.
+ */
+const char *cdev_mount(struct cdev *cdev)
+{
+	const char *path;
+
+	path = cdev_get_mount_path(cdev);
+	if (path)
+		return path;
+
+	return cdev_mount_default(cdev, NULL);
+}
+
 /*
  * mount_all - iterate over block devices and mount all devices we are able to
  */
diff --git a/include/fs.h b/include/fs.h
index 894cae3e4c2f..9ea522dc2cc3 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -164,6 +164,7 @@ int fs_init_legacy(struct fs_device_d *fsdev);
 int fsdev_open_cdev(struct fs_device_d *fsdev);
 const char *cdev_get_mount_path(struct cdev *cdev);
 const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions);
+const char *cdev_mount(struct cdev *cdev);
 void mount_all(void);
 
 void fsdev_set_linux_rootarg(struct fs_device_d *fsdev, const char *str);
-- 
2.30.2



