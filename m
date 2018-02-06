Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eixmZ-0001Ul-7o
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 07:35:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Feb 2018 08:34:54 +0100
Message-Id: <20180206073454.18911-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] arm: crypto: initialize digests earlier
To: Barebox List <barebox@lists.infradead.org>

We moved the digest init functions to coredevice_initcall level. Do
the same with the ARM specific digests aswell so that they are available
at the same time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/crypto/sha1_glue.c   | 2 +-
 arch/arm/crypto/sha256_glue.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/crypto/sha1_glue.c b/arch/arm/crypto/sha1_glue.c
index 57cd9d1014..cc032f6af2 100644
--- a/arch/arm/crypto/sha1_glue.c
+++ b/arch/arm/crypto/sha1_glue.c
@@ -135,4 +135,4 @@ static int sha1_mod_init(void)
 {
 	return digest_algo_register(&m);
 }
-device_initcall(sha1_mod_init);
+coredevice_initcall(sha1_mod_init);
diff --git a/arch/arm/crypto/sha256_glue.c b/arch/arm/crypto/sha256_glue.c
index e649609a8e..d8a72a2cb9 100644
--- a/arch/arm/crypto/sha256_glue.c
+++ b/arch/arm/crypto/sha256_glue.c
@@ -189,7 +189,7 @@ static int sha224_digest_register(void)
 {
 	return digest_algo_register(&sha224);
 }
-device_initcall(sha224_digest_register);
+coredevice_initcall(sha224_digest_register);
 
 static struct digest_algo sha256 = {
 	.base = {
@@ -212,4 +212,4 @@ static int sha256_digest_register(void)
 {
 	return digest_algo_register(&sha256);
 }
-device_initcall(sha256_digest_register);
+coredevice_initcall(sha256_digest_register);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
