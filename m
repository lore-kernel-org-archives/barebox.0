Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjzYY-0006Ih-4f
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 04:45:32 +0000
Received: by mail-pg1-x544.google.com with SMTP id y4so3842584pgc.12
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 20:45:29 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 20:45:06 -0800
Message-Id: <20190117044506.20628-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190117044506.20628-1-andrew.smirnov@gmail.com>
References: <20190117044506.20628-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] crypto: digest: Return -errno if stat() fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Strictly speaking, stat() doesn't return a detailed error code as its
return value and it can and should be obtained via 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 crypto/digest.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index 230db26e8..2c4de2e4f 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -317,12 +317,9 @@ int digest_file(struct digest *d, const char *filename,
 		const unsigned char *sig)
 {
 	struct stat st;
-	int ret;
-
-	ret = stat(filename, &st);
 
-	if (ret < 0)
-		return ret;
+	if (stat(filename, &st))
+		return -errno;
 
 	return digest_file_window(d, filename, hash, sig, 0, st.st_size);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
