Delivery-date: Sun, 25 Oct 2026 09:56:35 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKu1r-0032Wb-0a
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 09:56:35 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D223D201709
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 09:56:34 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A+4Dkr9M;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792918595; a=rsa-sha256;
	cv=none;
	b=gLoc5WAX0HRR0hA55XlOWha4LBGVs3C5G7Lt0b1bfQDFkgV5GMrgN9kbowZdFZa0B4ETPI
	4/cbqJe0NG+olfInujPr6AfRJbjp+TH77qRh/V2DQ34GorvvWLRsvteV8eC/99ocXxnH4f
	3gl8jcVFYqDttik2OPKilxco+R5BNhR3tHiCX4KhmvMrx2ZpBQ3UfH6Zaf3jPrdyYgwHOe
	wWsUQLjayF/EO74zvX+wzKqWt2LuR9gnL4aobFgOkrk75VscWIZYWdZbJs2gRgMBStg2JD
	kfA5yGWwKZUTTt68NRGo6hfcv31i4wij9ODezxAFfIhCwHIGWBy5ShjWgBJb6w==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A+4Dkr9M;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792918595;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=WTLxMtLQ0N8NB2NYIim0glS4FMRomCKkcRv6FFZuFYM=;
	b=RqsDJ/HlaAoPPcqWEb3bGUhJgpZ+euQGC07sNv4oCIaLJ0IWYQK5wbcOFQyF6OEcfBqSEm
	jV7UEPh51NW26TNEkCdeH9akUX1DvZSRJEUWpwg1Ns/5TKJwKv2HIga83eeuDtRT/X+Bpw
	Ic5WsUVKseRJ4uWmydAqpTVWRAWka/3TeUfe1Dt9uGR9GpE8S/xRQU8Ta/NszGrNmWNMfk
	hxuiflV5GXfQCFLzC7K0tYn/TNldO4piPwWP/5pZwuiNPbAOVOv6xw+MjOJiogyUseEeQe
	2iwJIHyOmt0varz7e7vVd78DNkQHQvIFxTNduYsFS7LRihhIOKi06siCm/CNBA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=WTLxMtLQ0N8NB2NYIim0glS4FMRomCKkcRv6FFZuFYM=; b=A+4Dkr9MMmsGQD
	A7dwGd7HppxhYTk4rbzfivMWbDZleim5PJaAQCeR87sTTCQZSnQQZPNrDdJUPXigEzspkiK/pJG1b
	0lSyVPTkXSkOB2bEuuWjHq0dJeQZ8eSnOWyUkKU93NB+s1X4goXMymX2aOVRIdlM3VhmKkXMmXylL
	JGVZVfvN2+JigNdLMGbUXeh4i86h8zFwNym7zlbbHh/YVxYhwOET0WtEiXognEl2RRoVEtg8n1i0Z
	FH3+WMuTB8Wax9wzYWlnUfxO6/GSgxez5WO30zw0dOEiHMyMLL3Q8GUHU6CDUNukPcwcfrACXgErQ
	f0+x0X/7rglpgxDayVkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKu0P-00000000uSw-05W8;
	Sun, 25 Oct 2026 08:55:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKu0K-00000000uRY-1vlJ
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 08:55:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xKu0G-0003nj-5I; Sun, 25 Oct 2026 09:54:56 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/3] crypto: ecc - Handle exceptional points in Shamir multiplication
Date: Sun, 25 Oct 2026 09:54:46 +0100
Message-ID: <20261025085451.2871310-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261025085451.2871310-1-a.fatoum@barebox.org>
References: <20261025085451.2871310-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_015500_515673_95388F37 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This is an adaptation of the corresponding Linux commit: |
    commit 6fd70bc8bc01a578c7728b7bd1cb5689c62cc5b7 (HEAD) | Author: Jérémy
    Jean <Jeremy.Jean@oss.cyber.gouv.fr> | AuthorDate: Sat Sep 26 20:43:26 2026
    +0000 | | crypto: ecc - Handle exceptional point [...] 
 
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
X-Rspamd-Queue-Id: D223D201709
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[barebox.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-0.995];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 9weqd3s3xnd1j4mk4xid8e38s4ay8gym

This is an adaptation of the corresponding Linux commit:

| commit 6fd70bc8bc01a578c7728b7bd1cb5689c62cc5b7 (HEAD)
| Author:     Jérémy Jean <Jeremy.Jean@oss.cyber.gouv.fr>
| AuthorDate: Sat Sep 26 20:43:26 2026 +0000
|
|     crypto: ecc - Handle exceptional points in Shamir multiplication
|
|     Shamir multiplication mishandles equal points, opposite points and the
|     point at infinity. This rejects valid ECDSA signatures and can accept
|     invalid digest/signature tuples when the public key is G or -G. The
|     kernel incorrectly rejects 16 valid signatures from Wycheproof.
|
|     Handle doubling, cancellation and the point at infinity in precomputation
|     and accumulation. Add regression tests for P-256 ECDSA and 256/512-bit
|     EC-RDSA. The valid vectors are Wycheproof P1363 secp256r1/SHA-256 cases
|     60 and 210 converted to X9.62, two constructed ECDSA signatures for
|     Q = +/-G with k = 2, and six constructed EC-RDSA signatures for Q = G,
|     -G and -2G. Also add two invalid P-256 digest/signature tuples for
|     Q = +/-G that must return -EKEYREJECTED.
|
|     Fixes: 0d7a78643f69 ("crypto: ecrdsa - add EC-RDSA (GOST 34.10) algorithm")
|     Cc: stable@vger.kernel.org
|     Assisted-by: LLM
|     Signed-off-by: Jérémy Jean <Jeremy.Jean@oss.cyber.gouv.fr>
|     Reviewed-by: Ignat Korchagin <ignat@linux.win>
|     Reviewed-by: Stefan Berger <stefanb@linux.ibm.com>
|     Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

barebox has no testmgr, so only the crypto/ecc.c hunks are ported.

Fixes: d2cc4152f483 ("Add elliptic curve cryptography (ECC) helper functions")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 crypto/ecc.c | 35 ++++++++++++++++++++++++++++++++---
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index 01cb1ae88ead..00ffd18cbf52 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -1,4 +1,4 @@
-// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=9deef9c5b8fcc702e69252bef46735d8b0d1f70c
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=6fd70bc8bc01a578c7728b7bd1cb5689c62cc5b7
 /*
  * Copyright (c) 2013, 2014 Kenneth MacKay. All rights reserved.
  * Copyright (c) 2019 Vitaly Chikunov <vt@altlinux.org>
@@ -1411,9 +1411,22 @@ static void ecc_point_add(const struct ecc_point *result,
 	vli_set(result->x, q->x, ndigits);
 	vli_set(result->y, q->y, ndigits);
 	vli_mod_sub(z, result->x, p->x, curve->p, ndigits);
+	if (vli_is_zero(z, ndigits)) {
+		if (vli_cmp(p->y, q->y, ndigits)) {
+			/* P + (-P) is the point at infinity. */
+			vli_clear(result->x, ndigits);
+			vli_clear(result->y, ndigits);
+			return;
+		}
+		/* The co-Z addition formula does not handle P == Q. */
+		z[0] = 1;
+		ecc_point_double_jacobian(result->x, result->y, z, curve);
+		goto out;
+	}
 	vli_set(px, p->x, ndigits);
 	vli_set(py, p->y, ndigits);
 	xycz_add(px, py, result->x, result->y, curve);
+out:
 	vli_mod_inv(z, z, curve->p, ndigits);
 	apply_z(result->x, result->y, z, curve);
 }
@@ -1455,22 +1468,38 @@ void ecc_point_mult_shamir(const struct ecc_point *result,
 	vli_set(rx, point->x, ndigits);
 	vli_set(ry, point->y, ndigits);
 	vli_clear(z + 1, ndigits - 1);
-	z[0] = 1;
+	z[0] = !ecc_point_is_zero(point);
 
 	for (--i; i >= 0; i--) {
 		ecc_point_double_jacobian(rx, ry, z, curve);
 		idx = !!vli_test_bit(u1, i);
 		idx |= (!!vli_test_bit(u2, i)) << 1;
 		point = points[idx];
-		if (point) {
+		if (point && !ecc_point_is_zero(point)) {
 			u64 tx[ECC_MAX_DIGITS];
 			u64 ty[ECC_MAX_DIGITS];
 			u64 tz[ECC_MAX_DIGITS];
 
+			if (vli_is_zero(z, ndigits)) {
+				/* Adding to infinity starts a new accumulator. */
+				vli_set(rx, point->x, ndigits);
+				vli_set(ry, point->y, ndigits);
+				z[0] = 1;
+				continue;
+			}
 			vli_set(tx, point->x, ndigits);
 			vli_set(ty, point->y, ndigits);
 			apply_z(tx, ty, z, curve);
 			vli_mod_sub(tz, rx, tx, curve->p, ndigits);
+			if (vli_is_zero(tz, ndigits)) {
+				if (!vli_cmp(ry, ty, ndigits))
+					ecc_point_double_jacobian(rx, ry, z,
+								  curve);
+				else
+					/* Adding opposite points yields infinity. */
+					vli_clear(z, ndigits);
+				continue;
+			}
 			xycz_add(tx, ty, rx, ry, curve);
 			vli_mod_mult_fast(z, z, tz, curve);
 		}
-- 
2.47.3



