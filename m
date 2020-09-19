Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout01.posteo.de ([185.67.36.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJjgC-0006o6-8s
 for barebox@lists.infradead.org; Sat, 19 Sep 2020 20:41:57 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 0038A16005C
 for <barebox@lists.infradead.org>; Sat, 19 Sep 2020 22:41:47 +0200 (CEST)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4Bv2gH1Pxxz9rxK
 for <barebox@lists.infradead.org>; Sat, 19 Sep 2020 22:41:46 +0200 (CEST)
From: Robert Karszniewicz <avoidr@posteo.de>
Date: Sat, 19 Sep 2020 22:41:33 +0200
Message-Id: <20200919204133.31990-1-avoidr@posteo.de>
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
Subject: [PATCH] scripts: compiler.h: include <sys/types.h>
To: barebox@lists.infradead.org

ulong is not a standard type, so it has to be defined explicitly.

Signed-off-by: Robert Karszniewicz <avoidr@posteo.de>
---
This fixes compile errors on musl when building the sandbox.

 scripts/compiler.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/compiler.h b/scripts/compiler.h
index 0ad25f9e8..c932f715c 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -62,6 +62,7 @@ typedef unsigned int  uint;
       defined(__NetBSD__) || defined(__DragonFly__)
 # include <sys/endian.h>
 #else /* assume Linux */
+# include <sys/types.h>
 # include <endian.h>
 # include <byteswap.h>
 #endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
