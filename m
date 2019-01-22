Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm0wT-0002RG-EK
 for barebox@lists.infradead.org; Tue, 22 Jan 2019 18:38:34 +0000
Received: by mail-lj1-x241.google.com with SMTP id g11-v6so21572132ljk.3
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2019 10:38:32 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 22 Jan 2019 21:38:25 +0300
Message-Id: <20190122183825.9046-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2] ARM: zynq: fix "'IO_SPACE_LIMIT' redefined" warning
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The patch fixes the following compiler's warning:

In file included from include/common.h:33:0,
                 from arch/arm/mach-zynq/zynq.c:18:
arch/arm/include/asm/io.h:4:0: warning: "IO_SPACE_LIMIT" redefined
 #define IO_SPACE_LIMIT 0

In file included from
arch/arm/mach-zynq/zynq.c:17:0:
include/asm-generic/io.h:92:0: note: this is the location of the previous definition
 #define IO_SPACE_LIMIT 0xffff

Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-zynq/zynq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index a0a8d0d249..f6112fd249 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -14,7 +14,7 @@
  */
 
 #include <asm/system.h>
-#include <asm-generic/io.h>
+#include <io.h>
 #include <common.h>
 #include <init.h>
 #include <restart.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
