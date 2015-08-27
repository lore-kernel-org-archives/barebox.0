Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUz4Y-0005yh-Ep
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 15:26:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Aug 2015 17:26:13 +0200
Message-Id: <1440689174-731-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
References: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] crypto: fix selecting of digests
To: Barebox List <barebox@lists.infradead.org>

SHA1 is meant as a boolean option which is true when sha1 support is available.
This works because the providers (DIGEST_SHA1_GENERIC and DIGEST_SHA1_ARM) have
a 'select SHA1'. However, consumers like the sha1sum command do a 'select SHA1'
to enable SHA1 support. This of course does not work; selecting SHA1 will not
select any of the SHA1 providers.

This is broken for all digest consumers. We have to explicitly select a digest
provider, that is DIGEST_*_GENERIC to enable the corresponding digest.

This means now we will always have the generic digest in the binary, even
when an optimized one is enabled. There is no sane way in Kconfig to
"select provider for feature xy", so let's live with the overhead in the binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig | 12 ++++++------
 common/Kconfig   |  8 ++++----
 crypto/Kconfig   |  2 +-
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 133dcbf..c2c42cc 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -928,7 +928,7 @@ config CMD_LS
 config CMD_MD5SUM
 	tristate
 	select COMPILE_HASH
-	select MD5
+	select DIGEST_MD5_GENERIC
 	prompt "md5sum"
 	help
 	  Usage: md5sum FILE|AREA...
@@ -993,7 +993,7 @@ config CMD_RMDIR
 config CMD_SHA1SUM
 	tristate
 	select COMPILE_HASH
-	select SHA1
+	select DIGEST_SHA1_GENERIC
 	prompt "sha1sum"
 	help
 	  Calculate SHA1 digest
@@ -1005,7 +1005,7 @@ config CMD_SHA1SUM
 config CMD_SHA224SUM
 	tristate
 	select COMPILE_HASH
-	select SHA224
+	select DIGEST_SHA224_GENERIC
 	prompt "sha224sum"
 	help
 	  Calculate SHA224 digest
@@ -1017,7 +1017,7 @@ config CMD_SHA224SUM
 config CMD_SHA256SUM
 	tristate
 	select COMPILE_HASH
-	select SHA256
+	select DIGEST_SHA256_GENERIC
 	prompt "sha256sum"
 	help
 	  sha256sum - calculate SHA256 digest
@@ -1029,7 +1029,7 @@ config CMD_SHA256SUM
 config CMD_SHA384SUM
 	tristate
 	select COMPILE_HASH
-	select SHA384
+	select DIGEST_SHA384_GENERIC
 	prompt "sha384sum"
 	help
 	  Calculate SHA384 digest
@@ -1041,7 +1041,7 @@ config CMD_SHA384SUM
 config CMD_SHA512SUM
 	tristate
 	select COMPILE_HASH
-	select SHA512
+	select DIGEST_SHA512_GENERIC
 	prompt "sha512sum"
 	help
 	  sha512sum - calculate SHA512 digest
diff --git a/common/Kconfig b/common/Kconfig
index 8c6ba7f..03a0dc9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -460,19 +460,19 @@ choice
 
 config PASSWD_SUM_MD5
 	bool "MD5"
-	select MD5
+	select DIGEST_MD5_GENERIC
 
 config PASSWD_SUM_SHA1
 	bool "SHA1"
-	select SHA1
+	select DIGEST_SHA1_GENERIC
 
 config PASSWD_SUM_SHA256
 	bool "SHA256"
-	select SHA256
+	select DIGEST_SHA256_GENERIC
 
 config PASSWD_SUM_SHA512
 	bool "SHA512"
-	select SHA512
+	select DIGEST_SHA512_GENERIC
 
 config PASSWD_CRYPTO_PBKDF2
 	bool "PBKDF2"
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 24f8b41..ef807de 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -82,5 +82,5 @@ endif
 
 config CRYPTO_PBKDF2
 	select DIGEST
-	select SHA1
+	select DIGEST_SHA1_GENERIC
 	bool
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
