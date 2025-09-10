Delivery-date: Wed, 10 Sep 2025 08:19:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwEAZ-001Mdv-11
	for lore@lore.pengutronix.de;
	Wed, 10 Sep 2025 08:19:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwEAY-0002xj-Of
	for lore@pengutronix.de; Wed, 10 Sep 2025 08:19:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IbsuznVtRpK4qm4/uMx9ItWoFCRbfkJcg8gAWljvGvk=; b=aPxNs2k/Sd86Umd8E2Mt6yleTS
	SLY/rioXmbgy1LTWR22ajb24/OzyYrcSimMk7mlAQBynRntHc0799mysvthH7pVdtWowSd6q20m2I
	LcCtXV72GsLBsSvSsDYE61vPyeg5yxutZGJ/SmCERZhVbAvFbbbDYeVIgfzY/qp7ssguok8AsIp/a
	K5VgppEVtDdxORBAeiXQoZj2gd+MyXgp4HWKQpo31MNicGqTspcJQcZLVdoyLIJLJJCX8t1rFmsX2
	/DFKR4pxyftASVz7aKQe/bEvQfW+G7NP5tfGf62Gy7L7SAlVvcRoedePZD6IkDProa5PBraKy0wFz
	C11MvSOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwEA2-0000000CGTG-1CIn;
	Wed, 10 Sep 2025 06:18:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwE9z-0000000CGRU-3fTA
	for barebox@lists.infradead.org;
	Wed, 10 Sep 2025 06:18:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwE9y-0002ri-CU; Wed, 10 Sep 2025 08:18:26 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwE9y-000Xuz-0d;
	Wed, 10 Sep 2025 08:18:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwE9y-0000000BbTb-0NSw;
	Wed, 10 Sep 2025 08:18:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Sep 2025 08:18:24 +0200
Message-ID: <20250910061824.2765659-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250910061824.2765659-1-s.hauer@pengutronix.de>
References: <20250910061824.2765659-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_231827_923929_C9584598 
X-CRM114-Status: GOOD (  12.88  )
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
Subject: [PATCH 2/2] ARM: k3: add FAT environment support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The am62x loads the environment from the SD boot partition when the
bootsource is SD but not eMMC. Implement the same behaviour for am62lx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/am62lx.c | 28 ++++++++++++++++++++++++++++
 include/mach/k3/common.h  |  1 +
 2 files changed, 29 insertions(+)

diff --git a/arch/arm/mach-k3/am62lx.c b/arch/arm/mach-k3/am62lx.c
index 38a88ea7cf..88a008d628 100644
--- a/arch/arm/mach-k3/am62lx.c
+++ b/arch/arm/mach-k3/am62lx.c
@@ -137,6 +137,19 @@ void am62lx_get_bootsource(enum bootsource *src, int *instance)
 		am62lx_get_backup_bootsource(devstat, src, instance);
 }
 
+bool am62lx_boot_is_emmc(void)
+{
+	u32 bootmode = readl(AM62LX_BOOT_PARAM_TABLE_INDEX_OCRAM);
+	u32 devstat = readl(AM62LX_CTRLMMR_MAIN_DEVSTAT);
+
+	if (bootmode != K3_PRIMARY_BOOTMODE)
+		return false;
+	if (FIELD_GET(MAIN_DEVSTAT_PRIMARY_BOOTMODE, devstat) != BOOT_DEVICE_EMMC)
+		return false;
+
+	return true;
+}
+
 static int am62lx_init(void)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
@@ -153,3 +166,18 @@ static int am62lx_init(void)
 	return 0;
 }
 postcore_initcall(am62lx_init);
+
+static int am62x_env_init(void)
+{
+	if (!of_machine_is_compatible("ti,am62l3"))
+		return 0;
+
+	if (bootsource_get() != BOOTSOURCE_MMC)
+		return 0;
+
+	if (am62lx_boot_is_emmc())
+		return 0;
+
+	return k3_env_init();
+}
+late_initcall(am62x_env_init);
diff --git a/include/mach/k3/common.h b/include/mach/k3/common.h
index bb6c4f1576..65d71ee890 100644
--- a/include/mach/k3/common.h
+++ b/include/mach/k3/common.h
@@ -11,6 +11,7 @@
 void am62x_get_bootsource(enum bootsource *src, int *instance);
 void am62lx_get_bootsource(enum bootsource *src, int *instance);
 bool am62x_boot_is_emmc(void);
+bool am62lx_boot_is_emmc(void);
 u64 am62x_sdram_size(void);
 void am62x_register_dram(void);
 void am62x_enable_32k_crystal(void);
-- 
2.47.3



