Delivery-date: Thu, 12 Mar 2026 15:45:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHX-00ArOe-1u
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHX-0004Oy-Pc
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4ArOescKbo80ghtM5/nWgPf8lO+ycKy2cKEn0++ELso=; b=ccA7Je9Sixgw7jYOqPY2zQLfg8
	jtRhq4JwP9LA2MDEj5B87Lv0x1o048EucjOJ+MvgYma8y+ZBnnbzBF9PgpJb1Hu9xRQ8Wkb+B6Il7
	nxQ8EWfgoFpRLCmWTENaoep6w3AXYtdvGjdYM/IxNF/37uyWbGvN8J+Mc3854Gk/deaM6mCdC4g1j
	hddAsXMWip4af6lXr2FzvVJf2FI+0HagBK8FSwjoKY0uZosaTdebMiv7UsiDJa0oCtFJ4J0hsP4qN
	BpvX3JMZ3IUkJf4NAXxWvgCypZrDatNQpeUdGwnT673QyOW4MHzs6kfzeviZXz0w4MoBlQ1iff+q5
	a3LtY2/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH8-0000000EEUM-0kfZ;
	Thu, 12 Mar 2026 14:44:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH4-0000000EES8-3b2W
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:44:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH3-00048N-4q; Thu, 12 Mar 2026 15:44:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH1-0052Nb-1x;
	Thu, 12 Mar 2026 15:44:28 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH2-000000093bb-3beR;
	Thu, 12 Mar 2026 15:44:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:21 +0100
Message-ID: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074430_985770_9BFDBC95 
X-CRM114-Status: GOOD (  16.07  )
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
Subject: [PATCH 1/5] tftp: skip memory allocation when seeking to current position
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently allocate 1K of memory, only to discard it when seeking to
the same offset, we are currently at.

Restructure tftp_lseek() to use early returns for the unsupported
backward-seek and early-exit also for the no-op case of new pos being
the same as the old pos.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/tftp.c | 63 +++++++++++++++++++++++++++++--------------------------
 1 file changed, 33 insertions(+), 30 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index a454306b4b5a..dd4804041cde 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -902,42 +902,45 @@ static int tftp_read(struct file *f, void *buf, size_t insize)
 
 static int tftp_lseek(struct file *f, loff_t pos)
 {
-	/* We cannot seek backwards without reloading or caching the file */
+	int ret = 0;
+	char *buf;
 	loff_t f_pos = f->f_pos;
 
-	if (pos >= f_pos) {
-		int ret = 0;
-		char *buf = xmalloc(1024);
-
-		while (pos > f_pos) {
-			size_t len = min_t(size_t, 1024, pos - f_pos);
-
-			ret = tftp_read(f, buf, len);
-
-			if (!ret)
-				/* EOF, so the desired pos is invalid. */
-				ret = -EINVAL;
-			if (ret < 0)
-				goto out_free;
-
-			f_pos += ret;
-		}
-
-out_free:
-		free(buf);
-		if (ret < 0) {
-			/*
-			 * Update f->pos even if the overall request
-			 * failed since we can't move backwards
-			 */
-			f->f_pos = f_pos;
-			return ret;
-		}
+	/* We cannot seek backwards without reloading or caching the file */
+	if (pos < f_pos)
+		return -ENOSYS;
 
+	if (pos == f_pos)
 		return 0;
+
+	buf = xmalloc(1024);
+
+	while (pos > f_pos) {
+		size_t len = min_t(size_t, 1024, pos - f_pos);
+
+		ret = tftp_read(f, buf, len);
+
+		if (!ret)
+			/* EOF, so the desired pos is invalid. */
+			ret = -EINVAL;
+		if (ret < 0)
+			goto out_free;
+
+		f_pos += ret;
 	}
 
-	return -ENOSYS;
+out_free:
+	free(buf);
+	if (ret < 0) {
+		/*
+		 * Update f->pos even if the overall request
+		 * failed since we can't move backwards
+		 */
+		f->f_pos = f_pos;
+		return ret;
+	}
+
+	return 0;
 }
 
 static const struct inode_operations tftp_file_inode_operations;
-- 
2.47.3



