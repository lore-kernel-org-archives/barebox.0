Delivery-date: Mon, 20 Oct 2025 14:58:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTT-009tlI-35
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTL-0000ZD-AG
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qiCeIP9ZS0mIMy8qnSOA3gHbqkNk7UMt+qvP3294Xq4=; b=jjlTEP4UFEr843EYX3RSyqbalI
	AGZmWMDB0jekowtAu2XxTV5/qn9ppD9xhfmaeSpXmyp5AsJphYsGRppMu6nCGzQTNlUFfGN0IesiX
	sfEh7PsBMxmc1QtJpMWXSRufnh6JeFWxFHElcm50Bwy2xoV0TovdVc3T2jOyg9R4YRU9Tt4wn3AkV
	3Wj1cKTxI52U6PzDLUyV0MNsCW09RAdQU+GyUsxvVtyQt4RXZLUpplkD/BJQg/MrhNZl9LXQOQykf
	Mhi1hrzd1rXQFMzzFwxN3N6mFY/tlIB7WGDHapI7I9XbqqUhTCOM1gDOvFsOeQYEZR+AYQcQLUp0I
	jhalHBxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSj-0000000DfCt-0c85;
	Mon, 20 Oct 2025 12:58:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSd-0000000Df56-31MO
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSc-0008Cd-Bd
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-004XTp-1K;
	Mon, 20 Oct 2025 13:30:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAo6N-0000000A67x-1Kbx;
	Mon, 20 Oct 2025 13:30:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Oct 2025 13:31:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-public-keys-const-v1-3-301de7918b06@pengutronix.de>
References: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
In-Reply-To: <20251020-public-keys-const-v1-0-301de7918b06@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760959859; l=1817;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fiShSpXy6jCvCv69UH/OQVXU4tvyfz4ydRoE7MIc40o=;
 b=SRmoZLGuEhJqQRsmkA22KyvP8lC5is1PE1kMH4+Q06ZwSN5DJd6VUeysx8sHgeGcThddPutft
 1uCAgaSadGqDZEO60T1ahyML88LqKCAsrTNLvVYNkrlGet7k49EQuPC
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055803_766012_CD2E89B9 
X-CRM114-Status: GOOD (  11.18  )
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
Subject: [PATCH 3/5] public-keys: rsa: allow struct public_key to be const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The struct public_key fields will become const in the next step. Prepare
for this by rearranging rsa_of_read_key(): instead of assigning fields
to struct public_key and struct rsa_public_key and modifying them
afterwards, assign the initialized data to the (in future const) fields.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/rsa.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index 13b6553c950b033bd8940b0279bfb419f08b052a..e4fc980f9187b49511d5b1a8e68d488944d9b483 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -384,6 +384,7 @@ static void rsa_convert_big_endian(uint32_t *dst, const uint32_t *src, int len)
 struct public_key *rsa_of_read_key(struct device_node *node)
 {
 	const void *modulus, *rr;
+	void *brr, *bmodulus;
 	const uint64_t *public_exponent;
 	int length;
 	struct public_key *key;
@@ -394,7 +395,8 @@ struct public_key *rsa_of_read_key(struct device_node *node)
 		return ERR_PTR(-EINVAL);
 
 	key = xzalloc(sizeof(*key));
-	rsa = key->rsa = xzalloc(sizeof(*rsa));
+	rsa = xzalloc(sizeof(*rsa));
+	key->rsa = rsa;
 
 	key->key_name_hint = xstrdup(node->name + 4);
 
@@ -426,11 +428,14 @@ struct public_key *rsa_of_read_key(struct device_node *node)
 
 	rsa->len /= sizeof(uint32_t) * 8;
 
-	rsa->modulus = xzalloc(RSA_MAX_KEY_BITS / 8);
-	rsa->rr = xzalloc(RSA_MAX_KEY_BITS / 8);
+	bmodulus = xzalloc(RSA_MAX_KEY_BITS / 8);
+	brr = xzalloc(RSA_MAX_KEY_BITS / 8);
 
-	rsa_convert_big_endian(rsa->modulus, modulus, rsa->len);
-	rsa_convert_big_endian(rsa->rr, rr, rsa->len);
+	rsa_convert_big_endian(bmodulus, modulus, rsa->len);
+	rsa->modulus = bmodulus;
+
+	rsa_convert_big_endian(brr, rr, rsa->len);
+	rsa->rr = brr;
 
 	err = 0;
 out:

-- 
2.47.3



