Delivery-date: Tue, 09 Dec 2025 13:52:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCH-009YrL-2a
	for lore@lore.pengutronix.de;
	Tue, 09 Dec 2025 13:52:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vSxCF-0001Df-VT
	for lore@pengutronix.de; Tue, 09 Dec 2025 13:52:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=edMWfP9aYu/nFmi+CJxVrIkPk2zYVsOnVNLND3AuW/I=; b=q9vk4xeGvP1wWW92wzVe8NJamO
	/ficCleZGUNSWssXjvbD0CInszNvtLr+TZi6Xw1IQ4UVx7TX/d6RZoqI0L5xYlsuB4PNJAyulv7p0
	4A2WFYsuAF6UEYWv9IlgtXcsgLHrxS+eyVvhzLAJfDWORsU3YIUqFyQmjXr38YZCiie0MfTuVPhay
	7uIn3OcGeooQlOW7wBMAy6n31J0FuehhsukD6OJEiwCwk7p9TnC5Fswi3WK2YUadW1NDfJ92Y5/P7
	xpeU8gcDmcBcHNpQ9Qo2xfg4py+q7UKYYSit1bxKTBG5BwQQB3OEUmKzsG6rKTl0ZA4wgYFGoFuHR
	DT8ifwgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBg-0000000EHK2-3Ihg;
	Tue, 09 Dec 2025 12:51:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSxBd-0000000EHHM-266w
	for barebox@lists.infradead.org;
	Tue, 09 Dec 2025 12:51:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000ot-F8; Tue, 09 Dec 2025 13:51:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-004mug-0R;
	Tue, 09 Dec 2025 13:51:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vSxBb-0000000HSGm-02dU;
	Tue, 09 Dec 2025 13:51:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 09 Dec 2025 13:51:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-devfs-v2-7-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765284682; l=1050;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xfvlYYALh+ujKE5ClgfLeYwP2tgYSDHf8HI/faAZr68=;
 b=k9uJvbPgqNBk5MVWPj18EbOTR+Ho2JkHWVWRkAoGdUFIhpp3srI5jZO3OVzajGeOvCr4Zd8Dn
 mq18LQYr3JPDzitRWi3nKg24oRXSHN3Q1GXjrJVQ2h07ih3GK4B7Vq/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_045125_554570_7D9A6A49 
X-CRM114-Status: GOOD (  12.18  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/13] fs: fix st_size for device files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux device special files have zero size, but in barebox the
device files traditionally have the size of the underlying device.
Initialize struct stat::s_size with the cdev size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 45bf89653c7c2e4e9546f1d41f79a6389e0b796d..9e2c95c6352cc63400f997bb8de53af44f4741cf 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1100,11 +1100,23 @@ EXPORT_SYMBOL(readdir);
 
 static void stat_inode(struct inode *inode, struct stat *s)
 {
+	if (inode->cdevname) {
+		struct cdev *cdev;
+
+		cdev = cdev_by_name(inode->cdevname);
+		if (cdev) {
+			s->st_size = cdev_size(cdev);
+		} else {
+			s->st_size = 0;
+		}
+	} else {
+		s->st_size = inode->i_size;
+	}
+
 	s->st_ino = inode->i_ino;
 	s->st_mode = inode->i_mode;
 	s->st_uid = inode->i_uid;
 	s->st_gid = inode->i_gid;
-	s->st_size = inode->i_size;
 }
 
 int fstat(int fd, struct stat *s)

-- 
2.47.3



