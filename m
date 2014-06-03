Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvNb-0004ID-QB
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:32:21 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 24F2E18B425E
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:25 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:51 +0200
Message-Id: <1401827717-6420-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 04/30] tegra: pmc: add command to get into RCM
To: barebox@lists.infradead.org

In RCM aka recovery mode the BootROM waits for a
usbloader to take over control. On most boards this
is triggered by holding a physical switch which may
be inconvinient at times. Add a command to switch
into RCM from software.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra20-pmc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
index 1069df9..37496ac 100644
--- a/arch/arm/mach-tegra/tegra20-pmc.c
+++ b/arch/arm/mach-tegra/tegra20-pmc.c
@@ -20,6 +20,7 @@
  */
 
 #include <common.h>
+#include <command.h>
 #include <init.h>
 #include <io.h>
 
@@ -47,6 +48,14 @@ static int tegra20_pmc_probe(struct device_d *dev)
 	return 0;
 }
 
+static int do_tegrarcm(int argc, char *argv[])
+{
+	writel(2, pmc_base + PMC_SCRATCH(0));
+	reset_cpu(0);
+
+	return 0;
+}
+
 static __maybe_unused struct of_device_id tegra20_pmc_dt_ids[] = {
 	{
 		.compatible = "nvidia,tegra20-pmc",
@@ -68,3 +77,14 @@ static int tegra20_pmc_init(void)
 	return platform_driver_register(&tegra20_pmc_driver);
 }
 coredevice_initcall(tegra20_pmc_init);
+
+BAREBOX_CMD_HELP_START(tegrarcm)
+BAREBOX_CMD_HELP_TEXT("Get into recovery mode without using a physical switch\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(tegrarcm)
+	.cmd		= do_tegrarcm,
+	BAREBOX_CMD_DESC("Usage: tegrarcm")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_tegrarcm_help)
+BAREBOX_CMD_END
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
