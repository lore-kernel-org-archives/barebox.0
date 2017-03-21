Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqKLP-0003Gc-3v
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 14:01:09 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 21 Mar 2017 15:00:20 +0100
Message-Id: <20170321140025.25784-4-o.rempel@pengutronix.de>
In-Reply-To: <20170321140025.25784-1-o.rempel@pengutronix.de>
References: <20170321140025.25784-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v6 3/8] lib: random: add get_crypto_bytes interface and use
 HWRNG if posssible
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

For crypto applications we need to use some thing else as PRNG.
So provide get_crypto_bytes() and use HWRNG as main source.
PRNG is allowed as fallback if user decided to configure it so.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/stdlib.h |  1 +
 lib/Kconfig      |  9 +++++++++
 lib/random.c     | 56 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 66 insertions(+)

diff --git a/include/stdlib.h b/include/stdlib.h
index f3185069f..ee3f22996 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -13,6 +13,7 @@ void srand(unsigned int seed);
 
 /* fill a buffer with pseudo-random data */
 void get_random_bytes(void *buf, int len);
+int get_crypto_bytes(void *buf, int len);
 
 static inline u32 random32(void)
 {
diff --git a/lib/Kconfig b/lib/Kconfig
index f9f25bdef..c16511c05 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -66,6 +66,15 @@ config RATP
 	  transferring packets over serial links described in RFC916. This implementation
 	  is used for controlling barebox over serial ports.
 
+config ALLOW_PRNG_FALLBACK
+	bool "Allow fallback to PRNG if HWRNG not available."
+	help
+	  WARNING: it is not secure!!
+
+	  get_crypto_bytes() users like cmd_password relay on HWRNG. If HWRNG is not
+	  available and this option is disabled, cmd_password will fail.
+	  Enable it on your own risk.
+
 source lib/gui/Kconfig
 
 source lib/fonts/Kconfig
diff --git a/lib/random.c b/lib/random.c
index 210fea994..1cd8166bf 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <stdlib.h>
+#include <linux/hw_random.h>
 
 static unsigned int random_seed;
 
@@ -18,6 +19,11 @@ void srand(unsigned int seed)
 	random_seed = seed;
 }
 
+/**
+ * get_random_bytes - get pseudo random numbers.
+ * This interface can be good enough to generate MAC address
+ * or use for NAND test.
+ */
 void get_random_bytes(void *_buf, int len)
 {
 	char *buf = _buf;
@@ -25,3 +31,53 @@ void get_random_bytes(void *_buf, int len)
 	while (len--)
 		*buf++ = rand() % 256;
 }
+
+/**
+ * get_crypto_bytes - get random numbers suitable for cryptographic needs.
+ */
+static int _get_crypto_bytes(void *_buf, int len)
+{
+	struct hwrng *rng;
+	u8 *buf = _buf;
+
+	if (!IS_ENABLED(CONFIG_HWRNG))
+		return -ENOENT;
+
+	rng = hwrng_get_first();
+	if (IS_ERR(rng))
+		return PTR_ERR(rng);
+
+	while (len) {
+		int bytes = hwrng_get_data(rng, buf, len, true);
+		if (!bytes)
+			return -ENOMEDIUM;
+
+		if (bytes < 0)
+			return bytes;
+
+		len -= bytes;
+		buf = buf + bytes;
+	}
+
+	return 0;
+}
+
+int get_crypto_bytes(void *buf, int len)
+{
+	int err;
+
+	err = _get_crypto_bytes(buf, len);
+	if (!err)
+		return 0;
+
+	if (!IS_ENABLED(CONFIG_ALLOW_PRNG_FALLBACK)) {
+		pr_err("error: no HWRNG available!\n");
+		return err;
+	}
+
+	pr_warn("warning: falling back to Pseudo RNG source!\n");
+
+	get_random_bytes(buf, len);
+
+	return 0;
+}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
