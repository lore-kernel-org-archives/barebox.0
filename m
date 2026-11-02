Delivery-date: Mon, 02 Nov 2026 10:10:00 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNo3E-006JfY-0A
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:10:00 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EC438200563
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:09:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pyva537g;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=L4yx5BZ0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610600;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MdiakR9gr5ycTzudXsIdp6CK/EWFRY6ACtW546IVYMg=;
	b=aLXaUmg2jQCi7BWwlTOXeisOBKvR+oatlRMqTIVwe5OUScby0I+2IVdqWzT4F+W3JDNFWK
	niCwPNamw3rHbS4nDG5EoUmS+Kd6nkYCTHGRNXuPk8rWLHvumBQz/XFOj7ImStb4VxGWQv
	hnoScs8UnQRgDvF+++EXjqaz8QlHjAjnce64+KfQtCozKaSp5+N1tDPXlXe3kxwtmvAqm/
	dhPLx+jBguxAlkhy8bWJAXl2buYP4y4jQ9XMDcUsjxBSrpYaF5u9TVy8swU0sp5g1Pzch3
	+Kw5PkvhBl0JQa5J5JInK4HWkEmGqbQKY1Pzo0As6w7lu3zy+duHX0i9O+GUyw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pyva537g;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=L4yx5BZ0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793610600; a=rsa-sha256;
	cv=fail;
	b=dd1Nk0/HJu7w+6RKZi6QDpr5IaNlkYLggYqy8v5s8yZxAt5+pTjpWJ+A0gLVlOkc40gyQU
	tGPf6Y14E5qC1hok2RmD0/GDsrHDK5MHP/LoYpds+TgA4aEKakAGHLkD3C0oXYmm2oD8uo
	lg9z4ZXV8078aWItNR3i3+rtZUJlQodo7da24tyGLRqr3F+gZ+jJCNi2134TG5JBFgoXTu
	mWRAuzJq2RTHI1s+b3+coH3PVMaDYIiimkYii3//Gb8n1cJ/sMd3//oJzOcU+kHq3w+OcI
	tQWTAtcnhNxfgEwQJDk2mSCx6jnus+crZr+qZe7P7T2JWILbEZ7b0wWZ7vO7cw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=MdiakR9gr5ycTzudXsIdp6CK/EWFRY6ACtW546IVYMg=; b=pyva537g9ciMgH
	vw3aBCQ4hJUPWQigCIAnhn60AdVDAg1svM+haPWfifP+X/+ADZZQRWm3jvCh462B0oORZXgMKriM8
	9zrZFPDjwa/FG2p1IXndDB08WtiPnHRfk7M1aTDxxdTW7xS5CMKhG9R1EEcsneVlnMfysN1zn33vF
	F81sG3wppCOJ36733OlcBlkMTxa32XAKMXnTl0f0scvISHwjGigNnRSUNawbe9Nh8zs8fPdMDeJCl
	lBs8Yv0rjNMD3ht5mnZo6Mcdux3aPDVH50EipJhIgQalf5dIJiQ/QplG3x2JKduzse5tsjc3uwYA/
	MnXOCYnjhvSODuKH4sxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo24-0000000Fwg6-3tvw;
	Mon, 02 Nov 2026 09:08:48 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNo21-0000000FwcV-04Il
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:08:47 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A30C220177D;
	Mon, 02 Nov 2026 10:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MdiakR9gr5ycTzudXsIdp6CK/EWFRY6ACtW546IVYMg=;
	b=L4yx5BZ0cty9bqP96vIqmUbyikE2jpTruPmKuo7vIGysy7IkaAf1D9QNOxG+lJslgLfDwx
	TQ9d1tXNDs1BYI+7fwJq/QkAj4l+zx654JpSl3Ul+qCwVFF30qw3xfI2xv9CHz2eUO+I8R
	3qL09hoN7H1Rcfjuy8qoxTOXfC6qGDkIHMezZqwso3Z8xzF91vbyYmux5ZOTed0NVMjTeO
	mu6lzaKlRhFch94W2HjdAdo5RXs8ZeqMTOKD+Kp85Z4f/rSV3GG8yyy/nvHvkaqDa5WVF1
	Y2DLwnGoEHkEUN1q/aBJnch0QrF4Ls0NTdXC16Wbcy39RAz7/gfsDF46brMHiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793610520;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MdiakR9gr5ycTzudXsIdp6CK/EWFRY6ACtW546IVYMg=;
	b=AKDhv4MDxwtFvH2ueVbuql8u5+gAOEDajZ5HY/V3gh5b/uZ8eiRijgoS2wtnRvjr/kR5AO
	TOKNtI7TnFSm04IVUDzxpKOLH0LwgiF14I2oChjMg5I3WmKIlh1qJdRnTWcxFZsIt43tnB
	pZHaHmFJFf3kkdikL8YwcHqR7AbN66/9is48iGMxlRksvFGpx+x30RBBvGT3fKYFs8VU7Y
	kXfLho+wFVrO03Ur4A7nl4rnyHbGxCD32SYubR96ox+vKLM2229BK1E4uWn2kZWkYt7IHG
	+246YAGCAuzo1wj9RgaDYH5Xm6oHbglucLwn5/uTGCq1MvsirYd/vbCUj3Xewg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793610520; a=rsa-sha256;
	cv=none;
	b=dpp6Xe3njpzteKc/f/tGhq9J4gFWM39Q7J49UE5Wm30Nq3kBTu/NVqetpzgT2MGRNTwwJF
	DpiqQwRpbL6+piNmmFI7o+uCbZw26KKU6fFN3ZA2YyQ9oKrbyap1QT36b64RZKjxtSh4D7
	qlYC5QmoyuW9rTwq8CNnCBoUjgnnp9+Yo7Rx93IbPTTXJmyQNd+ZuIEJSp4YPlhJ/FzSNX
	gEuHO1707+KvvyM3sqlrWL884/OoLJY5s3SrdEcsdL4rTINxEjoeHjFYAEUPbRJXg1NdO+
	ZyNxUIzzJjqZ+QGLbtMICZwRMwtDBmeFUZxSTswvJuMWLgxIP74MhoDTJivnIg==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Nov 2026 10:08:40 +0100
Subject: [PATCH 2/3] fs: ext4: return an error pointer from ext_get_link()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261102-fs-getlink-fixes-v1-2-c2816b3f5ca8@pengutronix.de>
References: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793610520; l=1244;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=I7ca15BTXbLdocLLK+/ODkWsfKCMV+pXXdPr1Pi8qVs=;
 b=JwGQZLHYBD9N5ry5F0QF2rqVNSVu6E1m0gIair1lE6V6CDqeVspV4WfohUjMR8kbh59Mf9Ci1
 8s8u5pARbInAPpYD6EULU9XkGhe77tTMGkiKtyXlE6IlHVRGTReHVtO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_010845_535711_DFA9F28A 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ext_get_link() checks the result of ext4fs_read_file() for
    0, which it can't return here: the symlink is at least sizeof(inode.b.symlink)
    bytes long, so it returns the full size or a negative error co [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Stat-Signature: grbfpxfbpkp8rxi16kos8sfi549uheor
X-Rspamd-Queue-Id: EC438200563

ext_get_link() checks the result of ext4fs_read_file() for 0, which it
can't return here: the symlink is at least sizeof(inode.b.symlink) bytes
long, so it returns the full size or a negative error code. On an error,
the link is therefore returned with whatever was read into it, and
stays cached in inode->i_link.

Check for a negative return value instead and return it as an error
pointer, the way readlinkat() and path lookup expect it.

Fixes: 76cb57b4e1 ("fs: ext4: Switch to dentry cache implementation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/ext_barebox.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 8f6802e94b..4035d5cf59 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -203,9 +203,10 @@ static const char *ext_get_link(struct dentry *dentry, struct inode *inode)
 	inode->i_link = dma_xzalloc(size_add(inode->i_size, 1));
 
 	ret = ext4fs_read_file(node, 0, inode->i_size, inode->i_link);
-	if (ret == 0) {
+	if (ret < 0) {
 		free(inode->i_link);
 		inode->i_link = NULL;
+		return ERR_PTR(ret);
 	}
 
 	return inode->i_link;

-- 
2.47.3



