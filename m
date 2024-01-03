Delivery-date: Wed, 03 Jan 2024 19:32:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62c-002NWq-1X
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62Y-0003JB-WD
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R8Thm0XsD9TpGvXAfS+Y2R+mlkU7af8y8r3VOSbtMNE=; b=XDLQd46d+2RoXjOthvZGvezOJo
	XUgvvp3IKnwBuaxXs3wTBbNTk9cS079ZKZyjtqXX6BgrlK7ZTIflWkYbztROgFKJwU6ZD8Bj8yDE2
	5AvnXD9TmVkUx+QO2ONvBshsnsX10XPb9tw2u3fR5sEqZBdazp7M2iw0/AmgD2zMXvJT6UPLeWoJ7
	1BSHBWXifeIbWy/dFT4MVlbkveYNudyEx5KIX7kMiUdubBpv65LRPULVn+q34p8pn4g/dE67hnpJK
	EfsQvspncZ79XSMXHVCnsDeypWDt7P71IO0Vxbh1dJXLrzRcTq/bepmB5ITFmGOc/2kLInUT8GTdv
	I902X6VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61O-00BhRZ-0O;
	Wed, 03 Jan 2024 18:31:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL618-00BhC8-18
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=R8Thm0XsD9TpGvXAfS+Y2R+mlkU7af8y8r3VOSbtMNE=; b=NvaL2phwj1L6kBVEhhdvaXe0dA
	3FzE519NKLO67E+afUqEl2kVt/WJKti+PDVPCNdUPOmhg0TNrrWP4zX0TLj4q7DFCYSwTIFsLcw/T
	t6R2DUud28d5/oZBguVmi9OCSloqZUrEAJs3RdmAVT/UOqWMGvBMO2g0ksRE/LRuQgctBcck2KTix
	v4iBYOtB5PqW0FXj1RPQYT+5HsumieBWg7U8iI73umXj0fibfZjGHaeqpZVtswv2Ikue4lvWEX0kx
	iM20DXuZ6amOesw0RuQuHqHP99lVGYixoHVFVSpDdTZOBBVByN5Ifd0CiSbGSHqZnyyj0AXg6gFmn
	CyryXajg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eBu-2N
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001Q2-3Z; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000Ass-N0; Wed, 03 Jan 2024 19:30:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-0Y;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:47 +0100
Message-Id: <20240103181312.409668-28-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_328988_BF305EB4 
X-CRM114-Status: UNSURE (   9.99  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 027/112] fs: turn creat into static inline helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

creat is a oneliner that can be inlined at no extra cost, so move it
into a header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c         | 6 ------
 include/fcntl.h | 6 +++++-
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index bd2f0b6294ff..7c4e2f250ea8 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -349,12 +349,6 @@ static int create(struct dentry *dir, struct dentry *dentry)
 	return inode->i_op->create(inode, dentry, S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO);
 }
 
-int creat(const char *pathname, mode_t mode)
-{
-	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
-}
-EXPORT_SYMBOL(creat);
-
 static int fsdev_truncate(struct device *dev, FILE *f, loff_t length)
 {
 	struct fs_driver *fsdrv = f->fsdev->driver;
diff --git a/include/fcntl.h b/include/fcntl.h
index 1b4cd8ad3783..06289abc4376 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -29,6 +29,10 @@
 #define O_RWSIZE_8	010000000
 
 int open(const char *pathname, int flags, ...);
-int creat(const char *pathname, mode_t mode);
+
+static inline int creat(const char *pathname, mode_t mode)
+{
+	return open(pathname, O_CREAT | O_WRONLY | O_TRUNC);
+}
 
 #endif /* __FCNTL_H */
-- 
2.39.2



