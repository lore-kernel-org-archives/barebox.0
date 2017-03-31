Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbV-0001eN-HW
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:38 +0200
Message-Id: <20170331070346.26878-35-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 34/42] crypto: digest: initialize earlier
To: Barebox List <barebox@lists.infradead.org>

Digests have dependencies and are needed for state which initializes
at device_initcall level. To make sure the digests are available
for state register them earlier, at coredevice_initcall level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/hmac.c | 2 +-
 crypto/sha1.c | 2 +-
 crypto/sha2.c | 2 +-
 crypto/sha4.c | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/crypto/hmac.c b/crypto/hmac.c
index 05b9b50f12..37b270df7a 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -196,4 +196,4 @@ static int digest_hmac_initcall(void)
 
 	return 0;
 }
-crypto_initcall(digest_hmac_initcall);
+coredevice_initcall(digest_hmac_initcall);
diff --git a/crypto/sha1.c b/crypto/sha1.c
index cbde4d28e4..f4b2ded0b0 100644
--- a/crypto/sha1.c
+++ b/crypto/sha1.c
@@ -303,4 +303,4 @@ static int sha1_digest_register(void)
 {
 	return digest_algo_register(&m);
 }
-device_initcall(sha1_digest_register);
+coredevice_initcall(sha1_digest_register);
diff --git a/crypto/sha2.c b/crypto/sha2.c
index cb0f11c77e..c62ddb8d25 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -372,4 +372,4 @@ static int sha256_digest_register(void)
 
 	return digest_algo_register(&m256);
 }
-device_initcall(sha256_digest_register);
+coredevice_initcall(sha256_digest_register);
diff --git a/crypto/sha4.c b/crypto/sha4.c
index 4ce37b73e4..aad8081fa5 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -292,4 +292,4 @@ static int sha512_digest_register(void)
 
 	return digest_algo_register(&m512);
 }
-device_initcall(sha512_digest_register);
+coredevice_initcall(sha512_digest_register);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
