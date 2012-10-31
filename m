Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTcxf-0008GZ-Ll
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 18:24:22 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 15BFCFF9832
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2012 19:34:22 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 31 Oct 2012 19:22:03 +0100
Message-Id: <1351707724-28704-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351707724-28704-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121031165240.GG29599@game.jcrosoft.org>
 <1351707724-28704-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] at91sam9x5ek: add fixup for cogent cpu module
To: barebox@lists.infradead.org

The modules from cogent use a 1.8V nand
And have the mci card detect broken as they use the flash vdd as vdd for the
cd which need > 2V

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/hw_version.c |   32 +++++++++++++++++++++++++++++
 arch/arm/boards/at91sam9x5ek/init.c       |    9 ++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 709fd68..47c640a 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -19,6 +19,8 @@
 #include <fcntl.h>
 #include <libbb.h>
 #include <asm/armlinux.h>
+#include <of.h>
+#include <libfdt.h>
 
 #include "hw_version.h"
 
@@ -228,6 +230,33 @@ static void at91sam9x5ek_devices_detect_one(const char *name)
 	dev_add_param_fixed(dev, "revision_id", str);
 }
 
+#define NODE_NAME_LEN  128
+
+static int cm_cogent_fixup(struct fdt_header *fdt)
+{
+	int off, ret;
+	char node_name[NODE_NAME_LEN];
+
+	off = fdt_node_offset_by_compatible(fdt, -1, "atmel,hsmci");
+
+	while (off != -FDT_ERR_NOTFOUND) {
+		off = fdt_subnode_offset(fdt, off, "slot");
+		fdt_get_path(fdt, off, node_name, NODE_NAME_LEN);
+		ret = fdt_setprop(fdt, off, "broken-cd", NULL, 0);
+		if (ret < 0) {
+			pr_err("error %d while adding broken-cd property to node %s\n",
+				ret, node_name);
+			return ret;
+		} else {
+			pr_debug("add broken-cd property to node %s\n", node_name);
+		}
+
+		off = fdt_node_offset_by_compatible(fdt, off, "atmel,hsmci");
+	}
+
+	return 0;
+}
+
 void at91sam9x5ek_devices_detect_hw(void)
 {
 	at91sam9x5ek_devices_detect_one("/dev/ds24310");
@@ -237,4 +266,7 @@ void at91sam9x5ek_devices_detect_hw(void)
 	pr_info("sn: 0x%x, rev: 0x%x\n", sn, rev);
 	armlinux_set_revision(rev);
 	armlinux_set_serial(sn);
+
+	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT))
+		of_register_fixup(cm_cogent_fixup);
 }
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 7ba1e25..b3d7ab2 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -36,6 +36,7 @@
 #include <mach/io.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
+#include <mach/at91sam9x5_matrix.h>
 #include <gpio_keys.h>
 #include <readkey.h>
 #include <linux/w1-gpio.h>
@@ -88,6 +89,14 @@ static void ek_add_device_nand(void)
 	/* configure chip-select 3 (NAND) */
 	sam9_smc_configure(3, &cm_nand_smc_config);
 
+	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT)) {
+		unsigned long csa;
+
+		csa = at91_sys_read(AT91_MATRIX_EBICSA);
+		csa |= AT91_MATRIX_EBI_VDDIOMSEL_1_8V;
+		at91_sys_write(AT91_MATRIX_EBICSA, csa);
+	}
+
 	at91_add_device_nand(&nand_pdata);
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
