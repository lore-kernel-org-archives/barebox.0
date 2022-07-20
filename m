Delivery-date: Wed, 20 Jul 2022 07:52:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE2dZ-00FGdr-GI
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 07:52:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE2dW-0008Bo-Sw
	for lore@pengutronix.de; Wed, 20 Jul 2022 07:52:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VZEIdcgcxc+VKBDOev9YNw31BphibBLiFVPgHeg9n14=; b=a+RTUNwIf49FqNv9TJf0Ep3dxv
	WS9VpyXDmR6CJ0y952N/ZxlVnGRwt7vLb2aoel9d3aDkJmst2zL2Djg2iMyQXUM3Z+/BlGRsYAmE5
	+IfL5dNo+Oaxv9ZKi+jXp/NSI/HN4qC3uywKQSVGQLwHLu8PQayxxS1BXQ/wjll6WdNo2eYqJxBC8
	MyXzQjgyRs6ka6zIIOyEVnpkWTFfNfjA7MRoib77SITlsotaKRNd4FpBNVIOuvIno4Jo3pVjnyS77
	OaaxQgmTYK30WgRtFt04X0DHu0yt6QdRXiSApoC1ejMFf/ad7Q7rgeDer/5RKhdbm2obm8dvtzMm5
	WMqjFHBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE2bw-000jPa-Bg; Wed, 20 Jul 2022 05:51:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE2bp-000jNW-9Z
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 05:50:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bg-0007nl-0T; Wed, 20 Jul 2022 07:50:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bc-0023UJ-70; Wed, 20 Jul 2022 07:50:44 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oE2bb-00EjCQ-EC; Wed, 20 Jul 2022 07:50:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: michael.riesch@wolfvision.net,
	j.zink@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Jul 2022 07:50:40 +0200
Message-Id: <20220720055042.3510276-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
References: <20220720055042.3510276-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_225057_523190_DB5E3E9F 
X-CRM114-Status: GOOD (  15.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH 1/3] bootsource: rename existing bootsource_set to bootsource_set_raw
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Patterns like [ "$bootsource" = mmc ] && boot mmc$bootsource_instance
expect that ${bootsource_instance} and MMC aliases align, which may not
always be the case. In preparation for adding a new bootsource_set
function that consults an optional mapping table from bootrom
bootsource_instance to board-specific device numbering, rename all
existing instances to bootsource_set_raw. While at it, clean up the
legacy split into bootsource_set and bootsource_set_instance and have
the new bootsource_set_raw accept both arguments at once.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/sama5d2.c                | 4 ++--
 arch/arm/mach-imx/boot.c                    | 6 ++----
 arch/arm/mach-layerscape/boot.c             | 4 ++--
 arch/arm/mach-mxs/imx.c                     | 3 +--
 arch/arm/mach-omap/am33xx_generic.c         | 3 +--
 arch/arm/mach-omap/omap3_generic.c          | 3 +--
 arch/arm/mach-omap/omap4_generic.c          | 3 +--
 arch/arm/mach-rockchip/rk3288.c             | 3 +--
 arch/arm/mach-rockchip/rk3568.c             | 3 +--
 arch/arm/mach-socfpga/arria10-bootsource.c  | 3 +--
 arch/arm/mach-socfpga/cyclone5-bootsource.c | 6 ++----
 arch/arm/mach-stm32mp/init.c                | 3 +--
 arch/arm/mach-zynq/zynq.c                   | 2 +-
 arch/arm/mach-zynqmp/zynqmp.c               | 3 +--
 common/bootsource.c                         | 9 +++++----
 drivers/block/efi-block-io.c                | 2 +-
 drivers/efi/efi-device.c                    | 3 +--
 include/bootsource.h                        | 4 ++--
 18 files changed, 27 insertions(+), 40 deletions(-)

diff --git a/arch/arm/mach-at91/sama5d2.c b/arch/arm/mach-at91/sama5d2.c
index a4aa8a23399d..b05d6a56bdd8 100644
--- a/arch/arm/mach-at91/sama5d2.c
+++ b/arch/arm/mach-at91/sama5d2.c
@@ -62,8 +62,8 @@ static int sama5d2_bootsource_init(void)
 
 	at91_bootsource = __sama5d2_stashed_bootrom_r4;
 
-	bootsource_set(sama5_bootsource(at91_bootsource));
-	bootsource_set_instance(sama5_bootsource_instance(at91_bootsource));
+	bootsource_set_raw(sama5_bootsource(at91_bootsource),
+			   sama5_bootsource_instance(at91_bootsource));
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 16a377341c8b..8c9febb50a65 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -34,8 +34,7 @@ imx_boot_save_loc(void (*get_boot_source)(enum bootsource *, int *))
 
 	get_boot_source(&src, &instance);
 
-	bootsource_set(src);
-	bootsource_set_instance(instance);
+	bootsource_set_raw(src, instance);
 }
 
 
@@ -309,8 +308,7 @@ void imx53_boot_save_loc(void)
 
 	imx53_get_boot_source(&src, &instance);
 
-	bootsource_set(src);
-	bootsource_set_instance(instance);
+	bootsource_set_raw(src, instance);
 }
 
 #define IMX6_SRC_SBMR1	0x04
diff --git a/arch/arm/mach-layerscape/boot.c b/arch/arm/mach-layerscape/boot.c
index c804977d228d..c6f816444ad5 100644
--- a/arch/arm/mach-layerscape/boot.c
+++ b/arch/arm/mach-layerscape/boot.c
@@ -32,8 +32,8 @@ static int ls1046a_bootsource_init(void)
 	if (!of_machine_is_compatible("fsl,ls1046a"))
 		return 0;
 
-	bootsource_set(ls1046_bootsource_get());
+	bootsource_set_raw(ls1046_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
 
 	return 0;
 }
-coredevice_initcall(ls1046a_bootsource_init);
\ No newline at end of file
+coredevice_initcall(ls1046a_bootsource_init);
diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index 5af9cca4e9fb..a8a950091821 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -158,8 +158,7 @@ static void mxs_boot_save_loc(void)
 	case 0x9: src = BOOTSOURCE_MMC; break;		/* "SSP SD/MMC #0" */
 	}
 
-	bootsource_set(src);
-	bootsource_set_instance(instance);
+	bootsource_set_raw(src, instance);
 }
 
 static int mxs_init(void)
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index bfe5b3dc73dc..7f9a2bcf3710 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -153,8 +153,7 @@ static int am33xx_bootsource(void)
 	default:
 		src = BOOTSOURCE_UNKNOWN;
 	}
-	bootsource_set(src);
-	bootsource_set_instance(instance);
+	bootsource_set_raw(src, instance);
 	return 0;
 }
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 69f2d51a62b5..cb6105cc042f 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -475,8 +475,7 @@ static int omap3_bootsource(void)
 		src = BOOTSOURCE_UNKNOWN;
 	}
 
-	bootsource_set(src);
-	bootsource_set_instance(0);
+	bootsource_set_raw(src, 0);
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 6d165b7f684d..7c8374eba762 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -498,8 +498,7 @@ static int omap4_bootsource(void)
 		src = BOOTSOURCE_UNKNOWN;
 	}
 
-	bootsource_set(src);
-	bootsource_set_instance(0);
+	bootsource_set_raw(src, 0);
 
 	omap_vector_init();
 
diff --git a/arch/arm/mach-rockchip/rk3288.c b/arch/arm/mach-rockchip/rk3288.c
index 2a1d4ab7a240..f623af6731c1 100644
--- a/arch/arm/mach-rockchip/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288.c
@@ -69,8 +69,7 @@ static int rk3288_env_init(void)
 	const char *envpath = "/chosen/environment-emmc";
 	int ret;
 
-	bootsource_set(BOOTSOURCE_MMC);
-	bootsource_set_instance(0);
+	bootsource_set_raw(BOOTSOURCE_MMC, 0);
 
 	ret = of_device_enable_path(envpath);
 	if (ret < 0)
diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index 234c6d22d171..2d80bad8a658 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -160,8 +160,7 @@ static enum bootsource rk3568_bootsource(void)
 	if (v >= ARRAY_SIZE(bootdev_map))
 		return BOOTSOURCE_UNKNOWN;
 
-	bootsource_set(bootdev_map[v].src);
-	bootsource_set_instance(bootdev_map[v].instance);
+	bootsource_set_raw(bootdev_map[v].src, bootdev_map[v].instance);
 
 	return bootdev_map[v].src;
 }
diff --git a/arch/arm/mach-socfpga/arria10-bootsource.c b/arch/arm/mach-socfpga/arria10-bootsource.c
index 3319dc4bf968..9055570c0764 100644
--- a/arch/arm/mach-socfpga/arria10-bootsource.c
+++ b/arch/arm/mach-socfpga/arria10-bootsource.c
@@ -55,8 +55,7 @@ static int arria10_boot_save_loc(void)
 
 	src = arria10_get_bootsource();
 
-	bootsource_set(src);
-	bootsource_set_instance(0);
+	bootsource_set_raw(src, 0);
 
 	return 0;
 }
diff --git a/arch/arm/mach-socfpga/cyclone5-bootsource.c b/arch/arm/mach-socfpga/cyclone5-bootsource.c
index 717a00342506..ab18d033022f 100644
--- a/arch/arm/mach-socfpga/cyclone5-bootsource.c
+++ b/arch/arm/mach-socfpga/cyclone5-bootsource.c
@@ -50,8 +50,7 @@ static int cyclone5_boot_save_loc(void)
 		break;
 	}
 
-	bootsource_set(src);
-	bootsource_set_instance(0);
+	bootsource_set_raw(src, 0);
 
 	return 0;
 }
@@ -84,8 +83,7 @@ static int arria10_boot_save_loc(void)
 		break;
 	}
 
-	bootsource_set(src);
-	bootsource_set_instance(0);
+	bootsource_set_raw(src, 0);
 
 	return 0;
 }
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index bcd04b210a50..938dea3c3d5d 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -98,8 +98,7 @@ static void setup_boot_mode(void)
 	pr_debug("[boot_ctx=0x%x] => mode=0x%x, instance=%d\n",
 		 boot_ctx, boot_mode, instance);
 
-	bootsource_set(src);
-	bootsource_set_instance(instance);
+	bootsource_set_raw(src, instance);
 }
 
 static int __stm32mp_cputype;
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index 806aeb913055..5abd52f6a21f 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -71,7 +71,7 @@ static int zynq_init(void)
 
 	restart_handler_register_fn("soc", zynq_restart_soc);
 
-	bootsource_set(zynq_bootsource_get());
+	bootsource_set_raw(zynq_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
 
 	return 0;
 }
diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
index 610d4bba6eaf..312325956a99 100644
--- a/arch/arm/mach-zynqmp/zynqmp.c
+++ b/arch/arm/mach-zynqmp/zynqmp.c
@@ -148,8 +148,7 @@ static int zynqmp_init(void)
 	int boot_instance;
 
 	zynqmp_get_bootsource(&boot_src, &boot_instance);
-	bootsource_set(boot_src);
-	bootsource_set_instance(boot_instance);
+	bootsource_set_raw(boot_src, boot_instance);
 
 	reset_source_set(zynqmp_get_reset_src());
 
diff --git a/common/bootsource.c b/common/bootsource.c
index 79dacfd1d07d..c37da38f7f99 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -101,7 +101,7 @@ void bootsource_set_alias_name(const char *name)
 	bootsource_alias_name = name;
 }
 
-void bootsource_set(enum bootsource src)
+void bootsource_set_raw(enum bootsource src, int instance)
 {
 	if (src >= ARRAY_SIZE(bootsource_str))
 		src = BOOTSOURCE_UNKNOWN;
@@ -109,9 +109,11 @@ void bootsource_set(enum bootsource src)
 	bootsource = src;
 
 	setenv("bootsource", bootsource_str[src]);
+
+	bootsource_set_raw_instance(instance);
 }
 
-void bootsource_set_instance(int instance)
+void bootsource_set_raw_instance(int instance)
 {
 	bootsource_instance = instance;
 
@@ -137,8 +139,7 @@ BAREBOX_MAGICVAR(bootsource_instance, "The instance of the source barebox has be
 
 static int bootsource_init(void)
 {
-	bootsource_set(bootsource);
-	bootsource_set_instance(bootsource_instance);
+	bootsource_set_raw(bootsource, bootsource_instance);
 	export("bootsource");
 	export("bootsource_instance");
 
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index 120e4d8f1ad2..b78117d445bf 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -188,7 +188,7 @@ static int efi_bio_probe(struct efi_device *efidev)
 		return ret;
 
 	if (efi_get_bootsource() == efidev)
-		bootsource_set_instance(instance);
+		bootsource_set_raw_instance(instance);
 
 	parse_partition_table(&priv->blk);
 
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index f91d09e8eaa5..af5406afa682 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -426,8 +426,7 @@ static void efi_set_bootsource(void)
 
 out:
 
-	bootsource_set(src);
-	bootsource_set_instance(instance);
+	bootsource_set_raw(src, instance);
 }
 
 static int efi_init_devices(void)
diff --git a/include/bootsource.h b/include/bootsource.h
index 646b0e91c13e..390d6f5d2b3a 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -26,8 +26,8 @@ enum bootsource {
 
 enum bootsource bootsource_get(void);
 int bootsource_get_instance(void);
-void bootsource_set(enum bootsource src);
-void bootsource_set_instance(int instance);
+void bootsource_set_raw(enum bootsource src, int instance);
+void bootsource_set_raw_instance(int instance);
 void bootsource_set_alias_name(const char *name);
 char *bootsource_get_alias_name(void);
 
-- 
2.30.2



