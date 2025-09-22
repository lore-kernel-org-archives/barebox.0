Delivery-date: Mon, 22 Sep 2025 16:16:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0hLT-005yve-05
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 16:16:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0hLR-0006ap-UV
	for lore@pengutronix.de; Mon, 22 Sep 2025 16:16:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7TTXwGgTq+P3Ie3pcyzxmK89jqsXtyCJLHxdblxPBj0=; b=003PRluqvyMPEb6BjztsS18V7y
	wqzy85ahh/r5yoxH93qF2iU9ul4ohW9E3/NuXT9gLjbBqeN8r+LWHOYv1Z0hX4hdF3IDvokn8qXBH
	TjYHRxrxChPtzS9PmebQ8j8K+oN0hbfTRHxFA6UeFAUQt4d1AcB4ZHOeXcU23ytLzXkKRx8oykxAo
	X5vxnsp7jaY+r+6FxsZmGZ1kMH815CJgDVqRYpEXd/RZ9P1RkYKuJDqqXvals2dJiAM6sY1wCB0yY
	N/Jo4RmSytOw7sef5Rn4r0qOh9B3+LTY99Nne+VXnNVcMaRsj9vESRQXd9mnlbr5iqYm7Psgk6gqF
	hNjyhLyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0hL0-0000000AdFy-2XEj;
	Mon, 22 Sep 2025 14:16:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0hKy-0000000AdFa-1ALV
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 14:16:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0hKw-0006Tf-8q; Mon, 22 Sep 2025 16:16:14 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0hKw-002bqv-0H;
	Mon, 22 Sep 2025 16:16:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0hKv-0000000B1Hr-48dA;
	Mon, 22 Sep 2025 16:16:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Sep 2025 16:16:11 +0200
Message-ID: <20250922141613.2626411-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_071616_313659_E5F8D3A1 
X-CRM114-Status: GOOD (  10.77  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: ecc: drop unused curve25519 definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ecc_get_curve25519 is used in the kernel only to support the hisilicon
hpre driver and can't be used for general purpose like the NIST curves
defined in ecc_curve_defs.h.

In barebox, the function is fully unused, so drop it to prevent
confusion.

Reported-by: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/ecc.c               |  7 -------
 crypto/ecc_curve_defs.h    | 18 ------------------
 include/crypto/ecc_curve.h |  7 -------
 3 files changed, 32 deletions(-)

diff --git a/crypto/ecc.c b/crypto/ecc.c
index b90fe0e74809..c3d71627a64a 100644
--- a/crypto/ecc.c
+++ b/crypto/ecc.c
@@ -38,13 +38,6 @@ typedef struct {
 	u64 m_high;
 } uint128_t;
 
-/* Returns curv25519 curve param */
-const struct ecc_curve *ecc_get_curve25519(void)
-{
-	return &ecc_25519;
-}
-EXPORT_SYMBOL(ecc_get_curve25519);
-
 const struct ecc_curve *ecc_get_curve(unsigned int curve_id)
 {
 	switch (curve_id) {
diff --git a/crypto/ecc_curve_defs.h b/crypto/ecc_curve_defs.h
index 0ecade7d02f5..6867fe50e81b 100644
--- a/crypto/ecc_curve_defs.h
+++ b/crypto/ecc_curve_defs.h
@@ -134,22 +134,4 @@ static struct ecc_curve nist_p521 = {
 	.b = nist_p521_b
 };
 
-/* curve25519 */
-static u64 curve25519_g_x[] = { 0x0000000000000009, 0x0000000000000000,
-				0x0000000000000000, 0x0000000000000000 };
-static u64 curve25519_p[] = { 0xffffffffffffffed, 0xffffffffffffffff,
-				0xffffffffffffffff, 0x7fffffffffffffff };
-static u64 curve25519_a[] = { 0x000000000001DB41, 0x0000000000000000,
-				0x0000000000000000, 0x0000000000000000 };
-static const struct ecc_curve ecc_25519 = {
-	.name = "curve25519",
-	.nbits = 255,
-	.g = {
-		.x = curve25519_g_x,
-		.ndigits = 4,
-	},
-	.p = curve25519_p,
-	.a = curve25519_a,
-};
-
 #endif
diff --git a/include/crypto/ecc_curve.h b/include/crypto/ecc_curve.h
index 7d90c5e82266..4ffb9fd8d228 100644
--- a/include/crypto/ecc_curve.h
+++ b/include/crypto/ecc_curve.h
@@ -52,11 +52,4 @@ struct ecc_curve {
  */
 const struct ecc_curve *ecc_get_curve(unsigned int curve_id);
 
-/**
- * ecc_get_curve25519() - get curve25519 curve;
- *
- * Returns curve25519
- */
-const struct ecc_curve *ecc_get_curve25519(void);
-
 #endif
-- 
2.47.3



