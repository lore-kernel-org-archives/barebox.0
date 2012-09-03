Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8PyO-0001qq-3o
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 06:17:24 +0000
Received: by wgbdt14 with SMTP id dt14so2766230wgb.18
 for <barebox@lists.infradead.org>; Sun, 02 Sep 2012 23:17:22 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon,  3 Sep 2012 08:18:06 +0200
Message-Id: <1346653088-7576-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/3] sandbox: add asm-generic/io.h
To: barebox@lists.infradead.org

Add in sandbox asm/io.h the asm-generic/io.h header file.
Needed by NAND support.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/sandbox/include/asm/io.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
index da84fa5..fbc23bf 100644
--- a/arch/sandbox/include/asm/io.h
+++ b/arch/sandbox/include/asm/io.h
@@ -1 +1,7 @@
-/* nothing */
+#ifndef __ASM_SANDBOX_IO_H
+#define __ASM_SANDBOX_IO_H
+
+#include <asm-generic/io.h>
+
+#endif /* __ASM_SANDBOX_IO_H */
+
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
