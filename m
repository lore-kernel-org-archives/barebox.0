Delivery-date: Fri, 05 Aug 2022 14:57:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwtg-00CWRz-6u
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 14:57:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJwte-0005nh-Ih
	for lore@pengutronix.de; Fri, 05 Aug 2022 14:57:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C34FGP0ws/AcOBbfSCl6MNCP3DB+Oq2PkGdRWO35mWY=; b=l0qpx/unp5i5DhoYWY0dpgvmqd
	fQmtAlqvoPgbQ1uTeGF7GURfA+Sm28ap9YmhTnk4H43Fhv51u5a8DzrrFRWYTfqjnIZWhSo0STkip
	A+u5wDoKPlPili+/SrTADJNTlvdnU6+BvYgPWUKyw48JS3z3WTjCCB0sXD9f4qd7yrOPgXQz1vbmY
	DqTCSYp8x2Iz8rmJQRZKaj7bN/n6CTfHQHinknVv5bGe5NN4w+54nvyZ8JbCB32/d5mAlX7d4wn5F
	wicVCA266yCJCCULZ0vDRQh1QfeCzSGQ1rezvp3HM7+pLQ7siS4ZpnrMYnJshV5R9m/6a9TK52+pe
	fqDeHyVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJws3-00FAyA-MD; Fri, 05 Aug 2022 12:56:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqR-00FA5n-Cc
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:54:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqI-0004cp-1g; Fri, 05 Aug 2022 14:54:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-001tgg-20; Fri, 05 Aug 2022 14:54:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-004vzJ-Ae; Fri, 05 Aug 2022 14:54:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:54:10 +0200
Message-Id: <20220805125413.1046239-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055427_614312_D4F7DB8F 
X-CRM114-Status: GOOD (  16.63  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/9] ARM: i.MX8M: remove struct dram_timing_info::dram_type again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We had added dram_timing_info::dram_type to allow the same build to
support both DDR4 and LPDDR4. Since then imx8m_ddr_init has gained a new
member describing the DRAM type, so we can just use that instead of the
struct member. The benefit of that is that we can keep the DRAM timing
code resulting from the generator unchanged.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/mnt-reform/lpddr4-timing.c    |  1 -
 .../arm/boards/nxp-imx8mm-evk/lpddr4-timing.c |  1 -
 arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c  |  1 -
 .../arm/boards/nxp-imx8mn-evk/lpddr4-timing.c |  1 -
 .../arm/boards/nxp-imx8mp-evk/lpddr4-timing.c |  1 -
 .../protonic-imx8m/lpddr4-timing-prt8mm.c     |  1 -
 drivers/ddr/imx8m/ddr_init.c                  |  5 +--
 drivers/ddr/imx8m/ddrphy_train.c              |  6 ++--
 include/soc/imx8m/ddr.h                       | 35 ++++++++++++-------
 9 files changed, 30 insertions(+), 22 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/lpddr4-timing.c b/arch/arm/boards/mnt-reform/lpddr4-timing.c
index 0e962890fde2..0b5853000d03 100644
--- a/arch/arm/boards/mnt-reform/lpddr4-timing.c
+++ b/arch/arm/boards/mnt-reform/lpddr4-timing.c
@@ -1000,7 +1000,6 @@ static struct dram_fsp_msg mnt_reform_lpddr4_dram_fsp_msg[] = {
 
 /* ddr timing config params */
 struct dram_timing_info mnt_reform_dram_timing = {
-	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = mnt_reform_lpddr4_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(mnt_reform_lpddr4_ddrc_cfg),
 	.ddrphy_cfg = mnt_reform_lpddr4_ddrphy_cfg,
diff --git a/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
index 68efbbdf917b..e7c01f9cc9a0 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lpddr4-timing.c
@@ -1965,7 +1965,6 @@ static struct dram_fsp_msg lpddr4_dram_fsp_msg[] = {
 
 /* lpddr4 timing config params on EVK board */
 struct dram_timing_info imx8mm_evk_dram_timing = {
-	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = lpddr4_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(lpddr4_ddrc_cfg),
 	.ddrphy_cfg = lpddr4_ddrphy_cfg,
diff --git a/arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c b/arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
index 7ce371384ea7..131a63156ef7 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/ddr4-timing.c
@@ -1040,7 +1040,6 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 
 /* ddr timing config params */
 struct dram_timing_info imx8mn_evk_ddr4_timing = {
-	.dram_type = DRAM_TYPE_DDR4,
 	.ddrc_cfg = ddr_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
 	.ddrphy_cfg = ddr_ddrphy_cfg,
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
index c53bcc705d2b..940b21cedb03 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lpddr4-timing.c
@@ -1576,7 +1576,6 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 
 /* ddr timing config params */
 struct dram_timing_info imx8mn_evk_lpddr4_timing = {
-	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = ddr_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
 	.ddrphy_cfg = ddr_ddrphy_cfg,
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
index 681e70d06022..3028bc084c73 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
@@ -1834,7 +1834,6 @@ static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
 
 /* ddr timing config params */
 struct dram_timing_info imx8mp_evk_dram_timing = {
-	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = ddr_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
 	.ddrphy_cfg = ddr_ddrphy_cfg,
diff --git a/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c b/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c
index ea5c0b915437..2c55e7d45144 100644
--- a/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8mm.c
@@ -1981,7 +1981,6 @@ static struct dram_fsp_msg lpddr4_dram_fsp_msg[] = {
 
 /* lpddr4 timing config params on EVK board */
 struct dram_timing_info prt8mm_dram_timing = {
-	.dram_type = DRAM_TYPE_LPDDR4,
 	.ddrc_cfg = lpddr4_ddrc_cfg,
 	.ddrc_cfg_num = ARRAY_SIZE(lpddr4_ddrc_cfg),
 	.ddrphy_cfg = lpddr4_ddrphy_cfg,
diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index f046ea52df7f..18969ddb53d3 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -50,10 +50,11 @@ static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 #define IMX8M_SAVED_DRAM_TIMING_BASE		0x180000
 
 int imx8m_ddr_init(struct dram_timing_info *dram_timing,
-		   enum ddrc_type ddrc_type)
+		   unsigned type)
 {
 	unsigned long src_ddrc_rcr = MX8M_SRC_DDRC_RCR_ADDR;
 	unsigned int tmp, initial_drate, target_freq;
+	enum ddrc_type ddrc_type = get_ddrc_type(type);
 	int ret;
 
 	pr_debug("start DRAM init\n");
@@ -134,7 +135,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	 */
 	pr_debug("ddrphy config start\n");
 
-	ret = ddr_cfg_phy(dram_timing, ddrc_type);
+	ret = ddr_cfg_phy(dram_timing, type);
 	if (ret)
 		return ret;
 
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index f739c6510703..e9d35afdfb16 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -93,8 +93,10 @@ void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type)
 			       DDRC_PHY_DMEM, dmem, dsize);
 }
 
-int ddr_cfg_phy(struct dram_timing_info *dram_timing, enum ddrc_type ddrc_type)
+int ddr_cfg_phy(struct dram_timing_info *dram_timing, unsigned type)
 {
+	enum ddrc_type ddrc_type = get_ddrc_type(type);
+	enum dram_type dram_type = get_dram_type(type);
 	struct dram_cfg_param *dram_cfg;
 	struct dram_fsp_msg *fsp_msg;
 	unsigned int num;
@@ -120,7 +122,7 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing, enum ddrc_type ddrc_type)
 
 		/* load the dram training firmware image */
 		dwc_ddrphy_apb_wr(0xd0000, 0x0);
-		ddr_load_train_code(dram_timing->dram_type, fsp_msg->fw_type);
+		ddr_load_train_code(dram_type, fsp_msg->fw_type);
 
 		/* load the frequency set point message block parameter */
 		dram_cfg = fsp_msg->fsp_cfg;
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index e90adc37df87..2149ae432554 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -329,17 +329,29 @@ enum fw_type {
 };
 
 enum dram_type {
-	DRAM_TYPE_LPDDR4,
-	DRAM_TYPE_DDR4,
+#define DRAM_TYPE_MASK	0x00ff
+	DRAM_TYPE_LPDDR4	= 0 << 0,
+	DRAM_TYPE_DDR4		= 1 << 0,
 };
 
+static inline enum dram_type get_dram_type(unsigned type)
+{
+	return type & DRAM_TYPE_MASK;
+}
+
 enum ddrc_type {
-	DDRC_TYPE_MM,
-	DDRC_TYPE_MN,
-	DDRC_TYPE_MQ,
-	DDRC_TYPE_MP,
+#define DDRC_TYPE_MASK	0xff00
+	DDRC_TYPE_MM = 0 << 8,
+	DDRC_TYPE_MN = 1 << 8,
+	DDRC_TYPE_MQ = 2 << 8,
+	DDRC_TYPE_MP = 3 << 8,
 };
 
+static inline enum ddrc_type get_ddrc_type(unsigned type)
+{
+	return type & DDRC_TYPE_MASK;
+}
+
 struct dram_cfg_param {
 	unsigned int reg;
 	unsigned int val;
@@ -353,7 +365,6 @@ struct dram_fsp_msg {
 };
 
 struct dram_timing_info {
-	enum dram_type dram_type;
 	/* umctl2 config */
 	struct dram_cfg_param *ddrc_cfg;
 	unsigned int ddrc_cfg_num;
@@ -387,14 +398,14 @@ static void ddr_get_firmware(enum dram_type dram_type)
 }
 
 int imx8m_ddr_init(struct dram_timing_info *dram_timing,
-		   enum ddrc_type ddrc_type);
+		   unsigned type);
 
 static inline int imx8mm_ddr_init(struct dram_timing_info *dram_timing,
 				  enum dram_type dram_type)
 {
 	ddr_get_firmware(dram_type);
 
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MM);
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MM | dram_type);
 }
 
 static inline int imx8mn_ddr_init(struct dram_timing_info *dram_timing,
@@ -402,7 +413,7 @@ static inline int imx8mn_ddr_init(struct dram_timing_info *dram_timing,
 {
 	ddr_get_firmware(dram_type);
 
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MN);
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MN | dram_type);
 }
 
 static inline int imx8mq_ddr_init(struct dram_timing_info *dram_timing,
@@ -410,7 +421,7 @@ static inline int imx8mq_ddr_init(struct dram_timing_info *dram_timing,
 {
 	ddr_get_firmware(dram_type);
 
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MQ);
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MQ | dram_type);
 }
 
 static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
@@ -418,7 +429,7 @@ static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
 {
 	ddr_get_firmware(dram_type);
 
-	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MP);
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MP | dram_type);
 }
 
 int ddr_cfg_phy(struct dram_timing_info *timing_info, enum ddrc_type ddrc_type);
-- 
2.30.2



