Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from alcapone.vm.bytemark.co.uk ([89.16.173.107])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wpzk5-0003oH-FM
 for barebox@lists.infradead.org; Thu, 29 May 2014 12:47:38 +0000
From: Matteo Fortini <matteo.fortini@gmail.com>
Date: Thu, 29 May 2014 14:44:39 +0200
Message-Id: <assp.0226f60ff0.1401367479-16179-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: [PATCH V2] sama5d3x: fix AT91_SMC_CS offset stride
To: barebox@lists.infradead.org

As stated in section 29.19.32 of SAMA5D3 Series datasheet, to move
from CS(n) to CS(n+1) the stride is 0x14 and not 0x10 as in the
other AT91 CPUs

Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
---
 arch/arm/mach-at91/sam9_smc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index a137da4..6dd3797 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -12,11 +12,13 @@
 #include <init.h>
 #include <io.h>
 #include <mach/hardware.h>
+#include <mach/cpu.h>
 #include <mach/io.h>
 
 #include <mach/at91sam9_smc.h>
 
-#define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x10))
+#define AT91_SMC_CS_STRIDE      ((at91_soc_initdata.type == AT91_SOC_SAMA5D3)?0x14:0x10)
+#define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * AT91_SMC_CS_STRIDE))
 
 static void __iomem *smc_base_addr[2];
 
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
