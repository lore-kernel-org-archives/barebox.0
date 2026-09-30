Delivery-date: Wed, 30 Sep 2026 10:29:32 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBpgx-007zfC-2t
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 10:29:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5EF11200206
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 10:29:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yytJUEQZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=GbXrd1cT;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=G6xM7jCt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790756971; a=rsa-sha256;
	cv=pass;
	b=a6Nm5BfAA+ssW7UZYyz1e7yXmuzeR+JAb9S7HIxP+dxz6EZpi5XkAbFcbeghV6N+oxanCt
	x9YT2d63CYTyGxlN+eTlk7pQkvaiTdYea01oFc/DRxL/J1oYLemg3lkWf1vAq25RiaQOwc
	vQ7abofrSf6r//uaDLrihhXjklOWwWn7zLGHeNPZvXI1G4wutgVOF0hfxB1ZKdJgWu5JJz
	JY+RIoSwAtqn5NEykDuT/xkFRt0en2t06AmNUFneYCil7YtuE1M69r2t+RQRWwoOv/UJ4r
	zWvp/3GmYQG9ia0GJIyYbUASBliMm8YpTmRAlCTqjKhrGc4700aMq73Fcnj1eQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yytJUEQZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=GbXrd1cT;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=G6xM7jCt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756971;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VNUTeXKbEhMdDMDXSbzlvDKgb5xNr+sgJhVLob2ABhM=;
	b=Nao03yPvHXJKvKzeX1OVskEi9bUMQqOeQHyRQjiRdujC3RXU6t5F9Pd+4KiJvTJYx3sPRe
	/uc36p36c6XIoz9YPMRGK35Qn0SdhMU7+o3o0NtYpIVXQ6T4OklqwhEy9uQ/pcgpHDOYde
	5ia+MCoJYzyTAn2pcQ0YUihfSmFkI+SQzXBCX7XwdDIlXfltoSM02iRLfIxknZdWRtUTHk
	pB/f9kRfVQ4nlmaJ0Jh677vyktGm9tjNfjfWo9YQI1u6quAWmAbkOs1RkBKSkJ5K33NC7J
	Jkic96q7lgZJVw+zIKGCddpyYR9a2OsXLRFJBvOzec8YrPQRgvFymJsSVqWqeQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VNUTeXKbEhMdDMDXSbzlvDKgb5xNr+sgJhVLob2ABhM=; b=yytJUEQZPH7VzHVgyGze+o0ZkM
	+bx/xUcnwSm4PHPI9E0jArtuX3/nz3wvIM7WA4MnVMnHNS5tRuusSuxjL1nX+Kndoll6bR8k7IKcb
	k5eJt1XGStE2W3tZ3uIrFhKINTVVifUfCXwA0QKZ3YTUiH5IWZ0NojBvBJ0DnDwOesq4rpBOotU3a
	OUeCGp8iqGq41cZvVDVFmRgwTcOLXrzXvoPmkudTU4F4MVbx2WG8U4UNx6B7IGdL3IijOP3iOL56r
	KWg+iZ47mrjk2fUWPsuD71ha+EeiMdFvHfVgKtkuefiSILNPZiBtuscpZWQjbqCrANwUAjmJc9L1e
	NfRR4kog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgZ-00000005QAa-3GdJ;
	Wed, 30 Sep 2026 08:29:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgY-00000005Q9W-1UBk
	for barebox@bombadil.infradead.org;
	Wed, 30 Sep 2026 08:29:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=VNUTeXKbEhMdDMDXSbzlvDKgb5xNr+sgJhVLob2ABhM=; b=GbXrd1cTX3G+3I2vEALhH08M04
	L71ZgqF5J4aVXU3HD/XrGHzqrx6pnh+8P+CuAgJVhSxeB5hh2Olq6DVCTMPZPxrIP7v0BRberpHjR
	rvq0LrZCEuRksjX5wEU4gylQvSfjk3JjBBcv/MLNHxbxu5poEvFp8MEg7fymudKRvjdsLpwW9vJuY
	i3Ye972nJVrXUidfVz2HR5pOStjJd4Ae47OAjy/zlkGhBQgXOcWTOI8opcQmPNTyq7VxklQgIm7pj
	OiXCG4SFXUr/w8u0L53mkBmxGif7gw92be7Mha7LjvzFDopPboZ7pe3rR5Ynb1YxmUyIzv8NIv1vL
	jzweJdEQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBpgT-00000003Wf3-3fBP
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 08:29:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EB8F0201C7E;
	Wed, 30 Sep 2026 10:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VNUTeXKbEhMdDMDXSbzlvDKgb5xNr+sgJhVLob2ABhM=;
	b=G6xM7jCtWa4W+5tz+/hkzyptzbj4k8i9gAFBQXKlQad/PCCkUMQ3PEysxLrM7wozN4XG1U
	jWSzSYoTa/lPOom+Xtp4ILSbeW45VOHlSZEuq239mhS1r17hdRKkhgBy2243Zt3jhS9G4U
	n0lVHxbJhtuE17kLlocF/OLbmIf01+dB6X65QIRotv/VIeqi16ff5oteXmfsl031J9C+e1
	fvP6jOM9YrwSkI/QM4tMNQiQPXj4SrL4UJk0gfrUBzK8jtYE6/VtHOmH5xHYUjdtToO1Sa
	lhxdJKh0CD0nfNGNgBtcbQT+ZMEoc+xCzGVXjyBtP7fC+QrKPp18eQWTVRiDmQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790756938; a=rsa-sha256;
	cv=none;
	b=T753q2yhXXimfuy+BkjudBP/JYdcQUCkAfD9eZt+pfNi5CdYyTyhq+Dd3xxNJp+g2v1xPD
	x7kg+SsYCLjE7930bsfmr9vs15Db0EQR6rAblHTRjaeQk6pXWFzFClQNndkAlqHfiZxFwe
	Vo9NZCzcI8z8lEv3Jm5ZVbNKP19XqgcHKWfSxLEhMDQ/KfKndobufEXJb8v1LOx5yUex7B
	J7ql9xeilm0gfdKeFXL3kObOagi5VOG16L4fZ8uni7QwG5Km0X+iK18mFwJCZj39fZB2j4
	f5YzMkCZEZfU0MNNvunmbmlzVp7a9lXqx27mXjo0C8eu+LKW8Da96OzGXMz0/w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VNUTeXKbEhMdDMDXSbzlvDKgb5xNr+sgJhVLob2ABhM=;
	b=XwrMJBG/uAfBAS1SxXny+dy1SPi+0rXOitXfpowkvQ96g+PAtPeG4c86Vm8/gpzgxh8JyO
	J71toX/UnQoYK9MxARVg5GEGrGL36u9QI7bq55lYh1GuLh5kqHp2f6wLy7xVvndBe4f21B
	OyS031aqjj5/pg//7rHeXSD3arDVH4Ik/5dD25VylKFfkHvQhJtXUfYx1sysh+CKMM0GOw
	0HB3IlEW3JLvuwSWLzp8C4Ddx/RpR8ug/KjNWz6sa9Nyvv+t63flUmc2hLDn6PF/q/DEjJ
	Y3xZTzFrIOm3/S8VNDPp4vMJW/2HxmTOY2l9PNMEhGSKIh0z2ZcCvtSjaK8Syw==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBpgQ-003Wks-2p;
	Wed, 30 Sep 2026 10:28:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 30 Sep 2026 10:28:57 +0200
Subject: [PATCH v2 3/3] PBL: add oneshot helper for sha384 and sha512
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260930-crypto-pbl-sha384-v2-3-1cedca8ce7c6@pengutronix.de>
References: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
In-Reply-To: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_092902_183060_61A87D5B 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Similar to the oneshot helper for sha256, add helpers for
   sha384 and sha512. The helper functions don't use the ARMv8 Crypto Extensions,
    yet. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de> --- Changes
    in v2: - Move implementation from header to pbl/sha.c --- include/crypto/pbl-sha.h
    | 6 ++++++ pbl/sha.c | 30 +++++++++++++++++++++ [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-61.01 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.80)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5EF11200206
X-Stat-Signature: 1gwdkcfqio68z97q7ystms9qk7yjhzrg

Similar to the oneshot helper for sha256, add helpers for sha384 and
sha512.

The helper functions don't use the ARMv8 Crypto Extensions, yet.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- Move implementation from header to pbl/sha.c
---
 include/crypto/pbl-sha.h |  6 ++++++
 pbl/sha.c                | 30 ++++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
index dbfb79647462..dc5d5ccdadd6 100644
--- a/include/crypto/pbl-sha.h
+++ b/include/crypto/pbl-sha.h
@@ -28,7 +28,13 @@ int sha512_init(struct digest *desc);
 int sha512_update(struct digest *desc, const void *data, unsigned long len);
 int sha512_final(struct digest *desc, u8 *out);
 
+/* One-shot SHA-512 that picks the best transform available in the PBL. */
+void pbl_sha512(const void *buf, size_t len, u8 out[SHA512_DIGEST_SIZE]);
+
 int sha384_init(struct digest *desc);
 int sha384_final(struct digest *desc, u8 *out);
 
+/* One-shot SHA-384 that picks the best transform available in the PBL. */
+void pbl_sha384(const void *buf, size_t len, u8 out[SHA384_DIGEST_SIZE]);
+
 #endif /* __PBL-SHA_H_ */
diff --git a/pbl/sha.c b/pbl/sha.c
index f08e554ea4c8..81ffab9123dc 100644
--- a/pbl/sha.c
+++ b/pbl/sha.c
@@ -26,3 +26,33 @@ void pbl_sha256(const void *buf, size_t len, u8 out[static SHA256_DIGEST_SIZE])
 
 	pbl_sha256_generic(buf, len, out);
 }
+
+static void pbl_sha512_generic(const void *buf, size_t len, u8 *out)
+{
+	struct sha512_state state = { };
+	struct digest d = { .ctx = &state, .length = SHA512_DIGEST_SIZE };
+
+	sha512_init(&d);
+	sha512_update(&d, buf, len);
+	sha512_final(&d, out);
+}
+
+void pbl_sha512(const void *buf, size_t len, u8 out[static SHA512_DIGEST_SIZE])
+{
+	pbl_sha512_generic(buf, len, out);
+}
+
+static void pbl_sha384_generic(const void *buf, size_t len, u8 *out)
+{
+	struct sha512_state state = { };
+	struct digest d = { .ctx = &state, .length = SHA384_DIGEST_SIZE };
+
+	sha384_init(&d);
+	sha512_update(&d, buf, len);
+	sha384_final(&d, out);
+}
+
+void pbl_sha384(const void *buf, size_t len, u8 out[static SHA384_DIGEST_SIZE])
+{
+	pbl_sha384_generic(buf, len, out);
+}

-- 
2.47.3



