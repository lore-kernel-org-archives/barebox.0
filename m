Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZA9dl-0004Qg-DV
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 04:28:53 +0000
Received: by lbnk3 with SMTP id k3so5507455lbn.1
 for <barebox@lists.infradead.org>; Tue, 30 Jun 2015 21:28:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  1 Jul 2015 07:28:24 +0300
Message-Id: <1435724904-21687-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] sandbox: asm/byteorder.h: fix guard macro name
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/include/asm/byteorder.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/include/asm/byteorder.h b/arch/sandbox/include/asm/byteorder.h
index 37316f2..3d82bcb 100644
--- a/arch/sandbox/include/asm/byteorder.h
+++ b/arch/sandbox/include/asm/byteorder.h
@@ -1,8 +1,8 @@
-#ifndef _I386_BYTEORDER_H
-#define _I386_BYTEORDER_H
+#ifndef _SANDBOX_BYTEORDER_H
+#define _SANDBOX_BYTEORDER_H
 
 #include <asm/types.h>
 
 #include <linux/byteorder/little_endian.h>
 
-#endif /* _I386_BYTEORDER_H */
+#endif /* _SANDBOX_BYTEORDER_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
