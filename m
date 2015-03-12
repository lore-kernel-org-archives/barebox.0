Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YW4I1-0005eQ-WE
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 14:40:47 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 12 Mar 2015 15:39:56 +0100
Message-Id: <1426171199-2729-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
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
Subject: [RFC 1/4] digest: Make filename arguments const
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/digest.c  | 8 ++++----
 include/digest.h | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/digest.c b/common/digest.c
index 51be2ca4148b..7187b0f23d81 100644
--- a/common/digest.c
+++ b/common/digest.c
@@ -59,7 +59,7 @@ void digest_unregister(struct digest *d)
 }
 EXPORT_SYMBOL(digest_unregister);
 
-struct digest* digest_get_by_name(char* name)
+struct digest* digest_get_by_name(const char *name)
 {
 	struct digest* d;
 
@@ -87,7 +87,7 @@ struct digest *digest_get(enum hash_algo algo)
 }
 EXPORT_SYMBOL_GPL(digest_get);
 
-int digest_file_window(struct digest *d, char *filename,
+int digest_file_window(struct digest *d, const char *filename,
 		       unsigned char *hash,
 		       ulong start, ulong size)
 {
@@ -157,7 +157,7 @@ out:
 }
 EXPORT_SYMBOL_GPL(digest_file_window);
 
-int digest_file(struct digest *d, char *filename,
+int digest_file(struct digest *d, const char *filename,
 		       unsigned char *hash)
 {
 	struct stat st;
@@ -172,7 +172,7 @@ int digest_file(struct digest *d, char *filename,
 }
 EXPORT_SYMBOL_GPL(digest_file);
 
-int digest_file_by_name(char *algo, char *filename,
+int digest_file_by_name(char *algo, const char *filename,
 		       unsigned char *hash)
 {
 	struct digest *d;
diff --git a/include/digest.h b/include/digest.h
index 62f6248d0768..4727c72efc55 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -63,15 +63,15 @@ struct digest
 int digest_register(struct digest *d);
 void digest_unregister(struct digest *d);
 
-struct digest* digest_get_by_name(char* name);
+struct digest* digest_get_by_name(const char *name);
 struct digest *digest_get(enum hash_algo);
 
-int digest_file_window(struct digest *d, char *filename,
+int digest_file_window(struct digest *d, const char *filename,
 		       unsigned char *hash,
 		       ulong start, ulong size);
-int digest_file(struct digest *d, char *filename,
+int digest_file(struct digest *d, const char *filename,
 		       unsigned char *hash);
-int digest_file_by_name(char *algo, char *filename,
+int digest_file_by_name(char *algo, const char *filename,
 		       unsigned char *hash);
 
 #endif /* __SH_ST_DEVICES_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
