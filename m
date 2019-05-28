Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVV8W-0002vZ-6D
 for barebox@lists.infradead.org; Tue, 28 May 2019 05:59:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id a23so10791148pff.4
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 22:59:00 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 22:58:53 -0700
Message-Id: <20190528055853.4863-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190528055853.4863-1-andrew.smirnov@gmail.com>
References: <20190528055853.4863-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] libfile: Do not return 0 from write_full()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

None of the callers of write_full() expect a zero return value. Given
how the documentation explicitly states that either all of the buffer
is going to be written out or an error generated, treat 0 retrun from
write() as a error, set errno to ENOSPC and return -1.

Same logic applies to pwrite_full() as well, so make the change there
while at it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/libfile.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 814cd9c2c..b42753c2b 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -36,7 +36,11 @@ int pwrite_full(int fd, const void *buf, size_t size, loff_t offset)
 
 	while (size) {
 		now = pwrite(fd, buf, size, offset);
-		if (now <= 0)
+		if (now == 0) {
+			errno = ENOSPC;
+			return -1;
+		}
+		if (now < 0)
 			return now;
 		size -= now;
 		buf += now;
@@ -60,7 +64,11 @@ int write_full(int fd, const void *buf, size_t size)
 
 	while (size) {
 		now = write(fd, buf, size);
-		if (now <= 0)
+		if (now == 0) {
+			errno = ENOSPC;
+			return -1;
+		}
+		if (now < 0)
 			return now;
 		size -= now;
 		buf += now;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
