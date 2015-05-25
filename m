Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ywq0S-0005uK-Ns
 for barebox@lists.infradead.org; Mon, 25 May 2015 10:53:20 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 25 May 2015 12:48:44 +0200
Message-Id: <1432550924-20953-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] crypto: digest: mark signature argument as const
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 crypto/digest.c  | 10 +++++-----
 include/digest.h | 10 +++++-----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index b3f514c8ad73..a90e4ff79f89 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -172,7 +172,7 @@ EXPORT_SYMBOL_GPL(digest_free);
 
 int digest_file_window(struct digest *d, const char *filename,
 		       unsigned char *hash,
-		       unsigned char *sig,
+		       const unsigned char *sig,
 		       ulong start, ulong size)
 {
 	ulong len = 0;
@@ -249,8 +249,8 @@ out:
 EXPORT_SYMBOL_GPL(digest_file_window);
 
 int digest_file(struct digest *d, const char *filename,
-		       unsigned char *hash,
-		       unsigned char *sig)
+		unsigned char *hash,
+		const unsigned char *sig)
 {
 	struct stat st;
 	int ret;
@@ -265,8 +265,8 @@ int digest_file(struct digest *d, const char *filename,
 EXPORT_SYMBOL_GPL(digest_file);
 
 int digest_file_by_name(const char *algo, const char *filename,
-		       unsigned char *hash,
-		       unsigned char *sig)
+			unsigned char *hash,
+			const unsigned char *sig)
 {
 	struct digest *d;
 	int ret;
diff --git a/include/digest.h b/include/digest.h
index 7f8d696eb600..7c6711b32a56 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -68,14 +68,14 @@ void digest_free(struct digest *d);
 
 int digest_file_window(struct digest *d, const char *filename,
 		       unsigned char *hash,
-		       unsigned char *sig,
+		       const unsigned char *sig,
 		       ulong start, ulong size);
 int digest_file(struct digest *d, const char *filename,
-		       unsigned char *hash,
-		       unsigned char *sig);
+		unsigned char *hash,
+		const unsigned char *sig);
 int digest_file_by_name(const char *algo, const char *filename,
-		       unsigned char *hash,
-		       unsigned char *sig);
+			unsigned char *hash,
+			const unsigned char *sig);
 
 static inline int digest_init(struct digest *d)
 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
