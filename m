Delivery-date: Mon, 02 Nov 2026 10:44:30 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNoac-006KGn-1d
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:44:30 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 23031200BA3
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:44:30 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0wBuFtMX;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=hC02jlKZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612670;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=46Nyh9sjIF5DzAASEZueoetwwkkvGZ9qAhhukUlGP3o=;
	b=VnKaGi7FAAtcOZNi7pzkDP5omX8Rcjx9EIEp3Wp+H6KdwnIXRFrQNqzTyNqFq4TQggv3Qp
	H3d7qkOm0k2J730ZJoPcSIJ8LiyWlO6OBtcsi8UprhpHhRig/ni9kokmj98w8+roeGL3yH
	IOTZD0hKfjarKLWb1OpMh+YpzDKsCsL60Yist9wM2yxarejkn6wF5ZJgPFZaQY74OSfcoD
	G7DOh2UWoNAZRYVI3OcqWxLcTjaq2rMDOuwyHnOBnUBkWPrj1WSVjDQvCLo8io3fqPj0ls
	hs/EVB+8LpeOnMqLikNteJCuWyA8vScJuoL7iLoz9xofO87wutcT3qEBIKh4kw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0wBuFtMX;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=hC02jlKZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793612670; a=rsa-sha256;
	cv=fail;
	b=I7Dd9Hakh9QMqPpqwUPAc5VlmxlgtalS1T3T7AG2gM7AHV1++324kLSh6fpw5cb1sOoJvZ
	wKNLWMyyQgMHOH2Sr/Eyjy2zTrYSUPAb4EHudLZV8XSZ/L5b0mGSeHpCFYlm7aoF0Zv4jL
	2gkc6bAxFtm2UAn6geZSGc8leyvc/VA7KWNzU2IJaX1Hamo4DHpg5KQpEl7dC6ofKidzue
	Ah7RxcqJxWKrOGZK9byndeJKUn+EU7eo+wUC9ithXQA9C2Yj1VrftvuNzOMf7c1HQ87cfQ
	8UilEl04hKHUbBBukrZHLaV08euOEZvR49sr+BsoYQ6YV4SioagQYbhCiUmVrQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=46Nyh9sjIF5DzAASEZueoetwwkkvGZ9qAhhukUlGP3o=; b=0wBuFtMX6gg0sD+a4nra2A9XYj
	uw5bz5EOuiizDq/VkyLRkJ6SzWJAW+AdJPg/AmPVHgrXKTSUvmWGS8ojXoNO/YdxbT6c7pPx6kAGd
	vl1AeMPCA8WdUxakYWagKujkyrYSDBL/UjPMow1CuriN1zCOm3O3R1mAMbxN1YxB07MpZtqzBh2sX
	C7IKpET2jgf9zS5xD3nLuNTlMCL4aHaBpxxM73y15+EGqfiY2ngIuqO/GfliZqC4lqjcuNcIS9bHY
	vyxOMWi62jq6zv1GRyHV9la5arMhYAtS8TWzTMegPefXR4KMObo2qHYrvu8rxb8oD6Yra/G4CQfyn
	0C+OXPBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoO0-0000000G1IQ-3ok8;
	Mon, 02 Nov 2026 09:31:28 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoNv-0000000G1Ek-2sHs
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:31:26 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3EBA520046D;
	Mon, 02 Nov 2026 10:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=46Nyh9sjIF5DzAASEZueoetwwkkvGZ9qAhhukUlGP3o=;
	b=hC02jlKZHBgexdmftKWiCj50e4Jt1bWEL8mGiD82+6qJ5xP7T+ixKQyjqtm+wpDAy6oU/k
	ztXysyvUPZpkEac8S74at8XvITHOru4gPnHmAHcBL8nLC9s4tiFapE/HYj44VNbjQHOpIP
	UvhHIEu9A7CV1qR0Nk+jw0zrbPNNAhqjy8OvWHcgCxr040FBiJsf8KPWnlfouzMk4EBpil
	6LfHFycxCg194kG+e+AHV4WHeQwm+KIM65iC1mjD+Gze0RAUBupCmS50IoGLrCPDAxGGyk
	BCy3xG2esCaLFdrU3ZBLqmHz3eW3FcvuQzV80FKiBw8XaAO7E22RI5Kt6veBrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793611881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=46Nyh9sjIF5DzAASEZueoetwwkkvGZ9qAhhukUlGP3o=;
	b=MR2ytN4si114TwVvdJsnbhZNOq8sMZPz2wY78P3zqdjrqg7yro9VebsyORdaravdzhBQb1
	tn93jJW3u1RCm61wLvaKGVHM7nMVqS0OOwnRc0RLIhbg/3IjlVua+QTfuLikLjm/kspzc2
	hXeCQk7kL07MJHR1UXeka7JkC0Hp98Qs1Z3GEbi4au7YWtwVEJGDeZ90IAxSxqnveqRB8v
	a6aHhgV9zMYbuT0xSqEb5LTCBrLLaylKo8wqY8DxsxNrEWuMv64Vq1MZ2EXLuFWKo6/MLl
	0zZQICSYyZYnu1AY0iZgIbJLkpEx9WMLuJqlaOFCRum7sS8Dqgw8pz3ahSZ03Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793611881; a=rsa-sha256;
	cv=none;
	b=Y8qqpRUVFwhc0H97QaUQd7igMFcoOcKBxV1pY6Q2nsKtoaVTAS+jU4vJceS1ypVshnL92v
	PBG6e3MPnXHLkbWe3uf06eZCsC0dz6cQMVwSS7cn/1AyDxl4yQtuaazAFj+/M4EcC73S7G
	kK5ks1SGc0r/aXM3KyQ2Q9J6skynRpf9WOQH3c7Dwj4Uml61vbEOQWRy03ESkfmeqqwqY9
	+g1xLjp8sL+kbG8GM6hRvB3ZWTGYPPTXDpWkjzDehSIibnY4153FHEvaLIURsBpKHsiqJr
	EfZB6kRVj/nRjIx3yGYscxf8zdUQMeF9keGX3wVx4TXl/CFaffjwi5S2FPf8kA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 0/4] fs: return error pointers from ->get_link() on
 failure
Date: Mon, 02 Nov 2026 10:31:19 +0100
Message-Id: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGdY6GoC/32NQQ6CMBBFr0Jm7ZhOkQZdcQ/DAum0TDSFtEgwh
 LtbOYDL93/e/xskjsIJbsUGkRdJMoYM+lRAP3TBM4rNDFppQ6Q0uoSe55eEJzpZOaE15cXZSll
 yV8jaFPkosnVvMw+S5jF+joeFfumfsYVQYa9rMo/SVX1XNxMH/57jGGQ9W4Z23/cvBl4PjbUAA
 AA=
X-Change-ID: 20261102-fs-getlink-fixes-d634fd50d1f9
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793611881; l=2045;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CjYY6NfWVzfB9CJtxqv/qw/dghWkbC3NdL/448jYHaw=;
 b=EyB4xrzXdg1zKNVgrbScgoGzXDd6ZdiaEG1MM1KrU5gn8g9XxvKZRe3n0esbxJciSXb0gd/I+
 EKwLhbOKdVbB2IoSrOq4uztKERqpyTL7Nm/HDy1mgfbywkfujdcaIe0
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_013123_886682_855C0ECB 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Like in Linux, the callers of ->get_link() expect an error
    pointer when the link can't be read: readlinkat() checks the result only
   with IS_ERR() before copying from it, and path lookup takes NULL to [...] 
 
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
X-Stat-Signature: zeya967qfuppb8th6muuz85xpkkngsyq
X-Rspamd-Queue-Id: 23031200BA3

Like in Linux, the callers of ->get_link() expect an error pointer when
the link can't be read: readlinkat() checks the result only with
IS_ERR() before copying from it, and path lookup takes NULL to mean that
the link has already been followed and continues from the directory
containing the link. barebox has no nd_jump_link(), so a NULL from
->get_link() is never legitimate there.

9p and nfs already return error pointers, and the squashfs series posted
separately converts squashfs_get_link(). This series converts the
remaining file systems:

- legacy returned NULL when the driver's readlink failed.
- cramfs and ext4 checked their read helpers for return values these
  never produce, so a link that couldn't be read was returned as a valid,
  partly zeroed link and stayed cached in inode->i_link.

For cramfs, that needs cramfs_read_file() to stop at a block that fails
to decompress in the first place: it stored the error in a size_t and
returned whatever the block buffer held instead, for symlinks and
regular files alike. The first patch fixes that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- New patch "fs: cramfs: don't ignore decompression errors": the error
  check in cramfs_read_file() could never fire, so cramfs_get_link()
  couldn't see a failed read either
- Link to v1: https://lore.barebox.org/20261102-fs-getlink-fixes-v1-0-c2816b3f5ca8@pengutronix.de

---
Sascha Hauer (4):
      fs: cramfs: don't ignore decompression errors
      fs: cramfs: return an error pointer from cramfs_get_link()
      fs: ext4: return an error pointer from ext_get_link()
      fs: legacy: return an error pointer from legacy_get_link()

 fs/cramfs/cramfs.c    | 11 +++++++----
 fs/ext4/ext_barebox.c |  3 ++-
 fs/legacy.c           |  2 +-
 3 files changed, 10 insertions(+), 6 deletions(-)
---
base-commit: f2e574b9c63c6da07a06179a868cae8a471ec176
change-id: 20261102-fs-getlink-fixes-d634fd50d1f9

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



