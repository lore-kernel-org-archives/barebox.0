Delivery-date: Wed, 09 Apr 2025 16:40:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbh-00ARpM-2x
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:40:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbg-0003Lp-KX
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:40:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yd0QV4eGDj5xIY1bTrfXz/XQfRfWOHY61vobwRPoM3c=; b=t8JNeO68k0igHu3wEO5m8UVxqM
	aYsVq90ij/n8C9KYF8DboIkerU+MTPKoShMC2YAHTkLVnqK3kCYlyRwC2Sl/amLafystsSoQbnFqe
	1myzNbtSfrSz7ddTcrfX2tSiQ/pRb/OGB4wskJQUePuk7h9/l+jX8j0XlWNCLGAcsrw1oyO4qw5QJ
	d3Lc8PhIgRsKkLkEs3tEL+xTzq2ITd9C4OP7bTVgqs7sDd8GLmMhCGVjyKvEoMnODNWaO78cALXkS
	UFFNEuGBUy5VD7F6Ui071RCWjGqE8clFhgfH476eYAXuThBEdCrwALY90vTfs/cJA7OjyL2V6BEty
	Z93+nkjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WbE-00000007Ush-1n3q;
	Wed, 09 Apr 2025 14:40:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Vzo-00000007NXq-1Ae1
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 14:01:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzn-0004qd-2f; Wed, 09 Apr 2025 16:01:39 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-00470M-2E;
	Wed, 09 Apr 2025 16:01:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-008jBv-1t;
	Wed, 09 Apr 2025 16:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 16:01:35 +0200
Message-Id: <20250409140134.2079552-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
References: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_070140_470792_5A0BAAFF 
X-CRM114-Status: GOOD (  15.63  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] ARM: stm32mp: retire non-FIP stm32mp_bbu_mmc_register_handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

FIP images have been the only supported SSBL format by TF-A for more
2.5 years now.

In preparation for dropping support for the old SSBL format with STM32
header, switch all update handlers to operate on FIP images instead.

The handler will automatically look for a fip GPT partition on SD.

Cc: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/lxa-mc1/board.c                 |  4 ++--
 arch/arm/boards/phytec-phycore-stm32mp1/board.c |  2 +-
 arch/arm/boards/protonic-stm32mp1/board.c       | 16 +++++++++-------
 arch/arm/boards/protonic-stm32mp13/board.c      | 16 +++++++++-------
 arch/arm/boards/seeed-odyssey/board.c           |  4 ++--
 arch/arm/boards/stm32mp15x-ev1/board.c          |  4 ++--
 arch/arm/boards/stm32mp15xx-dkx/board.c         |  4 ++--
 include/mach/stm32mp/bbu.h                      |  8 --------
 8 files changed, 27 insertions(+), 31 deletions(-)

diff --git a/arch/arm/boards/lxa-mc1/board.c b/arch/arm/boards/lxa-mc1/board.c
index 8be265b0fca0..0071a10a4696 100644
--- a/arch/arm/boards/lxa-mc1/board.c
+++ b/arch/arm/boards/lxa-mc1/board.c
@@ -35,10 +35,10 @@ static int mc1_probe(struct device *dev)
 	int flags;
 
 	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
+	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0", flags);
 
 	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl", flags);
+	stm32mp_bbu_mmc_fip_register("emmc", "/dev/mmc1", flags);
 
 
 	if (bootsource_get_instance() == 0) {
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/board.c b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
index 6690e36ca718..61eb9f424a03 100644
--- a/arch/arm/boards/phytec-phycore-stm32mp1/board.c
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/board.c
@@ -16,7 +16,7 @@ static int phycore_stm32mp1_probe(struct device *dev)
 		emmc_bbu_flags = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", sd_bbu_flags);
+	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0", sd_bbu_flags);
 	stm32mp_bbu_mmc_fip_register("emmc", "/dev/mmc1", emmc_bbu_flags);
 
 	barebox_set_hostname("phyCORE-STM32MP1");
diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index 9116876ad59f..bc5abe2a47e8 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -55,7 +55,7 @@ static const struct prt_stm32_boot_dev prt_stm32_boot_devs[] = {
 	{
 		.name = "emmc",
 		.env = "/chosen/environment-emmc",
-		.dev = "/dev/mmc1.ssbl",
+		.dev = "/dev/mmc1",
 		.flags = PRT_STM32_BOOTSRC_EMMC,
 		.boot_src = BOOTSOURCE_MMC,
 		.boot_idx = 1,
@@ -71,7 +71,7 @@ static const struct prt_stm32_boot_dev prt_stm32_boot_devs[] = {
 		 * list. */
 		.name = "sd",
 		.env = "/chosen/environment-sd",
-		.dev = "/dev/mmc0.ssbl",
+		.dev = "/dev/mmc0",
 		.flags = PRT_STM32_BOOTSRC_SD,
 		.boot_src = BOOTSOURCE_MMC,
 		.boot_idx = 0,
@@ -275,11 +275,13 @@ static int prt_stm32_probe(struct device *dev)
 			env_path = bd->env;
 		}
 
-		ret = stm32mp_bbu_mmc_register_handler(bd->name, bd->dev,
-						       bbu_flags);
-		if (ret < 0)
-			dev_warn(dev, "Failed to enable %s bbu (%pe)\n",
-				 bd->name, ERR_PTR(ret));
+		if (bd->boot_src == BOOTSOURCE_MMC) {
+			ret = stm32mp_bbu_mmc_fip_register(bd->name, bd->dev,
+							   bbu_flags);
+			if (ret < 0)
+				dev_warn(dev, "Failed to enable %s bbu (%pe)\n",
+					 bd->name, ERR_PTR(ret));
+		}
 	}
 
 	if (!env_path)
diff --git a/arch/arm/boards/protonic-stm32mp13/board.c b/arch/arm/boards/protonic-stm32mp13/board.c
index fe251b9e7764..19f21a00b6b1 100644
--- a/arch/arm/boards/protonic-stm32mp13/board.c
+++ b/arch/arm/boards/protonic-stm32mp13/board.c
@@ -51,7 +51,7 @@ static const struct prt_stm32_boot_dev prt_stm32_boot_devs[] = {
 	{
 		.name = "emmc",
 		.env = "/chosen/environment-emmc",
-		.dev = "/dev/mmc1.ssbl",
+		.dev = "/dev/mmc1",
 		.flags = PRT_STM32_BOOTSRC_EMMC,
 		.boot_src = BOOTSOURCE_MMC,
 		.boot_idx = 1,
@@ -68,7 +68,7 @@ static const struct prt_stm32_boot_dev prt_stm32_boot_devs[] = {
 		 */
 		.name = "sd",
 		.env = "/chosen/environment-sd",
-		.dev = "/dev/mmc0.ssbl",
+		.dev = "/dev/mmc0",
 		.flags = PRT_STM32_BOOTSRC_SD,
 		.boot_src = BOOTSOURCE_MMC,
 		.boot_idx = 0,
@@ -256,11 +256,13 @@ static int prt_stm32_probe(struct device *dev)
 			env_path = bd->env;
 		}
 
-		ret = stm32mp_bbu_mmc_register_handler(bd->name, bd->dev,
-						       bbu_flags);
-		if (ret < 0)
-			dev_warn(dev, "Failed to enable %s bbu (%pe)\n",
-				 bd->name, ERR_PTR(ret));
+		if (bd->boot_src == BOOTSOURCE_MMC) {
+			ret = stm32mp_bbu_mmc_fip_register(bd->name, bd->dev,
+							   bbu_flags);
+			if (ret < 0)
+				dev_warn(dev, "Failed to enable %s bbu (%pe)\n",
+					 bd->name, ERR_PTR(ret));
+		}
 	}
 
 	if (!env_path)
diff --git a/arch/arm/boards/seeed-odyssey/board.c b/arch/arm/boards/seeed-odyssey/board.c
index 5befd3266475..683afe9aadda 100644
--- a/arch/arm/boards/seeed-odyssey/board.c
+++ b/arch/arm/boards/seeed-odyssey/board.c
@@ -13,10 +13,10 @@ static int odyssey_som_probe(struct device *dev)
 	int instance = bootsource_get_instance();
 
 	flags = instance == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
+	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0", flags);
 
 	flags = instance == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl", flags);
+	stm32mp_bbu_mmc_fip_register("emmc", "/dev/mmc1", flags);
 
 
 	if (instance == 0)
diff --git a/arch/arm/boards/stm32mp15x-ev1/board.c b/arch/arm/boards/stm32mp15x-ev1/board.c
index fd58e2817b0b..68f63d558780 100644
--- a/arch/arm/boards/stm32mp15x-ev1/board.c
+++ b/arch/arm/boards/stm32mp15x-ev1/board.c
@@ -11,10 +11,10 @@ static int ed1_probe(struct device *dev)
 	int flags;
 
 	flags = bootsource_get_instance() == 0 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl", flags);
+	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0", flags);
 
 	flags = bootsource_get_instance() == 1 ? BBU_HANDLER_FLAG_DEFAULT : 0;
-	stm32mp_bbu_mmc_register_handler("emmc", "/dev/mmc1.ssbl", flags);
+	stm32mp_bbu_mmc_fip_register("emmc", "/dev/mmc1", flags);
 
 	if (bootsource_get_instance() == 0)
 		of_device_enable_path("/chosen/environment-sd");
diff --git a/arch/arm/boards/stm32mp15xx-dkx/board.c b/arch/arm/boards/stm32mp15xx-dkx/board.c
index 1783c5ca17af..9f005ec1091f 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/board.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/board.c
@@ -8,8 +8,8 @@ static int dkx_probe(struct device *dev)
 {
 	const void *model;
 
-	stm32mp_bbu_mmc_register_handler("sd", "/dev/mmc0.ssbl",
-					 BBU_HANDLER_FLAG_DEFAULT);
+	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0",
+				     BBU_HANDLER_FLAG_DEFAULT);
 
 	if (dev_get_drvdata(dev, &model) == 0)
 		barebox_set_model(model);
diff --git a/include/mach/stm32mp/bbu.h b/include/mach/stm32mp/bbu.h
index b469cdeb7c93..233bcf647839 100644
--- a/include/mach/stm32mp/bbu.h
+++ b/include/mach/stm32mp/bbu.h
@@ -5,14 +5,6 @@
 
 #include <bbu.h>
 
-static inline int stm32mp_bbu_mmc_register_handler(const char *name,
-						   const char *devicefile,
-						   unsigned long flags)
-{
-	return bbu_register_std_file_update(name, flags, devicefile,
-					    filetype_stm32_image_ssbl_v1);
-}
-
 #ifdef CONFIG_BAREBOX_UPDATE
 
 int stm32mp_bbu_mmc_fip_register(const char *name, const char *devicefile,
-- 
2.39.5



