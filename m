Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X05Ne-0004i6-Cy
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:50:07 +0000
Received: by mail-wg0-f52.google.com with SMTP id b13so3245128wgh.35
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 01:49:42 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Thu, 26 Jun 2014 10:49:16 +0200
Message-Id: <1403772557-28482-4-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 3/4] sandbox: add bit manipulation stuff
To: barebox@lists.infradead.org

The functions are already in the sandbox, just the #defines are
missing.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/sandbox/include/asm/bitops.h |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/sandbox/include/asm/bitops.h b/arch/sandbox/include/asm/bitops.h
index 94646d4..447023d 100644
--- a/arch/sandbox/include/asm/bitops.h
+++ b/arch/sandbox/include/asm/bitops.h
@@ -12,4 +12,11 @@
 #include <asm-generic/bitops/hweight.h>
 #include <asm-generic/bitops/ops.h>
 
+#define set_bit(x, y)			__set_bit(x, y)
+#define clear_bit(x, y)			__clear_bit(x, y)
+#define change_bit(x, y)		__change_bit(x, y)
+#define test_and_set_bit(x, y)		__test_and_set_bit(x, y)
+#define test_and_clear_bit(x, y)	__test_and_clear_bit(x, y)
+#define test_and_change_bit(x, y)	__test_and_change_bit(x, y)
+
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
