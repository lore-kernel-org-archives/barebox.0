Delivery-date: Mon, 18 May 2026 09:59:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOssg-0013gO-0T
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 09:59:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOssf-00057Q-Da
	for lore@pengutronix.de; Mon, 18 May 2026 09:59:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vCWQ+lEFF7IphCNaC5JfJsubd31YNw2tRbun+clXv78=; b=ky7W9sP3bS43Jx2HvITR85dODc
	I/Q9Wzo+Boao5bEJj88vo/oU1LMfsQf3DPy20qmGwTfLSb+YX3r3YECDVEIfEILqmzFLWWFD6rTl/
	BKuuU4AgFNfG6RBCIpXxIXWprtmQS/pxp2hVcHDBC892VcR82HqTVKtgU+Rr3GqC0Eiu5RBEw31IC
	NN+IZigexat53V8Bb8eUUhThoepjV/KT11ByYEEuVE6r+139gyXngKflhHE+fbRg+tax+mMhRkPIf
	2Lkqqu7/GW5abJ1M/PYTFw7mpOip1QHZEneeTr8D66FDszDfijIKOUPj4yf1plLpQmZ35zGrMtGCI
	GXPcAakQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsq0-0000000EgPl-3Uon;
	Mon, 18 May 2026 07:56:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOspv-0000000EgMK-1lDH
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 07:56:29 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wOsps-0003WR-Dh; Mon, 18 May 2026 09:56:24 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 18 May 2026 09:56:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-barebox-port-ecc-v1-2-25509bd37030@pengutronix.de>
References: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
In-Reply-To: <20260518-barebox-port-ecc-v1-0-25509bd37030@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Lukas Wunner <lukas@wunner.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, Stefan Berger <stefanb@linux.ibm.com>, 
 Venkat Rao Bagalkote <venkat88@linux.vnet.ibm.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2016; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=ITid57dSDhlJUQeIRE/pVY1Iqp45rBuKh4EGwpBEpgc=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjiOqY6Q3dj9deNJrnOGwR/Hz0Rva3HY/Gc2Kh3JmKq0
 3g0D2070lHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZgI7ylGhh+pcVe4GEruc6Wf
 eef5/YhPwP1NnLveF0gxeIQY394az87IMFVslSP3gfnvxO6vzSuSmV3iZixVPp1BZu+x3+ddm4p
 VOQE=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_005627_462581_1E6E57CA 
X-CRM114-Status: GOOD (  11.35  )
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
Subject: [PATCH 2/4] crypto: ecc - Fix off-by-one missing to clear most
 significant digit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Stefan Berger <stefanb@linux.ibm.com>

Fix an off-by-one error where the most significant digit was not
initialized leading to signature verification failures by the testmgr.

Example: If a curve requires ndigits (=9) and diff (=2) indicates that
2 digits need to be set to zero then start with digit 'ndigits - diff' (=7)
and clear 'diff' digits starting from there, so 7 and 8.

Reported-by: Venkat Rao Bagalkote <venkat88@linux.vnet.ibm.com>
Closes: https://lore.kernel.org/linux-crypto/619bc2de-b18a-4939-a652-9ca886bf6349@linux.ibm.com/T/#m045d8812409ce233c17fcdb8b88b6629c671f9f4
Fixes: 2fd2a82ccbfc ("crypto: ecdsa - Use ecc_digits_from_bytes to create hash digits array")
Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
Tested-by: Venkat Rao Bagalkote <venkat88@linux.vnet.ibm.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
(cherry picked from linux commit 1dcf865d3bf5bff45e93cb2410911b3428dacb78)
Reported-by: Lukas Wunner <lukas@wunner.de>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 crypto/ecc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index 77068ebfbd..01003d8a38 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -1,4 +1,4 @@
-// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=c6ab5c915da460c0397960af3c308386c3f3247b
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/crypto/ecc.c?id=1dcf865d3bf5bff45e93cb2410911b3428dacb78
 /*
  * Copyright (c) 2013, 2014 Kenneth MacKay. All rights reserved.
  * Copyright (c) 2019 Vitaly Chikunov <vt@altlinux.org>
@@ -66,7 +66,7 @@ void ecc_digits_from_bytes(const u8 *in, unsigned int nbytes,
 	/* diff > 0: not enough input bytes: set most significant digits to 0 */
 	if (diff > 0) {
 		ndigits -= diff;
-		memset(&out[ndigits - 1], 0, diff * sizeof(u64));
+		memset(&out[ndigits], 0, diff * sizeof(u64));
 	}
 
 	if (o) {

-- 
2.54.0.129.g3edf2eeba9



