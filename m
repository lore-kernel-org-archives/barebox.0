Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X25Vm-0001yU-1a
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 21:22:46 +0000
Received: by mail-wi0-f174.google.com with SMTP id bs8so8561783wib.1
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 14:22:23 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue,  1 Jul 2014 23:22:05 +0200
Message-Id: <1404249726-7663-2-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 2/3] lz4: ensure length does not wrap
To: barebox@lists.infradead.org
Cc: Holger Schurig <holgerschurig@gmail.de>

Note: this is the same as 206204a1162b995e2185275167b22468c00d6b36 in
linux-git.

Given some pathologically compressed data, lz4 could possibly decide to
wrap a few internal variables, causing unknown things to happen.  Catch
this before the wrapping happens and abort the decompression.

Reported-by: "Don A. Bailey" <donb@securitymouse.com>
Signed-off-by: Holger Schurig <holgerschurig@gmail.de>
---
 lib/lz4/lz4_decompress.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/lz4/lz4_decompress.c b/lib/lz4/lz4_decompress.c
index 8e64ce6..75cf08b 100644
--- a/lib/lz4/lz4_decompress.c
+++ b/lib/lz4/lz4_decompress.c
@@ -73,6 +73,8 @@ static int lz4_uncompress(const char *source, char *dest, int osize)
 			len = *ip++;
 			for (; len == 255; length += 255)
 				len = *ip++;
+			if (unlikely(length > (size_t)(length + len)))
+				goto _output_error;
 			length += len;
 		}
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
