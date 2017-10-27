Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e85ll-0004JQ-D7
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 14:38:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 690DAA0098B
 for <barebox@lists.infradead.org>; Fri, 27 Oct 2017 16:39:27 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 27 Oct 2017 16:37:32 +0200
Message-Id: <1509115052-4331-5-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509115052-4331-1-git-send-email-d.schultz@phytec.de>
References: <1509115052-4331-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 5/5] ARM: phytec-som-am335x: Set MAC addresses from state
To: barebox@lists.infradead.org

If a state with the name 'am335x_phytec_mac_state' is available, valid MAC
addresses from this state get registerd to their ethernet device.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/board.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index dc3b84a..34d4df1 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -21,10 +21,12 @@
 #include <bootsource.h>
 #include <common.h>
 #include <nand.h>
+#include <net.h>
 #include <init.h>
 #include <io.h>
 #include <linux/sizes.h>
 #include <envfs.h>
+#include <state.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <linux/phy.h>
@@ -67,6 +69,10 @@ static char *nandslots[] = {
 
 static int physom_devices_init(void)
 {
+	struct state *state;
+	struct state_variable *sv;
+	struct state_mac *mac;
+
 	if (!of_machine_is_compatible("phytec,am335x-som"))
 		return 0;
 
@@ -114,6 +120,22 @@ static int physom_devices_init(void)
 				ARRAY_SIZE(nandslots));
 	am33xx_bbu_emmc_mlo_register_handler("MLO.emmc", "/dev/mmc1");
 
+	if (IS_ENABLED(CONFIG_STATE)) {
+		state = state_by_name("am335x_phytec_mac_state");
+		if (state) {
+			sv = state_find_var(state, "mac0");
+			if (!IS_ERR(sv)) {
+				mac = to_state_mac(sv);
+				eth_register_ethaddr(0, mac->value);
+			}
+			sv = state_find_var(state, "mac1");
+			if (!IS_ERR(sv)) {
+				mac = to_state_mac(sv);
+				eth_register_ethaddr(1, mac->value);
+			}
+		}
+	}
+
 	if (IS_ENABLED(CONFIG_SHELL_NONE))
 		return am33xx_of_register_bootdevice();
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
