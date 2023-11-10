Delivery-date: Fri, 10 Nov 2023 14:02:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9E-005rhz-04
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9C-0005F2-BY
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gsw9BU6W/2EYbZsXfKrgweSPuICs+pCLeeFLuvelkaU=; b=hd5UVXMkHc4gaFU0d4WfMslKVc
	6G83kMC5WUVxA6Durq2o1LVkayuc3vF8fB9bcncph73VWa7uJf9RwqlRfvh++yUBaZICCh/JlB3HP
	9ZsMA6nKlME6ioBFz53LCbvFLD/1ql6TdQ/T9L1yLreAwfq+2kQe/wlkD8hzEHYlpsE+tZIC1HwPP
	ZcclWT/LdTuTyRkgjv3ijySJseWbWHxgEsvVwmAVrHd3TG39h6HzI+soEwY84z/4G+K371r2owMCV
	uXofIvfwiA5gNTXMnZ1ALNUFCKSJv0pIeuGhAK86GPJOkMtkhBj5IidIyvy6tJBNTXVOqcEJT+U9I
	UPmtmvCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R81-008m30-2f;
	Fri, 10 Nov 2023 13:00:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lwI-1X
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gsw9BU6W/2EYbZsXfKrgweSPuICs+pCLeeFLuvelkaU=; b=hM9NCT8YtLA7Kwp6rBqGykCPOR
	McaodpwTt7EqbHOlMjdIGDd9zWSYCcqYBnPuLektuVTsNlUU8c56nOEMugs6CwWp3yE4gb4eeAj9V
	XIY49IppxgcVZauiwPCTb278Fhys58fPIUOczxnPswkxXPVUrx84jrcGaV0zAehr45cKj9L3mSMLz
	ZZS5602WVGUSoSKSH4sGJvYiuk4fjBJsq5i0OYq+SVMxU2yJnVMM3KxvWOqjhtvxPYNel69kiKpID
	/0RmSLUwbc3StwCvXYMAbS1H2mIF9c7tP0v+ODy+BhIwdysW63VGaekGenUerDyUnVmLVHHPydSEJ
	+5wx2xvg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3s-0f
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043I-HX; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081ZA-Be; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096NL-0s;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:23 +0100
Message-Id: <20231110130028.2123895-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_608569_894745E1 
X-CRM114-Status: GOOD (  20.57  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/13] ddr: imx8m: get rid of hardcoded phy address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The phy address is hardcoded in several functions. Use the address
provided in struct dram_controller instead. Some functions are used
from legacy DDR setup in board code which only uses parts of the
DDR initialization code. The board code doesn't have any struct
dram_controller *, so provide some static inline wrappers for these
functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c | 10 ++---
 .../boards/phytec-som-imx8mq/ddrphy_train.c   | 12 +++---
 arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c | 10 ++---
 drivers/ddr/imx/ddrphy_train.c                | 14 +++----
 drivers/ddr/imx/ddrphy_utils.c                | 40 ++++++++-----------
 include/soc/imx8m/ddr.h                       | 17 ++++++--
 6 files changed, 53 insertions(+), 50 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c b/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
index e8577369dc..bac7d0a517 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
@@ -144,7 +144,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 1D training image
-	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
+	imx8m_ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
 
 	//configure DDRPHY-FW DMEM structure @clock0...
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
@@ -189,7 +189,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//configure DDRPHY-FW DMEM structure @clock1...
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
@@ -258,7 +258,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//set the PHY input clock to the desired frequency for pstate 0
 	reg32_write(0x3038a088,0x7070000);
@@ -291,7 +291,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 2D training image
-	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
+	imx8m_ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
@@ -332,7 +332,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//Halt MPU
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
diff --git a/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c b/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
index 2ed6578093..fac9e184ae 100644
--- a/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
+++ b/arch/arm/boards/phytec-som-imx8mq/ddrphy_train.c
@@ -148,7 +148,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 1D training image
-	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
+	imx8m_ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
@@ -190,7 +190,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//configure DDRPHY-FW DMEM structure @clock1...
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
@@ -224,7 +224,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 1D training image
-	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
+	imx8m_ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54002,0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0x29c);
@@ -267,7 +267,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//set the PHY input clock to the desired frequency for pstate 0
 	reg32_write(0x3038a088,0x7070000);
@@ -300,7 +300,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 2D training image
-	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
+	imx8m_ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54004,0x2);
@@ -343,7 +343,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//Halt MPU
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
diff --git a/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c b/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
index e8577369dc..bac7d0a517 100644
--- a/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
+++ b/arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c
@@ -144,7 +144,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 1D training image
-	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
+	imx8m_ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_1D_IMAGE);
 
 	//configure DDRPHY-FW DMEM structure @clock0...
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
@@ -189,7 +189,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//configure DDRPHY-FW DMEM structure @clock1...
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
@@ -258,7 +258,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//set the PHY input clock to the desired frequency for pstate 0
 	reg32_write(0x3038a088,0x7070000);
@@ -291,7 +291,7 @@ void ddr_cfg_phy(void) {
 	//enable APB bus to access DDRPHY RAM
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0000, 0x0);
 	//load the 2D training image
-	ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
+	imx8m_ddr_load_train_code(DRAM_TYPE_LPDDR4, FW_2D_IMAGE);
 
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54003,0xc80);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0x54006,0x11);
@@ -332,7 +332,7 @@ void ddr_cfg_phy(void) {
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x9);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x0);
-	wait_ddrphy_training_complete();
+	imx8m_wait_ddrphy_training_complete();
 
 	//Halt MPU
 	reg32_write(IP2APB_DDRPHY_IPS_BASE_ADDR(0) + 4 * 0xd0099, 0x1);
diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index 302acdfe62..c0555ffe01 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -9,7 +9,6 @@
 #include <linux/kernel.h>
 #include <soc/imx8m/ddr.h>
 #include <firmware.h>
-#include <mach/imx/imx8m-regs.h>
 
 static const u16 *lpddr4_imem_1d;
 static size_t lpddr4_imem_1d_size;
@@ -53,7 +52,8 @@ void ddr_get_firmware_ddr(void)
 			     &ddr4_dmem_2d_size);
 }
 
-void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type)
+void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
+			 enum fw_type fw_type)
 {
 	const u16 *imem, *dmem;
 	size_t isize, dsize;
@@ -86,11 +86,9 @@ void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type)
 		panic("No matching DDR PHY firmware found");
 	}
 
-	ddrc_phy_load_firmware(IOMEM(MX8M_DDRC_PHY_BASE_ADDR),
-			       DDRC_PHY_IMEM, imem, isize);
+	ddrc_phy_load_firmware(dram, DDRC_PHY_IMEM, imem, isize);
 
-	ddrc_phy_load_firmware(IOMEM(MX8M_DDRC_PHY_BASE_ADDR),
-			       DDRC_PHY_DMEM, dmem, dsize);
+	ddrc_phy_load_firmware(dram, DDRC_PHY_DMEM, dmem, dsize);
 }
 
 int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timing)
@@ -120,7 +118,7 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 
 		/* load the dram training firmware image */
 		dwc_ddrphy_apb_wr(dram, 0xd0000, 0x0);
-		ddr_load_train_code(dram->dram_type, fsp_msg->fw_type);
+		ddr_load_train_code(dram, dram->dram_type, fsp_msg->fw_type);
 
 		/* load the frequency set point message block parameter */
 		dram_cfg = fsp_msg->fsp_cfg;
@@ -146,7 +144,7 @@ int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timi
 		dwc_ddrphy_apb_wr(dram, 0xd0099, 0x0);
 
 		/* Wait for the training firmware to complete */
-		ret = wait_ddrphy_training_complete();
+		ret = wait_ddrphy_training_complete(dram);
 		if (ret)
 			return ret;
 
diff --git a/drivers/ddr/imx/ddrphy_utils.c b/drivers/ddr/imx/ddrphy_utils.c
index 5f80b8fdc1..37274b0b5a 100644
--- a/drivers/ddr/imx/ddrphy_utils.c
+++ b/drivers/ddr/imx/ddrphy_utils.c
@@ -10,15 +10,13 @@
 #include <io.h>
 #include <linux/iopoll.h>
 #include <soc/imx8m/ddr.h>
-#include <mach/imx/imx8m-regs.h>
-#include <mach/imx/imx8m-ccm-regs.h>
 
-void ddrc_phy_load_firmware(void __iomem *phy,
+void ddrc_phy_load_firmware(struct dram_controller *dram,
 			    enum ddrc_phy_firmware_offset offset,
 			    const u16 *blob, size_t size)
 {
 	while (size) {
-		writew(*blob++, phy + DDRC_PHY_REG(offset));
+		writew(*blob++, dwc_ddrphy_apb_addr(dram, offset));
 		offset++;
 		size -= sizeof(*blob);
 	}
@@ -33,28 +31,27 @@ enum pmc_constants {
 	PMC_TRAIN_FAIL		= 0xff,
 };
 
-static u32 ddrc_phy_get_message(void __iomem *phy, int type)
+static u32 ddrc_phy_get_message(struct dram_controller *dram, int type)
 {
-	u32 r, message;
+	u32 message;
 
 	/*
 	 * When BIT0 set to 0, the PMU has a message for the user
 	 * Wait for it indefinitely.
 	 */
-	readl_poll_timeout(phy + DDRC_PHY_REG(0xd0004),
-			   r, !(r & BIT(0)), 0);
+	while (dwc_ddrphy_apb_rd(dram, 0xd0004) & BIT(0));
 
 	switch (type) {
 	case PMC_MESSAGE_ID:
 		/*
 		 * Get the major message ID
 		 */
-		message = readl(phy + DDRC_PHY_REG(0xd0032));
+		message = dwc_ddrphy_apb_rd(dram, 0xd0032);
 		break;
 	case PMC_MESSAGE_STREAM:
-		message = readl(phy + DDRC_PHY_REG(0xd0034));
+		message = dwc_ddrphy_apb_rd(dram, 0xd0034);
 		message <<= 16;
-		message |= readl(phy + DDRC_PHY_REG(0xd0032));
+		message |= dwc_ddrphy_apb_rd(dram, 0xd0032);
 		break;
 	}
 
@@ -62,37 +59,34 @@ static u32 ddrc_phy_get_message(void __iomem *phy, int type)
 	 * By setting this register to 0, the user acknowledges the
 	 * receipt of the message.
 	 */
-	writel(0x00000000, phy + DDRC_PHY_REG(0xd0031));
+	dwc_ddrphy_apb_wr(dram, 0xd0031, 0x00000000);
 	/*
 	 * When BIT0 set to 0, the PMU has a message for the user
 	 */
-	readl_poll_timeout(phy + DDRC_PHY_REG(0xd0004),
-			   r, r & BIT(0), 0);
+	while (!(dwc_ddrphy_apb_rd(dram, 0xd0004) & BIT(0)));
 
-	writel(0x00000001, phy + DDRC_PHY_REG(0xd0031));
+	dwc_ddrphy_apb_wr(dram, 0xd0031, 0x00000001);
 
 	return message;
 }
 
-static void ddrc_phy_fetch_streaming_message(void __iomem *phy)
+static void ddrc_phy_fetch_streaming_message(struct dram_controller *dram)
 {
-	const u16 index = ddrc_phy_get_message(phy, PMC_MESSAGE_STREAM);
+	const u16 index = ddrc_phy_get_message(dram, PMC_MESSAGE_STREAM);
 	u16 i;
 
 	for (i = 0; i < index; i++)
-		ddrc_phy_get_message(phy, PMC_MESSAGE_STREAM);
+		ddrc_phy_get_message(dram, PMC_MESSAGE_STREAM);
 }
 
-int wait_ddrphy_training_complete(void)
+int wait_ddrphy_training_complete(struct dram_controller *dram)
 {
-	void __iomem *phy = IOMEM(MX8M_DDRC_PHY_BASE_ADDR);
-
 	for (;;) {
-		const u32 m = ddrc_phy_get_message(phy, PMC_MESSAGE_ID);
+		const u32 m = ddrc_phy_get_message(dram, PMC_MESSAGE_ID);
 
 		switch (m) {
 		case PMC_TRAIN_STREAM_START:
-			ddrc_phy_fetch_streaming_message(phy);
+			ddrc_phy_fetch_streaming_message(dram);
 			break;
 		case PMC_TRAIN_SUCCESS:
 			return 0;
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 0a2a7b0e2f..04addc1448 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -455,7 +455,12 @@ void ddrphy_trained_csr_save(struct dram_controller *dram, struct dram_cfg_param
 void dram_config_save(struct dram_timing_info *info, unsigned long base);
 
 /* utils function for ddr phy training */
-int wait_ddrphy_training_complete(void);
+int wait_ddrphy_training_complete(struct dram_controller *dram);
+
+static inline int imx8m_wait_ddrphy_training_complete(void)
+{
+	return wait_ddrphy_training_complete(&imx8m_dram_controller);
+}
 
 #define reg32_write(a, v)	writel(v, a)
 #define reg32_read(a)		readl(a)
@@ -489,9 +494,15 @@ enum ddrc_phy_firmware_offset {
 	DDRC_PHY_DMEM = 0x00054000U,
 };
 
-void ddr_load_train_code(enum dram_type dram_type, enum fw_type fw_type);
+void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
+			 enum fw_type fw_type);
+static inline void imx8m_ddr_load_train_code(enum dram_type dram_type,
+					     enum fw_type fw_type)
+{
+	ddr_load_train_code(&imx8m_dram_controller, dram_type, fw_type);
+}
 
-void ddrc_phy_load_firmware(void __iomem *,
+void ddrc_phy_load_firmware(struct dram_controller *dram,
 			    enum ddrc_phy_firmware_offset,
 			    const u16 *, size_t);
 
-- 
2.39.2



