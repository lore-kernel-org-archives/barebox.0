Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3bsH-0004eu-N3
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:30:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id d25so1179295pfn.8
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:30:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:30:48 -0700
Message-Id: <20190312073049.26055-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] commands: memcpy: Make use of write_full()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change memcpy to rely on write_full() instead of re-implementing it
locally.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/memcpy.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/commands/memcpy.c b/commands/memcpy.c
index ddaf767ea..803f06e57 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -84,7 +84,7 @@ static int do_memcpy(int argc, char *argv[])
 	buf = xmalloc(RW_BUF_SIZE);
 
 	while (count > 0) {
-		int now, r, w, tmp;
+		int now, r;
 
 		now = min((loff_t)RW_BUF_SIZE, count);
 
@@ -97,19 +97,9 @@ static int do_memcpy(int argc, char *argv[])
 		if (!r)
 			break;
 
-		tmp = 0;
-		now = r;
-		while (now) {
-			w = write(destfd, buf + tmp, now);
-			if (w < 0) {
-				perror("write");
-				goto out;
-			}
-	                if (!w)
-			        break;
-
-			now -= w;
-			tmp += w;
+		if (write_full(destfd, buf, r) < 0) {
+			perror("write");
+			goto out;
 		}
 
 		count -= r;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
