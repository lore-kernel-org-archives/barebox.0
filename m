Delivery-date: Fri, 30 Apr 2021 15:31:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTFN-00051d-3d
	for lore@lore.pengutronix.de; Fri, 30 Apr 2021 15:31:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lcTFL-0007F5-Fv
	for lore@pengutronix.de; Fri, 30 Apr 2021 15:31:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Eqv+FIuIwgGQ4x9Jpk38GESfepuDvGTRv3EgyFYMQE=; b=Xtg7LWTdjiq8SjpqHsmR/X50U
	072e184+UgSGm6NPRyMtuk6I7KKvnWDkcZOPhVTt/wvKsqCfhG8Iia7pS1VZaxxi2p8JJofjVy1Up
	u62wp+UyBkbByo4jjAYpchdwi3MyG4DVIkNcHL4VO3rvfDZofGOFqPWIXCaAbde1K/oWaAbpFQjUh
	B/gayiWjDD9ptBw3vk0UHHO7T+Pt1No7UJbzoznxQNa7o4yvxzt0uGgJ34nrhfQhWoosObiGAm7JU
	uLWtsPMTKbX8JmsN0nsAEP+DkRAV9RkvIwDgZ0VMVezR/XJ7oKxQZ59fiABzQWIKQ+DG21BC0ovBV
	4z0ghmoUA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcTEU-007ure-Ew; Fri, 30 Apr 2021 13:31:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDh-007uZp-QV
 for barebox@desiato.infradead.org; Fri, 30 Apr 2021 13:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=e2bNN23JQxofH4LsvIPdt2ep3KHwLUpVhBLR9XgbMzA=; b=CIyYzt1aqu6QJEkoc6rxm79+4U
 YinvGUbNs7ber6XMD95JNIERwMIPTyTXkMvfhuRfQSKpXYxcHZSKCQR7V6x/U+q98qwwFQMicJIbq
 BKh6ZuJkXO1jBI6ZtDfnk/CMXwmE1Mt2yL7t3ZhjCzVW0W2jopUbuXWkQSxwnGCVsbBJqIRMFal9G
 E1CTbmNmAhQYqIGyzHlNzseiV79Sltw4ChsCvq0KaFZhUQ8h1dBz3ZItTqMzyDco6tOzWeCD7iPXf
 c8+6nCPm2e5o3aU9FIymQCx4+VgBxmtDocSDopkFB+DQD43nZYdx3D6PsMgh+hWUpnPNixg4hHD5K
 JmJZxsNw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcTDf-001PKu-E6
 for barebox@lists.infradead.org; Fri, 30 Apr 2021 13:30:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDO-0006A0-8D; Fri, 30 Apr 2021 15:29:54 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lcTDN-0003rg-7l; Fri, 30 Apr 2021 15:29:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Apr 2021 15:29:49 +0200
Message-Id: <20210430132949.14617-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210430132949.14617-1-a.fatoum@pengutronix.de>
References: <20210430132949.14617-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_063011_492667_FA2E6AA1 
X-CRM114-Status: GOOD (  11.59  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/15] fs: error out when writing on read-only file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On an ext4 partition, Running

  echo -a /mnt/disk0.0/file test

will crash barebox because fsdrv->truncate in __write is NULL.

Don't let it come to this and verify earlier that the FS implements
->write. While at it, explicitly compare with O_RDONLY (== 0) for
clarity.

Fixes: b3fbfad7aeaf ("fs: dentry cache implementation")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a023324913c4..881dc2fca0ce 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -321,13 +321,13 @@ static ssize_t __write(FILE *f, const void *buf, size_t count)
 	struct fs_driver_d *fsdrv;
 	int ret;
 
-	if (!(f->flags & O_ACCMODE)) {
+	fsdrv = f->fsdev->driver;
+
+	if ((f->flags & O_ACCMODE) == O_RDONLY || !fsdrv->write) {
 		ret = -EBADF;
 		goto out;
 	}
 
-	fsdrv = f->fsdev->driver;
-
 	if (fsdrv != ramfs_driver)
 		assert_command_context();
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

