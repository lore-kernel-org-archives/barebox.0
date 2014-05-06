Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhZct-0002Oq-Ix
 for barebox@lists.infradead.org; Tue, 06 May 2014 07:17:20 +0000
Received: by mail-lb0-f178.google.com with SMTP id w7so1643510lbi.37
 for <barebox@lists.infradead.org>; Tue, 06 May 2014 00:16:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  6 May 2014 11:16:50 +0400
Message-Id: <1399360610-11834-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] stdlib.h: include missed types.h
To: barebox@lists.infradead.org

We use 'u32' type in stdlib.h so we have to include types.h.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/stdlib.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/stdlib.h b/include/stdlib.h
index 07d6e58..f318506 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -1,6 +1,8 @@
 #ifndef __STDLIB_H
 #define __STDLIB_H
 
+#include <types.h>
+
 #define RAND_MAX 32767
 
 /* return a pseudo-random integer in the range [0, RAND_MAX] */
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
