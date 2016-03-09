Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adgLU-0007X4-Ie
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 15:48:21 +0000
Received: by mail-lb0-x22b.google.com with SMTP id xr8so68555073lbb.1
 for <barebox@lists.infradead.org>; Wed, 09 Mar 2016 07:48:00 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  9 Mar 2016 18:47:10 +0300
Message-Id: <1457538430-8702-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! MIPS: flush cache on shutdown
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

---
 arch/mips/lib/c-r4k.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 63e8f1c..1502058 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -10,6 +10,7 @@
 #include <common.h>
 #include <asm/io.h>
 #include <asm/mipsregs.h>
+#include <asm/cache.h>
 #include <asm/cacheops.h>
 #include <asm/cpu.h>
 #include <asm/cpu-info.h>
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
