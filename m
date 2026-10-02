Delivery-date: Fri, 02 Oct 2026 14:57:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCcpR-008qaq-06
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 14:57:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7E23A201F11
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 14:57:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MMfNogux;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SrmCx+i6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790945852; a=rsa-sha256;
	cv=pass;
	b=bRTRlzuM4+BKvaZ20Q2EZRj0M3iikVRQjn5qLNyIuQEk8iIi+40WwwJI5AiyuvLvUHxOvm
	BE3czng8FbBT7ynN+wECNMPgobwyx+NEEv6/qTlXgJFffjxkChz/4dR30cD89wJXENI0RI
	JmCnC8SSik1La1pHuzTrqB+T6VJycSKP7KOcqHeKq5/P5IgKRwB8T39LB35VbAR/TGGzV1
	ug/0w5jtPmBNm5ifKg0+ukxPsoMSDUH8Unv1/1on6ALu02qUJ4AHVPrph5Q5/ogX+Lo//w
	Y6N4r+I5tUfv68QStwmtBR1Y3T1UL2CB/uUNqOPlC2C9+af3E0D/7gBIh0IaoA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MMfNogux;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SrmCx+i6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790945852;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=JvB+ogyWgQyUX9PmvWQFlzj2zYd6rHXIqlcnmo+FvWY=;
	b=TDUUE3f36WgSmp8fCwz3eoVb+KHUc+y8H6CXpRuf1P0uIiMo8hpQmov3q2kp7uKIDkTvwA
	5s4xe2fYYVkmefNpXoOqcTAjWNBChbn7j+u4fgCKw/VGz20zDxz1VoAAE01EpObA+nM5Zy
	VSOW649GlWc5aRavECzwpQwmQALhXolCxXb0z4ZjMUvgCP06kFITDZg99Fi/JgFLJJ+DYc
	1XjK7WlDt1d0h/Lvhk1e578FkxwF8aGePOuzTH0kYR13uvKP019yfh9Udp+152C8gxeoXJ
	8kHgzXb+K3grAJvFgHfWWEc29KjWXlmqiqWrTwgZa3CaH/dh0vYkL/k0bnRFAQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JvB+ogyWgQyUX9PmvWQFlzj2zYd6rHXIqlcnmo+FvWY=; b=MMfNoguxrgqr3ehnmqDUnaGnLQ
	ZnFvcsYyuwkATJZmf60E8/5nn8pkNmYRgbXMhWQh6mFfV3lYJ9jexMczEb296gRzVuOjIbXsf4Hx9
	WdEBSu2P7mX41k07CwDK3UcWrij+xeF/CwYg/PQtMXpvoHydFwdhLi992mKpM3KT4zdDAX92ITiQz
	K8NJIpYgDdPEMZsb5PNs5JEVVFJdaniI+6/u+FQgjsFcTOK+pImFmmpmoyUZGXHs1TLzXLeGiBnFj
	rNn6JoJslGQYeS1LqbmSW/wOU6bj6daQ5VfzmQtc6fwiOfrdIsLmc20kh32goqztrH5IRQo4kUooK
	vFmg7q5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfO-0000000BVLL-25hR;
	Fri, 02 Oct 2026 11:43:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbfJ-0000000BVGF-1JgN
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:43:03 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BEB43202304;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JvB+ogyWgQyUX9PmvWQFlzj2zYd6rHXIqlcnmo+FvWY=;
	b=SrmCx+i6FGYbhZks5sZ3hBH79IU72N0oO8HQxvpVgN9mMT2MA66VGsS74G8qrKkpqynZID
	L2qerZzzEyQa7fYpEA/I9IkZJtNDprZy+uqxOpH9AM4nQLTwf6VYJmHYPWS52Hy+0HUvYH
	TDILj2IxzAzLoeEFX1dezWj91qdlSHfeFYVo5qhT7lGG/72mTJKUk6fEiQbLkCMyUvgQgs
	SZIFqItAMqz7iIx0s5/VwoPQEXCrRCEwQXS5e7Fs900AOk2gvq7F70u/Q/+V7m7dtCPWzt
	Rbi+WMKJEqGZ9NqUoSLcEj+dzo2HMuuAomOzOQ8KvkzgFuP3K745EndAANtuBA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790941374; a=rsa-sha256;
	cv=none;
	b=U3dNw7RaGEVTDRKDHo9ggjr9dxEtW7yD/tHY9oHZl8RQNYRZvA+BmtYE7QbANEkEDayp0R
	vXpzKEw8/GlYmX5YEShn7+ME8F6wZlL6kNa5eFO3I1yTQ7hUL/bGKfebR3wLaiSkBrOr6Y
	g9BzyWN8UsOD62i7CRvICCOp8AGWlLhZD+VxP3g0Jwxpcr7QFsNe+UD+OTQpsUKIyTbe9c
	HP3qljZZTNtGv57aYIWQeaskvAEeZxbrYDuJyCpSMqwyjyhJdMXFXm0NjWAUbD6L1gHsGb
	nAR/c2QiwkNUWIcfJ+4k4+yNxe6AKPew7HOJ5MvxBUbZB39n8lxpp/bS8VsUNA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JvB+ogyWgQyUX9PmvWQFlzj2zYd6rHXIqlcnmo+FvWY=;
	b=c/12kXa3PFCfnHfr6GlcH9RC09eOu5hpuAxqoPYgmXTkBb8NXuyseuZtzFm75b+COGAyp5
	OZ9yNXls7GEJEa0uW90XlhTVuyyfUmGjCVGVJm96gtIru+b8u1W5z0XegpmMfIUfBGa/30
	IbQOQLXmZUC5mlwr09wPt0R7eUHMaAlcRX+Te73xtxcMrNq8ZS6N5dUSuUEEYhiAaBiSmQ
	JcLIQrDdt16ELHnlxJyfbKzDzm6xorALTAXk+lK+g+5gIwPW5BOVeJwN7Dao9lzwMgcl6a
	npBvz2pscsoGQC87hOeNC8vX5Xw98N6mzka8WFqMGJPJtaXyRdnI/DKCbtCfow==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id A413C741476;
	Fri, 02 Oct 2026 13:42:54 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 6/6] fs: ubootvarfs: handle removal of variables that are still open
Date: Fri,  2 Oct 2026 13:40:09 +0200
Message-ID: <20261002114253.2906535-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
References: <20261002114253.2906535-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_044301_752313_759CD96D 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Removing a variable
    frees it and clears the inode's pointer to it, but an open file keeps the
    inode around with the old size. Reading, writing or truncating it then dereferences
    the NULL pointer. The [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7E23A201F11
X-Stat-Signature: cgqptxss3m664ft7ettenost8hw3abmz

From: Ahmad Fatoum <a.fatoum@barebox.org>

Removing a variable frees it and clears the inode's pointer to it, but
an open file keeps the inode around with the old size. Reading, writing
or truncating it then dereferences the NULL pointer. The shell can get
there with a loop mount: after mount -o loop on a variable and rm of
it, md on /dev/loop0 or reading a file from the mount crashes.

Let's set the size of a removed variable to zero and return -ENOENT
for any further access to it.

Fixes: 8daaa21b3949 ("fs: Add a driver to access U-Boot environment variables")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/ubootvarfs.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index b0353d7cedef..e2d2a2f4aa77 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -266,7 +266,9 @@ static int ubootvarfs_unlink(struct inode *dir, struct dentry *dentry)
 
 		list_del(&var->list);
 		free(var);
+		/* open files keep the inode, see ubootvarfs_io() */
 		node->var = NULL;
+		inode->i_size = 0;
 	}
 
 	return simple_unlink(dir, dentry);
@@ -348,7 +350,13 @@ static int ubootvarfs_io(struct file *f, void *buf, size_t insize, bool read)
 {
 	struct inode *inode = f->f_inode;
 	struct ubootvarfs_inode *node = inode_to_node(inode);
-	void *ptr = node->var->start + f->f_pos;
+	void *ptr;
+
+	/* the variable was removed while the file was open */
+	if (!node->var)
+		return -ENOENT;
+
+	ptr = node->var->start + f->f_pos;
 
 	if (read)
 		memcpy(buf, ptr, insize);
@@ -376,6 +384,9 @@ static int ubootvarfs_truncate(struct file *f, loff_t size)
 	struct ubootvarfs_var *var = node->var;
 	loff_t delta;
 
+	if (!var)
+		return -ENOENT;
+
 	if (size < 0)
 		return -EINVAL;
 
-- 
2.47.3



