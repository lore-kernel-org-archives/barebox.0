Delivery-date: Mon, 17 Nov 2025 09:36:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuiv-001utX-1D
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:36:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuiu-0001st-KN
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:36:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yMimdCoZZQxzGWUa9d1SejzBSQsVOMtjpFJVrX4Lne0=; b=z5vpXb+DAy0Foh3UiLwWsJ8P+g
	CXqY3CuMmOC1AyCkleezplEIRvKvXUJ+yauFTJMiqv8U24vhkx6qfpO6fSe4NyZVvB7e2dMdGjqBx
	I1zYSr78x5Yw0dA5+bt4BPh9YVhU0NXeMMq8fvPgxEqPXexnNHFcT1Jj9J9/RQwgdFbX3nEHB4zB9
	VKtNsYBtbCssc+Y8J3oQ0C/zj9WnKfQTITf991V/Gim2+XMFou5kw4Z/SegTZYrtqhJu6GESrpSfH
	bM6QY+JmJblIanZIIMw3plAKFWMqn/T/rCV+Dz68F3uoodk09eGRmC/tWgO5e/XRr9drj3h14Dt9F
	wvaj/lFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuiT-0000000Fh5Y-0dmo;
	Mon, 17 Nov 2025 08:36:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuiP-0000000Fh1d-2pqe
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:36:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-0001E4-6S; Mon, 17 Nov 2025 09:35:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuhz-000sff-2S;
	Mon, 17 Nov 2025 09:35:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-00000005QZR-0GcL;
	Mon, 17 Nov 2025 09:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Nov 2025 09:35:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-uid-v2-2-a2415bf9133d@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
In-Reply-To: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763368535; l=4744;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=M4SW8wIWtIwa4y+48aXJYJ1aY+SN2MABAwNuhRiRdOs=;
 b=gkY/4EyrEatcK9YWY/lwMcS3WphQqhcAi/1JF3nV/ziMsNmYs0+5T3Zm2N1vcJYSnql5DZCFp
 joJ5YgaB88JDUrWqpoYDzBYlxAFURfUE9mXXKEpb/apR/brqqqimr0V
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003602_010948_179C8857 
X-CRM114-Status: GOOD (  18.69  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/9] soc: imx8mp: Soc ID is 128bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX8MP the SoC ID has 128 bits instead of 64 bits as on other i.MX8M
SoCs. Read the remaining 64 bits which so far haven't been included in
the SoC ID.

On already rolled out devices a change of the SoC ID is undesired, so
this commit introduces CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID. With
this option enabled the old SoC ID will be used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig   | 10 ++++++++++
 drivers/soc/imx/soc-imx8m.c | 33 +++++++++++++++++++++++----------
 include/mach/imx/generic.h  |  5 +++++
 3 files changed, 38 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5f50d1a8233ca0e034e5f9b83343a02e7b6a35b8..3edf95af2b1896ad9d5cb0981e54d2af372dd49c 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -823,6 +823,16 @@ config IMX_SAVE_BOOTROM_LOG
 	bool
 	default CMD_BOOTROM
 
+config ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID
+	bool "Keep compatible i.MX8MP SOC UID"
+	depends on ARCH_IMX8MP
+	help
+	  barebox used to wrongly read out the i.MX8MP SOC UID. The SOC UID on
+	  i.MX8MP is 128bits wide, but we used to only use 64bit. As the
+	  machine_id might be generated from the SOC UID already deployed
+	  systems might depend on the SOC UID staying constant. Enable this
+	  option to keep the old behaviour.
+
 config HAB
 	bool
 
diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
index 3b83284fcbfd56d543cc300b8d42771202aa0bbb..06c524308e83b2d2b57615b9dc60652400f202e2 100644
--- a/drivers/soc/imx/soc-imx8m.c
+++ b/drivers/soc/imx/soc-imx8m.c
@@ -48,7 +48,7 @@ struct imx8_soc_data {
 	void (*save_boot_loc)(void);
 };
 
-static u64 soc_uid;
+static u64 soc_uid[2];
 
 #ifdef CONFIG_HAVE_ARM_SMCCC
 static u32 imx8mq_soc_revision_from_atf(void)
@@ -99,9 +99,9 @@ static u32 __init imx8mq_soc_revision(void)
 			rev = REV_B1;
 	}
 
-	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
-	soc_uid <<= 32;
-	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
+	soc_uid[0] = readl_relaxed(ocotp_base + OCOTP_UID_HIGH);
+	soc_uid[0] <<= 32;
+	soc_uid[0] |= readl_relaxed(ocotp_base + OCOTP_UID_LOW);
 
 	/* Keep the OCOTP clk on for the TF-A else the CPU stuck */
 	of_node_put(np);
@@ -109,13 +109,16 @@ static u32 __init imx8mq_soc_revision(void)
 	return rev;
 }
 
+#define IMX8MP_OCOTP_UID_2_LOW	0xe00
+#define IMX8MP_OCOTP_UID_2_HIGH	0xe10
+
 static void __init imx8mm_soc_uid(void)
 {
 	void __iomem *ocotp_base;
 	struct device_node *np;
 	struct clk *clk;
-	u32 offset = of_machine_is_compatible("fsl,imx8mp") ?
-		     IMX8MP_OCOTP_UID_OFFSET : 0;
+	bool is_imx8mp = of_machine_is_compatible("fsl,imx8mp");
+	u32 offset = is_imx8mp ? IMX8MP_OCOTP_UID_OFFSET : 0;
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-ocotp");
 	if (!np)
@@ -131,9 +134,15 @@ static void __init imx8mm_soc_uid(void)
 
 	clk_prepare_enable(clk);
 
-	soc_uid = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
-	soc_uid <<= 32;
-	soc_uid |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
+	soc_uid[0] = readl_relaxed(ocotp_base + OCOTP_UID_HIGH + offset);
+	soc_uid[0] <<= 32;
+	soc_uid[0] |= readl_relaxed(ocotp_base + OCOTP_UID_LOW + offset);
+
+	if (is_imx8mp) {
+		soc_uid[1] = readl_relaxed(ocotp_base + IMX8MP_OCOTP_UID_2_HIGH);
+		soc_uid[1] <<= 32;
+		soc_uid[1] |= readl_relaxed(ocotp_base + IMX8MP_OCOTP_UID_2_LOW);
+	}
 
 	/* Keep the OCOTP clk on for the TF-A else the CPU stuck */
 	of_node_put(np);
@@ -265,7 +274,11 @@ static int __init imx8_soc_init(void)
 		goto free_soc;
 	}
 
-	soc_dev_attr->serial_number = xasprintf("%016llX", soc_uid);
+	if (soc_uid[1] && !imx8mp_keep_compatible_soc_uid())
+		soc_dev_attr->serial_number = xasprintf("%016llX%016llX",
+							soc_uid[1], soc_uid[0]);
+	else
+		soc_dev_attr->serial_number = xasprintf("%016llX", soc_uid[0]);
 	if (!soc_dev_attr->serial_number) {
 		ret = -ENOMEM;
 		goto free_rev;
diff --git a/include/mach/imx/generic.h b/include/mach/imx/generic.h
index a0f65391686b479136f08b699fca34c45d915761..5f81aa65a7452f30084acd61a04d47d429e99d12 100644
--- a/include/mach/imx/generic.h
+++ b/include/mach/imx/generic.h
@@ -77,6 +77,11 @@ void imx8mn_cpu_lowlevel_init(void);
 void imx8mp_cpu_lowlevel_init(void);
 void imx93_cpu_lowlevel_init(void);
 
+static inline bool imx8mp_keep_compatible_soc_uid(void)
+{
+	return IS_ENABLED(CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID);
+}
+
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))

-- 
2.47.3



