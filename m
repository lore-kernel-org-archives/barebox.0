Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X25Vo-0001yV-6t
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 21:22:48 +0000
Received: by mail-wg0-f42.google.com with SMTP id z12so10272648wgg.25
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 14:22:26 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue,  1 Jul 2014 23:22:06 +0200
Message-Id: <1404249726-7663-3-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 3/3] lz4: fix another possible overrun
To: barebox@lists.infradead.org
Cc: Holger Schurig <holgerschurig@gmail.de>

Note: this is the same as 4148c1f67abf823099b2d7db6851e4aea407f5ee in
linux-git.

There is one other possible overrun in the lz4 code as implemented by
Linux at this point in time (which differs from the upstream lz4
codebase, but will get synced at in a future kernel release.)  As
pointed out by Don, we also need to check the overflow in the data
itself.

While we are at it, replace the odd error return value with just a
"simple" -1 value as the return value is never used for anything other
than a basic "did this work or not" check.

Reported-by: "Don A. Bailey" <donb@securitymouse.com>
Reported-by: Willy Tarreau <w@1wt.eu>
Signed-off-by: Holger Schurig <holgerschurig@gmail.de>
---
 lib/lz4/lz4_decompress.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/lib/lz4/lz4_decompress.c b/lib/lz4/lz4_decompress.c
index 75cf08b..9f7bf17 100644
--- a/lib/lz4/lz4_decompress.c
+++ b/lib/lz4/lz4_decompress.c
@@ -109,6 +109,8 @@ static int lz4_uncompress(const char *source, char *dest, int osize)
 		if (length == ML_MASK) {
 			for (; *ip == 255; length += 255)
 				ip++;
+			if (unlikely(length > (size_t)(length + *ip)))
+				goto _output_error;
 			length += *ip++;
 		}
 
@@ -158,7 +160,7 @@ static int lz4_uncompress(const char *source, char *dest, int osize)
 
 	/* write overflow error detected */
 _output_error:
-	return (int) (-(((char *)ip) - source));
+	return -1;
 }
 
 static int lz4_uncompress_unknownoutputsize(const char *source, char *dest,
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
