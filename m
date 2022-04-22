Delivery-date: Fri, 22 Apr 2022 09:13:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhnUG-00Asvd-94
	for lore@lore.pengutronix.de; Fri, 22 Apr 2022 09:13:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhnUD-0006KT-CP
	for lore@pengutronix.de; Fri, 22 Apr 2022 09:13:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wxyOUo7H4uqJTc+s5tFuxDYBI0JqgZ1AfO72/BoyqII=; b=Efw8+R6Rzl9xPp
	iUnfL7+8S3LfOhZH7JEvgKfg2k/wbGGeNDhMebDEeMrCEa4QgiWCgKGnHmEvkJfz05wWT03gw4im4
	XsxAw8OLtcrrW9piKiatByKwsVhLN4THfseye0rFisznE2uD/x5axIlWRxOxpSNhk4HZ8A7Jh8RD3
	lPuaBoYRbddQDV8zWUg6LPmnq0JwxywrvjMpRHpqkqQnmXARrmH5g0Sbd8WybBN3uiLxOLO5fdRVA
	oekXo49iuGTR0flO6npu0phxs536ec15NULy52p+bm3GOXVjLRD9c0Q4PgPb9xqnE/ZaYCBkvqKcn
	zhXXO9FGUetvkyAiRwww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhnSh-00GjpF-AO; Fri, 22 Apr 2022 07:12:15 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhnSc-00GjlR-1j
 for barebox@lists.infradead.org; Fri, 22 Apr 2022 07:12:11 +0000
Received: by mail-lf1-x131.google.com with SMTP id bq30so12703783lfb.3
 for <barebox@lists.infradead.org>; Fri, 22 Apr 2022 00:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZiudF8vNIW/nrWNyx4+/VRwA5GXT4yuCLEhZczQTS0Y=;
 b=d0o0QVQXBNaK29t8UmfAunqGyRsIPCsGH/w1iP0F9yd+DcJx+yZxSuNVHOVMvgQudq
 PQpeiLk+hLI852ogfyvUuGln47WM8+qpM8shYmVWEBte4g5VUSZsNlVf3vjGlseMSTBx
 RyclThwlCzTLaFvbhh0m8+9xoBTqRM4NeFkjx0rOaYPzRwZRx1tarvm+Ij8S/J7yP4Al
 ivVRwbBvvK2wGOTd7Ykj/iWw+oBpuyyYE4ZK9+QskMqCWdGrNFhq9lB8nd0H7n09BDM+
 4zlhBbKMd6Tt0QqX9oxsD0MZQdiWhIFga/LbXY6HoyVlUzkPDiPOOay+PFnuFvA4Ra8p
 N7fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZiudF8vNIW/nrWNyx4+/VRwA5GXT4yuCLEhZczQTS0Y=;
 b=UmUBeWSCzA13hpSS9QTWvwKdDCQ8zGy1JKX3510lqH4Vt40WbQDlGTSFEwC7fwYsGz
 pQ1W2Ej/gHccXZASc4hOpeU+/HCyWl+QhXs8P4k2I9fGkbybGTeHvDQmSMU5sowUV8NF
 mpQXA50W+B4JumGW9js8AygjqyLV8IX0BOHH9eBPKS7UWB31u9JY8pPbAqjH6ClSsQxY
 XQw8Db2Enp+mkG6BqhvBRynjm3hVFMak7xJ6mjpEr9ct1/EztROkNyoee1/MVU0gBBk9
 l7BBlwKPRd1eqjO6NhF0QgzPDuCK9kZYvRrdjz5yCL9yCYo9DBm2U52DqDXyAmtIP2Mr
 Oqwg==
X-Gm-Message-State: AOAM531LDYd39xqMgbVQpl/Y33aMsdlI2ZC4qEd10dkJEw5cLnmxBUcZ
 eBv4jFDxxNvEkUHp6nGonEjn+LVd/owBWg==
X-Google-Smtp-Source: ABdhPJxoNbkbYJ+98X4AuAMtlrMG3J2FU3NEWZQpGRbdSCKLAL7owlqflceVwgxRqA91utuqcJQ55g==
X-Received: by 2002:ac2:4c21:0:b0:46b:b7d0:72dd with SMTP id
 u1-20020ac24c21000000b0046bb7d072ddmr2220898lfq.0.1650611521658; 
 Fri, 22 Apr 2022 00:12:01 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 m20-20020a194354000000b0046f8c68f965sm127823lfj.166.2022.04.22.00.12.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Apr 2022 00:12:01 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 22 Apr 2022 10:11:58 +0300
Message-Id: <20220422071158.14631-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_001210_119073_F8C85453 
X-CRM114-Status: GOOD (  18.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] video: omap-fb: Rework to enable COMPILE_TEST option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To add a compilation check for the omap-fb driver, move the
omap-fb.h header to a global location.
The "omap_add_display" function is used only for legacy boards,
so we will move it to a common place for such calls (omap_devices.c).

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/archosg9/board.c              |  2 +-
 .../boards/phytec-phycore-omap4460/board.c    |  5 ++-
 arch/arm/mach-omap/Makefile                   |  2 +-
 arch/arm/mach-omap/include/mach/devices.h     |  3 ++
 arch/arm/mach-omap/omap_devices.c             | 29 +++++++++++++++
 arch/arm/mach-omap/omap_fb.c                  | 36 -------------------
 drivers/video/Kconfig                         |  2 +-
 drivers/video/omap.c                          |  3 +-
 .../include/mach => include/video}/omap-fb.h  | 10 ++----
 9 files changed, 41 insertions(+), 51 deletions(-)
 delete mode 100644 arch/arm/mach-omap/omap_fb.c
 rename {arch/arm/mach-omap/include/mach => include/video}/omap-fb.h (80%)

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 3289cfda3d..597830432b 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -5,10 +5,10 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <mach/devices.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-devices.h>
 #include <mach/omap4_rom_usb.h>
-#include <mach/omap-fb.h>
 #include <linux/sizes.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
index 9e8b9e56a7..e25ff5eb31 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/board.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
@@ -10,10 +10,10 @@
 #include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <mach/devices.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-devices.h>
 #include <mach/omap4-clock.h>
-#include <mach/omap-fb.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
@@ -292,8 +292,7 @@ static int pcm049_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_PCM049);
 
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_OMAP))
-		omap_add_display(&pcm049_fb_data);
+	omap_add_display(&pcm049_fb_data);
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_phytec_phycore_omap4460);
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 36b2aa090e..e81284ec3b 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -15,7 +15,7 @@
 # GNU General Public License for more details.
 #
 #
-obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o omap_fb.o
+obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o
 pbl-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
diff --git a/arch/arm/mach-omap/include/mach/devices.h b/arch/arm/mach-omap/include/mach/devices.h
index 0f9fdf1ca5..06fd2a8dd3 100644
--- a/arch/arm/mach-omap/include/mach/devices.h
+++ b/arch/arm/mach-omap/include/mach/devices.h
@@ -4,6 +4,7 @@
 #define __MACH_OMAP_DEVICES_H
 
 #include <mach/omap_hsmmc.h>
+#include <video/omap-fb.h>
 
 void omap_add_ram0(resource_size_t size);
 
@@ -11,4 +12,6 @@ void omap_add_sram0(resource_size_t base, resource_size_t size);
 
 struct device_d *omap_add_uart(int id, unsigned long base);
 
+struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata);
+
 #endif /* __MACH_OMAP_DEVICES_H */
diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index 7c36b8819d..beae59f74d 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -26,3 +26,32 @@ struct device_d *omap_add_uart(int id, unsigned long base)
 	return add_generic_device("omap-uart", id, NULL, base, 1024,
 				  IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
 }
+
+#if defined(CONFIG_DRIVER_VIDEO_OMAP)
+static struct resource omapfb_resources[] = {
+	{
+		.name	= "omap4_dss",
+		.start	= 0x48040000,
+		.end	= 0x48040000 + 512 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	}, {
+		.name	= "omap4_dispc",
+		.start	= 0x48041000,
+		.end	= 0x48041000 + 3072 - 1,
+		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
+	},
+};
+
+struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
+{
+	return add_generic_device_res("omap_fb", -1,
+				      omapfb_resources,
+				      ARRAY_SIZE(omapfb_resources),
+				      o_pdata);
+}
+#else
+struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
+{
+	return NULL;
+}
+#endif
diff --git a/arch/arm/mach-omap/omap_fb.c b/arch/arm/mach-omap/omap_fb.c
deleted file mode 100644
index 0bd51c5f55..0000000000
--- a/arch/arm/mach-omap/omap_fb.c
+++ /dev/null
@@ -1,36 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <driver.h>
-#include <common.h>
-#include <linux/ioport.h>
-#include <mach/omap-fb.h>
-
-#if defined(CONFIG_DRIVER_VIDEO_OMAP)
-static struct resource omapfb_resources[] = {
-	{
-		.name	= "omap4_dss",
-		.start	= 0x48040000,
-		.end	= 0x48040000 + 512 - 1,
-		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
-	}, {
-		.name	= "omap4_dispc",
-		.start	= 0x48041000,
-		.end	= 0x48041000 + 3072 - 1,
-		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
-	},
-};
-
-struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
-{
-	return add_generic_device_res("omap_fb", -1,
-				      omapfb_resources,
-				      ARRAY_SIZE(omapfb_resources),
-				      o_pdata);
-}
-#else
-struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
-{
-	return NULL;
-}
-#endif
-EXPORT_SYMBOL(omap_add_display);
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index dcdc6c2135..a20b7bbee9 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -75,7 +75,7 @@ config DRIVER_VIDEO_S3C24XX
 
 config DRIVER_VIDEO_OMAP
 	bool "OMAP framebuffer driver"
-	depends on ARCH_OMAP4
+	depends on ARCH_OMAP4 || COMPILE_TEST
 	help
 	  Add support for OMAP Display Controller. Currently this
 	  driver only supports OMAP4 SoCs in DISPC parallel mode on
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index 62c51a1dfc..ca41ab36fc 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -20,8 +20,7 @@
 #include <clock.h>
 #include <linux/err.h>
 
-#include <mach/omap4-silicon.h>
-#include <mach/omap-fb.h>
+#include <video/omap-fb.h>
 
 #include <mmu.h>
 
diff --git a/arch/arm/mach-omap/include/mach/omap-fb.h b/include/video/omap-fb.h
similarity index 80%
rename from arch/arm/mach-omap/include/mach/omap-fb.h
rename to include/video/omap-fb.h
index f727164434..519460f0d5 100644
--- a/arch/arm/mach-omap/include/mach/omap-fb.h
+++ b/include/video/omap-fb.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
-#define H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
+#ifndef OMAP_FB_H
+#define OMAP_FB_H
 
 #include <fb.h>
 
@@ -42,8 +42,4 @@ struct omapfb_platform_data {
 	void (*enable)(int p);
 };
 
-struct device_d;
-struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata);
-
-
-#endif	/* H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H */
+#endif /* OMAP_FB_H */
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

