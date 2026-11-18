Delivery-date: Wed, 18 Nov 2026 16:13:24 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xThLf-000oAu-1e
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 16:13:24 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4529620102E
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 16:13:19 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Shqe2Vut;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=X8wSdvdX;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795014800;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=1vm33w0Jd2aGQ8i/d+DBNqyIjARxAQah3bcMRODohR0=;
	b=JPvf53QvSRP7aEhgEaJNaDISiwFX57E98VdBX9t3+Vg1Przx0VNzTe+M0sMMzalCyWgxu9
	zqNiTjLU8vPxbOmKpNW/b/yND8fLIFCC3jc1vABVuc7Mo7oBMxzt0gacWzvM+bZXUUgVnB
	2Peea7YvkMevM+cIEQ8hF04kKzCQFPatHD6lt/DjK9YlriN84Q6ZLjg/9HZgAhcBOfTTl7
	+2YdyilKIWHEydzD3OSIXGemyL1NCx83MSgN1CAjew7a95wBXrOenAZyPbb71Oeso8KOqw
	BXRyykOnOLPnzft0WjQmKAXSFwZbFclTsM8aU3Aei/2XhpFxKB4Z5MpEtYaAJA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795014800; a=rsa-sha256;
	cv=fail;
	b=L30OCPaxkP6gANiz7//d0xGU8dyeddg3kcH1FqqztnHF4W6SG+S65TZ5g4OAbG9DE8mhs3
	hoa1gipzeJWO5xZiwm4ZOFSv577kCcWvBWxPYLT/UDgtT/jOml19hCkiKRsK6/pnfnXAwB
	OADP4xvuEhhRtRzp7mPvkjvbvqQvdU6RDfdzNP3YennCyS9j3ziscgDP903uFy0oUJKEfp
	M8GDvFXxn5NOxpmOYQlzzKHlNREG9TeY+alMxWitsx512GrK5ooAMH1pmfdVqlF/waHWtQ
	lahzBm+sLFvhyA3fL197u2sTnlkHTur8xUqtEM5JtCy17iMOY0zAxsdIChtLfQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Shqe2Vut;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=X8wSdvdX;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=1vm33w0Jd2aGQ8i/d+DBNqyIjARxAQah3bcMRODohR0=; b=Shqe2VutrE8gH6
	KX288QVR7/Hcfe5zbUdUUYIShqaKdWosNC7N6NyIvwr1Ae/2O31298sHYw9tyo8U+hIxqoPjWHxbB
	4cTqYLY5Yzot4UF2nimnWfHusQYw2zuaZ/fguwZdqKC8IYWr8DVPuo6WB0Pm/PCA7CZ8BvB0XScxm
	lDB/3ndbCKdllTvDz1NJ4X+AQeO/FFf+QVW2HRpu72gVVQ9v94Jw4txPsjnQA2ngHGQfLmw6L9VfV
	Vc1+dwAxNcPBN9SkZi7ZWxThJgw++IF5e7Q22rwC2/IDFDy9wfyZD8sPa94RA1wQekVOcqgxWHpaw
	Bc+fNZ4Yrx3mrgluiK5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1o-00000009ACI-2LQj;
	Wed, 18 Nov 2026 14:52:52 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1j-00000009A8y-00ij
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:48 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4FE88205AE7;
	Wed, 18 Nov 2026 15:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1vm33w0Jd2aGQ8i/d+DBNqyIjARxAQah3bcMRODohR0=;
	b=X8wSdvdXclcxQhharItzWnoONNihqj0eR2vlmbRBeofDG1sycomBvSLX+wV1u94zYdkb4i
	N96DLfpW7vk65MPvTEh9U1VNtYWGavhzsJF2MpvwC+IRVWWcWyW+uAsDfza4SQ9MKCQgBj
	vyQAE8yN5rQEF8qZkjaYB0WXD9Jlg0e35TyeiUNsherX38+c7Dd2Dx2uINRRf4WblQXROV
	OR2hmcJcQjtq3C/MPEBE+Nr2Mdc0Aq/aH4ltYRdrBe2Ql9uPewqsHhnG1kWz/PoVS3RG3z
	X2VAF6Z3Tns4cj9uH2nzsugvSQqZXQgwlE6EBwp8R+OpV7SHtHFxQaBO3v98aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013561;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1vm33w0Jd2aGQ8i/d+DBNqyIjARxAQah3bcMRODohR0=;
	b=EkI2pRDTc7eGc0mk4s2TPBDTzyVNUp0dRacFNI57ILRvUzLM00yn8ClaS1QRmHZc7r/oM9
	W1IfJW6mAKxbswHhajAdRt7D0NoU/Erone9lvW+ZvchveFX9ED0fV4/egV0oZS5IVcPsT8
	v09BJBZQJ2NxqPCfanuk82I3j7Nt+/lXAqZRJgL0Q5Gqo39pLTgWXT6oyiHWQPtm5jhVz1
	l6YWArAnP1LDfJ7Ii8RnANtBThqyVunuhRJ3+KxrVceFR4igBzAeDPJmaaCYrJuxR62qkx
	QgqJ0YT8+WjJjXAZ8IPO8YsZmvZnnN5Y52SKxCPH2NvC/Dg8F3s7VfggnzN+ig==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013561; a=rsa-sha256;
	cv=none;
	b=U57LIRH5Tm164QSDCTCpbvnEK3Fa1PtNj5f/2ByC2EzKnz3bwRcqrJ60CDr/QdKtuJkuwN
	A4QbAOc1v5NvGg/a+oVZeCERO1V+Sg4G7KDO1pgXtyfhgvruFqtG1bWUTdhvvn7vawX8iH
	rNDcpm6amL2ZvLsfKFZLepaZJ8MZ5UDbX/Aoez+8sCDAvS2TGbL6jWiZjOsbKjoKrzBumK
	qJBepjXRAeYC24msJrmL6izB56i+KdMOBrKapfjW8SeuC9log6OF+Xa7xCkZyZqXVk0LyR
	JQoEphpS4BTzp6Vo0fqOUH/LQQcNyQF+W5judVibjZxyw1rKZ/f6w7U7yNoO5A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:52:01 +0100
Subject: [PATCH 11/13] fs: pstore: read from the file position
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-11-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1923;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qIZFnaxaByeJfevJnXKrJPYQrpZ+Nwh6R9d+yy5amSc=;
 b=SJ/IPRjhVdzfj3kuU3jST0w79fqNKDj5ohoQ5FXgocFdnB5wpm7EAvCDZfd8OI8uvsdtuFy3g
 AgwZqQSoHbkDm96XweGcArRC7474S9TIkHX8+GEyjkVJDXdl93QIXix
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065247_205980_07E8EEDE 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  pstore reads at a position of its own, which it keeps in the
    pstore_private of the file and resets on open. Reads at another position,
    like pread(), get data from the wrong place, and so does any read [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 4529620102E
X-Rspamd-Server: mx1
X-Stat-Signature: 8kb5r6bscrqwui9ni3z69au5bem6b4mj

pstore reads at a position of its own, which it keeps in the
pstore_private of the file and resets on open. Reads at another
position, like pread(), get data from the wrong place, and so does
any read when the same file is open more than once.

Read from the file position like other file systems do. That makes the
lseek() operation and the position of its own unnecessary.

Fixes: 160d2ed0ba18 ("fs: Add pstore filesystem")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/pstore/fs.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 49ea5edf74..1a0eba4fa4 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -41,7 +41,6 @@ struct pstore_private {
 	struct list_head list;
 	struct pstore_record *record;
 	ssize_t	size;
-	ssize_t pos;
 };
 
 static void free_pstore_private(struct pstore_private *private)
@@ -118,7 +117,6 @@ static int pstore_open(struct device *dev, struct file *file, const char *filena
 
 	file->f_size = d->size;
 	file->private_data = d;
-	d->pos = 0;
 
 	return 0;
 }
@@ -133,21 +131,11 @@ static int pstore_read(struct file *file, void *buf,
 {
 	struct pstore_private *d = file->private_data;
 
-	memcpy(buf, &d->record->buf[d->pos], insize);
-	d->pos += insize;
+	memcpy(buf, &d->record->buf[file->f_pos], insize);
 
 	return insize;
 }
 
-static int pstore_lseek(struct file *file, loff_t pos)
-{
-	struct pstore_private *d = file->private_data;
-
-	d->pos = pos;
-
-	return 0;
-}
-
 static int pstore_unlink(struct device *dev, const char *filename)
 {
 	struct list_head *head = dev->priv;
@@ -249,7 +237,6 @@ static const struct fs_legacy_ops pstore_ops = {
 	.closedir  = pstore_closedir,
 	.stat      = pstore_stat,
 	.read      = pstore_read,
-	.lseek     = pstore_lseek,
 };
 
 static struct fs_driver pstore_driver = {

-- 
2.47.3



