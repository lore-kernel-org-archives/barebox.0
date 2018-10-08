Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9Rdr-0000XT-Rn
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 09:15:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2018 11:15:42 +0200
Message-Id: <20181008091542.29268-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] digest.h: Sync hash_algo values with kernel
To: Barebox List <barebox@lists.infradead.org>

enum hash_algo is exported from the Kernel, so sync it with the numbers
that are exported. Since we have barebox specific extensions to the
hash_algo list add a big comment and put the extenstions at the end.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/digest.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/digest.h b/include/digest.h
index 4552e58255..a1cdbb2d7a 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -28,10 +28,10 @@ enum hash_algo {
 	HASH_ALGO_MD5,
 	HASH_ALGO_SHA1,
 	HASH_ALGO_RIPE_MD_160,
-	HASH_ALGO_SHA224,
 	HASH_ALGO_SHA256,
 	HASH_ALGO_SHA384,
 	HASH_ALGO_SHA512,
+	HASH_ALGO_SHA224,
 	HASH_ALGO_RIPE_MD_128,
 	HASH_ALGO_RIPE_MD_256,
 	HASH_ALGO_RIPE_MD_320,
@@ -41,6 +41,12 @@ enum hash_algo {
 	HASH_ALGO_TGR_128,
 	HASH_ALGO_TGR_160,
 	HASH_ALGO_TGR_192,
+	HASH_ALGO_SM3_256,
+	/*
+	 * The above are exported from the Kernel as
+	 * /usr/include/linux/hash_info.h and thus have a fixed number, do not
+	 * change it. Below are barebox specific, subject to renumbering.
+	 */
 	HASH_ALGO_CRC32,
 	HASH_ALGO__LAST
 };
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
