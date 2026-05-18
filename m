Delivery-date: Mon, 18 May 2026 12:50:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvYN-0016ar-03
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:50:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvYL-0008GK-A7
	for lore@pengutronix.de; Mon, 18 May 2026 12:50:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fc02iDbAq5JN9J5BOcbbhFRSKGwz0KW8VAgdvfx2g8A=; b=26IN13hh3jvxoirUtaBJNY5gsW
	6cXqngbgw+G18aN/6Dvawk7051TyPqK4DN5IIGSCNNy2myduvSorSFdI4ln3lbY889wWo+xngPRhL
	gZYkDW2LulcqNbfn7wAfc8kFVWuKsRnbD+RbfUW0/elEafuzdKjMIPv0bhyv+u5fpDohKaJafJEdf
	zGP9erjrI4bSnxoJf718dEbGI289wcjSA5q+xaK2TGHfzmDD6KLnJWrJuXAyGXUwnq75WAzlWq8vC
	u3xgWRhHGFmzhrvnrxvunMUDfNxNjXoXeEgXkDLe2klWj1+t7LSZmV9NhTv3a5jdG+X/9wzVyYV0B
	Ce5NIyRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOspz-0000000EgPF-35Zg;
	Mon, 18 May 2026 07:56:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOspv-0000000EgMG-1IRe
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 07:56:29 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wOsps-0003WR-HI; Mon, 18 May 2026 09:56:24 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 18 May 2026 09:56:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-barebox-port-ecc-v1-3-25509bd37030@pengutronix.de>
References: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
In-Reply-To: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Lukas Wunner <lukas@wunner.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, 
 Herbert Xu <herbert@gondor.apana.org.au>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2760; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=HU4tUq6HNMKqRoikPpV6RwACidRMFAz+wGs38thyiYQ=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjiOqa2N25B0D491/53C31v7Zmx3z+z6MD5aUU2Ir4zZ
 /NE1fHe7ShlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEzkjxAjw5L/n+ftaMzRLe7P
 Klq4YLbSuTMhocz/MqwjBX6vuye4rZDhn0prxhq3nxv9JdnW6jtYeM6w3M/Xyd3PlMrAt3bZpTd
 cLAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_005627_361775_15D9FF5A 
X-CRM114-Status: GOOD (  12.08  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] crypto: ecdsa - Harden against integer overflows in
 DIV_ROUND_UP()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Lukas Wunner <lukas@wunner.de>

Herbert notes that DIV_ROUND_UP() may overflow unnecessarily if an ecdsa
implementation's ->key_size() callback returns an unusually large value.
Herbert instead suggests (for a division by 8):

  X / 8 + !!(X & 7)

Based on this formula, introduce a generic DIV_ROUND_UP_POW2() macro and
use it in lieu of DIV_ROUND_UP() for ->key_size() return values.

Additionally, use the macro in ecc_digits_from_bytes(), whose "nbytes"
parameter is a ->key_size() return value in some instances, or a
user-specified ASN.1 length in the case of ecdsa_get_signature_rs().

Link: https://lore.kernel.org/r/Z3iElsILmoSu6FuC@gondor.apana.org.au/
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
(cherry picked from linux commit b16510a530d1e6ab9683f04f8fb34f2e0f538275)
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/ecc.c         |  4 ++--
 include/linux/math.h | 12 ++++++++++++
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index 01003d8a38..a228ae1a66 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -1,4 +1,4 @@
-// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=1dcf865d3bf5bff45e93cb2410911b3428dacb78
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=b16510a530d1e6ab9683f04f8fb34f2e0f538275
 /*
  * Copyright (c) 2013, 2014 Kenneth MacKay. All rights reserved.
  * Copyright (c) 2019 Vitaly Chikunov <vt@altlinux.org>
@@ -59,7 +59,7 @@ EXPORT_SYMBOL(ecc_get_curve);
 void ecc_digits_from_bytes(const u8 *in, unsigned int nbytes,
 			   u64 *out, unsigned int ndigits)
 {
-	int diff = ndigits - DIV_ROUND_UP(nbytes, sizeof(u64));
+	int diff = ndigits - DIV_ROUND_UP_POW2(nbytes, sizeof(u64));
 	unsigned int o = nbytes & 7;
 	__be64 msd = 0;
 
diff --git a/include/linux/math.h b/include/linux/math.h
index e09ecaeab6..c7198ddb68 100644
--- a/include/linux/math.h
+++ b/include/linux/math.h
@@ -33,6 +33,18 @@
  */
 #define round_down(x, y) ((x) & ~__round_mask(x, y))
 
+/**
+ * DIV_ROUND_UP_POW2 - divide and round up
+ * @n: numerator
+ * @d: denominator (must be a power of 2)
+ *
+ * Divides @n by @d and rounds up to next multiple of @d (which must be a power
+ * of 2). Avoids integer overflows that may occur with __KERNEL_DIV_ROUND_UP().
+ * Performance is roughly equivalent to __KERNEL_DIV_ROUND_UP().
+ */
+#define DIV_ROUND_UP_POW2(n, d) \
+	((n) / (d) + !!((n) & ((d) - 1)))
+
 #define DIV_ROUND_UP __KERNEL_DIV_ROUND_UP
 
 #define DIV_ROUND_DOWN_ULL(ll, d) \

-- 
2.54.0.129.g3edf2eeba9



