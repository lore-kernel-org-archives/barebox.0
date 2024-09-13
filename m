Delivery-date: Fri, 13 Sep 2024 10:28:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1fB-0043YZ-1F
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 10:28:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp1f9-0001E7-Ok
	for lore@pengutronix.de; Fri, 13 Sep 2024 10:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fbeav2oovyXDcVFAU3S3xE/1tvdHM97fYpmxFkOiB4Y=; b=BsVpAG4q1w9Ah4hCX/UCE2hAhP
	q0o80FvIzakMDvuVNZxixbDuSSwCWUMidKutKtLqgh6K4VITIydERvCCC/ff2/fvGpxXyJWg7mpJE
	OHUzY0MXYj87q/qYW64iN/LDVKR/XWcu120FrYyzFk/w+MAjLZ3IUkkzhb3RfC06JugEiBRHo6MYP
	kRTMNpdVddTVPNOtj5El5EuNP4O9ZgpnOb9ucS+JBpQTNn03S4BDnxerFHp3VKcVR7A4TVWfZb+N0
	NHhaF6JXSnKBFNvzgKJJpRYJG+dQLcpsUjFyeXAE6wx69xWvtOGpE09v2ax4rjOBBsCT1x5+PC8YP
	2T3RruEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1eb-0000000FKbn-3TQx;
	Fri, 13 Sep 2024 08:27:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp1eY-0000000FKZb-0IzX
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 08:27:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-0000o1-H0; Fri, 13 Sep 2024 10:27:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1eW-007ZzE-3r; Fri, 13 Sep 2024 10:27:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sp1DC-006w1Z-0u;
	Fri, 13 Sep 2024 09:59:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 13 Sep 2024 09:59:21 +0200
Message-Id: <20240913075924.1652866-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240913075924.1652866-1-s.hauer@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_012742_129607_04E4BF99 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 13/16] crypto: rsa: create static inline wrapper for rsa_verify()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rsa_verify() is called from generic code, so provide a static inline
no-op wrapper used when RSA support is disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/rsa.h | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/include/rsa.h b/include/rsa.h
index ef03a925b8..efc8fca152 100644
--- a/include/rsa.h
+++ b/include/rsa.h
@@ -31,6 +31,15 @@ struct rsa_public_key {
 	uint64_t exponent;	/* public exponent */
 };
 
+/* This is the maximum signature length that we support, in bits */
+#define RSA_MAX_SIG_BITS	4096
+
+struct device_node;
+
+struct public_key *rsa_of_read_key(struct device_node *node);
+void rsa_key_free(struct rsa_public_key *key);
+
+#ifdef CONFIG_CRYPTO_RSA
 /**
  * rsa_verify() - Verify a signature against some data
  *
@@ -47,18 +56,16 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 			  const uint32_t sig_len, const uint8_t *hash,
 			  enum hash_algo algo);
 
-/* This is the maximum signature length that we support, in bits */
-#define RSA_MAX_SIG_BITS	4096
-
-struct device_node;
-
-struct public_key *rsa_of_read_key(struct device_node *node);
-void rsa_key_free(struct rsa_public_key *key);
-
-#ifdef CONFIG_CRYPTO_RSA
 struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key);
 #else
-static inline struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key);
+static inline int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
+			  const uint32_t sig_len, const uint8_t *hash,
+			  enum hash_algo algo)
+{
+	return -ENOSYS;
+}
+
+static inline struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
 {
 	return NULL;
 }
-- 
2.39.2



