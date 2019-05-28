Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV8V-0002v5-SO
 for barebox@lists.infradead.org; Tue, 28 May 2019 05:59:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so10767387pfm.12
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 22:58:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 22:58:52 -0700
Message-Id: <20190528055853.4863-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] libfile: Simplify read_full()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We can figure out the amount of written data by substracting 'insize'
from 'size' so there is no need to keep a separate counter for that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/libfile.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index eb12d158d..814cd9c2c 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -80,20 +80,18 @@ int read_full(int fd, void *buf, size_t size)
 {
 	size_t insize = size;
 	int now;
-	int total = 0;
 
 	while (size) {
 		now = read(fd, buf, size);
 		if (now == 0)
-			return total;
+			break;
 		if (now < 0)
 			return now;
-		total += now;
 		size -= now;
 		buf += now;
 	}
 
-	return insize;
+	return insize - size;
 }
 EXPORT_SYMBOL(read_full);
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
