Delivery-date: Wed, 10 Sep 2025 08:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwEAa-001MeH-1C
	for lore@lore.pengutronix.de;
	Wed, 10 Sep 2025 08:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwEAZ-0002xr-Nx
	for lore@pengutronix.de; Wed, 10 Sep 2025 08:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+O4xxUEhfbEoqHVffCUqzdHhY0o6vdrt9YOgR+IxxWw=; b=ANSkRO8w0JhGO/wvftTt1SyadP
	Tn844rNOBr3TABEeoTox8fsnyQo12HEPV2f67dJE0mGaYv88w1uCf2aC9kVoERk+KxFk+l4QduzF+
	oRcQluSDmgWhm0gBxuYfA89LZozB6GUHZJkEZcZXNczBBAZnZvsGiLGssB2cipasE6E2YVQuqU6dL
	gEArPl4VYuL7R6vY56LfTSBZPS9+YD7wNRQI4Jfi+cuY9CoxvJHqj+oeHV/6I3hDiTNqtArl9BtI3
	jaiii9NslvwDIC6HT+fXNDhSNgMnQtnLfllxQj9p8iGXlJFC8vDcMR1lcNE29qDG5ozVX8IrinMfH
	8V8/QlKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwEA2-0000000CGTM-2KVf;
	Wed, 10 Sep 2025 06:18:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwE9z-0000000CGRT-3fUe
	for barebox@lists.infradead.org;
	Wed, 10 Sep 2025 06:18:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwE9y-0002rh-BL; Wed, 10 Sep 2025 08:18:26 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwE9y-000Xuy-0V;
	Wed, 10 Sep 2025 08:18:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwE9y-0000000BbTb-0AdS;
	Wed, 10 Sep 2025 08:18:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Sep 2025 08:18:23 +0200
Message-ID: <20250910061824.2765659-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_231827_924716_A24821C4 
X-CRM114-Status: GOOD (  15.71  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: k3: move am62x specific bits out of common file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

k3_boot_is_emmc() is called from common.c, but is really am62x specific
and only compiled in when am62x support is enabled. With this compiling
for am62lx only fails with an undefined reference to k3_boot_is_emmc().

Move the am62x specific files out of common.c: Move the initcall to
am62x.c and call omap_env_init() (renamed to k3_env_init()) from there
after checking the prerequisites. Also rename k3_boot_is_emmc() to
am62x_boot_is_emmc().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/am625-sk/board.c |  2 +-
 arch/arm/mach-k3/am62x.c         | 17 ++++++++++++++++-
 arch/arm/mach-k3/common.c        | 12 +-----------
 arch/arm/mach-k3/r5.c            |  2 +-
 include/mach/k3/common.h         |  3 ++-
 5 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/am625-sk/board.c b/arch/arm/boards/am625-sk/board.c
index d2fca2dae1..80be3b30b5 100644
--- a/arch/arm/boards/am625-sk/board.c
+++ b/arch/arm/boards/am625-sk/board.c
@@ -13,7 +13,7 @@ static int am625_sk_probe(struct device *dev)
 
 	k3_bbu_emmc_register("emmc", "/dev/mmc0", BBU_HANDLER_FLAG_DEFAULT);
 
-	if (k3_boot_is_emmc())
+	if (am62x_boot_is_emmc())
 		of_device_enable_path("/chosen/environment-emmc");
 
 	return 0;
diff --git a/arch/arm/mach-k3/am62x.c b/arch/arm/mach-k3/am62x.c
index 57f8efd74b..e8027ba9a8 100644
--- a/arch/arm/mach-k3/am62x.c
+++ b/arch/arm/mach-k3/am62x.c
@@ -142,7 +142,7 @@ void am62x_get_bootsource(enum bootsource *src, int *instance)
 		am62x_get_backup_bootsource(devstat, src, instance);
 }
 
-bool k3_boot_is_emmc(void)
+bool am62x_boot_is_emmc(void)
 {
 	u32 bootmode = readl(AM625_BOOT_PARAM_TABLE_INDEX_OCRAM);
 	u32 devstat = readl(AM625_CTRLMMR_MAIN_DEVSTAT);
@@ -254,3 +254,18 @@ static int am62x_init(void)
 	return 0;
 }
 postcore_initcall(am62x_init);
+
+static int am62x_env_init(void)
+{
+	if (!of_machine_is_compatible("ti,am625"))
+		return 0;
+
+	if (bootsource_get() != BOOTSOURCE_MMC)
+		return 0;
+
+	if (am62x_boot_is_emmc())
+		return 0;
+
+	return k3_env_init();
+}
+late_initcall(am62x_env_init);
diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index aafd22453b..449075ba9b 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -28,22 +28,13 @@ static const struct of_device_id k3_of_match[] = {
 };
 BAREBOX_DEEP_PROBE_ENABLE(k3_of_match);
 
-static int omap_env_init(void)
+int k3_env_init(void)
 {
 	char *partname, *cdevname, *envpath;
 	struct cdev *cdev;
 	const char *rootpath;
 	int instance;
 
-	if (!of_machine_is_compatible("ti,am625"))
-		return 0;
-
-	if (bootsource_get() != BOOTSOURCE_MMC)
-		return 0;
-
-	if (k3_boot_is_emmc())
-		return 0;
-
 	instance = bootsource_get_instance();
 
 	cdevname = xasprintf("mmc%d", instance);
@@ -86,7 +77,6 @@ static int omap_env_init(void)
 
 	return 0;
 }
-late_initcall(omap_env_init);
 
 int k3_authenticate_image(void **buf, size_t *size)
 {
diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 83089b8444..b70cf18f8a 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -431,7 +431,7 @@ static int k3_r5_start_image(void)
 
 	if (IS_ENABLED(CONFIG_USB_GADGET_DFU) && bootsource_get() == BOOTSOURCE_SERIAL)
 		ret = do_dfu();
-	else if (k3_boot_is_emmc())
+	else if (am62x_boot_is_emmc())
 		ret = load_fip_emmc();
 	else
 		ret = load_fip("/boot/k3.fip", 0);
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index 5ce129f88c..bb6c4f1576 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -10,11 +10,12 @@
 
 void am62x_get_bootsource(enum bootsource *src, int *instance);
 void am62lx_get_bootsource(enum bootsource *src, int *instance);
-bool k3_boot_is_emmc(void);
+bool am62x_boot_is_emmc(void);
 u64 am62x_sdram_size(void);
 void am62x_register_dram(void);
 void am62x_enable_32k_crystal(void);
 int k3_authenticate_image(void **buf, size_t *size);
+int k3_env_init(void);
 
 #define K3_EMMC_BOOTPART_TIBOOT3_BIN_SIZE	SZ_1M
 
-- 
2.47.3



