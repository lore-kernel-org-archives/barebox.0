Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPK-0002mm-5c
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:19:59 +0200
Message-Id: <20200930072005.1407-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/12] digest: sha: remove no-op "erase" of automatic variables
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some automatic variables are currently cleared as they may contain
"sensitive info". Any proper compiler would optimize away these
dead stores anyway, so just drop them.

Reported-by: clang-analyzer-10
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 crypto/sha2.c | 4 ----
 crypto/sha4.c | 3 ---
 2 files changed, 7 deletions(-)

diff --git a/crypto/sha2.c b/crypto/sha2.c
index 3947a09f41bb..013f5bb3b248 100644
--- a/crypto/sha2.c
+++ b/crypto/sha2.c
@@ -211,10 +211,6 @@ static void sha256_transform(u32 *state, const u8 *input)
 
 	state[0] += a; state[1] += b; state[2] += c; state[3] += d;
 	state[4] += e; state[5] += f; state[6] += g; state[7] += h;
-
-	/* clear any sensitive info... */
-	a = b = c = d = e = f = g = h = t1 = t2 = 0;
-	memset(W, 0, 64 * sizeof(u32));
 }
 
 static int sha224_init(struct digest *desc)
diff --git a/crypto/sha4.c b/crypto/sha4.c
index aad8081fa5b7..a2e90c0a2cae 100644
--- a/crypto/sha4.c
+++ b/crypto/sha4.c
@@ -124,9 +124,6 @@ sha512_transform(u64 *state, const u8 *input)
 
 	state[0] += a; state[1] += b; state[2] += c; state[3] += d;
 	state[4] += e; state[5] += f; state[6] += g; state[7] += h;
-
-	/* erase our data */
-	a = b = c = d = e = f = g = h = t1 = t2 = 0;
 }
 
 static int
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
