Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqbrj-0002Fz-6K
 for barebox@lists.infradead.org; Wed, 22 Mar 2017 08:43:38 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 22 Mar 2017 09:43:05 +0100
Message-Id: <20170322084306.16726-7-o.rempel@pengutronix.de>
In-Reply-To: <20170322084306.16726-1-o.rempel@pengutronix.de>
References: <20170322084306.16726-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v7 6/7] common: password: make use of get_crypto_bytes
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

get_random_bytes is providing prng, if we have HWRNG we should be
able to use it over get_crypto_bytes

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/password.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/password.c b/common/password.c
index d52b746f0..74d328f4b 100644
--- a/common/password.c
+++ b/common/password.c
@@ -365,7 +365,11 @@ int set_env_passwd(unsigned char* passwd, size_t length)
 		char *salt = passwd_sum;
 		int keylen = PBKDF2_LENGTH - PBKDF2_SALT_LEN;
 
-		get_random_bytes(passwd_sum, PBKDF2_SALT_LEN);
+		ret = get_crypto_bytes(passwd_sum, PBKDF2_SALT_LEN);
+		if (ret) {
+			pr_err("Can't get random numbers\n");
+			return ret;
+		}
 
 		ret = pkcs5_pbkdf2_hmac_sha1(passwd, length, salt,
 				PBKDF2_SALT_LEN, PBKDF2_COUNT, keylen, key);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
