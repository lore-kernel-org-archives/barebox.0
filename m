Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGAXG-0002ZH-AS
 for barebox@lists.infradead.org; Fri, 06 Apr 2012 14:53:12 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id DFD82FF90B2
 for <barebox@lists.infradead.org>; Fri,  6 Apr 2012 16:53:54 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  6 Apr 2012 16:36:38 +0200
Message-Id: <1333722998-28648-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91rm9200ek: set maximum nor flash size
To: barebox@lists.infradead.org

it's 8MiB.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 6911447..3875f4a 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -28,6 +28,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
+#include <sizes.h>
 #include <asm/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
@@ -116,7 +117,7 @@ static int at91rm9200ek_devices_init(void)
 
 	at91_add_device_eth(0, &ether_pdata);
 
-	add_cfi_flash_device(0, AT91_CHIPSELECT_0, 0, 0);
+	add_cfi_flash_device(0, AT91_CHIPSELECT_0, SZ_8M, 0);
 	/* USB Host */
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_device_add_leds();
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
