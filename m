Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6mRT-0006fM-Ue
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 18:24:56 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 7A502FFA62C
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 19:40:25 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Feb 2013 19:23:46 +0100
Message-Id: <1361039026-26015-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1361039026-26015-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130216182202.GI19322@game.jcrosoft.org>
 <1361039026-26015-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] highbank: add of fixup
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

depending on the power domain register we need to disable sata or mmc
and update the cpu informations

take from Calxeda U-Boot git

Register the original dtb to /dev/firmware-dtb and the fixed dtb to /dev/dtb

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/highbank/init.c               |   48 ++++++++++++++++++++++++-
 arch/arm/mach-highbank/include/mach/sysregs.h |    5 +++
 2 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index bcd2783..e36674f 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -10,15 +10,57 @@
 #include <asm/system_info.h>
 #include <generated/mach-types.h>
 #include <mach/devices.h>
+#include <mach/hardware.h>
+#include <mach/sysregs.h>
 #include <environment.h>
 #include <partition.h>
 #include <sizes.h>
 #include <io.h>
+#include <libfdt.h>
 
 #define FIRMWARE_DTB_BASE	0x1000
 
+#define HB_OPP_VERSION		0
+
 struct fdt_header *fdt = NULL;
 
+static int hb_fixup(struct fdt_header *fdt)
+{
+	u32 reg = readl(sregs_base + HB_SREG_A9_PWRDOM_DATA);
+	u32 *opp_table = (u32 *)HB_SYSRAM_OPP_TABLE_BASE;
+	u32 dtb_table[2*10];
+	u32 i;
+	u32 num_opps;
+	__be32 latency;
+
+	if (!(reg & HB_PWRDOM_STAT_SATA))
+		do_fixup_by_compatible_string(fdt, "calxeda,hb-ahci", "status",
+					           "disabled", 1);
+
+	if (!(reg & HB_PWRDOM_STAT_EMMC))
+		do_fixup_by_compatible_string(fdt, "calxeda,hb-sdhci", "status",
+					           "disabled", 1);
+
+	if ((opp_table[0] >> 16) != HB_OPP_VERSION)
+		return 0;
+
+	num_opps = opp_table[0] & 0xff;
+
+	for (i = 0; i < num_opps; i++) {
+		dtb_table[2 * i] = cpu_to_be32(opp_table[3 + 3 * i]);
+		dtb_table[2 * i + 1] = cpu_to_be32(opp_table[2 + 3 * i]);
+	}
+
+	latency = cpu_to_be32(opp_table[1]);
+
+	fdt_find_and_setprop(fdt, "/cpus/cpu@0", "transition-latency",
+				  &latency, 4, 1);
+	fdt_find_and_setprop(fdt, "/cpus/cpu@0", "operating-points",
+				  dtb_table, 8 * num_opps, 1);
+
+	return 0;
+}
+
 static int highbank_mem_init(void)
 {
 	struct device_node *np;
@@ -57,6 +99,7 @@ mem_initcall(highbank_mem_init);
 
 static int highbank_devices_init(void)
 {
+	of_register_fixup(hb_fixup);
 	if (!fdt) {
 		highbank_register_gpio(0);
 		highbank_register_gpio(1);
@@ -66,7 +109,10 @@ static int highbank_devices_init(void)
 		highbank_register_xgmac(0);
 		highbank_register_xgmac(1);
 	} else {
-		devfs_add_partition("ram0", FIRMWARE_DTB_BASE, SZ_64K, DEVFS_PARTITION_FIXED, "dtb");
+		fdt = of_get_fixed_tree(fdt);
+		add_mem_device("dtb", (unsigned long)fdt, fdt_totalsize(fdt),
+		       IORESOURCE_MEM_WRITEABLE);
+		devfs_add_partition("ram0", FIRMWARE_DTB_BASE, SZ_64K, DEVFS_PARTITION_FIXED, "firmware-dtb");
 	}
 
 	armlinux_set_bootparams((void *)(0x00000100));
diff --git a/arch/arm/mach-highbank/include/mach/sysregs.h b/arch/arm/mach-highbank/include/mach/sysregs.h
index c879422..2f058f2 100644
--- a/arch/arm/mach-highbank/include/mach/sysregs.h
+++ b/arch/arm/mach-highbank/include/mach/sysregs.h
@@ -23,6 +23,11 @@ extern void __iomem *sregs_base;
 #define HB_SREG_A9_PWR_REQ		0xf00
 #define HB_SREG_A9_BOOT_STAT		0xf04
 #define HB_SREG_A9_BOOT_DATA		0xf08
+#define HB_SREG_A9_PWRDOM_DATA		0xf20
+
+#define HB_PWRDOM_STAT_SATA	0x80000000
+#define HB_PWRDOM_STAT_PCI	0x40000000
+#define HB_PWRDOM_STAT_EMMC	0x20000000
 
 #define HB_PWR_SUSPEND			0
 #define HB_PWR_SOFT_RESET		1
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
