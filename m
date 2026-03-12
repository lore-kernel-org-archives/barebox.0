Delivery-date: Thu, 12 Mar 2026 15:45:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHX-00ArP4-3D
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHY-0004P8-7l
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fe3XPZQkRRiQ+UauQS+6DdqLdOWvHBZhHUuniJG3e1c=; b=2ioPFatyOMzYZPafCHHNp0bSUk
	cK55w6UafJKn3bVWJqg1b/Wb+aJGaCQEF60lU5WXDXy6w2FaGtI8VMgbkbdph+ojWlaDVxLudCvFa
	T8sNEgbuWhzDcEMOxhmEF1S1cyCtvNw7x71W2qWsQXQv/xpagq6PIC7Wc0k/kzjxS5t3H+mWOEYzQ
	Yx8m+fDBwkqL5EfY3bznbI7SFJWiKw0Kxww6q+KcUGUZb5U38qVWwMgzTVNz4Kgozg3Kn/C80tveH
	0cm68ApjIm6iq5XlWDSBHeLWNieM9aHpkWzmoaK8McyukYSyjN183qU6n9smuWa18xwXkFJSoXte4
	OnHEqsPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHA-0000000EEWt-39lO;
	Thu, 12 Mar 2026 14:44:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH4-0000000EES9-3bKr
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:44:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH3-00048P-7n; Thu, 12 Mar 2026 15:44:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH1-0052Nf-2F;
	Thu, 12 Mar 2026 15:44:29 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH2-000000093bb-3zTl;
	Thu, 12 Mar 2026 15:44:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:23 +0100
Message-ID: <20260312144428.2158727-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
References: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074431_002777_B5B7D0C0 
X-CRM114-Status: GOOD (  15.50  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] tftp: emulate backwards seek by reopening the file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TFTP is a streaming protocol with no native seek support.
We emulate forward seeks are emulated by reading and discarding data.
Backwards seeks were previously rejected with -ENOSYS, breaking higher
level code that assumes seeking to be possible.

Given that we have a heuristic in-place for detecting excessive data
discards through seeking, let's implement backwards seeking to allow the
pattern of reading the start of a buffer to detect type at one location
and then reading everything at once at a later time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/tftp.c | 33 +++++++++++++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index e5a276ed5cae..8683c3841c68 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -822,6 +822,9 @@ static int tftp_close(struct inode *inode, struct file *f)
 {
 	struct file_priv *priv = f->private_data;
 
+	if (!priv)
+		return 0;
+
 	return tftp_do_close(priv);
 }
 
@@ -831,6 +834,9 @@ static int tftp_write(struct file *f, const void *inbuf, size_t insize)
 	size_t size, now;
 	int ret;
 
+	if (!priv)
+		return -EREMOTEIO;
+
 	pr_vdebug("%s: %zu\n", __func__, insize);
 
 	size = insize;
@@ -866,6 +872,9 @@ static int tftp_read(struct file *f, void *buf, size_t insize)
 	size_t outsize = 0, now;
 	int ret = 0;
 
+	if (!priv)
+		return -EREMOTEIO;
+
 	pr_vdebug("%s %zu\n", __func__, insize);
 
 	while (insize) {
@@ -902,14 +911,34 @@ static int tftp_read(struct file *f, void *buf, size_t insize)
 
 static int tftp_lseek(struct file *f, loff_t pos)
 {
+	struct file_priv *priv = f->private_data;
 	static loff_t seek_discard_total;
 	int ret = 0;
 	char *buf;
 	loff_t f_pos = f->f_pos;
 
+	if (!priv)
+		return -EREMOTEIO;
+
 	/* We cannot seek backwards without reloading or caching the file */
-	if (pos < f_pos)
-		return -ENOSYS;
+	if (pos < f_pos) {
+		/* We can reopen read streams, but not write streams */
+		if (priv->push)
+			return -ENOSYS;
+
+		tftp_do_close(priv);
+
+		priv = tftp_do_open(&f->fsdev->dev, f->f_flags,
+				    f->f_path.dentry, false);
+		if (IS_ERR(priv)) {
+			f->private_data = NULL;
+			return PTR_ERR(priv);
+		}
+
+		f->private_data = priv;
+		f->f_pos = 0;
+		f_pos = 0;
+	}
 
 	if (pos == f_pos)
 		return 0;
-- 
2.47.3



