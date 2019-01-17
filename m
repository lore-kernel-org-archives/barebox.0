Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjzYV-0006IA-Ho
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 04:45:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id c73so4172179pfe.13
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 20:45:27 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 20:45:04 -0800
Message-Id: <20190117044506.20628-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] crypto: digest: Return -errno if open() fails
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Strictly speaking, open() doesn't return a detailed error code as its
return value and it can and should be obtained via 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 crypto/digest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index 9b7b73019..493e56902 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -289,7 +289,7 @@ int digest_file_window(struct digest *d, const char *filename,
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
 		perror(filename);
-		return fd;
+		return -errno;
 	}
 
 	buf = memmap(fd, PROT_READ);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
