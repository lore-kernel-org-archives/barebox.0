Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x234.google.com ([2a00:1450:400c:c09::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqLe2-0000NY-3u
 for barebox@lists.infradead.org; Wed, 13 Apr 2016 14:19:50 +0000
Received: by mail-wm0-x234.google.com with SMTP id a140so104439474wma.0
 for <barebox@lists.infradead.org>; Wed, 13 Apr 2016 07:19:29 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Wed, 13 Apr 2016 16:18:58 +0200
Message-Id: <1460557139-64673-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH] bitops: fls64: add missing include
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 include/asm-generic/bitops/fls64.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/bitops/fls64.h b/include/asm-generic/bitops/fls64.h
index 86d403f..e8eff76 100644
--- a/include/asm-generic/bitops/fls64.h
+++ b/include/asm-generic/bitops/fls64.h
@@ -2,6 +2,7 @@
 #define _ASM_GENERIC_BITOPS_FLS64_H_
 
 #include <asm/types.h>
+#include <asm-generic/bitops/__fls.h>
 
 /**
  * fls64 - find last set bit in a 64-bit word
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
