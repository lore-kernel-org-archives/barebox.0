Delivery-date: Fri, 17 Jun 2022 23:59:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o2K0H-005fmQ-G8
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 23:59:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o2K0G-0000dQ-Ry
	for lore@pengutronix.de; Fri, 17 Jun 2022 23:59:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=idI6fpKnYk/c8sA+04ZeXPYmELdiw9svGmuFhcfSWtw=; b=flg5bYhH6yfIgCiZPTVwkWvCT5
	hOXTyZ/XGluPAqLelqN4vqHDrOdzoB6jX3ZjJA2+NyZ/pi1mYiMNPegaDzpJnEJrFaaQ0zSnmlOW/
	6TFqRMoF+Pvyst2a0iJF8ZK1r/QsEBcpspbYIBOzeMimG8huwUp/NN33N1Ybd55QWZB/+FAjcF/fb
	IH//0fX9+/4M+NYq0PEcMih9LjMuBix3/YU/w4xGRr/QEIWY8wZlzVUEQ8kpRmOLatEF7PcHWWna4
	8l0KCfAjYTpqbJE2tX3bXwMYMnP9Ccje9rYoCa11N6wS8D21h4wY1xfAWmt8HtW/ovTfuLLmxlRlE
	M93feNbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Jyw-009LJ1-24; Fri, 17 Jun 2022 21:58:22 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2Jyr-009LHn-1e
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 21:58:19 +0000
Received: by mail-ej1-x631.google.com with SMTP id o7so11053321eja.1
        for <barebox@lists.infradead.org>; Fri, 17 Jun 2022 14:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=idI6fpKnYk/c8sA+04ZeXPYmELdiw9svGmuFhcfSWtw=;
        b=hK1MIPXj+lCg8cB0+qAvL5QjxCLYrY8o7QmRK/oQ4tfB+RQexT2aXP5Fb03H1AG0Kg
         FgUP2ejICU1mxP2Gb/ttNUbD2k9o0FvtVmQkKc78rCCTh9GeQ00EtmFFVcl8GaYszMnF
         qCiwjmeGc44p5frJgLTNFky/F6wl/SiKrZhyI4xmUmxerHXKtGeSNTL8xHEmpDzwo5za
         SWoccmPVFmX2jN9zeAwH2srggqfcE7thGulEPYwOZzipGWlB10TQN+G3mxa2jHqKf7m7
         S+DdfV10ppp1jwIi3Ifzkt+kKlR0pw8H0vUiidnabrWCPrKKhHpFe2OOS5LFO0wXAkQf
         tXDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=idI6fpKnYk/c8sA+04ZeXPYmELdiw9svGmuFhcfSWtw=;
        b=gGpvRAWBQCyabtiyJ37HXG0h1Msnl9CLt8A6Gwkovgm7r7OisRTJ9Jrph7L8OkZje3
         MtaiKilNJqBlbFC+sxH35nqTLl445dKDCgN/tH/KLWuYPcR/8RaXo4u4JsFTkvGUDSu6
         BsJBUHztnV8kHOeiDRav/PL70Uu3ABKldrRMgXuUrlnZA4S7JAvwbJCHXPYO+b86TgF9
         BLsZm4xuAACwlpI/kHUgTDYIx4y0JkCu44vnsz4QHBiPzFTfqGFA14EG49a7GP1nQtZg
         5/l55nbIIihqmcWAG/yj94AWBLRX5d81rp56AoSnrmXS7CiQd07V7aDxoCcmj6EDBWkn
         5VHg==
X-Gm-Message-State: AJIora+qOXRyLJPdTK/GxAb1xAmnuGJ+tOVU4vnKpVk9jiu4wHxK96bv
	q/TmjGxENu8bYqyPmg/anSrhRabgXdKGuQ==
X-Google-Smtp-Source: AGRyM1uSmYNtjU0suusxoXkn2guZvnkbm+Ip3khXGxfUdc4MHZCjBEyq50yU3/MhNAHFcgcboAXV4Q==
X-Received: by 2002:a17:907:1ca8:b0:706:9ee2:dbc with SMTP id nb40-20020a1709071ca800b007069ee20dbcmr11233519ejc.398.1655503093049;
        Fri, 17 Jun 2022 14:58:13 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-69-229.net.upcbroadband.cz. [78.45.69.229])
        by smtp.gmail.com with ESMTPSA id f17-20020a0564021e9100b0042e17781fc5sm4790068edf.49.2022.06.17.14.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 14:58:12 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Fri, 17 Jun 2022 23:58:11 +0200
Message-Id: <20220617215811.5687-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_145817_158048_E23A0C26 
X-CRM114-Status: GOOD (  23.20  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4] ARM: rpi: parse useful data from vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Videocore first-stage loader on rpi passes us many useful information
inside the vc fdt, including the real value of PM_RSTS register, not
easily available by other means and which we can use to determine
the reset cause.
Also make the relevant funtions just print error/warning and continue
in case of some errors, since the fdt from vc is now optional for
barebox's basic function.

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 183 +++++++++++++++++-----
 drivers/watchdog/bcm2835_wdt.c            |  23 +--
 include/soc/bcm283x/wdt.h                 |  40 +++++
 3 files changed, 182 insertions(+), 64 deletions(-)
 create mode 100644 include/soc/bcm283x/wdt.h

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 12a4f4a0a..eaca4edef 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -23,13 +23,28 @@
 #include <linux/sizes.h>
 #include <globalvar.h>
 #include <asm/system_info.h>
+#include <reset_source.h>
 
 #include <mach/core.h>
 #include <mach/mbox.h>
 #include <mach/platform.h>
 
+#include <soc/bcm283x/wdt.h>
+
 #include "lowlevel.h"
 
+//https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#BOOT_ORDER
+static const char * const boot_mode_names[] = {
+	[0x0] = "unknown",
+	[0x1] = "sd",
+	[0x2] = "net",
+	[0x3] = "rpiboot",
+	[0x4] = "usbmsd",
+	[0x5] = "usbc",
+	[0x6] = "nvme",
+	[0x7] = "http",
+};
+
 struct rpi_priv;
 struct rpi_machine_data {
 	int (*init)(struct rpi_priv *priv);
@@ -186,54 +201,131 @@ static int rpi_env_init(void)
 	return 0;
 }
 
-/* Extract /chosen/bootargs from the VideoCore FDT into vc.bootargs
- * global variable. */
-static int rpi_vc_fdt_bootargs(void *fdt)
+/* Some string properties in fdt passed to us from vc may be
+ * malformed by not being null terminated. In that case, create and
+ * return a null terminated copy.
+ */
+static char *of_read_vc_string(struct device_node *node,
+				     const char *prop_name,
+				     bool *is_dyn)
+{
+	int len;
+	char *str;
+
+	str = (char *)of_get_property(node, prop_name, &len);
+	if (!str || len <= 0)
+		return NULL;
+	if (is_dyn)
+		*is_dyn = str[len - 1] != '\0';
+	return str[len - 1] == '\0' ? str : xstrndup(str, len);
+}
+
+static u32 rpi_boot_mode, rpi_boot_part;
+/* Extract useful information from the VideoCore FDT we got.
+ * Some parameters are defined here:
+ * https://www.raspberrypi.com/documentation/computers/configuration.html#part4
+ */
+static void rpi_vc_fdt_parse(void *fdt)
 {
-	int ret = 0;
-	struct device_node *root = NULL, *node;
-	const char *cmdline;
+	int ret;
+	struct device_node *root, *chosen, *bootloader;
+	enum reset_src_type rst_src = RESET_UKWN;
+	char *str;
+	bool is_dyn;
+	u32 pm_rsts;
 
 	root = of_unflatten_dtb(fdt, INT_MAX);
-	if (IS_ERR(root)) {
-		ret = PTR_ERR(root);
-		root = NULL;
-		goto out;
+	if (IS_ERR(root))
+		return;
+
+	str = of_read_vc_string(root, "serial-number", &is_dyn);
+	if (str) {
+		barebox_set_serial_number(str);
+		if (is_dyn)
+			free(str);
+	} else {
+		pr_warn("no 'serial-number' property found in vc fdt root\n");
 	}
 
-	node = of_find_node_by_path_from(root, "/chosen");
-	if (!node) {
-		pr_err("no /chosen node\n");
-		ret = -ENOENT;
-		goto out;
+	str = of_read_vc_string(root, "model", &is_dyn);
+	if (str) {
+		barebox_set_model(str);
+		if (is_dyn)
+			free(str);
+	} else {
+		pr_warn("no 'model' property found in vc fdt root\n");
 	}
 
-	cmdline = of_get_property(node, "bootargs", NULL);
-	if (!cmdline) {
-		pr_err("no bootargs property in the /chosen node\n");
-		ret = -ENOENT;
+	chosen = of_find_node_by_path_from(root, "/chosen");
+	if (!chosen) {
+		pr_err("no '/chosen' node found in vc fdt\n");
 		goto out;
 	}
 
-	globalvar_add_simple("vc.bootargs", cmdline);
+	bootloader = of_find_node_by_name(chosen, "bootloader");
+
+	str = of_read_vc_string(chosen, "bootargs", NULL);
+	if (str)
+		globalvar_add_simple("vc.bootargs", str);
+	else
+		pr_warn("no 'bootargs' property found in vc fdt '/chosen'\n");
+
+	str = of_read_vc_string(chosen, "overlay_prefix", NULL);
+	if (str)
+		globalvar_add_simple("vc.overlay_prefix", str);
+	else
+		pr_warn("no 'overlay_prefix' property found in vc fdt '/chosen'\n");
+
+	str = of_read_vc_string(chosen, "os_prefix", NULL);
+	if (str)
+		globalvar_add_simple("vc.os_prefix", str);
+	else
+		pr_warn("no 'os_prefix' property found in vc fdt '/chosen'\n");
+
+	ret = of_property_read_u32(chosen, "boot-mode", &rpi_boot_mode);
+	if (ret && bootloader)
+		ret = of_property_read_u32(bootloader, "boot-mode", &rpi_boot_mode);
+	if (ret)
+		pr_debug("'boot-mode' property not found in vc fdt\n");
+	else
+		globalvar_add_simple_enum("vc.boot_mode", &rpi_boot_mode,
+					  boot_mode_names,
+					  ARRAY_SIZE(boot_mode_names));
+
+	ret = of_property_read_u32(chosen, "partition", &rpi_boot_part);
+	if (ret && bootloader)
+		ret = of_property_read_u32(bootloader, "partition", &rpi_boot_part);
+	if (ret)
+		pr_debug("'partition' property not found in vc fdt\n");
+	else
+		globalvar_add_simple_int("vc.boot_partition", &rpi_boot_part, "%u");
 
-	switch(cpu_architecture()) {
-	case CPU_ARCH_ARMv6:
-		globalvar_add_simple("vc.kernel", "kernel.img");
-		break;
-	case CPU_ARCH_ARMv7:
-		globalvar_add_simple("vc.kernel", "kernel7.img");
-		break;
-	case CPU_ARCH_ARMv8:
-		globalvar_add_simple("vc.kernel", "kernel8.img");
-		break;
-	}
+	if (IS_ENABLED(CONFIG_RESET_SOURCE)) {
+		ret = of_property_read_u32(chosen, "pm_rsts", &pm_rsts);
+		if (ret && bootloader)
+			 ret = of_property_read_u32(bootloader, "rsts", &pm_rsts);
 
+		if (ret) {
+			pr_warn("pm_rsts could not be get from vc fdt\n");
+		} else {
+/*
+ * https://github.com/raspberrypi/linux/issues/932#issuecomment-93989581
+ */
+			if (pm_rsts & PM_RSTS_HADPOR_SET)
+				rst_src = RESET_POR;
+			else if (pm_rsts & PM_RSTS_HADDR_SET)
+				rst_src = RESET_JTAG;
+			else if (pm_rsts & PM_RSTS_HADWR_SET)
+				rst_src = RESET_WDG;
+			else if (pm_rsts & PM_RSTS_HADSR_SET)
+				rst_src = RESET_RST;
+			reset_source_set(rst_src);
+		}
+	}
 out:
 	if (root)
 		of_delete_node(root);
-
-	return ret;
+	return;
 }
 
 static void rpi_vc_fdt(void)
@@ -241,7 +333,6 @@ static void rpi_vc_fdt(void)
 	void *saved_vc_fdt;
 	struct fdt_header *oftree;
 	unsigned long magic, size;
-	int ret;
 
 	/* VideoCore FDT was copied in PBL just above Barebox memory */
 	saved_vc_fdt = (void *)(arm_mem_endmem_get());
@@ -260,16 +351,23 @@ static void rpi_vc_fdt(void)
 		return;
 
 	size = be32_to_cpu(oftree->totalsize);
-	if (write_file("/vc.dtb", saved_vc_fdt, size)) {
+	if (write_file("/vc.dtb", saved_vc_fdt, size))
 		pr_err("failed to save videocore fdt to a file\n");
-		return;
-	}
 
-	ret = rpi_vc_fdt_bootargs(saved_vc_fdt);
-	if (ret) {
-		pr_err("failed to extract bootargs from videocore fdt: %d\n",
-									ret);
-		return;
+	rpi_vc_fdt_parse(saved_vc_fdt);
+}
+
+static void rpi_set_kernel_name(void) {
+	switch(cpu_architecture()) {
+	case CPU_ARCH_ARMv6:
+		globalvar_add_simple("vc.kernel", "kernel.img");
+		break;
+	case CPU_ARCH_ARMv7:
+		globalvar_add_simple("vc.kernel", "kernel7.img");
+		break;
+	case CPU_ARCH_ARMv8:
+		globalvar_add_simple("vc.kernel", "kernel8.img");
+		break;
 	}
 }
 
@@ -348,6 +446,7 @@ static int rpi_devices_probe(struct device_d *dev)
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	rpi_env_init();
 	rpi_vc_fdt();
+	rpi_set_kernel_name();
 
 	if (dcfg && dcfg->init)
 		dcfg->init(priv);
diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
index ece80837b..c6e6a289f 100644
--- a/drivers/watchdog/bcm2835_wdt.c
+++ b/drivers/watchdog/bcm2835_wdt.c
@@ -10,28 +10,7 @@
 #include <restart.h>
 #include <watchdog.h>
 
-#define PM_RSTC		0x1c
-#define PM_RSTS		0x20
-#define PM_WDOG		0x24
-
-#define PM_WDOG_RESET				0000000000
-#define PM_PASSWORD				0x5a000000
-#define PM_WDOG_TIME_SET			0x000fffff
-#define PM_RSTC_WRCFG_CLR			0xffffffcf
-#define PM_RSTC_WRCFG_SET			0x00000030
-#define PM_RSTC_WRCFG_FULL_RESET		0x00000020
-#define PM_RSTC_RESET				0x00000102
-
-#define PM_RSTS_HADPOR_SET			0x00001000
-#define PM_RSTS_HADSRH_SET			0x00000400
-#define PM_RSTS_HADSRF_SET			0x00000200
-#define PM_RSTS_HADSRQ_SET			0x00000100
-#define PM_RSTS_HADWRH_SET			0x00000040
-#define PM_RSTS_HADWRF_SET			0x00000020
-#define PM_RSTS_HADWRQ_SET			0x00000010
-#define PM_RSTS_HADDRH_SET			0x00000004
-#define PM_RSTS_HADDRF_SET			0x00000002
-#define PM_RSTS_HADDRQ_SET			0x00000001
+#include <soc/bcm283x/wdt.h>
 
 #define SECS_TO_WDOG_TICKS(x) ((x) << 16)
 
diff --git a/include/soc/bcm283x/wdt.h b/include/soc/bcm283x/wdt.h
new file mode 100644
index 000000000..ce97b1eb5
--- /dev/null
+++ b/include/soc/bcm283x/wdt.h
@@ -0,0 +1,40 @@
+/*
+ * Copyright (C) 2017 Pengutronix, Lucas Stach <l.stach@pengutronix.de>
+ *
+ * Based on code from  Carlo Caione <carlo@carlocaione.org>
+ */
+
+#ifndef __BCM2835_WDT_H
+#define __BCM2835_WDT_H
+
+#define PM_RSTC				0x1c
+#define PM_RSTS				0x20
+#define PM_WDOG				0x24
+
+#define PM_WDOG_RESET			0000000000
+#define PM_PASSWORD			0x5a000000
+#define PM_WDOG_TIME_SET		0x000fffff
+#define PM_RSTC_WRCFG_CLR		0xffffffcf
+#define PM_RSTC_WRCFG_SET		0x00000030
+#define PM_RSTC_WRCFG_FULL_RESET	0x00000020
+#define PM_RSTC_RESET			0x00000102
+
+#define PM_RSTS_HADPOR_SET		0x00001000
+#define PM_RSTS_HADSRH_SET		0x00000400
+#define PM_RSTS_HADSRF_SET		0x00000200
+#define PM_RSTS_HADSRQ_SET		0x00000100
+#define PM_RSTS_HADWRH_SET		0x00000040
+#define PM_RSTS_HADWRF_SET		0x00000020
+#define PM_RSTS_HADWRQ_SET		0x00000010
+#define PM_RSTS_HADDRH_SET		0x00000004
+#define PM_RSTS_HADDRF_SET		0x00000002
+#define PM_RSTS_HADDRQ_SET		0x00000001
+
+#define PM_RSTS_HADDR_SET \
+	(PM_RSTS_HADDRQ_SET | PM_RSTS_HADDRF_SET | PM_RSTS_HADDRH_SET)
+#define PM_RSTS_HADWR_SET \
+	(PM_RSTS_HADWRQ_SET | PM_RSTS_HADWRF_SET | PM_RSTS_HADWRH_SET)
+#define PM_RSTS_HADSR_SET \
+	(PM_RSTS_HADSRQ_SET | PM_RSTS_HADSRF_SET | PM_RSTS_HADSRH_SET)
+
+#endif
-- 
2.17.1



