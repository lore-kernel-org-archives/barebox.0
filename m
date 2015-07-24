Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIdFC-0007zS-CN
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 13:42:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZIbNM-0001ut-Cn
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 13:42:52 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZIdEp-0006X7-K9
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 15:42:11 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 24 Jul 2015 15:42:03 +0200
Message-Id: <1437745326-8994-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1437745326-8994-1-git-send-email-jbe@pengutronix.de>
References: <1437745326-8994-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/5] Devicetree/PPC: fix devicetree's fixup
To: barebox@lists.infradead.org

Currently Barebox fails to boot a kernel/devicetree pair on PowerPC.

With of_find_node_by_path() the framework uses a global variable to find
the root node and fails. With of_find_node_by_path_from() and forwarding
the 'root' parameter it works again as expected.

This fixes the following error message at run-time:

Loading U-Boot uImage '/tmp/tftpcmd/kernel'
Loading devicetree from '/tmp/tftpcmd/oftree'
bootm: No devicetree given.
handler failed with: Invalid argument

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/cpu.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index c860e70..a53af63 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -83,17 +83,21 @@ static int of_mpc5200_fixup(struct device_node *root, void *unused)
 
 	int div = in_8((void*)CFG_MBAR + 0x204) & 0x0020 ? 8 : 4;
 
-	node = of_find_node_by_path("/cpus/PowerPC,5200@0");
-	if (!node)
+	node = of_find_node_by_path_from(root, "/cpus/PowerPC,5200@0");
+	if (!node) {
+		pr_err("Cannot find node '/cpus/PowerPC,5200@0' for proper CPU frequency fixup\n");
 		return -EINVAL;
+	}
 
 	of_property_write_u32(node, "timebase-frequency", get_timebase_clock());
 	of_property_write_u32(node, "bus-frequency", get_bus_clock());
 	of_property_write_u32(node, "clock-frequency", get_cpu_clock());
 
-	node = of_find_node_by_path("/soc5200@f0000000");
-	if (!node)
+	node = of_find_node_by_path_from(root, "/soc5200@f0000000");
+	if (!node) {
+		pr_err("Cannot find node '/soc5200@f0000000' for proper SOC frequency fixup\n");
 		return -EINVAL;
+	}
 
 	of_property_write_u32(node, "bus-frequency", get_ipb_clock());
 	of_property_write_u32(node, "system-frequency", get_bus_clock() * div);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
