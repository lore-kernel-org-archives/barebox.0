Delivery-date: Wed, 30 Sep 2026 10:30:29 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBpht-007zhM-2h
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 10:30:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 586AD2009BC
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 10:30:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="tXMS3N/Q";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Sf644SdO;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790757029; a=rsa-sha256;
	cv=pass;
	b=g1T6nXoPPEb+3KCjGBi/lX/NOFmhXCRc1qBl5eq3SW3XZiUHZLpZmqMfdHH0sTqD7UuEe+
	pk9bXFL1EWXtU1IFWQbDpGBcgUaEvrASLxYRhD5NXu5yEr67ecibQL72oBjAi6Z4yb9/Nq
	G65cJy9mQmCpWy5JRazEsS57s6pW8ZJ/7euAm78C0rnMbTtWPLNYNHbd8jpfGLyOvv86PW
	LL1aYC2XJq23lslF5OoUH3xnOlKfGFiHu4iO5Nz7PtvJDVpR+8tlu6QhwyIYjQjW3UAHYx
	3UcbdK6m3SrsqPnrjOu56zgkr9QrnibxfuUSuySeVZTeC+GaUXTR83cAQHOz6g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="tXMS3N/Q";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Sf644SdO;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790757029;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=jw10z/siIwArCGo3hYjW4DP/Y91fYl490aJdZV5e2/E=;
	b=IeKc2v+mRNsmYH2enxefb4liRF9lg9d7og8XOkdkbvaoy45LEO438gNBp37kxdi+4aFxm1
	N7Bs9RXrEu0qDOdaA8P2Ybtb6jzSh3Egx/VtgPy1FJiW/81qWNVkhOJXDj+oWQszuMkMlR
	F7tlYF/EADXVS+z78yJG0YEkOCBGEm2Qa8I55jLXgQW7vLW8I/udO2Z+C093sbH9sntR6a
	XdfZTp/qJot+n4S227D1aFY2fLJo2YlC7ULQ4h97aj2zQJdbm0y3IqoWxk3NNMQu7fC142
	QMAIT6Ar4Xw9VMijrBqfmh+Tx4eyNvH/5/RyPuAL6scKDsBoX+hJJ0PZUTuiuA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jw10z/siIwArCGo3hYjW4DP/Y91fYl490aJdZV5e2/E=; b=tXMS3N/QRSGU/3TRO1ZGvumlb4
	4qUOGeGL95GaJG84DSl/1PiaQOxKpi/IPOZFZSCg73elTXJhPxv9gIaDlmoKIcphbMM8v6T42Ypwl
	ujEl3tsPmm2s8O8UuNNT1asCvnC/I9P7j62aa4WsUlcknoNGHnH/9hb3mcD9CBPbareortakmFy1n
	LnjjMczZ4Sheybx7qTYVzrBkF/lsnYmhq1FrNdogflwWDqpQDLPYEiUy6/sYxJlIeHDJwymOCuwn8
	IPpiYZrjeUwFufG0Apn3sc4/coxGzGtjJvrss2ote8EslqB7a1qfSTs+f5Id613z78jGbsEVVpHHe
	2nWNG7BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgX-00000005Q9I-2CyI;
	Wed, 30 Sep 2026 08:29:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBpgU-00000005Q7F-0xdx
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 08:29:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DBA5A201700;
	Wed, 30 Sep 2026 10:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jw10z/siIwArCGo3hYjW4DP/Y91fYl490aJdZV5e2/E=;
	b=Sf644SdOBhZhM6+g7wPxjliGqzlFzw4tP+vIj5mxoMRSfgeRNX7qIgnM7Y4e0pyI1aA6hz
	HfOyNHCG6CBHOQ+4UJidQJIe21AfsU0pBEdrcJtbR4O7AGsYio7x2kU1eJORkoqzIt7bc1
	cVKXlyAAhSvV7CliiYCUosdJFF+l/At3+VLL4x2IDEDDj1D8VBkovMn+hpmq9KeNJuXlXe
	9YEkc7c4aZsBvEbxg+rhY9LLvSbfWPY6Fsr4Vp150Lgz5tnA7rbey1XlGZvg0WZo6lbi7O
	AF5c2elxcqo9tjOPmvA46Pk1reF8Es3pV2H0DrGmJwVd2kIq1oI4sWVNOXVLZQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790756938; a=rsa-sha256;
	cv=none;
	b=cUjVxWe8YqdxfQyf1ZdqZE5Izkh21qwN60VbdBP8XB16qRIsmwL3+YPprmWzUkSrSC3FA0
	6NDJ4eYXbPtP4iack4uqPV5BTchYPuGF8yuLBkbMxLu2R+EuG8fLQ+wgNIeT2Is6wDdbQi
	qonGG+nAIdGqvnVIezRlQzGj+U+UQ7ChU49DPOgw0QNsPPijnJdMKy3yQLpzzIR2jxgFTO
	nbj1CFsJ4Zj0jBa0zT7vpOEm4uWyN7gtw4LyRB0xJOOAZR3mGjuQ7dMykipxdkP89PTDpw
	NI6vk/6F7oqxMA63QyzSWbrhjyOcUa1/MlqNY/vCItw7GHzDybmnthwO/qQaaA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790756938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jw10z/siIwArCGo3hYjW4DP/Y91fYl490aJdZV5e2/E=;
	b=Y37tT9QA2FCAbY8VWPCMjbYWYPk1C83+EgPfToI8acuwdNO5x1qCxnCwrRosX3svmfWtWP
	gko+GZUba83hbdwu8jQKuqMMKVFWaPgfYn2cnUg8iMUzeG3dl1HPoKYxHA5wTtUfSxbv0w
	4pS6cFrbNrRH7jTebWop/KFc546hwol98mHmK/bFYZxFTfrUtMXYEnAUMr2QAV4yQ/eg1Z
	DLLNX1uSCoq9aDyud305SAQTaSsQ4GGjoG4AN3aIR5G2JPMwh6Rwphm3ZTa/HlqXFBy1wR
	Y6UDFOwAPbsTdGr7Ljp7cISZIYcPr5x67H9GDT/Pt/sACfSuUG6CBIhs3pNR5w==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBpgQ-003Wks-2b;
	Wed, 30 Sep 2026 10:28:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 30 Sep 2026 10:28:55 +0200
Subject: [PATCH v2 1/3] crypto: make sha384 and sha512 available in PBL
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260930-crypto-pbl-sha384-v2-1-1cedca8ce7c6@pengutronix.de>
References: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
In-Reply-To: <20260930-crypto-pbl-sha384-v2-0-1cedca8ce7c6@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_012902_661299_46BF4D75 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
X-Rspamd-Queue-Id: 586AD2009BC
X-Stat-Signature: 6y5tsdu3zgtgzyno9gpcs9mag9udiu8e

On Agilex 5 with VAB (Vendor Authorized Boot), the second stage boot
loader is verified with a sha384 checksum.

Make the sha384 and sha512 functions available in the PBL to be able to
use these functions for vendor authorized boot.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changes in v2:
- None
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



