Delivery-date: Mon, 20 Oct 2025 14:59:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApU0-009ttA-1W
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTs-0001EU-6v
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PoE678UVY9SRjQ0jnisC3xLik331B7R4Cf1s9LOgbq0=; b=wg59elDc3GBBAEt9nfskL4yspX
	Za4wXiCBvUSgblS3ltz6O1ESEpCsKMRVt9O4/TQSihUpUADYu2pbN4A86XUYqdY3kJ0IWdJ8ZAUJU
	tMQvKAlEQ99SvRkPL0/WYYgu+IThRZAYwL4piuxZR4mQlZdm+vxiR18fTAY1F+qgTywABiyWOJfwE
	iF3XYES1Go2leQHXfTkyM59VY8dBBxnktQAGxw/jRa5J0Tq4SMCy6Rlyj7KjyyHltan9E0suTtRdO
	NxeqAvTD66HSLVjDMdGCYo4L8gMt8wyGnyNmyG5GqfqszqC/MbgPGBM9rNwBEK7WKlIwWuWTBUB4e
	b5XTHEKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApT7-0000000Dfsb-099L;
	Mon, 20 Oct 2025 12:58:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSu-0000000DfXn-1XTb
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=PoE678UVY9SRjQ0jnisC3xLik331B7R4Cf1s9LOgbq0=; b=kbb0+85+tYSImCkTMwRPHHb1GT
	z9W/PpG0ipSCaSPJe9EVW8Vebtp+zYub2Yyci9xDw9iDCZDEG9gEuOBv8IsZ8Sp+Ci096rTlqh1If
	VP6WkSrjPhePWLFzw3655OG+CnsB6Wux8uLDEeIQNKgh1OVpCppzPjsL9OZWJiknmtUHtR4d6mVuy
	O3CmBQsWo7o5jBAdoVVaFMUp+UDm9lNJqCJuyGetU1n+57WAZuskXnJk/becSSI+Uha0RPTMG+dKe
	Qe9wwhMJT1FjTkJJCXYxZ6E+QcujM8Zxx9atPEJSZF3WsOPRV6KKAjpEFp/mKV/sOsSrXdPWd+SEo
	9wB+iaNA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSn-00000007hm8-3kkX
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSd-0008DK-7K
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-004XTn-1D;
	Mon, 20 Oct 2025 13:30:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-0000000A67x-1GFZ;
	Mon, 20 Oct 2025 13:30:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Oct 2025 13:30:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-public-keys-const-v1-1-301de7918b06@pengutronix.de>
References: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
In-Reply-To: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760959859; l=2831;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=58lZUzdbAWwrMMFNzOYphe5QE1dN8+ZYEoyPny795Bc=;
 b=J71o4CGm/Blik6F9+6uURIUOyM5SYdR6CB4yDg80ptEjQ/gnLhk/mwWi9Bqagsp/Bdrs8BdZy
 aNJSJx5wIMABX7f0ifmRA36MYrGN5jS4p6RXUKgTcHM9HXaMoq61MVj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135815_201936_310340D2 
X-CRM114-Status: UNSURE (   9.54  )
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
Subject: [PATCH 1/5] public-keys: ecdsa: remove list in ecdsa keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a function to iterate over ecdsa keys. This is unused and
shouldn't be necessary as we have a function to iterate over public
keys. Remove the iterator and the list entry which gives us the
possibility to put ecdsa keys into the RO data section.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/ecdsa.c         | 18 ------------------
 include/crypto/ecdsa.h | 12 ------------
 2 files changed, 30 deletions(-)

diff --git a/crypto/ecdsa.c b/crypto/ecdsa.c
index 69c0accc9534b754a97080b6cf584b221037e821..6aaeff5c14634e3ada7319446f2f189c410a8e04 100644
--- a/crypto/ecdsa.c
+++ b/crypto/ecdsa.c
@@ -104,15 +104,6 @@ int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
 	return _ecdsa_verify(ctx, (void *)mhash, rh, sh);
 }
 
-static LIST_HEAD(ecdsa_keys);
-
-int ecdsa_key_add(struct ecdsa_public_key *key)
-{
-	list_add_tail(&key->list, &ecdsa_keys);
-
-	return 0;
-}
-
 struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
 {
 	struct ecdsa_public_key *new;
@@ -129,12 +120,3 @@ struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
 
 	return new;
 }
-
-const struct ecdsa_public_key *ecdsa_key_next(const struct ecdsa_public_key *prev)
-{
-	prev = list_prepare_entry(prev, &ecdsa_keys, list);
-	list_for_each_entry_continue(prev, &ecdsa_keys, list)
-		return prev;
-
-	return NULL;
-}
diff --git a/include/crypto/ecdsa.h b/include/crypto/ecdsa.h
index 2e2b359d96cfd4fef6878c7a0f3045d9dbad4100..3b6bb394d960839284213729a569f5ba5b7741b6 100644
--- a/include/crypto/ecdsa.h
+++ b/include/crypto/ecdsa.h
@@ -11,18 +11,11 @@ struct ecdsa_public_key {
 	const uint64_t *x;	/* x coordinate of public key */
 	const uint64_t *y;	/* y coordinate of public key */
 	unsigned int size_bits;	/* key size in bits, derived from curve name */
-	struct list_head list;
 };
 
-const struct ecdsa_public_key *ecdsa_key_next(const struct ecdsa_public_key *prev);
-
-#define for_each_ecdsa_key(key) \
-	for (key = ecdsa_key_next(NULL); key; key = ecdsa_key_next(key))
-
 #ifdef CONFIG_CRYPTO_ECDSA
 int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
 		 const uint32_t sig_len, const uint8_t *hash);
-int ecdsa_key_add(struct ecdsa_public_key *key);
 struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key);
 #else
 static inline int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t *sig,
@@ -31,11 +24,6 @@ static inline int ecdsa_verify(const struct ecdsa_public_key *key, const uint8_t
 	return -ENOSYS;
 }
 
-static inline int ecdsa_key_add(struct ecdsa_public_key *key)
-{
-	return -ENOSYS;
-}
-
 static inline struct ecdsa_public_key *ecdsa_key_dup(const struct ecdsa_public_key *key)
 {
 	return NULL;

-- 
2.47.3



