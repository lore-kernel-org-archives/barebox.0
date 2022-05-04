Delivery-date: Wed, 04 May 2022 15:17:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEsr-001g7O-FR
	for lore@lore.pengutronix.de; Wed, 04 May 2022 15:17:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmEsp-0001qk-Bo
	for lore@pengutronix.de; Wed, 04 May 2022 15:17:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqzrXyOw+cMHZcRVgQQ4yfj7GoqV7g08PNdzKKWxC6Y=; b=OYXZx7ajZVSSmh
	VAqkQGv0RwGTg5KokwDAfXHg41BCl88lBnO5/4zKw/WzcTviX402Vh9IfSOxiE/fOYSUbXSJNEiXs
	mQ09f0JBDB0sL//v1p8KmkpGmArq0XeqGFpwq+ChEN3KX81XUs4bzxUSJ7qfNl7+ZsaMBKjFSFg6X
	szd0nV78m6fcntw2Um7TPl7m0fjgmCnJbfAN+mKDcH7JEu8grmp/0IuJgH/bk4adL90TPgujYP9S5
	xQeU08k58M6fLAtO2hlMV7NIkmroH89bRkW+F3vuOQvzYXBC23LjDt2MCrvZQzNMtVQoOC6j/a9sM
	gtR0NvaHswDduwrAKBwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmErI-00AzGz-4y; Wed, 04 May 2022 13:16:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEpl-00AybH-N4
 for barebox@lists.infradead.org; Wed, 04 May 2022 13:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-00010a-7J; Wed, 04 May 2022 15:14:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpg-000Jqk-SA; Wed, 04 May 2022 15:14:19 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nmEpd-00GEi5-Lc; Wed, 04 May 2022 15:14:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  4 May 2022 15:14:14 +0200
Message-Id: <20220504131416.3869736-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220504131416.3869736-1-s.hauer@pengutronix.de>
References: <20220504131416.3869736-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_061425_969510_635E9E9E 
X-CRM114-Status: GOOD (  13.03  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/8] rsa: Add pr_fmt and use pr_debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add pr_fmt to print more context and use pr_debug consistently.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/rsa.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index 2eeb9984b1..6d23ecb11c 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -5,6 +5,7 @@
  *
  * SPDX-License-Identifier:	GPL-2.0+
  */
+#define pr_fmt(fmt) "rsa: " fmt
 
 #include <common.h>
 #include <malloc.h>
@@ -184,8 +185,8 @@ static int pow_mod(const struct rsa_public_key *key, void *__inout)
 
 	/* Sanity check for stack size - key->len is in 32-bit words */
 	if (key->len > RSA_MAX_KEY_BITS / 32) {
-		debug("RSA key words %u exceeds maximum %d\n", key->len,
-		      RSA_MAX_KEY_BITS / 32);
+		pr_debug("RSA key words %u exceeds maximum %d\n", key->len,
+			 RSA_MAX_KEY_BITS / 32);
 		return -EINVAL;
 	}
 
@@ -199,13 +200,13 @@ static int pow_mod(const struct rsa_public_key *key, void *__inout)
 		return -EINVAL;
 
 	if (k < 2) {
-		debug("Public exponent is too short (%d bits, minimum 2)\n",
-		      k);
+		pr_debug("Public exponent is too short (%d bits, minimum 2)\n",
+			 k);
 		return -EINVAL;
 	}
 
 	if (!is_public_exponent_bit_set(key, 0)) {
-		debug("LSB of RSA public exponent must be set.\n");
+		pr_debug("LSB of RSA public exponent must be set.\n");
 		return -EINVAL;
 	}
 
@@ -317,7 +318,7 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 		return -EOPNOTSUPP;
 
 	if (sig_len != (key->len * sizeof(uint32_t))) {
-		debug("Signature is of incorrect length %u, should be %zu\n", sig_len,
+		pr_debug("Signature is of incorrect length %u, should be %zu\n", sig_len,
 				key->len * sizeof(uint32_t));
 		ret = -EINVAL;
 		goto out_free_digest;
@@ -325,8 +326,8 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 
 	/* Sanity check for stack size */
 	if (sig_len > RSA_MAX_SIG_BITS / 8) {
-		debug("Signature length %u exceeds maximum %d\n", sig_len,
-		      RSA_MAX_SIG_BITS / 8);
+		pr_debug("Signature length %u exceeds maximum %d\n", sig_len,
+			 RSA_MAX_SIG_BITS / 8);
 		ret = -EINVAL;
 		goto out_free_digest;
 	}
@@ -408,15 +409,15 @@ struct rsa_public_key *rsa_of_read_key(struct device_node *node)
 	rr = of_get_property(node, "rsa,r-squared", NULL);
 
 	if (!key->len || !modulus || !rr) {
-		debug("%s: Missing RSA key info", __func__);
+		pr_debug("%s: Missing RSA key info", __func__);
 		err = -EFAULT;
 		goto out;
 	}
 
 	/* Sanity check for stack size */
 	if (key->len > RSA_MAX_KEY_BITS || key->len < RSA_MIN_KEY_BITS) {
-		debug("RSA key bits %u outside allowed range %d..%d\n",
-		      key->len, RSA_MIN_KEY_BITS, RSA_MAX_KEY_BITS);
+		pr_debug("RSA key bits %u outside allowed range %d..%d\n",
+			 key->len, RSA_MIN_KEY_BITS, RSA_MAX_KEY_BITS);
 		err = -EFAULT;
 		goto out;
 	}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

