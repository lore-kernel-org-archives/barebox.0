Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giEbP-0002BK-TC
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 08:25:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so8032878pfe.13
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 00:25:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 00:24:53 -0800
Message-Id: <20190112082456.7441-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] crypto: digest: Replace 4096 with PAGE_SIZE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 crypto/digest.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index aff6d9876a..980a694915 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -232,7 +232,7 @@ int digest_file_window(struct digest *d, const char *filename,
 
 	buf = memmap(fd, PROT_READ);
 	if (buf == MAP_FAILED) {
-		buf = xmalloc(4096);
+		buf = xmalloc(PAGE_SIZE);
 		flags = 1;
 	}
 
@@ -249,7 +249,7 @@ int digest_file_window(struct digest *d, const char *filename,
 	}
 
 	while (size) {
-		now = min((ulong)4096, size);
+		now = min((ulong)PAGE_SIZE, size);
 		if (flags) {
 			now = read(fd, buf, now);
 			if (now < 0) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
