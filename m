Delivery-date: Wed, 26 Mar 2025 18:26:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txUWL-004Wtf-29
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 18:26:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txUWL-0007qF-1Z
	for lore@pengutronix.de; Wed, 26 Mar 2025 18:26:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YG+pegGu2ecidTE+dbLq2Seb9+IkRL7AIPhzNhUkN+M=; b=TC65f9/FTmjeiK2C9NfZCOkXaV
	t+UhzRVaQJsolsJbOhD4KF5Zy9UIvwORBlM7aN8hTTF8iMgFy35JIjYFkTUaa5qSvNaHcFMMelJN5
	ucqDuCeYgwoSYyPvfM8VXclWadcBI2lzy5DCUb8/HXh8lA/QyULsrjqgBiouBF3xBBn5qb9VCn+Wo
	ildwsT3UU/Xc5lf/rGaAb6Zkz1I4N2GHpRt8L/2tHjBTvmZSC9zx2SemMLX9K9yJqQyBoIj1PiO7c
	eh/u6Y3zp2vA8yULv9MCE64KNKuw8gwRzjn4kC9OTu6kgoOtoV3qEcHze/Sm9dIioqIJbJL3ZT8FJ
	4E79CAGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txUVd-00000009ASS-1VpO;
	Wed, 26 Mar 2025 17:25:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txU6d-00000009614-0M4J
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 16:59:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6Z-0003PR-4r; Wed, 26 Mar 2025 17:59:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6Y-001mmI-35;
	Wed, 26 Mar 2025 17:59:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txU6Y-002o8R-2n;
	Wed, 26 Mar 2025 17:59:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 17:59:49 +0100
Message-Id: <20250326165949.669187-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_095955_122949_98965C1B 
X-CRM114-Status: GOOD (  12.71  )
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
Subject: [PATCH master] fs: smhfs: fix crash when stat'ing file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Starting with commit 7d91d564361e ("fs: replace FILE.size by f_inode.i_size"),
struct file no longer had a size member, but instead the inode's i_size
member is used. The inode is populated by the file system core when a
file is first opened.

However, the semihosting file system creates a fake struct file to pass
to smhfs_open, which duly fails, because the inode member is
uninitialized.

Fix this for now, by faking an allocated inode as well.

The better fix would be switching to a non-legacy file system, but
that (remain)s a quest for another day.

Fixes: 7d91d564361e ("fs: replace FILE.size by f_inode.i_size")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/smhfs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/smhfs.c b/fs/smhfs.c
index e0e98f5213e9..3a3b4bdc1d94 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -114,12 +114,16 @@ static int smhfs_stat(struct device __always_unused *dev,
 {
 	struct file file;
 
+	file.f_inode = xzalloc(sizeof(*file.f_inode));
+
 	if (smhfs_open(NULL, &file, filename) == 0) {
 		s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
 		s->st_size = file.f_size;
 	}
 	smhfs_close(NULL, &file);
 
+	free(file.f_inode);
+
 	return 0;
 }
 
-- 
2.39.5



