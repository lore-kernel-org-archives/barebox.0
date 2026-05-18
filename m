Delivery-date: Mon, 18 May 2026 10:00:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOstX-0013hP-1l
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 10:00:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOstW-0005KL-Qi
	for lore@pengutronix.de; Mon, 18 May 2026 10:00:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OqO7cP17EPiJ37lqcYE3Hyq+982dxyg13HbrAzmBWw4=; b=N3pGk+yJMM4ERWJBpEwOQ/LHcP
	s5mz190qJeZMjMBlBzt/6/xgRrBYfe6G78HPW+44Ip5oPOZYHC5H3+TNEFHGEyk7sfr7RZfCKU+U6
	xWbvknpG/199QDPDI8KYsyvPF37PRfFoK8S4s3ckSOrwjEAgMa6XSJneZdIlItK7ixLVQ7TCTdyWd
	dilOKtd7FU9xPp8d9ZSJc7OGrJmAynpYU7B4x6fXQs7B6BvqYIBkbkCqDTYOsm89Gm/jwQFajeg3f
	8t7sDTu+ARZOlWU5y4mp88/uHlFA2JaA5iqUxDDUovnYFc8NNqaE9jXhYAyQB4BvUTG2Q9qjeeuPd
	2iEkp3Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsq0-0000000EgPw-408f;
	Mon, 18 May 2026 07:56:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOspv-0000000EgMP-3FHN
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 07:56:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wOsps-0003WR-Li; Mon, 18 May 2026 09:56:24 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 18 May 2026 09:56:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-barebox-port-ecc-v1-4-25509bd37030@pengutronix.de>
References: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
In-Reply-To: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Lukas Wunner <lukas@wunner.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, Thorsten Blum <thorsten.blum@linux.dev>, 
 Herbert Xu <herbert@gondor.apana.org.au>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2397; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=jcQQvuapEHV56LzYCz70Uss+ttnYEh6VuJd3itHVsIY=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjiOqaWUKmVZT774OJpHp/4Q77/ELfyPic9f8sq7cpTQ
 V+vRHDc7ChlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAExkbQIjw6TJPV7z0i/zXL4x
 45xuhN7Ww9IWdi+fLv3zLuYc2wRNjzkM/yPbW6fkBM9Y7f3Q5Z1FWMtztebrVlNfzV89J+qkttr
 n4xwA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_005627_818397_B6F63EE6 
X-CRM114-Status: GOOD (  10.50  )
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
Subject: [PATCH 4/4] crypto: ecc - Streamline alloc_point and remove
 {alloc,free}_digits_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thorsten Blum <thorsten.blum@linux.dev>

Check 'ndigits' before allocating 'struct ecc_point' to return early if
needed. Inline the code from and remove ecc_alloc_digits_space() and
ecc_free_digits_space(), respectively.

Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
(cherry picked from linux commit c66e0a273f223fe38b8b72c034857622b0651482)
Reported-by: Lukas Wunner <lukas@wunner.de>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/ecc.c | 29 ++++++++++-------------------
 1 file changed, 10 insertions(+), 19 deletions(-)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index a228ae1a66..b6abdbee67 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -1,4 +1,4 @@
-// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=b16510a530d1e6ab9683f04f8fb34f2e0f538275
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=d6ea871d73abbb6a1e00e71ed5762e394d06cb2b
 /*
  * Copyright (c) 2013, 2014 Kenneth MacKay. All rights reserved.
  * Copyright (c) 2019 Vitaly Chikunov <vt@altlinux.org>
@@ -78,33 +78,24 @@ void ecc_digits_from_bytes(const u8 *in, unsigned int nbytes,
 }
 EXPORT_SYMBOL(ecc_digits_from_bytes);
 
-static u64 *ecc_alloc_digits_space(unsigned int ndigits)
+struct ecc_point *ecc_alloc_point(unsigned int ndigits)
 {
-	size_t len = ndigits * sizeof(u64);
+	struct ecc_point *p;
+	size_t ndigits_sz;
 
-	if (!len)
+	if (!ndigits)
 		return NULL;
 
-	return kmalloc(len, GFP_KERNEL);
-}
-
-static void ecc_free_digits_space(u64 *space)
-{
-	kfree_sensitive(space);
-}
-
-struct ecc_point *ecc_alloc_point(unsigned int ndigits)
-{
-	struct ecc_point *p = kmalloc(sizeof(*p), GFP_KERNEL);
-
+	p = kmalloc(sizeof(*p), GFP_KERNEL);
 	if (!p)
 		return NULL;
 
-	p->x = ecc_alloc_digits_space(ndigits);
+	ndigits_sz = ndigits * sizeof(u64);
+	p->x = kmalloc(ndigits_sz, GFP_KERNEL);
 	if (!p->x)
 		goto err_alloc_x;
 
-	p->y = ecc_alloc_digits_space(ndigits);
+	p->y = kmalloc(ndigits_sz, GFP_KERNEL);
 	if (!p->y)
 		goto err_alloc_y;
 
@@ -113,7 +104,7 @@ struct ecc_point *ecc_alloc_point(unsigned int ndigits)
 	return p;
 
 err_alloc_y:
-	ecc_free_digits_space(p->x);
+	kfree(p->x);
 err_alloc_x:
 	kfree(p);
 	return NULL;

-- 
2.54.0.129.g3edf2eeba9



