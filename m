Delivery-date: Mon, 23 Jun 2025 08:40:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqo-00AB1s-07
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqm-0001Pz-PY
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iv32UHEtTP3qh2rDf+heSZ/fIAfCHodneM8x2esVOow=; b=fA5BGIsd5OA0GPKGw/E6vq6+l0
	iOSvYufC81Amw6ntDGMKi5P02f8CRQCX4kqh9HMXK4qvvvDCHzCz6/PyFAAYqPFUbXnv6Fl+bfQGQ
	WY8pB93RlDn5qU2y+8m+Z0YXpb7rKPkU2Z6yZv7aMI7hbiej0oDuhuBUSM4usaO0MwgnjIxF0ne8M
	CkP8R3xYZVj7fRhUozS0lrrXgluOfWFhzqnYzGi/2aeC35otL5ZKe9FfVW9JHiqEzrezhv7Jr7S7W
	GGsu9tpI+kfToHrAkujXEdbFybfHJgvCH+LFOFPYryC9oVRftySxVt/USutnpBXQ2kxOu6zdhqOch
	Z+w6e1xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaqA-00000001kXM-08QD;
	Mon, 23 Jun 2025 06:39:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaXl-00000001iLm-3cs6
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:20:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTaXi-0001b6-Kq; Mon, 23 Jun 2025 08:20:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Jun 2025 08:20:32 +0200
Message-Id: <20250623062032.3527006-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250623062032.3527006-1-a.fatoum@barebox.org>
References: <20250623062032.3527006-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232037_929611_7E1AE5A3 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 4/4] fs: do not skip fs_remove when calling umount ramfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's usually only a single ramfs mounted at / and given that the OS
will reclaim the memory anyway, we skip removal of ramfs.

Should further ramfs be mounted though, e.g. by tests, we run into a
use after free: fs_remove is skipped, but the unmount deallocates
the fs_device.

Fix this by only skipping removal for mounted file systems without a
remove callback when barebox_shutdown has been called.

Fixes: cf7b19df6541 ("fs: ramfs: do not bother unmounting ramfs on shutdown")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 763f1b617460..3580bff6f5a6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -835,9 +835,11 @@ static void fs_remove(struct device *dev)
 	int ret;
 
 	if (fsdev->dev.driver) {
-		if (!dev->driver->remove)
+		if (barebox_system_state == BAREBOX_EXITING
+		    && !dev->driver->remove)
 			return;
-		dev->driver->remove(dev);
+		if (dev->driver->remove)
+			dev->driver->remove(dev);
 		list_del(&fsdev->list);
 	}
 
-- 
2.39.5



