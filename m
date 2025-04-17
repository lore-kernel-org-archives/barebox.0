Delivery-date: Thu, 17 Apr 2025 09:06:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5JKD-001mMS-10
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 09:06:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5JKC-0000a9-K8
	for lore@pengutronix.de; Thu, 17 Apr 2025 09:06:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1FQrPmoJdy/EMXAIanxZiuhQy+V2+PRax7XbFm4sfP8=; b=VCknB8iMMM9cUdY6UrJL/TS/4w
	AAHlVSidSSJHpNFYuz0jEXjbNOS3V/TgwRqwp3OaDu6JYdIwZmIcI5uWI2Rbn2BR4TSbxX4t5uijW
	roXc8f2EyxQT8RgkKe6kKmtwQKp0ZnnLaEWURUyu+YrXi3QlcxZuVFUW6DSa3wCFtoDAQYaXZG7PP
	gBPv0WyYt/V3lEby8fWpnPuurhEYuGK3C1TBkBkwtRFZueN038Vwk6dqU3bBbtx+3s3Ztzn0HXdwc
	ZIuaIaxR3oJPb8mXl+B4tlOEuGfk9SbZ/yt6zGQ2HRHWdYOel9GKwmtm1XPEQxQv66BMIbiJBRBDc
	6+Anog8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JJc-0000000C1V4-4605;
	Thu, 17 Apr 2025 07:05:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JCz-0000000Bzf6-2FGZ
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 06:58:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCy-00068Z-04; Thu, 17 Apr 2025 08:58:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCx-000hvA-2Z;
	Thu, 17 Apr 2025 08:58:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCx-00Ewsp-2F;
	Thu, 17 Apr 2025 08:58:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Apr 2025 08:58:43 +0200
Message-Id: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_235849_576255_00ECD0AC 
X-CRM114-Status: GOOD (  15.49  )
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
Subject: [PATCH 1/4] lib: random: implement Xorshift* RNG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Xorshift is simpler, faster and better than the LCG we are currently
using. Add it in preparation alongside the LCG until consumers are
migrated.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/stdlib.h | 15 ++++++++
 lib/random.c     | 92 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 107 insertions(+)

diff --git a/include/stdlib.h b/include/stdlib.h
index 20bdc0491e3c..12a81cfc31a3 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -18,10 +18,25 @@ struct hwrng;
 
 /* fill a buffer with pseudo-random data */
 #if IN_PROPER
+void randbuf_r(u64 *x, void *buf, size_t len);
+void srand_xor(u64 entropy);
+void get_noncrypto_bytes(void *buf, size_t len);
 void get_random_bytes(void *buf, int len);
 int get_crypto_bytes(void *buf, int len);
 int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len);
 #else
+static inline void randbuf_r(u64 *x, void *buf, size_t len)
+{
+	BUG();
+}
+static inline void srand_xor(u64 entropy)
+{
+	BUG();
+}
+static inline void get_noncrypto_bytes(void *buf, size_t len)
+{
+	BUG();
+}
 static inline void get_random_bytes(void *buf, int len)
 {
 	BUG();
diff --git a/lib/random.c b/lib/random.c
index e83935d0e17c..fc4ecdfd3a1d 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -1,4 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-only
+/*
+ * The barebox random number generator provides mainly two APIs:
+ *
+ *   - get_noncrypto_bytes: Xorshift*
+ *     - https://en.wikipedia.org/wiki/Xorshift#xorshift*)
+ *     - https://forum.pjrc.com/index.php?threads/teensy-4-1-random-number-generator.61125/#post-243895
+ *
+ *   - get_crypto_bytes: Randomness directly from a HWRNG.
+ *     PRNG fallback only possible with debugging option
+ *     CONFIG_ALLOW_PRNG_FALLBACK set, which will emit a warning at runtime.
+ */
 
 #include <common.h>
 #include <stdlib.h>
@@ -21,6 +32,87 @@ void srand(unsigned int seed)
 	random_seed = seed;
 }
 
+static u64 prng_state = 1;
+
+/**
+ * rand_r - return next pseudo-random number depending only on input
+ *
+ * @x: RNG state
+ *
+ * This function runs the Xorshift* algorithm on the state input,
+ * updates the state and returns the next number in the PRNG
+ * sequence.
+ *
+ * Return: a 32 bit pseudo-random number
+ */
+static u32 rand_r(u64 *x)
+{
+	*x ^= *x >> 12;
+	*x ^= *x << 25;
+	*x ^= *x >> 27;
+
+	/*
+	 * Xorshift* fails only the MatrixRank test of BigCrush, however if the
+	 * generator is modified to return only the high 32 bits, then it passes
+	 * BigCrush with zero failures
+	 */
+	return (*x * 0x2545F4914F6CDD1DULL) >> 32;
+}
+
+/**
+ * randbuf_r - fills pseudo-random numbers into buffer depending only on input
+ *
+ * @x:   RNG state
+ * @buf: buffer to fill
+ * @len: size of buffer
+ *
+ * This function runs the Xorshift* algorithm on the state input,
+ * updates the state and fills the buffer with pseudo-random numbers.
+ *
+ * Only use this when you are using a fixed seed and the sequence
+ * should be reproducible (e.g. for NAND test).
+ */
+void randbuf_r(u64 *x, void *buf, size_t len)
+{
+	for (size_t i = 0; i < len; i += 4) {
+		u32 val = rand_r(x);
+		memcpy(buf + i, &val, min_t(size_t, 4, len - i));
+	}
+}
+
+/**
+ * srand_xor - Xor a 64-bit into the existing RNG state
+ *
+ * @entropy: additional 64-bit of entropy
+ *
+ * This function mixes 64-bit of entropy into the exising
+ * state by means of an Xor operation.
+ *
+ * Only use for independent entropy sources.
+ */
+void srand_xor(u64 entropy)
+{
+	prng_state ^= entropy;
+	/* Ensure prng_state is never zero */
+	prng_state += !prng_state;
+	rand_r(&prng_state);
+}
+
+/**
+ * get_noncrypto_bytes - get pseudo random numbers.
+ *
+ * @buf: buffer to fill
+ * @len: length of buffer
+ *
+ * This interface can be good enough to generate MAC address
+ * or use for NAND test. Use get_crypto_bytes for cryptographic
+ * applications.
+ */
+void get_noncrypto_bytes(void *buf, size_t len)
+{
+	randbuf_r(&prng_state, buf, len);
+}
+
 /**
  * get_random_bytes - get pseudo random numbers.
  * This interface can be good enough to generate MAC address
-- 
2.39.5



