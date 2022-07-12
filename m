Delivery-date: Tue, 12 Jul 2022 15:34:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBG1m-004Y8n-Bt
	for lore@lore.pengutronix.de; Tue, 12 Jul 2022 15:34:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBG1h-00063z-Mn
	for lore@pengutronix.de; Tue, 12 Jul 2022 15:34:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YZPlTrI7hI+rL7+CGOFel2BWqAmksVgjVOHmU+dSbN4=; b=LoixBgWMNyzA0pB3s6kYNY8Iwu
	C89tA7HKY3A/rE65fTq5JOY9LTQKcwxt8zWT6hwzOao2pzDw2CCLoaTX1UUj04K/WW8OaA4JBJUQe
	1qXPmCxPF9gDMJSpvd6hoJgetpydXx83uP5qD7y6jqxL/4aBVi4DhFyLR/FiWMcjaAdNGJ367hh38
	HaQJkwgYWT0idIC9qZjnL5oj+SO+GqrY1QD/HYuclTY1IgpjYhbV3Ju9edVU3DWmzymPI4XlcfZC0
	CGgRv2DRY5DRdsVsRrPR0lT7xu0msSThl2znM0ce8mAsW5D8rehwCcGdy4KaQj7qnW5krzRNwmrnN
	W6lfl1iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBFzt-00BMrp-1S; Tue, 12 Jul 2022 13:32:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBFzm-00BMku-3T
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 13:32:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBFzh-0005dJ-4e; Tue, 12 Jul 2022 15:32:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBFzg-000WMZ-EU; Tue, 12 Jul 2022 15:32:04 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBFzf-00AN88-EG; Tue, 12 Jul 2022 15:32:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Jul 2022 15:32:01 +0200
Message-Id: <20220712133202.2472149-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_063210_356216_DA703F19 
X-CRM114-Status: GOOD (  15.36  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8M: include only necessary ddrphy firmwares in image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far we always include ddrphy firmwares for DDR4 and LPDDR4 in the
images. Pass the DDR type to the RAM controller initialization so
that the type is known at compile time. With this the compiler can
discard the unused firmware files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/mnt-reform/lowlevel.c         |  2 +-
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c     |  2 +-
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c     |  2 +-
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c     |  2 +-
 .../boards/protonic-imx8m/lowlevel-prt8mm.c   |  2 +-
 drivers/ddr/imx8m/ddr_init.c                  | 24 +------
 drivers/ddr/imx8m/ddrphy_train.c              | 66 ++++++++++++++++---
 include/soc/imx8m/ddr.h                       | 50 ++++++++++++--
 8 files changed, 111 insertions(+), 39 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
index 231c92daf5..644c42269d 100644
--- a/arch/arm/boards/mnt-reform/lowlevel.c
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -139,7 +139,7 @@ static __noreturn noinline void mnt_reform_start(void)
 
 		mnt_reform_init_power();
 
-		imx8mq_ddr_init(&mnt_reform_dram_timing);
+		imx8mq_ddr_init(&mnt_reform_dram_timing, DRAM_TYPE_LPDDR4);
 
 		imx8mq_get_boot_source(&src, &instance);
 		switch (src) {
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index d0e10b136d..d13474602c 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -101,7 +101,7 @@ static void start_atf(void)
 		return;
 
 	power_init_board();
-	imx8mm_ddr_init(&imx8mm_evk_dram_timing);
+	imx8mm_ddr_init(&imx8mm_evk_dram_timing, DRAM_TYPE_LPDDR4);
 
 	imx8mm_load_and_start_image_via_tfa();
 }
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index 7fbe11a897..9e44d343b7 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -161,7 +161,7 @@ static void start_atf(void)
 		dram_timing = &imx8mn_evk_ddr4_timing;
 	}
 
-	imx8mn_ddr_init(dram_timing);
+	imx8mn_ddr_init(dram_timing, dram_timing->dram_type);
 
 	imx8mn_get_boot_source(&src, &instance);
 	switch (src) {
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index ab01c140b5..3306392e9e 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -119,7 +119,7 @@ static void start_atf(void)
 
 	power_init_board();
 
-	imx8mp_ddr_init(&imx8mp_evk_dram_timing);
+	imx8mp_ddr_init(&imx8mp_evk_dram_timing, DRAM_TYPE_LPDDR4);
 
 	imx8mp_get_boot_source(&src, &instance);
 	switch (src) {
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index bc497d5a5b..c327265426 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -48,7 +48,7 @@ static void start_atf(void)
 
 	imx8mm_early_clock_init();
 
-	imx8mm_ddr_init(&prt8mm_dram_timing);
+	imx8mm_ddr_init(&prt8mm_dram_timing, DRAM_TYPE_LPDDR4);
 
 	imx8mm_load_and_start_image_via_tfa();
 }
diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 9a4b4e2ca8..41e1fba38a 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -49,8 +49,8 @@ static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
  */
 #define IMX8M_SAVED_DRAM_TIMING_BASE		0x180000
 
-static int imx8m_ddr_init(struct dram_timing_info *dram_timing,
-			  enum ddrc_type type)
+int imx8m_ddr_init(struct dram_timing_info *dram_timing,
+		   enum ddrc_type type)
 {
 	unsigned long src_ddrc_rcr = MX8M_SRC_DDRC_RCR_ADDR;
 	unsigned int tmp, initial_drate, target_freq;
@@ -210,23 +210,3 @@ static int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 
 	return 0;
 }
-
-int imx8mm_ddr_init(struct dram_timing_info *dram_timing)
-{
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MM);
-}
-
-int imx8mn_ddr_init(struct dram_timing_info *dram_timing)
-{
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MN);
-}
-
-int imx8mq_ddr_init(struct dram_timing_info *dram_timing)
-{
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MQ);
-}
-
-int imx8mp_ddr_init(struct dram_timing_info *dram_timing)
-{
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MP);
-}
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index 9dc20a4762..2190b53413 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -11,6 +11,48 @@
 #include <firmware.h>
 #include <mach/imx8m-regs.h>
 
+static const u16 *lpddr4_imem_1d;
+static size_t lpddr4_imem_1d_size;
+static const u16 *lpddr4_dmem_1d;
+static size_t lpddr4_dmem_1d_size;
+static const u16 *lpddr4_imem_2d;
+static size_t lpddr4_imem_2d_size;
+static const u16 *lpddr4_dmem_2d;
+static size_t lpddr4_dmem_2d_size;
+
+void ddr_get_firmware_lpddr4(void)
+{
+	get_builtin_firmware(lpddr4_pmu_train_1d_imem_bin, &lpddr4_imem_1d,
+			     &lpddr4_imem_1d_size);
+	get_builtin_firmware(lpddr4_pmu_train_1d_dmem_bin, &lpddr4_dmem_1d,
+			     &lpddr4_dmem_1d_size);
+	get_builtin_firmware(lpddr4_pmu_train_2d_imem_bin, &lpddr4_imem_2d,
+			     &lpddr4_imem_2d_size);
+	get_builtin_firmware(lpddr4_pmu_train_2d_dmem_bin, &lpddr4_dmem_2d,
+			     &lpddr4_dmem_2d_size);
+}
+
+static const u16 *ddr4_imem_1d;
+static size_t ddr4_imem_1d_size;
+static const u16 *ddr4_dmem_1d;
+static size_t ddr4_dmem_1d_size;
+static const u16 *ddr4_imem_2d;
+static size_t ddr4_imem_2d_size;
+static const u16 *ddr4_dmem_2d;
+static size_t ddr4_dmem_2d_size;
+
+void ddr_get_firmware_ddr(void)
+{
+	get_builtin_firmware(ddr4_imem_1d_bin, &ddr4_imem_1d,
+			     &ddr4_imem_1d_size);
+	get_builtin_firmware(ddr4_dmem_1d_bin, &ddr4_dmem_1d,
+			     &ddr4_dmem_1d_size);
+	get_builtin_firmware(ddr4_imem_2d_bin, &ddr4_imem_2d,
+			     &ddr4_imem_2d_size);
+	get_builtin_firmware(ddr4_dmem_2d_bin, &ddr4_dmem_2d,
+			     &ddr4_dmem_2d_size);
+}
+
 void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type)
 {
 	const u16 *imem, *dmem;
@@ -18,19 +60,27 @@ void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type)
 
 	if (dram_is_lpddr4(dram_type)) {
 		if (fw_type == FW_1D_IMAGE) {
-			get_builtin_firmware(lpddr4_pmu_train_1d_imem_bin, &imem, &isize);
-			get_builtin_firmware(lpddr4_pmu_train_1d_dmem_bin, &dmem, &dsize);
+			imem = lpddr4_imem_1d;
+			isize = lpddr4_imem_1d_size;
+			dmem = lpddr4_dmem_1d;
+			dsize = lpddr4_dmem_1d_size;
 		} else {
-			get_builtin_firmware(lpddr4_pmu_train_2d_imem_bin, &imem, &isize);
-			get_builtin_firmware(lpddr4_pmu_train_2d_dmem_bin, &dmem, &dsize);
+			imem = lpddr4_imem_2d;
+			isize = lpddr4_imem_2d_size;
+			dmem = lpddr4_dmem_2d;
+			dsize = lpddr4_dmem_2d_size;
 		}
 	} else if (dram_is_ddr4(dram_type)) {
 		if (fw_type == FW_1D_IMAGE) {
-			get_builtin_firmware(ddr4_imem_1d_bin, &imem, &isize);
-			get_builtin_firmware(ddr4_dmem_1d_bin, &dmem, &dsize);
+			imem = ddr4_imem_1d;
+			isize = ddr4_imem_1d_size;
+			dmem = ddr4_dmem_1d;
+			dsize = ddr4_dmem_1d_size;
 		} else {
-			get_builtin_firmware(ddr4_imem_2d_bin, &imem, &isize);
-			get_builtin_firmware(ddr4_dmem_2d_bin, &dmem, &dsize);
+			imem = ddr4_imem_2d;
+			isize = ddr4_imem_2d_size;
+			dmem = ddr4_dmem_2d;
+			dsize = ddr4_dmem_2d_size;
 		}
 	} else {
 		panic("No matching DDR PHY firmware found");
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index c81c4d82c5..ad13632d28 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -375,10 +375,52 @@ enum ddrc_type {
 	DDRC_TYPE_MP,
 };
 
-int imx8mm_ddr_init(struct dram_timing_info *timing_info);
-int imx8mn_ddr_init(struct dram_timing_info *timing_info);
-int imx8mq_ddr_init(struct dram_timing_info *timing_info);
-int imx8mp_ddr_init(struct dram_timing_info *timing_info);
+void ddr_get_firmware_lpddr4(void);
+void ddr_get_firmware_ddr(void);
+
+static void ddr_get_firmware(enum dram_type type)
+{
+	if (type == DRAM_TYPE_LPDDR4)
+		ddr_get_firmware_lpddr4();
+	else
+		ddr_get_firmware_ddr();
+}
+
+int imx8m_ddr_init(struct dram_timing_info *dram_timing,
+		   enum ddrc_type type);
+
+static inline int imx8mm_ddr_init(struct dram_timing_info *dram_timing,
+				  enum dram_type type)
+{
+	ddr_get_firmware(type);
+
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MM);
+}
+
+static inline int imx8mn_ddr_init(struct dram_timing_info *dram_timing,
+				  enum dram_type type)
+{
+	ddr_get_firmware(type);
+
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MN);
+}
+
+static inline int imx8mq_ddr_init(struct dram_timing_info *dram_timing,
+				  enum dram_type type)
+{
+	ddr_get_firmware(type);
+
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MQ);
+}
+
+static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
+				  enum dram_type type)
+{
+	ddr_get_firmware(type);
+
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MP);
+}
+
 int ddr_cfg_phy(struct dram_timing_info *timing_info, enum ddrc_type type);
 void load_lpddr4_phy_pie(void);
 void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
-- 
2.30.2



