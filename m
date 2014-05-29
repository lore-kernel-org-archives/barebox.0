Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WppMY-00004y-PO
 for barebox@lists.infradead.org; Thu, 29 May 2014 01:42:35 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Thu, 29 May 2014 09:41:59 +0800
Message-ID: <1401327719-4397-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: atmel: sama5d3xek: remove duplicate included file
To: barebox@lists.infradead.org

As the at91sam9_smc.h duplicate in header list, remove one.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
 arch/arm/boards/sama5d3xek/init.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index e078642..731bbbb 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -30,7 +30,6 @@
 #include <linux/mtd/nand.h>
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
-#include <mach/at91sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
 #include <mach/iomux.h>
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
