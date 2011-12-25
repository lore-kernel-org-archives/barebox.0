Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reh5l-0004ft-9w
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 05:57:53 +0000
Received: by eekc13 with SMTP id c13so10071858eek.36
 for <barebox@lists.infradead.org>; Sat, 24 Dec 2011 21:57:50 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 25 Dec 2011 09:57:26 +0400
Message-Id: <1324792646-27524-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] decompress_inflate.c: fix "no previous prototype for
 'gunzip'" warning
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/gunzip.h         |    4 ++--
 lib/decompress_inflate.c |    2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/gunzip.h b/include/gunzip.h
index 8c0aef1..b901894 100644
--- a/include/gunzip.h
+++ b/include/gunzip.h
@@ -1,5 +1,5 @@
-#ifndef INFLATE_H
-#define INFLATE_H
+#ifndef GUNZIP_H
+#define GUNZIP_H
 
 int gunzip(unsigned char *inbuf, int len,
 	   int(*fill)(void*, unsigned int),
diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
index d246d4d..526d6a1 100644
--- a/lib/decompress_inflate.c
+++ b/lib/decompress_inflate.c
@@ -24,6 +24,8 @@
 
 #endif /* STATIC */
 
+#include <gunzip.h>
+
 #define GZIP_IOBUF_SIZE (16*1024)
 
 static int  nofill(void *buffer, unsigned int len)
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
