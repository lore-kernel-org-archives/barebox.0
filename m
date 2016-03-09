Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adgL5-00077C-Oj
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 15:47:57 +0000
Received: by mail-lb0-x22b.google.com with SMTP id bc4so71069883lbc.2
 for <barebox@lists.infradead.org>; Wed, 09 Mar 2016 07:47:35 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  9 Mar 2016 18:46:53 +0300
Message-Id: <1457538413-8641-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! MIPS: add initial R4000-style cache support
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

---
 arch/mips/lib/c-r4k.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 4fe046a..ba77d18 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -10,7 +10,6 @@
 #include <common.h>
 #include <asm/io.h>
 #include <asm/mipsregs.h>
-#include <asm/cache.h>
 #include <asm/cacheops.h>
 #include <asm/cpu.h>
 #include <asm/cpu-info.h>
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
