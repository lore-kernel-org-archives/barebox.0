Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsKfd-00076X-33
 for barebox@lists.infradead.org; Tue, 31 Jan 2012 20:51:18 +0000
Received: by eaai1 with SMTP id i1so163783eaa.36
 for <barebox@lists.infradead.org>; Tue, 31 Jan 2012 12:51:15 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Tue, 31 Jan 2012 21:51:08 +0100
Message-Id: <1328043068-9577-2-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1328043068-9577-1-git-send-email-marek.belisko@open-nandra.com>
References: <1328043068-9577-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 2/2] pandaboard: Add gpmc_generic_init to board init.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

We need to setup generic gpmc otherwise kernel panic during boot.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/boards/panda/board.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index be3ad77..1c71545 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -20,6 +20,7 @@
 #include <mach/gpio.h>
 #include <environment.h>
 #include <mach/xload.h>
+#include <mach/gpmc.h>
 
 static int board_revision;
 
@@ -137,6 +138,8 @@ static int panda_devices_init(void)
 			   IORESOURCE_MEM, NULL);
 	panda_ehci_init();
 
+	gpmc_generic_init(0x00);
+
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_OMAP4_PANDA);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
