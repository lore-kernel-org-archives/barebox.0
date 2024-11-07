Delivery-date: Thu, 07 Nov 2024 09:46:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAD-005rCK-2n
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 09:46:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAE-0007B1-Gw
	for lore@pengutronix.de; Thu, 07 Nov 2024 09:46:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eGWKC1hxgB3eJ06xIHlgZ7ES4weY9wkm+dYSaunTg4I=; b=idORkGZtUa8+SCjchy8xSlTdUn
	wH+Ef9RULpTIlB3M3Y8NQ7pBvAoRgqTAvWas5zHHqijXbaUiFe8W9o6x57jXB53hEJG6sjX7y+J52
	7C4oyA2w8OkSQ1G/zA4AYtIfl1iLko6ZlI1RDoLWtNBhxw+mqhqJ6oU60FvOUTwizNmlYfzClAK2M
	SX3FKmAdCuBcGSy/P9jV/D+TCQu/bVctWRBONwYXx9WCQZ6Me7KQeUdTOkrX8vKth1f2FLnJCupHo
	NBUd0aQJDW88seEvvxkTcqZM7yx3oY1I5yr1JKYDUvfdDehTtR2wztDZ6bFQuWatXz5tLFdUP5eG6
	KVtiuvKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yA4-00000006Az0-0n8N;
	Thu, 07 Nov 2024 08:46:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wrl-00000005yaI-2Z6b
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 07:23:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-0007zj-FS; Thu, 07 Nov 2024 08:23:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-002QOv-0s;
	Thu, 07 Nov 2024 08:23:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-006rNQ-0h;
	Thu, 07 Nov 2024 08:23:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 Nov 2024 08:23:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241107-fs-tftp-v1-1-39d7e1cff418@pengutronix.de>
References: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
In-Reply-To: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730964212; l=920;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mnN8lX+OgsR2Eti+xwVnHuhx9K0n98foFj+Mm60g5Xk=;
 b=pJ1hT5FHnrH/5ICn/mr20O8EynL6QR0vfszW4Z1oE2IWVfF088GRDWwG9+JZaKwAfeOKv+ATI
 gF0Nnj1wpOfDgcE7ap1IN4lZuo71hgJGzxkxTC5zinuruPWaA6ahyS8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_232341_682531_7B6B252F 
X-CRM114-Status: GOOD (  10.40  )
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
Subject: [PATCH 1/4] fs: open loopback device before using it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The loopback cdev created with cdev_create_loop() is used, but never
opened. Open it before usage.

Not having it opened has the effect that during unmount of a loopback
mounted file the devfs_remove() call for the loopback cdev fails,
because the usage counter drops below zero.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 5e7e05f499..f24962d2a6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -933,6 +933,13 @@ int fsdev_open_cdev(struct fs_device *fsdev)
 			return ret;
 
 		fsdev->cdev = cdev_create_loop(fsdev->backingstore, O_RDWR, offset);
+		if (fsdev->cdev) {
+			ret = cdev_open(fsdev->cdev, O_RDWR);
+			if (ret) {
+				cdev_remove_loop(fsdev->cdev);
+				fsdev->cdev = NULL;
+			}
+		}
 	} else {
 		fsdev->cdev = cdev_open_by_name(fsdev->backingstore, O_RDWR);
 	}

-- 
2.39.5



