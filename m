Delivery-date: Mon, 02 Nov 2026 10:32:30 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNoOz-006Jzz-2M
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:32:30 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 97F2C20177D
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:32:29 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Nblz0EMh;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Wzb8kHoV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611949;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=JhdJnpeS45hojcIw52BaMEVt2g4rK+3bV2ZlEsscvKE=;
	b=CWqtiAm/MfIXDHXZiD5DVD2IKIdWXgSmbvPIdeXvGidLqzDSbZX07pvx6inVQuToHy7Xup
	7T6kx4gwWHNrGaBkAQRH9t8T4+OkD9nPrWenl7YNo9mbw9gz2M+mubdujo8di3WfTT81p2
	Mj7KskgqVPP8nZBCXz3kvA5SMUJWZ2QM6G1OOJmQy4WuAmVjs5gKAe4Lm00E6oKGg0BFHE
	sXVhlJCuZEqRueVepoa6RpVPbuFgaO/zcPkXNqKwcOAPkopR6DRKXzdSI63R1vWxMyYC7E
	nCb2/tbmryACx9nd1l+G7GRsMcm/L2c1sM3pjeIi7Bxh11Tz/w1dfFHgwpz6YA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Nblz0EMh;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Wzb8kHoV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793611949; a=rsa-sha256;
	cv=fail;
	b=Ey5uJ7ByKXiEtjoXPYHuW8OJb126zI9UHrBOiCSPvOZm+LF8WGin9BX8dHxDP2KJjVaq6x
	a5Sty//bzdV/At1O8edep/NhUe9IlPhUXffDJeq+pFV/BSkaDtp8l3uZD+7aBc91ZjQwOO
	QGHaZD8qPdfCDGpa4d2YsmEX4F+jpxkcK51ie1FEg2qpQEbIm+u26RTP738Xt15RdIVMfb
	rOyLvFNdTReVNjuJ/pIoiknvluOmbAhT3Kvie77/2zzGx6ISYvQMJ20tzf/f6eO6XYiGwl
	DFq1qoiPXGIeo4QL4pVbaTjBobtWvv+3s6ANaoZFNB3i9qHboydPDRNgDkLxWQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=JhdJnpeS45hojcIw52BaMEVt2g4rK+3bV2ZlEsscvKE=; b=Nblz0EMhIgMuqM
	2l65/So5gJB8kBIk/ogOafU4vEsP3bf53Wdjjm6b6g1QJNE/jfDc96FRStS4LbUtD8fPIM49tU1st
	Tu42Okn+MQf4DWA3e17JvZMMbWh2qLZnatuFQ3+9kU0+oZAZgc24Klbg8sgJB4qbqprKvDrrMnNl5
	5aIwKFB56/Di4yk4598tj5T0OvGBmoKfcpSN4AOfyhweUDpeabtADEVN9HrtxKJkHPJq6DV7JlKSx
	uB4OtpONKdpZG09HIZaFC/iRFnzK2m1JfruVmvr4p143CrhAuv9roBNyh/KgmW8uycgxA0cqprakk
	NBV8a59CoYuTmsvXdzFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoNz-0000000G1Hc-2mMK;
	Mon, 02 Nov 2026 09:31:27 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoNv-0000000G1Em-3IFN
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:31:26 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5A5022008BB;
	Mon, 02 Nov 2026 10:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JhdJnpeS45hojcIw52BaMEVt2g4rK+3bV2ZlEsscvKE=;
	b=Wzb8kHoVOx8XG55WFCT5uvPVgl5NV05fNzh+qWntmp+1Sm55lCnoIlVbrkzmzU/RwECIVP
	rsIU+jVM7Kf8+kvENUhhT0b9wOAAmVdIOQfs0jEZgfIq5O/bceG/NGgYPnNy7kAVvUzKRU
	+VO4opGCBh5Oa1YcSQY6MSX7P5CN0aREOox4HIMkM//HJ+YLtiNmgkkXVeGBPBhK4fA/z1
	q1iUwHwhEOhlxCtghQRXa1YJDRpTZ5G/hTXOGJ+XVwhRDSGOTXtEoZTqj/hN0NgnZZGT3a
	E3sabtXlH5iorB7jdJx4B5VoFT1wqB48pphGjzbHPeF+r+SuKZA1woq3qBlhgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JhdJnpeS45hojcIw52BaMEVt2g4rK+3bV2ZlEsscvKE=;
	b=G69sIs/7tIsX/+QVnMsOoXhr279M8HA5f1jtbaqTqp9fri4e31MDk/hb9W2hdNwJHtN274
	kkHN/+9NcPpVY1tD1Blet809myJ8BoaXzKMpWqXqUTBRCpbxleczTzoUbZ4CA1HIJw3bD5
	0crZ19jVn1D6seTPbeaHEHcbPpPADUTzd+Gsa16dBbZt6FfmAZXarlB6+lvu4PTR+zA3RH
	5hdV7eJDFWJ4Q6sjsbHr2wIVq64zYr4C/2BfRtvFN7pY8moMSeJHQdAtr7EwJFhPxOi7eO
	z4yBfAP83+unimXKqtuo4D6/wv/DwFOmy5pcjAs8XANPWlKk2uTQUI4PpMUMOg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793611881; a=rsa-sha256;
	cv=none;
	b=N/TKwrHIvXNVcFzlhewt7FfNXctzsAwHmQc7E+8NTciOy7uL0CtFABc0NsmEao7KsMsSxW
	q4VKb5h7GHbeX2ijY0MEKOdDxEI6MozyOkMcOmUaI1II2XF5A2vfzmtfUaU6KB2WT+mWy+
	+NOsNdxUfGJ+0zKAMXjh1AYE96pe89yiUyhATn9se2ULj2PCEhbDuuTYPHG/8QCB7lCkEx
	PDaPlde4RJY3TNTLhn+88RldXPBvDqITFip89vhZN1KXjBXx6ACeubFK2DJy1/UOvlUy68
	0nJl30TiK/ltOpMjHwPwXI5UaRqWdZVZDLbTzU4GI+7mU34oVd34J7pIpU0GiQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Nov 2026 10:31:21 +0100
Subject: [PATCH v2 2/4] fs: cramfs: return an error pointer from
 cramfs_get_link()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261102-fs-getlink-fixes-v2-2-37df92e4d0d3@pengutronix.de>
References: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793611881; l=1416;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/tow/NBIexyNGdX7kTn5hK+GXKdOuG2XgKBx25qLB1k=;
 b=kw7+4Rg1DlfYlrr7BBOvJpwilVj78c+i4wn/o6q7F3sNgsuFabKtGj90DqAPNV41x+txHjtlT
 qxmF23+D+X9DZn/19aOH0mZKguIVaGq8BSXzZubNfGxdeEK9Mg/KEhL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_013124_002902_7E6295C3 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  cramfs_get_link() checks the result of cramfs_read_file()
   for a negative value, which it never returns: when a block fails to decompress,
    it stops and returns how much it has copied so far. A link tha [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: za14hjxkozqhk17jnk7xgrjadimxgz9y
X-Rspamd-Queue-Id: 97F2C20177D

cramfs_get_link() checks the result of cramfs_read_file() for a negative
value, which it never returns: when a block fails to decompress, it
stops and returns how much it has copied so far. A link that can't be
read is therefore returned as if it could, with its unread part zeroed,
and stays cached in inode->i_link.

Treat a short read as -EIO, drop the buffer and return an error pointer.
Not NULL, which the check would have returned: readlinkat() checks the
link only with IS_ERR() before copying from it, and path lookup takes
NULL to mean that the link has already been followed.

Fixes: 0a5e0f40f9 ("fs: cramfs: Switch to dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/cramfs/cramfs.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index fcb9aeeab8..b41c852758 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -432,8 +432,11 @@ static const char *cramfs_get_link(struct dentry *dentry, struct inode *inode)
 	inode->i_link = xzalloc(size_add(inode->i_size, 1));
 
 	ret = cramfs_read_file(inode, 0, inode->i_link, inode->i_size);
-	if (ret < 0)
-		return NULL;
+	if (ret != inode->i_size) {
+		free(inode->i_link);
+		inode->i_link = NULL;
+		return ERR_PTR(-EIO);
+	}
 
 	return inode->i_link;
 }

-- 
2.47.3



