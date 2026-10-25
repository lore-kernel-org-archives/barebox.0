Delivery-date: Sun, 25 Oct 2026 09:56:31 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKu1m-0032WF-2l
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 09:56:31 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A9C70200F61
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 09:56:30 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aQNVyfOK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792918591; a=rsa-sha256;
	cv=none;
	b=amQww29E0SxwOpKxxhCsqplOG85HVHA2uErWXv/o/QhJJKdftfGkg3XCTl7lRAJmIdNyjJ
	ZivdVWlJWbTvV/UUSXTo9FGqOQ3lAZIMAj2lF0HER7lzISYTVOLp8J7xtmL1qBhDmSCq/R
	SQw3p9q41MG330LzCi0a51lkQyflIXVoybceg4obnhBeafhgRkwq9QdcwC2eN3Ycwi9p0F
	Tx9VO75h0MGAGby2rvldafbqdZFClt/KFOpPhnAEsf3Fn3Lreq+tYVGR3yvNCeA2sT2cV/
	zEijrc90bPHxSDF7A4HXY+BR4A3FgcmUZdaOoBnzs51YPijYc0a4oVuGLdb8Cw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aQNVyfOK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792918591;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VguDXWTyxU/nmrGOlNL1tybbK4QjbiqH9TM3X+eXBAY=;
	b=AQExDVn02u8qLHqBCoH+1IrPmw+n18uP1He74Zf80itPJJ0UY7RuvFecI4nzBn/xFICZXu
	ml4ngAAByKhLaIilYzSB39Tksl4YOWlCwwc8tGSAAWq1lGd85KXAR0LJEiQCdtR6+pZSan
	QK8Pt2HCD/ecnAWfKLkeP89srRhqYfAnWgTRWHRTZvzNFY2lTXmEzRKKeCBcZQBrrRft5Z
	sQ5wBL5tZXF1jIdXSb4bLslEvfuTihbbLI6+LPe/kws7bWC2CfRWDH5PsA44w2tYWWREi3
	EXrFweTEaFLLTXgsi/Wao3AhDXms0t8PyiHVdfr1pcbQOvXmrHH/34AiCZLuVw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=VguDXWTyxU/nmrGOlNL1tybbK4QjbiqH9TM3X+eXBAY=; b=aQNVyfOKRqe6Le
	OYa5U1DMb+nGJivVSlZB3V+FNosL0S+AP8kqBTqS5aLIeN0rMbsYpQVVQ8L07J9XT3KV6tYtbRSt+
	MDanyoIlPSuStgIePQOzeTbpGE8ox8RPjazgfIwHGypdpP54gRVQHjpUYnh57AAmR5gT4ZAUxaVNR
	UKYmJzxct2YSEwv3g8YjqjaI4k90MCgPXq2ncc2b9A97rsDY6YAdWkOBHUIcjq4qfBd91y+9YTkkC
	a5u+CfFV0oRge/lui7zvpQ7pPI0EhGIYMBogWteCDVnuLRAe0zszvLsCdQhOmk68inB/SUbb2x9jq
	oQdqO5CDU1JcXIi2Cr3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKu0P-00000000uTB-0l9q;
	Sun, 25 Oct 2026 08:55:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKu0K-00000000uRX-1w5I
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 08:55:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xKu0F-0003nj-Tg; Sun, 25 Oct 2026 09:54:56 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/3] crypto: ecc - Optimize vli additive operations using compiler builtins
Date: Sun, 25 Oct 2026 09:54:45 +0100
Message-ID: <20261025085451.2871310-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261025085451.2871310-1-a.fatoum@barebox.org>
References: <20261025085451.2871310-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_015500_514759_4D67E3F2 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This is an adoption of the corresponding Linux commit: | commit
    9deef9c5b8fcc702e69252bef46735d8b0d1f70c | Author: Fabian Blatter <fabianblatter09@gmail.com>
    | AuthorDate: Sun Jun 7 13:24:35 2026 +0200 | | crypto: ecc - Optimize vli
    additive operations us [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A9C70200F61
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: 411r6mc1wrwdf1pdudqa6cccwfak9nx9

This is an adoption of the corresponding Linux commit:

| commit 9deef9c5b8fcc702e69252bef46735d8b0d1f70c
| Author:     Fabian Blatter <fabianblatter09@gmail.com>
| AuthorDate: Sun Jun 7 13:24:35 2026 +0200
|
|     crypto: ecc - Optimize vli additive operations using compiler builtins
|
|     Replace the software carry flag emulation with compiler builtins.
|
|     Even the newest compilers struggle with taking advantage of the
|     hardware carry flag. Compiler builtins allow the compiler to
|     much more easily achieve this while still remaining constant-time.
|
|     This yields an approximately 6-7% performance improvement
|     on the ecc_gen_privkey, ecc_make_pub_key and crypto_ecdh_shared_secret
|     functions on x86_64 on all curve sizes.
|
|     Additionally, the code becomes much more readable.
|
|     Signed-off-by: Fabian Blatter <fabianblatter09@gmail.com>
|     Reviewed-by: Stefan Berger <stefanb@linux.ibm.com>
|     Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

We take this mainly to stay in sync with Linux, so the Origin-URL can
follow along with the next fix.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 crypto/ecc.c | 100 +++++++++++++++++++++++++++++++--------------------
 1 file changed, 61 insertions(+), 39 deletions(-)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index 67faae0a68f9..01cb1ae88ead 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -1,4 +1,4 @@
-// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=27b536a2ec8e2f85a0380c2d13c9ecbc7aaab406
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=9deef9c5b8fcc702e69252bef46735d8b0d1f70c
 /*
  * Copyright (c) 2013, 2014 Kenneth MacKay. All rights reserved.
  * Copyright (c) 2019 Vitaly Chikunov <vt@altlinux.org>
@@ -267,6 +267,48 @@ static void vli_rshift1(u64 *vli, unsigned int ndigits)
 	}
 }
 
+#ifdef __has_builtin
+#if __has_builtin(__builtin_addcll)
+#define USE_BUILTIN_ADDC
+#endif
+#endif
+
+/* Computes result = left + right + carry_in and updates carry_out */
+static inline void add_carry(u64 left, u64 right, u64 *result, u64 carry_in,
+			     u64 *carry_out)
+{
+#ifdef USE_BUILTIN_ADDC
+	*result = __builtin_addcll(left, right, carry_in, carry_out);
+#else
+	u64 sum1, sum2;
+	u64 c1 = __builtin_uaddll_overflow(left, right, &sum1);
+	u64 c2 = __builtin_uaddll_overflow(sum1, carry_in, &sum2);
+	*result = sum2;
+	*carry_out = c1 | c2;
+#endif
+}
+
+#ifdef __has_builtin
+#if __has_builtin(__builtin_subcll)
+#define USE_BUILTIN_SUBC
+#endif
+#endif
+
+/* Computes result = left - right - borrow_in and updates borrow_out */
+static inline void sub_borrow(u64 left, u64 right, u64 *result, u64 borrow_in,
+			      u64 *borrow_out)
+{
+#ifdef USE_BUILTIN_SUBC
+	*result = __builtin_subcll(left, right, borrow_in, borrow_out);
+#else
+	u64 diff1, diff2;
+	u64 b1 = __builtin_usubll_overflow(left, right, &diff1);
+	u64 b2 = __builtin_usubll_overflow(diff1, borrow_in, &diff2);
+	*result = diff2;
+	*borrow_out = b1 | b2;
+#endif
+}
+
 /* Computes result = left + right, returning carry. Can modify in place. */
 static u64 vli_add(u64 *result, const u64 *left, const u64 *right,
 		   unsigned int ndigits)
@@ -274,15 +316,8 @@ static u64 vli_add(u64 *result, const u64 *left, const u64 *right,
 	u64 carry = 0;
 	int i;
 
-	for (i = 0; i < ndigits; i++) {
-		u64 sum;
-
-		sum = left[i] + right[i] + carry;
-		if (sum != left[i])
-			carry = (sum < left[i]);
-
-		result[i] = sum;
-	}
+	for (i = 0; i < ndigits; i++)
+		add_carry(left[i], right[i], &result[i], carry, &carry);
 
 	return carry;
 }
@@ -291,40 +326,29 @@ static u64 vli_add(u64 *result, const u64 *left, const u64 *right,
 static u64 vli_uadd(u64 *result, const u64 *left, u64 right,
 		    unsigned int ndigits)
 {
-	u64 carry = right;
+	u64 carry;
 	int i;
 
-	for (i = 0; i < ndigits; i++) {
-		u64 sum;
+	if (ndigits == 0)
+		return right;
 
-		sum = left[i] + carry;
-		if (sum != left[i])
-			carry = (sum < left[i]);
-		else
-			carry = !!carry;
+	carry = __builtin_uaddll_overflow(left[0], right, &result[0]);
 
-		result[i] = sum;
-	}
+	for (i = 1; i < ndigits; i++)
+		carry = __builtin_uaddll_overflow(left[i], carry, &result[i]);
 
 	return carry;
 }
 
 /* Computes result = left - right, returning borrow. Can modify in place. */
 u64 vli_sub(u64 *result, const u64 *left, const u64 *right,
-		   unsigned int ndigits)
+	    unsigned int ndigits)
 {
 	u64 borrow = 0;
 	int i;
 
-	for (i = 0; i < ndigits; i++) {
-		u64 diff;
-
-		diff = left[i] - right[i] - borrow;
-		if (diff != left[i])
-			borrow = (diff > left[i]);
-
-		result[i] = diff;
-	}
+	for (i = 0; i < ndigits; i++)
+		sub_borrow(left[i], right[i], &result[i], borrow, &borrow);
 
 	return borrow;
 }
@@ -332,20 +356,18 @@ EXPORT_SYMBOL(vli_sub);
 
 /* Computes result = left - right, returning borrow. Can modify in place. */
 static u64 vli_usub(u64 *result, const u64 *left, u64 right,
-	     unsigned int ndigits)
+		    unsigned int ndigits)
 {
-	u64 borrow = right;
+	u64 borrow;
 	int i;
 
-	for (i = 0; i < ndigits; i++) {
-		u64 diff;
+	if (ndigits == 0)
+		return right;
 
-		diff = left[i] - borrow;
-		if (diff != left[i])
-			borrow = (diff > left[i]);
+	borrow = __builtin_usubll_overflow(left[0], right, &result[0]);
 
-		result[i] = diff;
-	}
+	for (i = 1; i < ndigits; i++)
+		borrow = __builtin_usubll_overflow(left[i], borrow, &result[i]);
 
 	return borrow;
 }
-- 
2.47.3



