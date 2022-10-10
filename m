Delivery-date: Mon, 10 Oct 2022 08:13:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2Q-0033g1-JE
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:13:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohm2N-0001D5-Ug
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:13:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h56F7opSjUk2mIsA+glYKXLXSWcfFWyfckOV/j4BVpk=; b=g8Hmmm1jkbaKZsxkBqx27blusn
	RyvcumlJmL9G3Oo4/XuBJouYWprgO8kT/qQGNh9deS1ddIQxjba0XSFr4rCoOGEyLWn5lH7TnrFXR
	kCjmYisBedrYW+DWz6Px10SYlrb8Sj5euu2rIO4YYwuX/l30IGdgEC80IBIKIWz3LYh7SADtAY+IW
	koCoCPNkn4snijJDNtEXFdlNbIjgs2QF6jev1DQE+JH6I+QAcqWxzHiNFD5fPmtjg+XVb3rH9tGub
	PUaHgRvmnVvcY1NnqZkwC1A2OuBci+lC1JJ2G8Xk7WYFCKw4wdrEaPMIvxgmNXFRC+dWnmnkLUHF4
	RQL2zZzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm19-00HAqz-On; Mon, 10 Oct 2022 06:11:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohm0m-00HAb6-4O
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:11:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-0000Yi-SQ; Mon, 10 Oct 2022 08:11:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0c-000dA8-88; Mon, 10 Oct 2022 08:11:26 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohm0a-008kB2-6c; Mon, 10 Oct 2022 08:11:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:11:20 +0200
Message-Id: <20221010061122.2084009-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
References: <20221010061122.2084009-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_231136_193714_AADB7EB4 
X-CRM114-Status: GOOD (  13.89  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/10] lib: random: add hwrng_get_crypto_bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have get_crypto_bytes to get access to hardware generated
randomness. barebox as EFI loader would provide a handle for each HWRNG,
so add a hwrng_get_crypto_bytes function that can be used to implement
the load-side protocol.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/hw_random.h |  6 +++++-
 include/stdlib.h          |  2 ++
 lib/random.c              | 25 ++++++++++++-------------
 3 files changed, 19 insertions(+), 14 deletions(-)

diff --git a/include/linux/hw_random.h b/include/linux/hw_random.h
index 116afd9721e5..e541abfa176e 100644
--- a/include/linux/hw_random.h
+++ b/include/linux/hw_random.h
@@ -36,12 +36,16 @@ struct hwrng {
 
 /* Register a new Hardware Random Number Generator driver. */
 int hwrng_register(struct device_d *dev, struct hwrng *rng);
-int hwrng_get_data(struct hwrng *rng, void *buffer, size_t size, int wait);
 
 #ifdef CONFIG_HWRNG
 struct hwrng *hwrng_get_first(void);
+int hwrng_get_data(struct hwrng *rng, void *buffer, size_t size, int wait);
 #else
 static inline struct hwrng *hwrng_get_first(void) { return ERR_PTR(-ENODEV); };
+static inline int hwrng_get_data(struct hwrng *rng, void *buffer, size_t size, int wait)
+{
+	return -ENODEV;
+}
 #endif
 
 void hwrng_unregister(struct hwrng *rng);
diff --git a/include/stdlib.h b/include/stdlib.h
index 8eb419e111f0..0305970557df 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -15,6 +15,8 @@ void srand(unsigned int seed);
 /* fill a buffer with pseudo-random data */
 void get_random_bytes(void *buf, int len);
 int get_crypto_bytes(void *buf, int len);
+struct hwrng;
+int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len);
 
 static inline u32 random32(void)
 {
diff --git a/lib/random.c b/lib/random.c
index fb3580f9c086..c6532df55249 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -34,17 +34,8 @@ void get_random_bytes(void *_buf, int len)
 		*buf++ = rand() % 256;
 }
 
-/**
- * get_crypto_bytes - get random numbers suitable for cryptographic needs.
- */
-static int _get_crypto_bytes(void *buf, int len)
+int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len)
 {
-	struct hwrng *rng;
-
-	rng = hwrng_get_first();
-	if (IS_ERR(rng))
-		return PTR_ERR(rng);
-
 	while (len) {
 		int bytes = hwrng_get_data(rng, buf, len, true);
 		if (!bytes)
@@ -60,13 +51,21 @@ static int _get_crypto_bytes(void *buf, int len)
 	return 0;
 }
 
+/**
+ * get_crypto_bytes - get random numbers suitable for cryptographic needs.
+ */
 int get_crypto_bytes(void *buf, int len)
 {
+	struct hwrng *rng;
 	int err;
 
-	err = _get_crypto_bytes(buf, len);
-	if (!err)
-		return 0;
+	rng = hwrng_get_first();
+	err = PTR_ERR_OR_ZERO(rng);
+	if (!err) {
+		err = hwrng_get_crypto_bytes(rng, buf, len);
+		if (!err)
+			return 0;
+	}
 
 	if (!IS_ENABLED(CONFIG_ALLOW_PRNG_FALLBACK)) {
 		pr_err("error: no HWRNG available!\n");
-- 
2.30.2



