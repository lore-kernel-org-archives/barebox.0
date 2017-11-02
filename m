Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAEqM-00039c-RM
 for barebox@lists.infradead.org; Thu, 02 Nov 2017 12:43:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 77891A008F6
 for <barebox@lists.infradead.org>; Thu,  2 Nov 2017 13:44:42 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Thu, 2 Nov 2017 13:42:45 +0100
Message-Id: <1509626565-3722-6-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509626565-3722-1-git-send-email-d.schultz@phytec.de>
References: <1509626565-3722-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 6/6] ARM: phytec-som-am335x: Set MAC addresses from state
To: barebox@lists.infradead.org

If a state with the name 'am335x_phytec_mac_state' is available, valid
MAC addresses from this state get registerd to their ethernet device.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
Changes:
	v2: Changed to new 'state_read_mac' function

 arch/arm/boards/phytec-som-am335x/board.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index dc3b84a..9f74981 100644
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
@@ -65,8 +67,16 @@ static char *nandslots[] = {
 	"/dev/nand0.barebox_backup.bb",
 };
 
+#define ETH_COUNT 2
+static const char *eth_names[ETH_COUNT] = {"mac0", "mac1"};
+
 static int physom_devices_init(void)
 {
+	struct state *state;
+	u8 mac[6];
+	int state_ret;
+	int state_i;
+
 	if (!of_machine_is_compatible("phytec,am335x-som"))
 		return 0;
 
@@ -114,6 +124,17 @@ static int physom_devices_init(void)
 				ARRAY_SIZE(nandslots));
 	am33xx_bbu_emmc_mlo_register_handler("MLO.emmc", "/dev/mmc1");
 
+	if (IS_ENABLED(CONFIG_STATE)) {
+		state = state_by_name("am335x_phytec_mac_state");
+		if (state)
+			for (state_i = 0; state_i < 2; state_i++) {
+				state_ret = state_read_mac(state,
+						      eth_names[state_i], &mac[0]);
+				if (state_ret == 6)
+					eth_register_ethaddr(state_i, mac);
+			}
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
