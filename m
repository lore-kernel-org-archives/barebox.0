Delivery-date: Mon, 28 Sep 2026 14:25:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAQH-007Hwe-1X
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:25:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ED1282001F2
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:25:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AeIVQW1z;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZRvh3av1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790598333;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=KpppSmKvLGupASiZJNNRzub5kTYyvWozSPbC0qj1B5I=;
	b=Aa3g664VHT1Faqd/s6Clu6fNXNpXQzyd1zWnxel3USoU98+ZKO8P15QR4MYs406+qX/L3O
	rphEn+1FPIozGZMlrqu+KpS3vF1VAYVESEHRiJApy4zx6M6ow4Ec7vKVnCnijacV5pokRD
	MysdAuM2PGwJiQXKnJ8s6iOCB32u1c+bI0B9xU4T2PrxATFbs7s+euXBxFxgnXy9i7z5bt
	wEPR8zg8300KI/eux/buqo44J+iy4aOd6iwmXDE5WpCG32EeWrSQbX1W+q0zudxugfy9Bi
	38qiC/wMgeHfTxdM/bw1Tm0VNbo4d3Q9vW6xOEnvx9cwlSe5qSFW7/Kw+3QAXA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790598333; a=rsa-sha256;
	cv=pass;
	b=D1H7Xc5lJgFQ625RxyAe67lk40CFiURThgvoExtNE4DCJ4DjJzO2TNghMqnXwum0JlVAda
	fjNIlC5AcdlLN+t0lYNv22EYay6113N1e00AVUUGa4778KuCzm66G132PAtqIVbKNJz2RU
	P6bVErrZITJ/bGDogSGWf5AjHcF9o107SOFwut3FURHJpFpe4EAuFisiTkKC5JQ5dRpTkI
	kvJABS0l/aYwqsxyXPNDw9YPpzrjkR3GbXppZYW3hon+vf4nIsUAhlkZZRMDr4ZWtb9/OM
	GV0x2uiUUbAq4V+kxjMWyDJm0wsl6978GcGseE2eO6rdxhoz+FFv1y5ayjaVWg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AeIVQW1z;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZRvh3av1;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KpppSmKvLGupASiZJNNRzub5kTYyvWozSPbC0qj1B5I=; b=AeIVQW1zfkQmtmo76fqzO6/LJf
	qugMPU7YZxBYl1nbD6gnd2LIXV+W4vAHc1SGotWHx7+cx3UW0Vms5VZWAWuBz2ki+eM23Cjbv74Ho
	p9l082b53FRUB56rcMqTe0lZAs3Y7t5fYvcfjtzFQbeLA83reh839Dnd5ybrMSq7q3h0rIhg/ds59
	V25PZm8mZfbcpbqhN1Hg4UBMoB5XbwmfXsmJSM81M1N+32EiCLrSJa5bdTV5n0gjmHedonFMrP2mi
	CMxoi51xXEJVz6G5jnNeey3I9XZvSyFXRSSTdJSBrSCwlVJvSdELNMww4tZxZ+aIXrKunC8vmxNz2
	gugI7QUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAPs-00000000Xy7-23nF;
	Mon, 28 Sep 2026 12:25:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAPp-00000000Xx2-1bQX
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:25:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B69A42001F2;
	Mon, 28 Sep 2026 14:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790598302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KpppSmKvLGupASiZJNNRzub5kTYyvWozSPbC0qj1B5I=;
	b=ZRvh3av1YBCiqceNe76NjhOJmdXTjM42/ldBS6rkpNBs/8zc+x3xQkVUKIBoa+OBVpoNF2
	kvoPXHgrY62iv5hQth+CTVzweyBXUGRArOnqxdMvCa25Eb0MP183dyVGZh9f1Lt2vbwgjZ
	sNKHKdWsuEPps1tlEmoUNynor6HHBnCItVlcM3iY1K3se8Ep5S6yJKYn/lbArOsD58XWiT
	WrHTv45cj8SjsVES5v6PZ1XfmmzHS2+Fypos5Rajj5R5ualO3oY+P3qGJMgzgvWKVzJitN
	rFyTBRbyady6kW31fsnUMlT/2mzr8XqdvKu9IpErAGglfQei5d5pV3hn3+Y0DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790598302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KpppSmKvLGupASiZJNNRzub5kTYyvWozSPbC0qj1B5I=;
	b=H9WxKyRDBUo55CEQSSHRPXTwB4TJQvgbiCfoV5Q8TeGnxuXeHi9oNQpMLSluq7w41eo+5R
	ElH2/rJDEDH2T9CGHsbjJ65lfF/PDrs2zho/ukoTLAugDZRQ9rbEQsecyCrrMxzofw/klr
	e4nESpGus1PQdvDg1KN+sG4Bv0YhQeTv5ON376B6WFAu9tLUngg+PUHj58GCYqs8TCgonw
	O3apff482nZlEuQeC2twjgjHrqrP6CNxNYklKLIG/sMOYo1+LJyM7t2XeJH1UpGxH+m7nZ
	xAAJ5MiL4IUybtTk4eI3+/klVrWfOhW6hmQ1SHR4f7Aw+8LEMyx3YJLD3hyHEw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790598302; a=rsa-sha256;
	cv=none;
	b=gvLwEeL1DBNPuAEo0bVODq3vl01kngCxp/1FqEF6flwcOJEOPeSwiVM950F94dDO/z3Bod
	QsKHwxMy1+slM47wkv/0Nw+yKWQ/f0nUbrpc03S5KPC6XhsoMaal01soMx9cVDHmzhvBFp
	RUjf1NtVm6zdX/dEWe4cMaXX1w/hbsg0WkCJs0/nLR8ps+BEeGJhwjjdQYKS7gChCZCTVs
	Ws9ErEfYOICdIco6b+5sqltwfCc/3eocUI9/uOKMBmEl8QUIUQH7nCXYT7o5ex3bxcrDRk
	hCkPntYNHSohvkE6Ejt/ZJpDLAp6JRPyIU0vwI+S74pH3eBOJsuXTm2hdLgTLQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBAPm-003Dty-28;
	Mon, 28 Sep 2026 14:25:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 28 Sep 2026 14:25:01 +0200
Subject: [PATCH 1/2] crypto: make sha384 and sha512 available in PBL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260928-crypto-pbl-sha384-v1-1-bc7095590123@pengutronix.de>
References: <20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de>
In-Reply-To: <20260928-crypto-pbl-sha384-v1-0-bc7095590123@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_052505_574946_9EEE26A5 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Agilex 5 with VAB (Vendor Authorized Boot), the second
   stage boot loader is verified with a sha384 checksum. Make the sha384 and
   sha512 functions available in the PBL to be able to use these functions for
    vendor authorized boot. 
 
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
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
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
X-Rspamd-Queue-Id: ED1282001F2
X-Stat-Signature: d83zkjwqqgncsn6saq1gejompb6cbxw4

On Agilex 5 with VAB (Vendor Authorized Boot), the second stage boot
loader is verified with a sha384 checksum.

Make the sha384 and sha512 functions available in the PBL to be able to
use these functions for vendor authorized boot.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 crypto/Makefile          |  1 +
 crypto/sha4.c            | 11 ++++++-----
 include/crypto/pbl-sha.h |  7 +++++++
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index 2ac023c3e2fd..6f745a883123 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_DIGEST_SHA256_GENERIC)	+= sha2.o
 pbl-y					+= sha2.o digest.o
 obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
 obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
+pbl-y					+= sha4.o
 obj-pbl-y	+= memneq.o
 
 obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
diff --git a/crypto/sha4.c b/crypto/sha4.c
index 8c94f5011dc2..c700c1a37756 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -20,6 +20,7 @@
 
 #include <crypto/sha.h>
 #include <crypto/internal.h>
+#include <crypto/pbl-sha.h>
 
 static inline u64 Ch(u64 x, u64 y, u64 z)
 {
@@ -126,7 +127,7 @@ sha512_transform(u64 *state, const u8 *input)
 	state[4] += e; state[5] += f; state[6] += g; state[7] += h;
 }
 
-static int
+int
 sha512_init(struct digest *desc)
 {
 	struct sha512_state *sctx = digest_ctx(desc);
@@ -143,7 +144,7 @@ sha512_init(struct digest *desc)
 	return 0;
 }
 
-static int sha384_init(struct digest *desc)
+int sha384_init(struct digest *desc)
 {
 	struct sha512_state *sctx = digest_ctx(desc);
 	sctx->state[0] = SHA384_H0;
@@ -159,7 +160,7 @@ static int sha384_init(struct digest *desc)
 	return 0;
 }
 
-static int sha512_update(struct digest *desc, const void *in,
+int sha512_update(struct digest *desc, const void *in,
 				unsigned long len)
 {
 	struct sha512_state *sctx = digest_ctx(desc);
@@ -195,7 +196,7 @@ static int sha512_update(struct digest *desc, const void *in,
 	return 0;
 }
 
-static int sha512_final(struct digest *desc, u8 *hash)
+int sha512_final(struct digest *desc, u8 *hash)
 {
 	struct sha512_state *sctx = digest_ctx(desc);
         static u8 padding[128] = { 0x80, };
@@ -226,7 +227,7 @@ static int sha512_final(struct digest *desc, u8 *hash)
 	return 0;
 }
 
-static int sha384_final(struct digest *desc, u8 *hash)
+int sha384_final(struct digest *desc, u8 *hash)
 {
 	u8 D[64];
 
diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
index 3ccd5151e1a6..dbfb79647462 100644
--- a/include/crypto/pbl-sha.h
+++ b/include/crypto/pbl-sha.h
@@ -24,4 +24,11 @@ static inline int pbl_sha256_ce(const void *buf, size_t len, u8 out[SHA256_DIGES
 }
 #endif
 
+int sha512_init(struct digest *desc);
+int sha512_update(struct digest *desc, const void *data, unsigned long len);
+int sha512_final(struct digest *desc, u8 *out);
+
+int sha384_init(struct digest *desc);
+int sha384_final(struct digest *desc, u8 *out);
+
 #endif /* __PBL-SHA_H_ */

-- 
2.47.3



