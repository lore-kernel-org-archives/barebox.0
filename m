Delivery-date: Fri, 16 Apr 2021 12:01:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLHl-0001Dr-KV
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 12:01:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLHk-0007Tp-BY
	for lore@pengutronix.de; Fri, 16 Apr 2021 12:01:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/NyDdiNZn0AxHD7xyW3Ba00m/dVCMDAKKuBtloZPn0g=; b=rWA9rQ8RhKkYE9n5jS8sY0FjR
	BRKQb/wfbxYicv/MWDUuVTN1Q0rsB8FoGSjVXtw56zxyy7EJC3iDqfmKm8OB/JBVL8tNWu6jfIq19
	Y34CjWpEjNodCU/5g0mAKo8pBhVDvTEF7ZfRUTTJ/1CmLRl4wV8Bl0UgG3K66BwUDxCaTLSTLagXm
	wtXfCp9mae0nH+W1AwRy0YWAMvg+7Qy/uKTt6bWrcQonNxHkUYBXZDc1RVZxDrO2rG9rkRYqbvkKs
	TWUPr+ehqUXUGbKLvdzGGugviPLZzv+71A+Gme6YqvZcZWtvC9JVe9dmYTYlI/iVcVK3wrKimFxrz
	a3g9caLxA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLGL-001epF-JO; Fri, 16 Apr 2021 09:59:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7Y-001cW7-Kb
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Qaulqb3sfGrgZm2Xg07ddelbXLp5Ict8TtU2+6orMr4=; b=GdXgBZSzCiVc9dQbbuBy6enziw
 30gV78jkse8NhCAL3BaGzmp5bRsiSqLHyGfVCMSyL8iGTNhJQo9oDctuRhXjCIH8HtuqMtBUu7qh3
 QgXA0pIJHw0lErprb6s1FM9n+uy8W7AFXihjnRjhcda0LDih2lZQkU8YQYdnd/zM5lUi088RZN6Oj
 ZczBvd6HDMOwa8CJErnB9I1G2YhMe35qd4Rq4AuyjxNvugqok4/pdTuZy6ECg0aOimcS4/Ribe6OO
 2DfOLLPwgHetxLk5KUKPVnqncaMkUVuOxzLoyWzw7IDFETcNi9US7Y8R30SEWdATAsaz9XFZmc7K1
 VUD07U7g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7V-009G0B-Jh
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051V-6I; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001E4-Vo; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:42 +0200
Message-Id: <20210416094943.3648-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025037_833558_DC431634 
X-CRM114-Status: GOOD (  16.88  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/17] ARM: i.MX Phytec physom: convert to board driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Board driver is the new way for board specific fixups and the physom
board with its many compatible strings can really take profit from it,
so convert it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 150 ++++++++++++++++++------
 1 file changed, 117 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index bac3e8a8a1..36c4d9a78b 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -141,16 +141,26 @@ err_out:
 	return ret;
 }
 
-static int physom_imx6_devices_init(void)
+#define IS_PHYFLEX	BIT(0)
+#define IS_PHYCORE	BIT(1)
+#define IS_PHYCARD	BIT(2)
+#define IS_PHYCORE_UL	BIT(3)
+#define HAS_MMC3	BIT(4)
+#define HAS_MMC1	BIT(5)
+
+struct board_data {
+	unsigned flags;
+};
+
+static int physom_imx6_probe(struct device_d *dev)
 {
 	int ret;
 	char *environment_path, *default_environment_path;
 	char *envdev, *default_envdev;
+	const struct board_data *brd = device_get_match_data(dev);
+	unsigned flags = brd->flags;
 
-	if (of_machine_is_compatible("phytec,imx6q-pfla02")
-		|| of_machine_is_compatible("phytec,imx6dl-pfla02")
-		|| of_machine_is_compatible("phytec,imx6s-pfla02")) {
-
+	if (flags & IS_PHYFLEX) {
 		phyflex_err006282_workaround();
 
 		pfla02_module_revision = get_module_rev();
@@ -164,21 +174,14 @@ static int physom_imx6_devices_init(void)
 		imx6_bbu_internal_mmc_register_handler("mmc2",
 						"/dev/mmc2", 0);
 
-	} else if (of_machine_is_compatible("phytec,imx6q-pcaaxl3")) {
-
+	} else if (flags & IS_PHYCARD) {
 		barebox_set_hostname("phyCARD-i.MX6");
 		default_environment_path = "/chosen/environment-nand";
 		default_envdev = "NAND flash";
 
 		imx6_bbu_internal_mmc_register_handler("mmc2",
 						"/dev/mmc2", 0);
-
-	} else if (of_machine_is_compatible("phytec,imx6q-pcm058-nand")
-		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
-		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
-		|| of_machine_is_compatible("phytec,imx6qp-pcm058-nand")
-		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
-
+	} else if (flags & IS_PHYCORE) {
 		if (phycore_da9062_setup_buck_mode())
 			pr_err("Setting PMIC BUCK mode failed\n");
 
@@ -189,8 +192,7 @@ static int physom_imx6_devices_init(void)
 		imx6_bbu_internal_mmc_register_handler("mmc0",
 						"/dev/mmc0", 0);
 
-	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")
-		|| of_machine_is_compatible("phytec,imx6ul-pcl063-emmc")) {
+	} else if (flags & IS_PHYCORE_UL) {
 		barebox_set_hostname("phyCORE-i.MX6UL");
 		default_environment_path = "/chosen/environment-nand";
 		default_envdev = "NAND flash";
@@ -201,8 +203,9 @@ static int physom_imx6_devices_init(void)
 		imx6_bbu_internal_mmc_register_handler("mmc0",
 						"/dev/mmc0", 0);
 
-	} else
-		return 0;
+	} else {
+		return -EINVAL;
+	}
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
@@ -234,14 +237,13 @@ static int physom_imx6_devices_init(void)
 
 	pr_notice("Using environment in %s\n", envdev);
 
-	if (of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
-		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
+	if (flags & HAS_MMC3) {
 		imx6_bbu_internal_mmc_register_handler("mmc3",
 						"/dev/mmc3",
 						BBU_HANDLER_FLAG_DEFAULT);
 		imx6_bbu_internal_mmcboot_register_handler("mmc3-boot",
 						"mmc3", 0);
-	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-emmc")) {
+	} else if (flags & HAS_MMC1) {
 		imx6_bbu_internal_mmc_register_handler("mmc1",
 						"/dev/mmc1",
 						BBU_HANDLER_FLAG_DEFAULT);
@@ -254,23 +256,105 @@ static int physom_imx6_devices_init(void)
 	defaultenv_append_directory(defaultenv_physom_imx6);
 
 	/* Overwrite file /env/init/automount */
-	if (of_machine_is_compatible("phytec,imx6q-pfla02")
-		|| of_machine_is_compatible("phytec,imx6dl-pfla02")
-		|| of_machine_is_compatible("phytec,imx6s-pfla02")
-		|| of_machine_is_compatible("phytec,imx6q-pcaaxl3")) {
+	if (flags & IS_PHYCARD || flags & IS_PHYFLEX) {
 		defaultenv_append_directory(defaultenv_physom_imx6);
-	} else if (of_machine_is_compatible("phytec,imx6qp-pcm058-nand")
-		|| of_machine_is_compatible("phytec,imx6q-pcm058-nand")
-		|| of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
-		|| of_machine_is_compatible("phytec,imx6dl-pcm058-nand")
-		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
+	} else if (flags & IS_PHYCORE) {
 		defaultenv_append_directory(defaultenv_physom_imx6);
 		defaultenv_append_directory(defaultenv_physom_imx6_phycore);
-	} else if (of_machine_is_compatible("phytec,imx6ul-pcl063-nand")
-		|| of_machine_is_compatible("phytec,imx6ul-pcl063-emmc")) {
+	} else if (flags & IS_PHYCORE_UL) {
 		defaultenv_append_directory(defaultenv_physom_imx6ul_phycore);
 	}
 
 	return 0;
 }
-device_initcall(physom_imx6_devices_init);
+
+static struct board_data imx6q_pfla02 = {
+	.flags = IS_PHYFLEX,
+};
+
+static struct board_data imx6dl_pfla02 = {
+	.flags = IS_PHYFLEX,
+};
+
+static struct board_data imx6s_pfla02 = {
+	.flags = IS_PHYFLEX,
+};
+
+static struct board_data imx6q_pcaaxl3 = {
+	.flags = IS_PHYCARD,
+};
+
+static struct board_data imx6q_pcm058_nand = {
+	.flags = IS_PHYCORE,
+};
+
+static struct board_data imx6q_pcm058_emmc = {
+	.flags = IS_PHYCORE | HAS_MMC3,
+};
+
+static struct board_data imx6dl_pcm058_nand = {
+	.flags = IS_PHYCORE,
+};
+
+static struct board_data imx6qp_pcm058_nand = {
+	.flags = IS_PHYCORE,
+};
+
+static struct board_data imx6dl_pcm058_emmc = {
+	.flags = IS_PHYCORE | HAS_MMC3,
+};
+
+static struct board_data imx6ul_pcl063_nand = {
+	.flags = IS_PHYCORE_UL,
+};
+
+static struct board_data imx6ul_pcl063_emmc = {
+	.flags = IS_PHYCORE_UL | HAS_MMC1,
+};
+
+
+static const struct of_device_id physom_imx6_match[] = {
+	{
+		.compatible = "phytec,imx6q-pfla02",
+		.data = &imx6q_pfla02,
+	}, {
+		.compatible = "phytec,imx6dl-pfla02",
+		.data = &imx6dl_pfla02,
+	}, {
+		.compatible = "phytec,imx6s-pfla02",
+		.data = &imx6s_pfla02,
+	}, {
+		.compatible = "phytec,imx6q-pcaaxl3",
+		.data = &imx6q_pcaaxl3,
+	}, {
+		.compatible = "phytec,imx6q-pcm058-nand",
+		.data = &imx6q_pcm058_nand,
+	}, {
+		.compatible = "phytec,imx6q-pcm058-emmc",
+		.data = &imx6q_pcm058_emmc,
+	}, {
+		.compatible = "phytec,imx6dl-pcm058-nand",
+		.data = &imx6dl_pcm058_nand,
+	}, {
+		.compatible = "phytec,imx6qp-pcm058-nand",
+		.data = &imx6qp_pcm058_nand,
+	}, {
+		.compatible = "phytec,imx6dl-pcm058-emmc",
+		.data = &imx6dl_pcm058_emmc,
+	}, {
+		.compatible = "phytec,imx6ul-pcl063-nand",
+		.data = &imx6ul_pcl063_nand,
+	}, {
+		.compatible = "phytec,imx6ul-pcl063-emmc",
+		.data = &imx6ul_pcl063_emmc,
+	},
+	{ /* Sentinel */ },
+};
+
+static struct driver_d physom_imx6_driver = {
+	.name = "physom-imx6",
+	.probe = physom_imx6_probe,
+	.of_compatible = physom_imx6_match,
+};
+
+postcore_platform_driver(physom_imx6_driver);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

