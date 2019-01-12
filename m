Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giEbU-0002Ek-C3
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 08:25:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id 64so8038150pfr.9
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 00:25:15 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 00:24:56 -0800
Message-Id: <20190112082456.7441-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190112082456.7441-1-andrew.smirnov@gmail.com>
References: <20190112082456.7441-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] crypto: digest: Change the signature of
 digest_file_window()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On 32-bit systems "ulong" will limit digest_file_window()'s maximum
size to 4 GiB. Convert "start" and "size" to "loff_t" in order to be
able to handle maximum file size supported by the rest of the system.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 crypto/digest.c  | 6 +++---
 include/digest.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index 7b34742c52..9b7b73019a 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -221,7 +221,7 @@ static int digest_update_interruptible(struct digest *d, const void *data,
 }
 
 static int digest_update_from_fd(struct digest *d, int fd,
-				 ulong start, ulong size)
+				 loff_t start, loff_t size)
 {
 	unsigned char *buf = xmalloc(PAGE_SIZE);
 	int ret = 0;
@@ -257,7 +257,7 @@ out_free:
 
 static int digest_update_from_memory(struct digest *d,
 				     const unsigned char *buf,
-				     ulong size)
+				     loff_t size)
 {
 	while (size) {
 		unsigned long now = min_t(typeof(size), PAGE_SIZE, size);
@@ -277,7 +277,7 @@ static int digest_update_from_memory(struct digest *d,
 int digest_file_window(struct digest *d, const char *filename,
 		       unsigned char *hash,
 		       const unsigned char *sig,
-		       ulong start, ulong size)
+		       loff_t start, loff_t size)
 {
 	int fd, ret;
 	unsigned char *buf;
diff --git a/include/digest.h b/include/digest.h
index a1cdbb2d7a..a87e29bd28 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -100,7 +100,7 @@ void digest_free(struct digest *d);
 int digest_file_window(struct digest *d, const char *filename,
 		       unsigned char *hash,
 		       const unsigned char *sig,
-		       ulong start, ulong size);
+		       loff_t start, loff_t size);
 int digest_file(struct digest *d, const char *filename,
 		unsigned char *hash,
 		const unsigned char *sig);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
