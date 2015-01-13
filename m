Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAxua-00078H-38
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 09:37:20 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t0D9avtA028238
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 18:36:57 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id t0D9awB19254
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 18:36:58 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 18:36:54 +0900
Message-Id: <1421141815-12618-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] ARM: include some headers from barebox-arm.h
To: barebox@lists.infradead.org

ENTRY_FUNCTION() references __barebox_arm_head(),
so <asm/barebox-arm-head.h> should be included from barebox-arm.h
to avoid implicit declaration warning/error.

ENTRY_FUNCTION() uses __naked, so <linux/compiler.h> should also be
included.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/arm/include/asm/barebox-arm.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 9ad07cb..dbc8aaa 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -29,6 +29,8 @@
 #include <asm-generic/memory_layout.h>
 #include <linux/kernel.h>
 #include <linux/types.h>
+#include <linux/compiler.h>
+#include <asm/barebox-arm-head.h>
 
 /* cpu/.../cpu.c */
 int	cleanup_before_linux(void);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
