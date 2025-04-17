Delivery-date: Thu, 17 Apr 2025 09:06:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5JK6-001mLc-2x
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 09:06:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5JK6-0000Xf-5A
	for lore@pengutronix.de; Thu, 17 Apr 2025 09:06:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e/ewvGHgL/EWtIo5lm0CgjVadzT7S9ItROXlPC4IkGc=; b=Jz0HDJWm14jCK6ABTgwZVd1ZJv
	g4rf+JN283LcRod6MvPS3ULnsXAIijSgpwCfKWypTMrHBjPdbh8eDVhvVzNrh0C68iW8W35/DKyvA
	ux1H14c8gTSldn8wSa5K+TdvIoYxIl8RhelIPrbedI15iopLay/wl1X5v9BfOQHLmLvF+R1DwSKKs
	g/qmz9oydWLTL/0UqP7HpxmtxpubHSfRiWiCDTbDj2hD3cpLBgTGDmMLXmyItJpk//xu8B3lPCy8/
	KjSyvip+oNmI85FK8woRa2nc8PuMG+hJbF8JHJWGkMbp+zTc36TEkSviiBMO0TEPUvViSnuq9IZby
	Mhy9cHqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JJd-0000000C1Vo-27gW;
	Thu, 17 Apr 2025 07:05:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JCz-0000000Bzf2-2EDF
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 06:58:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCy-00068n-3b; Thu, 17 Apr 2025 08:58:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCx-000hvH-2y;
	Thu, 17 Apr 2025 08:58:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCx-00Ewsp-2g;
	Thu, 17 Apr 2025 08:58:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Apr 2025 08:58:46 +0200
Message-Id: <20250417065846.3562848-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
References: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_235849_581162_06301A57 
X-CRM114-Status: GOOD (  17.06  )
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
Subject: [PATCH 4/4] random: replace get_random_bytes with get_noncrypto_bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

get_random_bytes provides random numbers suitable for crypto on Linux,
but in barebox we do not maintain an entropy pool suitable for that.

Instead we have get_crypto_bytes, which gets randomness out of a HWRNG.
Providing the get_random_bytes API with different semantics than in
Linux is thus a security footgun that we should avoid.

Rename it thus to get_noncrypto_bytes and have get_random_bytes generate
an error to assist porting.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/random.rst |  2 +-
 commands/stddev.c             |  2 +-
 drivers/mtd/ubi/attach.c      |  4 ++--
 include/stdlib.h              |  9 ++++-----
 lib/random.c                  | 12 +-----------
 lib/uuid.c                    |  4 ++--
 6 files changed, 11 insertions(+), 22 deletions(-)

diff --git a/Documentation/user/random.rst b/Documentation/user/random.rst
index dc3c32ffeb95..39a0a25e0570 100644
--- a/Documentation/user/random.rst
+++ b/Documentation/user/random.rst
@@ -27,7 +27,7 @@ API
         void srand_xor(u64 seed);
 
         /* Fill the buffer with PRNG bits. */
-        void get_random_bytes(void *buf, int len);
+        void get_noncrypto_bytes(void *buf, int len);
 
         /* Fill the buffer with bits provided by HWRNG.
          * This function may fail with a message “error: no HWRNG available!”
diff --git a/commands/stddev.c b/commands/stddev.c
index e9b7dcc0d2f3..e537bf8dacf6 100644
--- a/commands/stddev.c
+++ b/commands/stddev.c
@@ -87,7 +87,7 @@ device_initcall(null_init);
 
 static ssize_t prng_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
-	get_random_bytes(buf, count);
+	get_noncrypto_bytes(buf, count);
 	return count;
 }
 
diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 0e7c61e053fb..44fe435e4163 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -1246,8 +1246,8 @@ static int late_analysis(struct ubi_device *ubi, struct ubi_attach_info *ai)
 		if (ai->maybe_bad_peb_count <= 2) {
 			ai->is_empty = 1;
 			ubi_msg(ubi, "empty MTD device detected");
-			get_random_bytes(&ubi->image_seq,
-					 sizeof(ubi->image_seq));
+			get_noncrypto_bytes(&ubi->image_seq,
+					    sizeof(ubi->image_seq));
 		} else {
 			ubi_err(ubi, "MTD device is not UBI-formatted and possibly contains non-UBI data - refusing it");
 			return -EINVAL;
diff --git a/include/stdlib.h b/include/stdlib.h
index 36613eb34a99..f0f7cfd2ed28 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -14,7 +14,6 @@ void randbuf_r(u64 *x, void *buf, size_t len);
 void srand_xor(u64 entropy);
 u32 random32(void);
 void get_noncrypto_bytes(void *buf, size_t len);
-void get_random_bytes(void *buf, int len);
 int get_crypto_bytes(void *buf, int len);
 int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len);
 #else
@@ -34,10 +33,6 @@ static inline void get_noncrypto_bytes(void *buf, size_t len)
 {
 	BUG();
 }
-static inline void get_random_bytes(void *buf, int len)
-{
-	BUG();
-}
 static inline int get_crypto_bytes(void *buf, int len)
 {
 	return -ENOSYS;
@@ -53,4 +48,8 @@ static inline u32 prandom_u32_max(u32 ep_ro)
 	return (u32)(((u64) random32() * ep_ro) >> 32);
 }
 
+extern void __compiletime_error(
+	"Depending on use case, use either get_crypto_bytes or get_noncrypto_bytes."
+) get_random_bytes(void *buf, int len);
+
 #endif /* __STDLIB_H */
diff --git a/lib/random.c b/lib/random.c
index 36fb1ec08f05..889d314e0fad 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -101,16 +101,6 @@ u32 random32(void)
 	return rand_r(&prng_state);
 }
 
-/**
- * get_random_bytes - get pseudo random numbers.
- * This interface can be good enough to generate MAC address
- * or use for NAND test.
- */
-void get_random_bytes(void *buf, int len)
-{
-	get_noncrypto_bytes(buf, len);
-}
-
 int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len)
 {
 	while (len) {
@@ -151,7 +141,7 @@ int get_crypto_bytes(void *buf, int len)
 
 	pr_warn("falling back to Pseudo RNG source!\n");
 
-	get_random_bytes(buf, len);
+	get_noncrypto_bytes(buf, len);
 
 	return 0;
 }
diff --git a/lib/uuid.c b/lib/uuid.c
index 1c134bfb4b15..96f6f4674c0a 100644
--- a/lib/uuid.c
+++ b/lib/uuid.c
@@ -31,7 +31,7 @@ const u8 uuid_index[16] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
  */
 void generate_random_uuid(unsigned char uuid[16])
 {
-	get_random_bytes(uuid, 16);
+	get_noncrypto_bytes(uuid, 16);
 	/* Set UUID version to 4 --- truly random generation */
 	uuid[6] = (uuid[6] & 0x0F) | 0x40;
 	/* Set the UUID variant to DCE */
@@ -41,7 +41,7 @@ EXPORT_SYMBOL(generate_random_uuid);
 
 void generate_random_guid(unsigned char guid[16])
 {
-	get_random_bytes(guid, 16);
+	get_noncrypto_bytes(guid, 16);
 	/* Set GUID version to 4 --- truly random generation */
 	guid[7] = (guid[7] & 0x0F) | 0x40;
 	/* Set the GUID variant to DCE */
-- 
2.39.5



