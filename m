Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giEbO-0002Ak-Az
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 08:25:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id y126so8060142pfb.4
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 00:25:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 00:24:52 -0800
Message-Id: <20190112082456.7441-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] crypto: digest: Remove unused variable
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 crypto/digest.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index b653fbb032..aff6d9876a 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -216,7 +216,6 @@ int digest_file_window(struct digest *d, const char *filename,
 		       const unsigned char *sig,
 		       ulong start, ulong size)
 {
-	ulong len = 0;
 	int fd, now, ret = 0;
 	unsigned char *buf;
 	int flags = 0;
@@ -271,7 +270,6 @@ int digest_file_window(struct digest *d, const char *filename,
 		if (ret)
 			goto out_free;
 		size -= now;
-		len += now;
 
 		if (!flags)
 			buf += now;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
