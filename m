Delivery-date: Wed, 19 Feb 2025 16:26:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkly3-004MGz-08
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 16:26:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkly1-0000Sa-SZ
	for lore@pengutronix.de; Wed, 19 Feb 2025 16:26:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+AjIu6my5PCNdJF/CwWboftJqoaU/Yv17tHpRs7CQA=; b=LRj7dsi1W8JfqP
	35aHmGrwFqUw+yf4qNDrxfLbTD9bTTyXNZdWO7hXa9xpyE8o8tiIufsYmVd3rOK4mtaSxM1jPo0rP
	wIUOvnJvUOcyXe+l4q2r8TJNYrPx7Ys3v4H8ZcvGyTn6dafB/Dts6fLlciBggYRkzmlbSNl17FBcO
	NoGqsbb+1HIFzj+Xokl6MaQJ1yvsXMBICthVCGnDxsjh6Vz33xUswWG/BkoQwxUIT+d8pkqpp/s9X
	Ph3c0QOfjjE+mZIby0LplNhIlLSkdECR9D94QEXECiYJGkiNiLb4NtWhBBoe6Gk1Kud4qj9qBfgrs
	HAzib38KAoltPIMnqVHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tklxm-0000000DXPh-2qYC;
	Wed, 19 Feb 2025 15:26:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkuf-0000000DFBX-219n
	for barebox@bombadil.infradead.org;
	Wed, 19 Feb 2025 14:18:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=D+AjIu6my5PCNdJF/CwWboftJqoaU/Yv17tHpRs7CQA=; b=HQUh7yOpttCNvFZctrI4WCEzKu
	m9Hge3TA5kFQckTKwS5JZOJBEVDNcZvoxd269BDbxUhNiWgG7zzSpwKFOvQEgcDFWOJ23uS3drKlf
	p/QfGvmM2R863zq9cdJNHxJN4KKiSonxmYyf/DNVUd5nRxvkIASaslX7/2WjoDHNGo1UJLl+CrVkg
	2Pb1Ai9hI1YhHF7K7r2HXF7X3NNLNa2qgtStDB3RRAO/X81R40HSgXr6ksDmBzzvNKgIoxBTXVf/w
	g0Sgqi68xoNuQxjcFReMAe9a4dI26NjlubEICpJJXwYoVtZ0wMXDK5w7VoGByWDgxVxIEIHyzqNcI
	3FHrIjCw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkuc-00000002BEO-2O1p
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 14:18:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-0005Q7-9D; Wed, 19 Feb 2025 15:18:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-001mVv-0B;
	Wed, 19 Feb 2025 15:18:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuY-0081Wd-32;
	Wed, 19 Feb 2025 15:18:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Feb 2025 15:18:42 +0100
Message-Id: <20250219141844.1912413-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250219141844.1912413-1-s.hauer@pengutronix.de>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_141854_918591_CB5A114B 
X-CRM114-Status: GOOD (  12.74  )
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
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
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
Subject: [PATCH 3/5] CVE-2025-26723: fs: ext4: fix malloc(size + constant) buffer overflow issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The pattern malloc(size + constant) is dangerous when size can be
manipulated by an attacker. In that case 'size' can be manipulated
in a way that 'size + constant' is 0 due to integer overflow. The
result is a zero sized buffer to which is then data written to.

Avoid this by using size_add() instead.

Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/ext_barebox.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 163c4d2fe1..7480c045d7 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -189,7 +189,7 @@ static const char *ext_get_link(struct dentry *dentry, struct inode *inode)
 
 	BUG_ON(inode->i_link);
 
-	inode->i_link = zalloc(inode->i_size + 1);
+	inode->i_link = zalloc(size_add(inode->i_size, 1));
 
 	ret = ext4fs_read_file(node, 0, inode->i_size, inode->i_link);
 	if (ret == 0) {
-- 
2.39.5



