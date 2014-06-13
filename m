Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMLG-0000DY-Up
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:56:08 +0000
Received: by mail-lb0-f181.google.com with SMTP id q8so1341804lbi.12
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:44 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.42
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:43 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:34 +0200
Message-Id: <1402646075-22747-18-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 17/18] arm: pcm051: enable USB pinmux
To: barebox@lists.infradead.org

---
 arch/arm/boards/phytec-phycore-am335x/board.c |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boards/phytec-phycore-am335x/board.c b/arch/arm/boards/phytec-phycore-am335x/board.c
index 9482b80..70b5db6 100644
--- a/arch/arm/boards/phytec-phycore-am335x/board.c
+++ b/arch/arm/boards/phytec-phycore-am335x/board.c
@@ -27,8 +27,10 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/phy.h>
+#include <mach/am33xx-mux.h>
 #include <mach/am33xx-generic.h>
 #include <mach/am33xx-silicon.h>
+#include <mach/am33xx-clock.h>
 #include <mach/bbu.h>
 
 
@@ -56,6 +58,12 @@ static char *xloadslots[] = {
 	"/dev/nand0.xload_backup3.bb"
 };
 
+static void pcm051_usb_init(void)
+{
+	am33xx_enable_usb0_pin_mux();
+	am33xx_enable_usb1_pin_mux();
+}
+
 static int pcm051_devices_init(void)
 {
 	if (!of_machine_is_compatible("phytec,pcm051"))
@@ -81,6 +89,8 @@ static int pcm051_devices_init(void)
 	am33xx_bbu_nand_xloadslots_register_handler("MLO.nand",
 		xloadslots, ARRAY_SIZE(xloadslots));
 
+	pcm051_usb_init();
+
 	return 0;
 }
 device_initcall(pcm051_devices_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
