Delivery-date: Fri, 06 Sep 2024 12:43:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWRN-001qvV-3D
	for lore@lore.pengutronix.de;
	Fri, 06 Sep 2024 12:43:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1smWRM-0003hd-Pq
	for lore@pengutronix.de; Fri, 06 Sep 2024 12:43:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fbeav2oovyXDcVFAU3S3xE/1tvdHM97fYpmxFkOiB4Y=; b=SXPY5gFd4IJJUom+yExU5brRrz
	0yZPU3Lm+BQlt7eD2K6fO7Mp4RRXtIERP3dUldS2p0wOFWXRZ6kpqBPgPiAbD19n7V+Vh5VlIBc5z
	8YMFT5nSyzoG3boK32l5l0CCGPG3e5MsaMauHlT3VIiyAKy+SeoEYdSG2zVwQ9Ya9wcOTOWpikSRD
	P8wCnxXk98quNizy06H0DQ1gYjLCqYctYXRR/IxzMolmmpjXHnd5VLC8LNxsETA0bqmSYvkMlkOax
	sUuRrOf8S1h48LV3w+cHi6gvDtbRF5x5q2SUeHqpGFfGMU3SilTkgR8ep1I8CfS2Hgo2HsF8g1DuD
	muFxNRZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWQv-0000000Bp6C-3wVQ;
	Fri, 06 Sep 2024 10:43:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWQs-0000000Bp4G-0veo
	for barebox@lists.infradead.org;
	Fri, 06 Sep 2024 10:43:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWQr-0003NT-2Z; Fri, 06 Sep 2024 12:43:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWQq-005vOQ-Lp; Fri, 06 Sep 2024 12:43:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1smWOF-009BBJ-0c;
	Fri, 06 Sep 2024 12:40:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  6 Sep 2024 12:40:25 +0200
Message-Id: <20240906104028.2187872-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240906104028.2187872-1-s.hauer@pengutronix.de>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_034314_297195_BF449121 
X-CRM114-Status: GOOD (  10.97  )
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
Subject: [PATCH v3 12/15] crypto: rsa: create static inline wrapper for rsa_verify()
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



