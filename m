Delivery-date: Wed, 15 Jun 2022 20:43:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1Xzd-003EGT-Lq
	for lore@lore.pengutronix.de; Wed, 15 Jun 2022 20:43:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1Xzc-00032p-Uz
	for lore@pengutronix.de; Wed, 15 Jun 2022 20:43:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r7zWkcrx3h458c/xyZRKV8pLBMG252whUO24+QBY00U=; b=fmdmQXp/fcfBtRZnGn+9fW3yew
	8XvU5hF/sBdNS2TtAOEr8dFZDo5z19Kxyu2flbHHhycynzBbrxIxtBYk+cjDM+vXUb/9mQZOekWkl
	gYVmeGlPHHO398Me7HWBkDaX0M4ZGDUEWJkzaulCKQpmgzuBti2k3kPEyeGlWmCEUR8v6/zOSsFwl
	zQM5yT4tdkI1GeeokyzUCXQewuw1H/I2AiOwGYua/bkVVpcyw1IQ1e3xXiB3fIgW/YDjjTCniMiUZ
	XkfWGnTXD0/+8EJ46bL49oN15ChfDHch7L2JCO5m4TdZTJT9Ei8Xuk+VXCDxH94BRSMec6zoQRDtZ
	UY3orLwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Xxo-00Fwkf-WB; Wed, 15 Jun 2022 18:42:01 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Xxj-00FwjO-Ml
	for barebox@lists.infradead.org; Wed, 15 Jun 2022 18:41:57 +0000
Received: by mail-ej1-x636.google.com with SMTP id me5so25016115ejb.2
        for <barebox@lists.infradead.org>; Wed, 15 Jun 2022 11:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=r7zWkcrx3h458c/xyZRKV8pLBMG252whUO24+QBY00U=;
        b=QHe1HMLF0vMCCE1y33hkoEdlPKde+PzQ2AYB6MStsWMrkSjyBvDhHuIalJ8ennJPk4
         aUfIFRbGzzkgvtB5rxdqGeWU2VXc1tu5cu/n5c0dkZrm1hJ9KJvr3MRkpAgzUcmo6i21
         atKAB/DDXI5UDwhroa2rWUErrvtgVuEr3dmfjqRJpTad3ATfhv/KCKQoXoxs+zbr+ryb
         Xr7JkZ/UTISyE2LC9xLUvUwC77MrtvsydsiNLvT4B8EvEIy36kiUnHlf7rIsLv+V0Lm6
         VzfQHT9Ya6a4KIYFYcMKD33Cctg4+hXOfZEjxbHZtKvahuc0JuZHYMkJfRqpOVrfTciz
         NVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=r7zWkcrx3h458c/xyZRKV8pLBMG252whUO24+QBY00U=;
        b=sSxl/S0kR3WExpJ9YAE3fsN+O4RrxQMUwe2HgQGCJRdOSfDXpoPk9j7uJzKzZD1E1g
         b4Nzm85USRsqvP+CsHmxTuxM9K6hkvUVmH0ugJddtXZp7kGd1h4rhfH60BcQwACOJbN7
         uzE0wUehKroWY/mERLKRp94mJtdVbEthue1HDCNFO/cOtawOAvTWPUux5OjXaJUJiXSL
         EKlUmslw4suoCDLnU+DkwSO4HY+6Ui/ZMUn0cjO2tF9s6Xb0KqeWNUQKVJ90HrxC1fhJ
         1GBdzgQNNHR77ct3KIUFbZ7/3KkdryvafNghilvfAjuzc5lC2UQK1hJKsDmF4HxaRbeS
         N2NA==
X-Gm-Message-State: AJIora+pnsdqJj+IGde/nQeUqG0jPQVeDRJ+v4msLIudrTVguvRRypkr
	Om2JX4LnzJel0FrlrvxdYkA9JrNBBnc=
X-Google-Smtp-Source: AGRyM1v7fjDOmLEsG9w1i2sSeAxV4wjw7r7xz6Yd3vVirRlOwiujiNoweERstDIrjdWLDZPjerCkmQ==
X-Received: by 2002:a17:906:891:b0:70b:c30e:c1f1 with SMTP id n17-20020a170906089100b0070bc30ec1f1mr987560eje.733.1655318510943;
        Wed, 15 Jun 2022 11:41:50 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-69-229.net.upcbroadband.cz. [78.45.69.229])
        by smtp.gmail.com with ESMTPSA id l9-20020a056402028900b0042dd3bf1403sm9840319edv.54.2022.06.15.11.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 11:41:50 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed, 15 Jun 2022 20:41:47 +0200
Message-Id: <20220615184147.365-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_114155_827048_35EFFB93 
X-CRM114-Status: GOOD (  21.96  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3] ARM: rpi: parse useful data from vc fdt
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
 arch/arm/boards/raspberry-pi/rpi-common.c | 167 ++++++++++++++++------
 drivers/watchdog/bcm2835_wdt.c            |  23 +--
 include/soc/bcm283x/wdt.h                 |  40 ++++++
 3 files changed, 167 insertions(+), 63 deletions(-)
 create mode 100644 include/soc/bcm283x/wdt.h

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 12a4f4a0a..308a7085c 100644
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
@@ -186,54 +201,117 @@ static int rpi_env_init(void)
 	return 0;
 }
 
-/* Extract /chosen/bootargs from the VideoCore FDT into vc.bootargs
- * global variable. */
-static int rpi_vc_fdt_bootargs(void *fdt)
+/* Extract useful information from the VideoCore FDT we got.
+ * Some parameters are defined here:
+ * https://www.raspberrypi.com/documentation/computers/configuration.html#part4
+ */
+static void rpi_vc_fdt_parse(void *fdt)
 {
-	int ret = 0;
-	struct device_node *root = NULL, *node;
-	const char *cmdline;
+	int ret, len;
+	struct device_node *root, *chosen, *bootloader;
+	enum reset_src_type rst_src = RESET_UKWN;
+	const char *str;
+	char *dynstr;
+	u32 num, *pnum;
 
 	root = of_unflatten_dtb(fdt, INT_MAX);
-	if (IS_ERR(root)) {
-		ret = PTR_ERR(root);
-		root = NULL;
-		goto out;
+	if (IS_ERR(root))
+		return;
+
+	str = of_get_property(root, "serial-number", &len);
+	if (!str) {
+		pr_warn("no 'serial-number' property found in vc fdt\n");
+	} else {
+		dynstr = xstrndup(str, len);
+		barebox_set_serial_number(dynstr);
+		free(dynstr);
 	}
 
-	node = of_find_node_by_path_from(root, "/chosen");
-	if (!node) {
-		pr_err("no /chosen node\n");
-		ret = -ENOENT;
-		goto out;
+	str = of_get_property(root, "model", &len);
+	if (!str) {
+		pr_warn("no 'model' property found in vc fdt\n");
+	} else {
+		dynstr = xstrndup(str, len);
+		barebox_set_model(dynstr);
+		free(dynstr);
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
+	str = of_get_property(chosen, "bootargs", &len);
+	if (!str)
+		pr_warn("no 'bootargs' property in the /chosen node\n");
+	else
+		globalvar_add_simple("vc.bootargs", xstrndup(str, len));
+
+	str = of_get_property(chosen, "overlay_prefix", &len);
+	if (!str)
+		pr_warn("no 'overlay_prefix' property in the /chosen node\n");
+	else
+		globalvar_add_simple("vc.overlay_prefix", xstrndup(str, len));
+
+	str = of_get_property(chosen, "os_prefix", &len);
+	if (!str)
+		pr_warn("no 'os_prefix' property in the /chosen node\n");
+	else
+		globalvar_add_simple("vc.os_prefix", xstrndup(str, len));
+
+	ret = of_property_read_u32(chosen, "boot-mode", &num);
+	if (ret && bootloader)
+		ret = of_property_read_u32(bootloader, "boot-mode", &num);
+	if (ret) {
+		pr_warn("'boot-mode' property not found\n");
+	} else {
+		pnum = xmalloc(sizeof(u32));
+		*pnum = num;
+		globalvar_add_simple_enum("vc.boot_mode", pnum,
+					  boot_mode_names,
+					  ARRAY_SIZE(boot_mode_names));
+	}
 
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
+	ret = of_property_read_u32(chosen, "partition", &num);
+	if (ret && bootloader)
+		ret = of_property_read_u32(bootloader, "partition", &num);
+	if (ret) {
+		pr_warn("'partition' property not found\n");
+	} else {
+		pnum = xmalloc(sizeof(u32));
+		*pnum = num;
+		globalvar_add_simple_int("vc.boot_partition", pnum, "%u");
 	}
 
+	if (IS_ENABLED(CONFIG_RESET_SOURCE)) {
+		ret = of_property_read_u32(chosen, "pm_rsts", &num);
+		if (ret && bootloader)
+			 ret = of_property_read_u32(bootloader, "rsts", &num);
+
+		if (ret) {
+			pr_warn("'pm_rsts'/'rsts' property not found\n");
+		} else {
+/*
+ * https://github.com/raspberrypi/linux/issues/932#issuecomment-93989581
+ */
+			if (num & PM_RSTS_HADPOR_SET)
+				rst_src = RESET_POR;
+			else if (num & PM_RSTS_HADDR_SET)
+				rst_src = RESET_JTAG;
+			else if (num & PM_RSTS_HADWR_SET)
+				rst_src = RESET_WDG;
+			else if (num & PM_RSTS_HADSR_SET)
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
@@ -241,7 +319,6 @@ static void rpi_vc_fdt(void)
 	void *saved_vc_fdt;
 	struct fdt_header *oftree;
 	unsigned long magic, size;
-	int ret;
 
 	/* VideoCore FDT was copied in PBL just above Barebox memory */
 	saved_vc_fdt = (void *)(arm_mem_endmem_get());
@@ -260,16 +337,23 @@ static void rpi_vc_fdt(void)
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
 
@@ -348,6 +432,7 @@ static int rpi_devices_probe(struct device_d *dev)
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



