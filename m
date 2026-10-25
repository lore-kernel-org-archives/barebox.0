Delivery-date: Sun, 25 Oct 2026 09:56:26 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKu1i-0032Vf-0F
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 09:56:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ABC97200F61
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 09:56:25 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hLUvgmTm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792918586; a=rsa-sha256;
	cv=none;
	b=SxTyhp/56aVwpOj3SlrQhiDuRykdKItGJQDeCmsy5Qp9GSjX8P+0DLfm3KyxSQ9OcOTBiA
	T7Ox9JfFXZbK2BrWZr06uZp2DXFWDpKbesTyVM5ePJCb4MFEcG169Y/VjCUaU7V5yZa83E
	QSpGRZGj5a15gCjTc8pAYBueuR9w8/VLcFFskvaPAfa6RRYHsxxh/QP9OsPrfuXsk8tXTy
	Drf4QYriiQ0isymtkbluKVNHMLH9i4lJ/ZrMupeUvDSoby/p2z6aMw0XRNYYWGFjJtdEJI
	cv+myG9NLn4RavKIZjFA5wLWopPMy5RBYZGJItODUtZTszocJK/Qmal83HPgRA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hLUvgmTm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792918586;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=4I2l8panlXNWQXum1Um7GWCG1cdG1mu6+0G6T3KsxuY=;
	b=UNC6MVzu6YgIFiodd41mhLuum7JbOlX4gn7K2tW/eqtp6nwfCZ3C8dXRuVCFWy9p8OyvZ1
	ErfTXhe1/zqJDcLfWsNDudx8QVCuWyMbxnBwnYqelW4ZVEXCHNThjSk17rebre+drHi1Tq
	1kKjiZi5ZbBpudZWmLtj06WNwKom+w2YybMNqZ6hOhGb8Z5JKZJBCPBGEntbRz2uSzV3CQ
	DjDic1Zw+ci9coq4S2Om0AxupTCoGcG8bYkPyh3OSBeLJkJ240VDMdYscua6r3VUOtZHr+
	fNq963uBj5hhpz3rOsHIfyBSC45EgBxxm+NU1jRO8D4XAWM6JucSKMTfF8b/qw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=4I2l8panlXNWQXum1Um7GWCG1cdG1mu6+0G6T3KsxuY=; b=hLUvgmTm4B6WHo5HD9Bh7jbfNJ
	Vg8psscrMaImlJJd9DxgZCY1A1IjufqfS79Yc39b7hU2heImSyQUlbgGf9JKZa9dm8md3+AA4Tncb
	fKpzk4Nr/6lky4mrXS2PxU2Wy7HpZhnF9guwYfrrXDqjH+PiTwuEu9ATtDBPKnQdLWr2TQT67rlot
	kRVr49ymPdQJmspRb09mnVUXqHJQuVrNVewzAL8dp13xDbVPteDM7h3WmXzo6i9jzMfScSNyfoU+L
	kY+NMllX1IdwxJYe4IdyvFHmTwcR7wC8Hsh48C0zl2udfNSB6IKsrMyrzmo3oVeJ+FDrCVd6bwDtf
	3lyU/NqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKu0P-00000000uT2-0Ry2;
	Sun, 25 Oct 2026 08:55:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKu0K-00000000uRW-1vkI
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 08:55:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xKu0F-0003nj-M9; Sun, 25 Oct 2026 09:54:55 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: jre@pengutronix.de,
	Lukas Wunner <lukas@wunner.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/3] crypto: ecc - Fix carry overflow in vli multiplication
Date: Sun, 25 Oct 2026 09:54:44 +0100
Message-ID: <20261025085451.2871310-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_015500_510015_48782B3F 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This is an adoption of the corresponding Linux commit: | commit
    27b536a2ec8e2f85a0380c2d13c9ecbc7aaab406 | | crypto: ecc - Fix carry overflow
    in vli multiplication | | The carry flag calculation fails when r01.m_high
    is saturated | (0xFFFFFFFFFFFFFFFF) an [...] 
 
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
X-Rspamd-Queue-Id: ABC97200F61
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[barebox.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: cdissdsgczgcqdui9bfhz7ogkbh7n5zy

This is an adoption of the corresponding Linux commit:

| commit 27b536a2ec8e2f85a0380c2d13c9ecbc7aaab406
|
|     crypto: ecc - Fix carry overflow in vli multiplication
|
|     The carry flag calculation fails when r01.m_high is saturated
|     (0xFFFFFFFFFFFFFFFF) and addition of lower bits overflows.
|
|     The condition (r01.m_high < product.m_high) doesn't handle the case
|     where r01.m_high == product.m_high and an additional carry exists
|     from lower-bit overflow.
|
|     When commit 3c4b23901a0c ("crypto: ecdh - Add ECDH software support")
|     introduced crypto/ecc.c, it split the muladd() function in the
|     micro-ecc library into separate mul_64_64() and add_128_128() helpers.
|     It seems the check got lost in translation.
|
|     Add proper handling for this boundary by accounting for the carry
|     from the lower addition.
|
|     Fixes: 3c4b23901a0c ("crypto: ecdh - Add ECDH software support")
|     Signed-off-by: Anastasia Tishchenko <sv3iry@gmail.com>
|     Cc: stable@vger.kernel.org # v4.8+
|     Reviewed-by: Lukas Wunner <lukas@wunner.de>
|     Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

Fixes: d2cc4152f483 ("Add elliptic curve cryptography (ECC) helper functions")
Reported-by: Lukas Wunner <lukas@wunner.de>
Closes: https://lore.kernel.org/barebox/agS_XfdyvX_1q9dt@wunner.de/
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 crypto/ecc.c | 33 +++++++++++++++++++++------------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index b6abdbee67be..67faae0a68f9 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -1,4 +1,4 @@
-// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=d6ea871d73abbb6a1e00e71ed5762e394d06cb2b
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=27b536a2ec8e2f85a0380c2d13c9ecbc7aaab406
 /*
  * Copyright (c) 2013, 2014 Kenneth MacKay. All rights reserved.
  * Copyright (c) 2019 Vitaly Chikunov <vt@altlinux.org>
@@ -381,14 +381,26 @@ static uint128_t mul_64_64(u64 left, u64 right)
 	return result;
 }
 
-static uint128_t add_128_128(uint128_t a, uint128_t b)
+/* Calculate addition with overflow checking. Returns true on wrap-around,
+ * false otherwise.
+ */
+static bool check_add_128_128_overflow(uint128_t *result, uint128_t a,
+				       uint128_t b)
 {
-	uint128_t result;
+	bool carry;
 
-	result.m_low = a.m_low + b.m_low;
-	result.m_high = a.m_high + b.m_high + (result.m_low < a.m_low);
+	result->m_low = a.m_low + b.m_low;
+	carry = (result->m_low < a.m_low);
 
-	return result;
+	result->m_high = a.m_high + b.m_high + carry;
+
+	/* Using constant-time bitwise arithmetic to prevent timing
+	 * side-channels.
+	 */
+	carry = (result->m_high < a.m_high) |
+		((result->m_high == a.m_high) & carry);
+
+	return carry;
 }
 
 static void vli_mult(u64 *result, const u64 *left, const u64 *right,
@@ -413,9 +425,7 @@ static void vli_mult(u64 *result, const u64 *left, const u64 *right,
 			uint128_t product;
 
 			product = mul_64_64(left[i], right[k - i]);
-
-			r01 = add_128_128(r01, product);
-			r2 += (r01.m_high < product.m_high);
+			r2 += check_add_128_128_overflow(&r01, r01, product);
 		}
 
 		result[k] = r01.m_low;
@@ -438,7 +448,7 @@ static void vli_umult(u64 *result, const u64 *left, u32 right,
 		uint128_t product;
 
 		product = mul_64_64(left[k], right);
-		r01 = add_128_128(r01, product);
+		check_add_128_128_overflow(&r01, r01, product);
 		/* no carry */
 		result[k] = r01.m_low;
 		r01.m_low = r01.m_high;
@@ -475,8 +485,7 @@ static void vli_square(u64 *result, const u64 *left, unsigned int ndigits)
 				product.m_low <<= 1;
 			}
 
-			r01 = add_128_128(r01, product);
-			r2 += (r01.m_high < product.m_high);
+			r2 += check_add_128_128_overflow(&r01, r01, product);
 		}
 
 		result[k] = r01.m_low;
-- 
2.47.3



