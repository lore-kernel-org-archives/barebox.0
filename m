Delivery-date: Wed, 02 Apr 2025 10:15:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztG7-007KRo-2E
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 10:15:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztG7-0000nd-1O
	for lore@pengutronix.de; Wed, 02 Apr 2025 10:15:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PvZpBmpKJ9rYaj0WZ06jnZTFsh74pkPvKlolQTXTAUw=; b=EGpNmNzzHCffDk4dLFqkEbg0jk
	3F3RfZL8CWpjo0HFBL6xScVkTXZgAe1q91qUD5X0sP0krUSrGldiAkjDj+p5j3jMVuFeT3SzX20Nm
	vZVX8wYc+T6fHefc6mlBwpdCTcPDE5Yi1bohSk0Q3UMlxAnS9u3YqQwOQxT1/y048c98/ZimQFzOu
	ASNRpbQ2/HKxuC5xlDdEsE5f37e66tRoydqz/gWTif/ongRtCrZJvOh059A7DUG18BZ+AWQgv/73e
	4YosXgF0UCTUpZi1WqZ+LUK21ynntoNl0SNEdT5sGhNKHPHc8GC7Gpjxz/JJReDc7mF/i3KD5wMW/
	I0lIxWgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztFb-00000005V3c-3ONn;
	Wed, 02 Apr 2025 08:15:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztDv-00000005Ukx-23Bl
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 08:13:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztDr-0000SP-HX; Wed, 02 Apr 2025 10:13:19 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztDr-002u6Q-17;
	Wed, 02 Apr 2025 10:13:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztDr-00AlZU-0n;
	Wed, 02 Apr 2025 10:13:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Apr 2025 10:13:18 +0200
Message-Id: <20250402081318.2566082-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_011323_529857_D1A56E75 
X-CRM114-Status: UNSURE (   9.96  )
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
Subject: [PATCH] fs: mark string returned by get_mounted_path as const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The string returned is not freshly allocated and modifying it is a bad
idea, so mark it const.

This breaks no in-tree users.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c      | 2 +-
 include/fs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 4e23aef79771..f73128ae2067 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -305,7 +305,7 @@ struct cdev *get_cdev_by_mountpath(const char *path)
 	return fsdev->cdev;
 }
 
-char *get_mounted_path(const char *path)
+const char *get_mounted_path(const char *path)
 {
 	struct fs_device *fdev;
 
diff --git a/include/fs.h b/include/fs.h
index bf927da4207e..e72f9bac174c 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -155,7 +155,7 @@ char *canonicalize_path(int dirfd, const char *pathname);
 
 struct fs_device *get_fsdevice_by_path(int dirfd, const char *path);
 
-char *get_mounted_path(const char *path);
+const char *get_mounted_path(const char *path);
 
 struct cdev *get_cdev_by_mountpath(const char *path);
 
-- 
2.39.5



