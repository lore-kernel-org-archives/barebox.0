Delivery-date: Mon, 28 Sep 2026 14:59:25 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAx3-007ISy-2o
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:59:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 53B1B2010E2
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:59:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1sJ9uIRl;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BFVGhTC0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790600365;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=YL1/fS3TXxDdObBEWBWG76Cb3KbY19f7OBGnmz5q5no=;
	b=J6Zh3nKsymtE52oLPOSNITSm1AFunxXX23J5HvMVcSh771H9qX/J61Uoo2C3mT5DSOLX5e
	cFMoTwos/9VmYBYBNHOeS0Z+1+1I/5vXlXQnILCNa68yg4c57yuuBnTZjtDKnFln66g30J
	WQOMp8BUR9kTXUxBrDTUUy059EyII572wi4w45e5dzKN9f7XAnU9z3Us8DlrDgsK8nqAsj
	rIIg9WGPpn2mto+AYHqUtZ+R60fhJspATJbyhXny7fMFhfwPg55YeDdkzoBlj7Fvg0/vgp
	Ome7NhXiLKu7hVdhTKr5JHIT2LkO+WDTOGGtvJMEuM5sUZPn72X8YtgFH+o1Aw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790600365; a=rsa-sha256;
	cv=pass;
	b=LvzPVhCJWuoO56GRjtoQfNfcuKZdrBtMMoqxHD+XK6Qe+M+4mHRtTdgXVblF/YOABVnDoY
	qdRVNXo7jMBBSUOzeuqGhyalnr8Nmj7kS0D3cB3AVsC2/0v+P43EpzaeUOdM+CK2QXlHt5
	vhAtbkHNzRwZlOWQMeL5Ai+suyPZAYz15ouVD5FyET6+VC+HBfqLDC78jJeLpjwyzB26EF
	OglkDhLDK5V8814cszlI7QHuxDXOEXu3aNUHJMRzq9xIZs1mY1UnX3ZNhS8bHcuYcjmpE0
	sd51z7K673oGSHzMGKIS8pVgrNegmxPlyiRywJjD0352i1LrWqX/9A9Fo4VhuA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1sJ9uIRl;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BFVGhTC0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YL1/fS3TXxDdObBEWBWG76Cb3KbY19f7OBGnmz5q5no=; b=1sJ9uIRlG+NnFNVV6m33lPEeUQ
	E9HFEuxxI6uuiWTZZqSvwDx8MmbJjYAH4lhUCFu5d/Ag3QimPSeEK2yOZ2Oh9vuU4rg2TlWuTSKP8
	R4yrMtYnBG+x+QhKYBiX6Ji5A40T7wGbH9tGKhRhHuaSQWD10i1t54wn5sIdtEFIejPvpo3R19yRn
	CQsg1HhAxbCi/3s3ODFUBYMNT/SYxn73T5Ea2kN86QuaTH3XZdUxf8uvckKVHw+82M1FifN/DmKBs
	n5lhIN7E/VtN0H8ctlCAzMnn5/lnBKUpN9bAFsnRzku5Wa8XRpm+gDGs89CHPQfmsuAY9zWGIKgBq
	HX1r1LTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAPt-00000000XyU-2iKW;
	Mon, 28 Sep 2026 12:25:09 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAPp-00000000Xx3-2FbA
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:25:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D17D320026F;
	Mon, 28 Sep 2026 14:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790598302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YL1/fS3TXxDdObBEWBWG76Cb3KbY19f7OBGnmz5q5no=;
	b=BFVGhTC0b338SVhWtfmxS89cJ3WqImNW1pcSVM4Kn+pF45jyaYL984KLlpoWT/O7VshB5/
	rcj01quF0+gktO8bhyhPdJ9q9z/byXHp+JfzKdfVt8GapdCyKrbZFfYMofH4qckTWcLEqd
	KvUgt/Iek7QJrLprE53TEeunV22cm4ZodBEiA9TNTTe32mIeVfypgqS5uUiH7QXrvqAZlI
	MsYwYlvoVtemS+pOumt27rLtwzDxZWOJ0G6g8tYdkq0deYEsflibrGaWIb8f85aLEbRjvo
	Hm4pfIVN8LF68kwSG24VN3JqbGOpp5mme3x2sZBZRLSI5obrjU7r7wfplNjEQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790598302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YL1/fS3TXxDdObBEWBWG76Cb3KbY19f7OBGnmz5q5no=;
	b=afgc18wIKbUZvc/qYb+65ponvRE05y8mo4YH8cMQzd3pOJyCBfvOKfXpvpUE/y8OVhjLos
	HrnARlLYQz1cKAhJeIw8uHZeNWPRD5iq/0guL2SWJkS0m/oEegtAEEz2ZaRoKtTw6rNBCl
	TK4P5XgrmxNlXeLonQ+6merfxtq751/n5ksj/N6wRMWM490FVJvD4nAmfnucUF14hTnj1N
	dXYODbxCtnh52LkR3NFcSQCoa9CYRRrDor56QLezh032GsgVfX2/2exVV12JA/SRlu7fdi
	z9tlmdtemYQyCVDOMzxLfdXTxDCnXoMwSSXTXG1HpAexjqnNSA8H66bImcc/OQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790598302; a=rsa-sha256;
	cv=none;
	b=RHipOVWfrVxB9Slt3Ehs2ZOKhh7K8EzDH9gjtSBfCPhXjsdEZ9P5rEL12b0ovGYK8s0aqp
	85/cTtCyU43biuUDaJ1Igvw3jDH4q1sSiGKuEz6eX+pF9dsfppG6HT+Y+E0LxysHgnz+1A
	Sg5HVOdLVn3eUDHlNgnUcff3Y+4jirkQLlVWtbAMHdHDjh6vTgKYJ/2IVAplXuvLRFQapd
	f8L684rIBJtqvSUy/BFEMPel20aCcshMMX3JKdVtENDyCMTHItcl8Q0sRg8VC7n3ogLwcw
	51RoKW8su0O2l5BWHnmkUrab/AKOosFq3vFVaPnE1ySN6aMzm0xLdJYGklV98g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBAPm-003Dty-2G;
	Mon, 28 Sep 2026 14:25:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 28 Sep 2026 14:25:02 +0200
Subject: [PATCH 2/2] PBL: add oneshot helper for sha384 and sha512
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260928-crypto-pbl-sha384-v1-2-bc7095590123@pengutronix.de>
References: <20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de>
In-Reply-To: <20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_052505_736040_3E03B171 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Similar to the oneshot helper for sha256, add helpers for
   sha384 and sha512. The helper functions don't use the ARMv8 Crypto Extensions,
    yet. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de> --- include/crypto/pbl-sha.h
    | 22 ++++++++++++++++++++++ 1 file changed, 22 insertions(+) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 53B1B2010E2
X-Stat-Signature: 1rysw9t3kfepdzszcrd3m8faeu4w4krt

Similar to the oneshot helper for sha256, add helpers for sha384 and
sha512.

The helper functions don't use the ARMv8 Crypto Extensions, yet.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/crypto/pbl-sha.h | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
index dbfb79647462..8a20e0a2b84b 100644
--- a/include/crypto/pbl-sha.h
+++ b/include/crypto/pbl-sha.h
@@ -28,7 +28,29 @@ int sha512_init(struct digest *desc);
 int sha512_update(struct digest *desc, const void *data, unsigned long len);
 int sha512_final(struct digest *desc, u8 *out);
 
+static inline void pbl_sha512(const void *buf, size_t len,
+			      u8 out[SHA512_DIGEST_SIZE])
+{
+	struct sha512_state state = { };
+	struct digest d = { .ctx = &state, .length = SHA512_DIGEST_SIZE };
+
+	sha512_init(&d);
+	sha512_update(&d, buf, len);
+	sha512_final(&d, out);
+}
+
 int sha384_init(struct digest *desc);
 int sha384_final(struct digest *desc, u8 *out);
 
+static inline void pbl_sha384(const void *buf, size_t len,
+			      u8 out[SHA384_DIGEST_SIZE])
+{
+	struct sha512_state state = { };
+	struct digest d = { .ctx = &state, .length = SHA384_DIGEST_SIZE };
+
+	sha384_init(&d);
+	sha512_update(&d, buf, len);
+	sha384_final(&d, out);
+}
+
 #endif /* __PBL-SHA_H_ */

-- 
2.47.3



