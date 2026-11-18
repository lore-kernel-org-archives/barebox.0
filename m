Delivery-date: Wed, 18 Nov 2026 15:53:56 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2p-000nhu-1X
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2B3B1205AF4
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:51 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dnwO2W0j;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=K2PG9aJy;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013631;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=mR+cL4fQ7PuxsaSweDR2GEmC/akkAKutSZqY9eC5atQ=;
	b=WehE30frwQj4vU8OgWPH2LLUTtDjD9HcFB0BKyaYLNYBJ6jLzmEyBGxCUWQivCyldmg0dU
	FHAGDoiaJckzMQ8mv5T+taLodG+USOf+LpobM/RoTDl9yzi5/eX523TtTeme5ZGHjiLLdu
	76DSNq8VlgLtUxLdm9IExOU92fGwE4dD0gd19KNlc3AQ7kAxKPrDLAZLXw3RqMywBNVEqQ
	eTay7OvBut7oqEoaTpv+n8uhBJYezIoEfwu3yoM/0wQu5RjcopalD75AoTrtbApt0BHOWu
	j66m3gpiL14Ayhfa3hmpbRzHa3lTEdrEQt6qLPRt1iJ8NxBYzHS6jw+ae9CF2w==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013631; a=rsa-sha256;
	cv=fail;
	b=Szs9eDqIa6ko0Io/vAFf2c8G3JseydHukFunFdP6k2ISwv3+2c36PmmXP9eYzTTtvvvPWD
	6vp5NX38esKRpLMHrHaaBHaPankXX6oJujpw1tzFjMzWK8Msj4pXGGhnWtkmCZ+xpgf2sg
	ZXzxcWzhgzdI8WtlyB/qA+22E8eogWHs/suS1inpdnBbOGQcmpQyMzUP7IFfNQ1aSlWQ7P
	Uw+vvHJG2zmaZaa6QjdvqNb40gJND+HrJRum25HJcn+WF4NRHdEqeWrGoXK4M4LfhmO3AE
	za76hylaPnGFt7sc5Tqgyiep/PyyzfxhbrbjDs0qb+/0Xo3mJYm9CmafoEzDCg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dnwO2W0j;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=K2PG9aJy;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=mR+cL4fQ7PuxsaSweDR2GEmC/akkAKutSZqY9eC5atQ=; b=dnwO2W0j8XJlmz
	KHXgIEnm/fT8SCMTsMzNvDpGegYZRuniV4oKeCSJYCEhdHdVZ1NXFIRtVsXmvhemVQK4CwTGmpYLe
	vXe1awYAA62Xzr7a/JjBk6jLX+AJ21k8v4kUpRaIwzDjmhHGxV9xAB3Ppl3XLfHsesdH/F3BjShF6
	CtxSyXN+n7oWqGfxsVDyPYYad76I2lSXBxuQWs0hlf9EWxl6lZchMePOp9zQ7o1xJ+tTDojkUJPZP
	27RuY8VudtwazwFXDY5ELhRFcQh9t18tOW0qYgv1vNXZ9Yyp3s+DLWZpLjxuzU6xcFho/c428jEAI
	aGGDW0CF4AvhX7qHqA6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1e-00000009A5A-3oiQ;
	Wed, 18 Nov 2026 14:52:42 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1a-00000009A2b-2huf
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:39 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E1149205A6A;
	Wed, 18 Nov 2026 15:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mR+cL4fQ7PuxsaSweDR2GEmC/akkAKutSZqY9eC5atQ=;
	b=K2PG9aJyRa4QFNahdgEIsqM//yDZ5YYbVmtzZVh5EQ3HJlfrtJYz2MUIo8iHW2iCMQx/5G
	8Rp4Mh3Vv/mUnBeMZqwqslioalF8QAHZJnIzXaEMKmsO2OnnHhAfqa+w5Y2ksBTSH8bAjV
	WXLWcIV1AtCKecosz33e/OyOpsMsPbzncVlEdHbt/VKhPkYL27PX9NOWi8/wOGPLDcuFiw
	vAHFjziad5UCFs6/pOimrpUcsUmYZe68jQ3NAbeNGO5TbJOpRAr0jUjSYybLzUN6hEIMhU
	twTFVFrH1+w/UAqT+AJzUz+VFVij722qD84iPfOWdUYJPWNwT3xh0g0bF7WWSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mR+cL4fQ7PuxsaSweDR2GEmC/akkAKutSZqY9eC5atQ=;
	b=QZGIlTVujDDC+7xdHVF/8hlAwLsALpaGaDprynP/8Iq5Lhq1VsgbYpHJ3lDwsfU5RYZ5Lg
	IreVdpDm++qiZA95OPrjVZQMFg0CkUd/QMd6icq6VvmKCCyYYGnlF/aShplCgatHUAn7dB
	GyTjSFGYcLd7iJFIDbIgLJXvMYjlSUiiOsojx4jDkLv3Iw+LI+BLRWB4oGZ912m++dOhn+
	GJSTtz/SSXwzPi6iqjo1htrHesSzlmwK4xPfOhLtBcZpPgITC79lbgb3w78Cm2aCRHZaII
	pARCJASKefVZRkmu3WThdWM0OusBNE4WUh4+3cIde2KQTfCFCpHYmmruZQVeow==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013552; a=rsa-sha256;
	cv=none;
	b=fwcCtGXRc6/u398cTjbO4/XuDSQNcPrht7Wb16WpAR1hfqDYJ5kTI8mR9OHBQ1Hd1So/Vs
	XZc8cmBUZc0PrlwvFI6e4/fLM2CqJkZHUXwstHBYjZ3SgRICJ0uGdt21k1GN5Htc2d5tLE
	X7r3bC5jOCrIUizm6mFfqXH9yG62xSpg9fcMlzgRWfBmPTdwg/8M/bqjR4uFIKacgZ7hb9
	3auM/gK7c/ymeOGnc6YnYGrRjvWJDt5qVI3mZQclkKBS26Paz+aiLyabxICor02adTsN8E
	vnkvUsGv5kUK0c0TQBk+2PjKnpjqw5Ad7hyEY4V3GU8+5NfnV7CUYWDqK6qG5Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:59 +0100
Subject: [PATCH 09/13] fs: bpkfs: allow opening a file more than once
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-9-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=3214;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=oIpb7hCx+WcsuBN8EhMuA8HJyI7l5Yzz+/xjoReT2VU=;
 b=sfqlxytAQkvQQH4MtZya9fZlpJsQHbky2hhL7XJa/UV5eHdT8tTxGBF4RbX2++LZkjU1CpFc/
 5qQZC7N9QAGCiWiLJjRUFaTVyNF2GVgwa6EHrIBpaYKg5tJDrMhJd9u
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065238_864106_A27F1E7A 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  bpkfs keeps the descriptor of the package a data file is read
    from in the bpkfs_handle_data of that file, which all opens of the file share.
    Opening it a second time overwrites the descriptor of the f [...] 
 
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
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 2B3B1205AF4
X-Rspamd-Server: mx1
X-Stat-Signature: y1hbiczxbphraz9ydjfsyoq6f1wp4sht

bpkfs keeps the descriptor of the package a data file is read from in
the bpkfs_handle_data of that file, which all opens of the file share.
Opening it a second time overwrites the descriptor of the first, which
is leaked, and closing either closes the one the other reads from:

  fd1 = open("hw_id_1/kernel"); fd2 = open("hw_id_1/kernel");
  close(fd1);
  read(fd2) -> -EBADF

Keep the descriptor in a structure of its own for each open file, as
uimagefs does.

Fixes: 2f677b9b1ed5 ("fs: add BPKFS support")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/bpkfs.c      | 33 +++++++++++++++++++++++++--------
 include/bpkfs.h |  1 -
 2 files changed, 25 insertions(+), 9 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 62d0229f8e..eabba22cce 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -127,11 +127,19 @@ static struct bpkfs_handle_data *bpkfs_get_by_type(
 	return NULL;
 }
 
+/* an open file, the same one can be open more than once */
+struct bpkfs_file {
+	struct bpkfs_handle_data *d;
+	/* the package for data files, -1 otherwise */
+	int fd;
+};
+
 static int bpkfs_open(struct device *dev, struct file *f, const char *filename)
 {
 	struct bpkfs_handle *priv = dev->priv;
 	struct bpkfs_handle_data *d;
 	struct bpkfs_handle_hw *h;
+	struct bpkfs_file *bf;
 	const char *dir, *file;
 	int ret = -EINVAL;
 	char *tmp = xstrdup(filename);
@@ -151,16 +159,21 @@ static int bpkfs_open(struct device *dev, struct file *f, const char *filename)
 	if (!d)
 		goto out;
 
+	bf = xzalloc(sizeof(*bf));
+	bf->d = d;
+	bf->fd = -1;
+
 	if (!bpkfs_is_crc_file(d)) {
-		d->fd = open(priv->filename, O_RDONLY);
-		if (d->fd < 0) {
-			ret = d->fd;
+		bf->fd = open(priv->filename, O_RDONLY);
+		if (bf->fd < 0) {
+			ret = bf->fd;
+			free(bf);
 			goto out;
 		}
 	}
 
 	f->f_size = d->size;
-	f->private_data = d;
+	f->private_data = bf;
 	ret = 0;
 
 out:
@@ -171,9 +184,12 @@ static int bpkfs_open(struct device *dev, struct file *f, const char *filename)
 
 static int bpkfs_close(struct device *dev, struct file *file)
 {
-	struct bpkfs_handle_data *d = file->private_data;
+	struct bpkfs_file *bf = file->private_data;
+
+	if (bf->fd >= 0)
+		close(bf->fd);
 
-	close(d->fd);
+	free(bf);
 
 	return 0;
 }
@@ -181,13 +197,14 @@ static int bpkfs_close(struct device *dev, struct file *file)
 static int bpkfs_read(struct file *file, void *buf,
 		      size_t insize)
 {
-	struct bpkfs_handle_data *d = file->private_data;
+	struct bpkfs_file *bf = file->private_data;
+	struct bpkfs_handle_data *d = bf->d;
 
 	if (bpkfs_is_crc_file(d)) {
 		memcpy(buf, &d->data[file->f_pos], insize);
 		return insize;
 	} else {
-		return pread(d->fd, buf, insize, d->offset + file->f_pos);
+		return pread(bf->fd, buf, insize, d->offset + file->f_pos);
 	}
 }
 
diff --git a/include/bpkfs.h b/include/bpkfs.h
index c80dc211c6..252cee90a6 100644
--- a/include/bpkfs.h
+++ b/include/bpkfs.h
@@ -46,7 +46,6 @@ struct bpkfs_handle_data {
 	uint32_t hw_id;
 	uint64_t size;
 
-	int fd;
 	size_t offset; /* offset in the image */
 	size_t pos; /* pos in the data */
 	uint32_t crc;

-- 
2.47.3



