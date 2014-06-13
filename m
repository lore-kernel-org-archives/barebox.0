Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMLI-0000EY-HZ
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:56:10 +0000
Received: by mail-la0-f44.google.com with SMTP id hr17so1262037lab.17
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:45 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.44
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:44 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:35 +0200
Message-Id: <1402646075-22747-19-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 18/18] arm: pcm051: enable USB
To: barebox@lists.infradead.org

---
 arch/arm/boards/phytec-phycore-am335x/board.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boards/phytec-phycore-am335x/board.c b/arch/arm/boards/phytec-phycore-am335x/board.c
index 70b5db6..305c71b 100644
--- a/arch/arm/boards/phytec-phycore-am335x/board.c
+++ b/arch/arm/boards/phytec-phycore-am335x/board.c
@@ -31,6 +31,7 @@
 #include <mach/am33xx-generic.h>
 #include <mach/am33xx-silicon.h>
 #include <mach/am33xx-clock.h>
+#include <mach/am33xx-usb.h>
 #include <mach/bbu.h>
 
 
@@ -58,10 +59,15 @@ static char *xloadslots[] = {
 	"/dev/nand0.xload_backup3.bb"
 };
 
+static struct am33xx_usb_pdata pcm051_usb_data = {
+	.bus_number = 1,
+};
+
 static void pcm051_usb_init(void)
 {
 	am33xx_enable_usb0_pin_mux();
 	am33xx_enable_usb1_pin_mux();
+	am33xx_add_usb(&pcm051_usb_data);
 }
 
 static int pcm051_devices_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
