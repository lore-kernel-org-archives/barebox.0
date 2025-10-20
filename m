Delivery-date: Mon, 20 Oct 2025 14:59:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTg-009tpN-1S
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTa-0000sI-At
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UwJMBEO/v/tK1Fyv9jNhWgCoovOF9BVkjrfvp8gy5F4=; b=aA7QdGQRbDg6QcQ+k4zAHDACvW
	P1Zrfoogqsx7pxh3bPPsgp8/5XUF4rWzRLdovY7GN7iwwbDV9RH3Bql3tXDVl041q4emsdYQue3qi
	LnIvJL31OkVdX2Ms2i78/0TDmHQCGorCb+YzCgxtO75ymIIWWUo4G+5t9fmoattbVmYGQX4jcFfVI
	ydHAqsqzVrVZg+eTeBK+jG57uhyjM1IGDnLMZXt5JIT/+G4LbcLxeg5tbz7+gP9ogjPD9oQml/0S4
	DscHU3aQ7t5eugEYX83mXX2M4FO9/BcEjUyJsh6INFfh0VjCDxac5AAtaWuxp78F0lEKGhQUOmCOY
	/nNA/ryA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSq-0000000DfQR-1tZt;
	Mon, 20 Oct 2025 12:58:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSk-0000000DfF2-3ylq
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=UwJMBEO/v/tK1Fyv9jNhWgCoovOF9BVkjrfvp8gy5F4=; b=Xy9ngZ3FfpWsCt2/0+FTIHn+Gf
	6ibmoiezVsJrgMpY0OCZn1emzHKrr/3lfsjIBPe6ZSdgxBueBRJAwvCUoshJP82iE/hunLfdE0w8a
	T1f35R4TwRiBKbruzsr2BrRSYp6cS5r+jwR1O6CmDehfIZU6jhr6QIE2cn1xqyetTR4MYsTZqeTfr
	3aOjcpTJDLgFSaX/78Hy1G2amoHxYrV7dsUdPnnjUrMNjNkF47pn6ABeijivCQbx+USxNyqkEKe1T
	0xbHjusaw9XzBfqv0j7fm9dUguAQSqcUtz6UFbeXeky/Gh+GW60Xzhh0Ru91rR6VAY7zScnjNDTDD
	d9WspdHg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSe-00000007hVY-46dz
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSc-0008CR-0V
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-004XTq-1I;
	Mon, 20 Oct 2025 13:30:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-0000000A67x-1Lfx;
	Mon, 20 Oct 2025 13:30:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Oct 2025 13:31:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-public-keys-const-v1-4-301de7918b06@pengutronix.de>
References: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
In-Reply-To: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760959859; l=2202;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vFnYr6sUBuAVvpHAfbdUA/TJnS9PmsiecQaZmNWKdIE=;
 b=WxQNKjHCKEKGepWd/KajDz8EaOO+zYKvq68/KYsCQkkHziQ2AtJMoZuf+gr8MVLEik8NEAid6
 EJGqhPHXl6CDn4j1W0N+phTyb71dEwqp7dNDjrFqJC/X7q+ji/9Yk1l
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135806_240596_C8797520 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] public-keys: rsa: remove unused functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The functions to duplicate and free a rsa key are no longer used. Remove
them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/rsa.c         | 18 ------------------
 include/crypto/rsa.h |  8 --------
 2 files changed, 26 deletions(-)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index e4fc980f9187b49511d5b1a8e68d488944d9b483..ec5bd451158c29047cfd51eb64d3c38f4671e74d 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -447,24 +447,6 @@ struct public_key *rsa_of_read_key(struct device_node *node)
 	return err ? ERR_PTR(err) : key;
 }
 
-void rsa_key_free(struct rsa_public_key *key)
-{
-	free(key->modulus);
-	free(key->rr);
-	free(key);
-}
-
-struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
-{
-	struct rsa_public_key *new;
-
-	new = xmemdup(key, sizeof(*key));
-	new->modulus = xmemdup(key->modulus, key->len * sizeof(uint32_t));
-	new->rr = xmemdup(key->rr, key->len  * sizeof(uint32_t));
-
-	return new;
-}
-
 static void rsa_init_keys_of(void)
 {
 	struct device_node *sigs, *sig;
diff --git a/include/crypto/rsa.h b/include/crypto/rsa.h
index efc8fca152743482697bbca1dd48e59519275861..fce94df094f90359ef500088277a0c1bf9130c14 100644
--- a/include/crypto/rsa.h
+++ b/include/crypto/rsa.h
@@ -37,7 +37,6 @@ struct rsa_public_key {
 struct device_node;
 
 struct public_key *rsa_of_read_key(struct device_node *node);
-void rsa_key_free(struct rsa_public_key *key);
 
 #ifdef CONFIG_CRYPTO_RSA
 /**
@@ -55,8 +54,6 @@ void rsa_key_free(struct rsa_public_key *key);
 int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 			  const uint32_t sig_len, const uint8_t *hash,
 			  enum hash_algo algo);
-
-struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key);
 #else
 static inline int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 			  const uint32_t sig_len, const uint8_t *hash,
@@ -64,11 +61,6 @@ static inline int rsa_verify(const struct rsa_public_key *key, const uint8_t *si
 {
 	return -ENOSYS;
 }
-
-static inline struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
-{
-	return NULL;
-}
 #endif
 
 #endif

-- 
2.47.3



