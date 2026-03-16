Delivery-date: Mon, 16 Mar 2026 18:22:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Bdl-001Vh1-0P
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:22:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Bdh-0005Bh-RW
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:22:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8OF1ydZWAqZLkx+kvPh6UE8ZnnFVke5Lac2HTXm833Y=; b=ZnXI8vcO6iNrRR9+Z4y/ZuZoLL
	Z37HXG+vUENhO6IOtbgulF0vmYismG+4/NZdX7u1Kdf3bigeZTgFDQ4Dhs5BcZfq1fqwGD03iPsfW
	QQmczDyf+9nHDU0Q9hyxkdJ9bdBeFAHC5qED9NjbChndn1K/tyXO+yZMw2sI4Es34najWHCOzo8ZT
	/rJ1041O3phbAzVnCmfsU0PIyaX+oNJYo8bj694dhlPJNlgjbHe+uuZzp/dpccAYH/R0QZ63M56gz
	LytOu9VvIXsFdWs7N0sPH0CHIXfHS8ppi6TWgBmcgAAbTNSfGkRSVbXOV3j/xjv0bFFjdZPdJ06/7
	Elo2vOPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdD-00000004YBP-1Oqm;
	Mon, 16 Mar 2026 17:21:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdC-00000004YAA-0ym7
	for barebox@bombadil.infradead.org;
	Mon, 16 Mar 2026 17:21:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=8OF1ydZWAqZLkx+kvPh6UE8ZnnFVke5Lac2HTXm833Y=; b=CmOaUrTOwwszodpIwx//D8uN/D
	US+mb9r8vw48StrvqAX73bqMKQFCfOr37Snp/kyOoM5mV6SRpDcbI+rd/yHPeln/l1y+lV/tCGEeZ
	n3NbjGoWZVI7Gp998XL6eGvRbIH84BUYu8IJL3Mi86hgamu1tB59OTW48iKUOkkgSF6vbBl6Y+xKs
	CnqoC4Zh1NoW2P2TWs8tEEQQsu4qSslsgOkYycBO9bDx9VtNFUmODSyZl5xUFg/O3n7zY2QS7yz3b
	1pB2ssniM2axTzSmzpDahLfYxgEszW8RYF1TGBeoP5E85gjhk8msNz51gLQ7ZVNl+i69w0hIrBJ3M
	WP8yQ+dw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd7-00000007Jdc-2YLF
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fk-8h; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi5-2V;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2fYC;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-5-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=23933;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UFZjXuQC3e3LQn3iETcwloX+fkBnDniPYA4wZgZOosI=;
 b=0bc3dNlaOjqQk7526Wpgp+4t8AKEx9QGEMPvH/M+PSebIj4C2/Br1PIsWwFpgEPrsKipYW+C3
 HtFMzsd3XeBDhsLQHthb+upBawa5lIsAUojsIcPXz0+aRhx2Ll7GrAt
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_172126_300505_74B77C38 
X-CRM114-Status: GOOD (  16.34  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] firmware: Use struct fwobj for get_builtin_firmware
 APIs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

Replace the separate start/size output parameters of
get_builtin_firmware() and get_builtin_firmware_ext() with a single
struct fwobj pointer. This groups the firmware data pointer and size
together, reducing the number of variables at call sites.

Update all callers across imx, rockchip, layerscape, socfpga, and
board-specific code to use the new struct-based interface.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/lowlevel.c      |  7 +--
 arch/arm/boards/webasto-ccbv2/lowlevel.c |  7 +--
 arch/arm/mach-imx/atf.c                  | 84 ++++++++++++---------------
 arch/arm/mach-imx/ele.c                  | 12 ++--
 arch/arm/mach-imx/esdctl.c               |  7 +--
 arch/arm/mach-layerscape/tfa.c           |  7 +--
 arch/arm/mach-rockchip/atf.c             | 14 ++---
 arch/arm/mach-socfpga/atf.c              |  7 +--
 drivers/ddr/imx/ddrphy_train.c           | 97 +++++++++++---------------------
 drivers/mci/imx-esdhc-pbl.c              |  7 +--
 drivers/net/fsl-fman.c                   | 11 ++--
 include/firmware.h                       | 23 +++++---
 12 files changed, 120 insertions(+), 163 deletions(-)

diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index 57639f8a84..6981a96926 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -71,8 +71,7 @@ static void *read_eeprom(void)
 static void noinline start_mba6ulx(void)
 {
 	void *fdt;
-	int tee_size;
-	void *tee;
+	struct fwobj tee;
 
 	setup_uart();
 
@@ -84,9 +83,9 @@ static void noinline start_mba6ulx(void)
 	 */
 	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) && imx6_can_access_tzasc()) {
 
-		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
+		get_builtin_firmware(mba6ul_optee_bin, &tee);
 
-		imx6ul_start_optee_early(NULL, tee, (void *)OPTEE_OVERLAY_LOCATION, 0x1000);
+		imx6ul_start_optee_early(NULL, tee.data, (void *)OPTEE_OVERLAY_LOCATION, 0x1000);
 	}
 
 	imx6ul_barebox_entry(fdt);
diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index c25f8a9cb3..a5dd156473 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -34,8 +34,7 @@ static void configure_uart(void)
 
 static void noinline start_ccbv2(unsigned long mem_size, char *fdt)
 {
-	int tee_size;
-	void *tee;
+	struct fwobj tee;
 
 	configure_uart();
 
@@ -44,9 +43,9 @@ static void noinline start_ccbv2(unsigned long mem_size, char *fdt)
 	 * if we can access the TZASC.
 	 */
 	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) && imx6_can_access_tzasc()) {
-		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
+		get_builtin_firmware(ccbv2_optee_bin, &tee);
 
-		imx6ul_start_optee_early(NULL, tee, (void *)OPTEE_OVERLAY_LOCATION, 0x1000);
+		imx6ul_start_optee_early(NULL, tee.data, (void *)OPTEE_OVERLAY_LOCATION, 0x1000);
 	}
 
 	imx6ul_barebox_entry(fdt);
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 34893c3a04..ecc8aaa4fb 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -273,10 +273,8 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 
 __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
-	const void *bl31;
-	size_t bl31_size;
-	void *bl32 = NULL;
-	size_t bl32_size = 0;
+	struct fwobj bl31;
+	struct fwobj bl32 = {};
 
 	imx_set_cpu_type(IMX_CPU_IMX8MM);
 	imx8mm_init_scratch_space();
@@ -285,14 +283,14 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mm_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
-		get_builtin_firmware_ext(imx8mm_bl32_bin, bl33, &bl32, &bl32_size);
-		get_builtin_firmware(imx8mm_bl31_bin_optee, &bl31, &bl31_size);
+		get_builtin_firmware_ext(imx8mm_bl32_bin, bl33, &bl32);
+		get_builtin_firmware(imx8mm_bl31_bin_optee, &bl31);
 	} else {
-		get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
+		get_builtin_firmware(imx8mm_bl31_bin, &bl31);
 	}
 
-	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size, bl33, fdt);
+	imx8m_tfa_start_bl31(bl31.data, bl31.size, (void *)MX8MM_ATF_BL31_BASE_ADDR,
+			     bl32.data, bl32.size, bl33, fdt);
 }
 
 void imx8mp_load_bl33(void *bl33)
@@ -338,10 +336,8 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 
 __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
-	const void *bl31;
-	size_t bl31_size;
-	void *bl32 = NULL;
-	size_t bl32_size = 0;
+	struct fwobj bl31;
+	struct fwobj bl32 = {};
 
 	imx_set_cpu_type(IMX_CPU_IMX8MP);
 	imx8mp_init_scratch_space();
@@ -350,14 +346,14 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mp_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
-		get_builtin_firmware_ext(imx8mp_bl32_bin, bl33, &bl32, &bl32_size);
-		get_builtin_firmware(imx8mp_bl31_bin_optee, &bl31, &bl31_size);
+		get_builtin_firmware_ext(imx8mp_bl32_bin, bl33, &bl32);
+		get_builtin_firmware(imx8mp_bl31_bin_optee, &bl31);
 	} else {
-		get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
+		get_builtin_firmware(imx8mp_bl31_bin, &bl31);
 	}
 
-	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size, bl33, fdt);
+	imx8m_tfa_start_bl31(bl31.data, bl31.size, (void *)MX8MP_ATF_BL31_BASE_ADDR,
+			     bl32.data, bl32.size, bl33, fdt);
 }
 
 void imx8mn_load_bl33(void *bl33)
@@ -403,10 +399,8 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 
 __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
-	const void *bl31;
-	size_t bl31_size;
-	void *bl32 = NULL;
-	size_t bl32_size = 0;
+	struct fwobj bl31;
+	struct fwobj bl32 = {};
 
 	imx_set_cpu_type(IMX_CPU_IMX8MN);
 	imx8mn_init_scratch_space();
@@ -415,14 +409,14 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mn_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
-		get_builtin_firmware_ext(imx8mn_bl32_bin, bl33, &bl32, &bl32_size);
-		get_builtin_firmware(imx8mn_bl31_bin_optee, &bl31, &bl31_size);
+		get_builtin_firmware_ext(imx8mn_bl32_bin, bl33, &bl32);
+		get_builtin_firmware(imx8mn_bl31_bin_optee, &bl31);
 	} else {
-		get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
+		get_builtin_firmware(imx8mn_bl31_bin, &bl31);
 	}
 
-	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size, bl33, fdt);
+	imx8m_tfa_start_bl31(bl31.data, bl31.size, (void *)MX8MN_ATF_BL31_BASE_ADDR,
+			     bl32.data, bl32.size, bl33, fdt);
 }
 
 void imx8mq_load_bl33(void *bl33)
@@ -462,10 +456,8 @@ __noreturn void imx8mq_load_and_start_image_via_tfa(void)
 
 __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
-	const void *bl31;
-	size_t bl31_size;
-	void *bl32 = NULL;
-	size_t bl32_size = 0;
+	struct fwobj bl31;
+	struct fwobj bl32 = {};
 
 	imx_set_cpu_type(IMX_CPU_IMX8MQ);
 	imx8mq_init_scratch_space();
@@ -474,14 +466,14 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mq_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {
-		get_builtin_firmware_ext(imx8mq_bl32_bin, bl33, &bl32, &bl32_size);
-		get_builtin_firmware(imx8mq_bl31_bin_optee, &bl31, &bl31_size);
+		get_builtin_firmware_ext(imx8mq_bl32_bin, bl33, &bl32);
+		get_builtin_firmware(imx8mq_bl31_bin_optee, &bl31);
 	} else {
-		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
+		get_builtin_firmware(imx8mq_bl31_bin, &bl31);
 	}
 
-	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR,
-			     bl32, bl32_size, bl33, fdt);
+	imx8m_tfa_start_bl31(bl31.data, bl31.size, (void *)MX8MQ_ATF_BL31_BASE_ADDR,
+			     bl32.data, bl32.size, bl33, fdt);
 }
 
 void __noreturn imx93_load_and_start_image_via_tfa(void)
@@ -493,8 +485,7 @@ void __noreturn __imx93_load_and_start_image_via_tfa(void *bl33)
 {
 	unsigned long atf_dest = MX93_ATF_BL31_BASE_ADDR;
 	void __noreturn (*bl31)(void) = (void *)atf_dest;
-	const void *tfa;
-	size_t tfa_size;
+	struct fwobj tfa;
 	unsigned long endmem = MX9_DDR_CSD1_BASE_ADDR + imx9_ddrc_sdram_size();
 
 	imx_set_cpu_type(IMX_CPU_IMX93);
@@ -503,22 +494,19 @@ void __noreturn __imx93_load_and_start_image_via_tfa(void *bl33)
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX93_OPTEE)) {
 		void *bl32 = (void *)arm_mem_optee(endmem);
-		size_t bl32_size;
-		void *bl32_image;
+		struct fwobj bl32_fw;
 
 		imx93_ele_load_fw(bl33);
 
-		get_builtin_firmware_ext(imx93_bl32_bin,
-				bl33, &bl32_image,
-				&bl32_size);
+		get_builtin_firmware_ext(imx93_bl32_bin, bl33, &bl32_fw);
 
-		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
+		imx_adjust_optee_memory(&bl32, &bl32_fw.data, &bl32_fw.size);
 
-		memcpy(bl32, bl32_image, bl32_size);
+		memcpy(bl32, bl32_fw.data, bl32_fw.size);
 
-		get_builtin_firmware(imx93_bl31_bin_optee, &tfa, &tfa_size);
+		get_builtin_firmware(imx93_bl31_bin_optee, &tfa);
 	} else {
-		get_builtin_firmware(imx93_bl31_bin, &tfa, &tfa_size);
+		get_builtin_firmware(imx93_bl31_bin, &tfa);
 	}
 
 	handoff_data_move(bl33 - ALIGN(handoff_data_size(), 0x1000));
@@ -539,7 +527,7 @@ void __noreturn __imx93_load_and_start_image_via_tfa(void *bl33)
 	 */
 	memcpy(bl33, __image_start, ALIGN(barebox_pbl_size, 1024));
 
-	memcpy(bl31, tfa, tfa_size);
+	memcpy(bl31, tfa.data, tfa.size);
 
 	asm volatile("msr sp_el2, %0" : :
 		     "r" (bl33 - 16) :
diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index c0d1ab605d..02e4deafb0 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -191,8 +191,8 @@ int imx93_ele_load_fw(void *bl33)
 		.size = 4,
 		.command = ELE_FW_AUTH_REQ,
 	};
-	void *firmware;
-	int size, ret;
+	struct fwobj fw;
+	int ret;
 	int rev = 0;
 
 	ele_get_info(&info);
@@ -202,11 +202,11 @@ int imx93_ele_load_fw(void *bl33)
 	switch (rev) {
 #ifdef CONFIG_FIRMWARE_IMX93_OPTEE_A0
 	case 0xa0:
-		get_builtin_firmware_ext(mx93a0_ahab_container_img, bl33, &firmware, &size);
+		get_builtin_firmware_ext(mx93a0_ahab_container_img, bl33, &fw);
 		break;
 #endif
 	case 0xa1:
-		get_builtin_firmware_ext(mx93a1_ahab_container_img, bl33, &firmware, &size);
+		get_builtin_firmware_ext(mx93a1_ahab_container_img, bl33, &fw);
 		break;
 	default:
 		pr_err("Unknown unhandled SoC revision %2x\n", rev);
@@ -214,9 +214,9 @@ int imx93_ele_load_fw(void *bl33)
 	}
 
 	/* Address of the container header */
-	msg.data[0] = lower_32_bits((unsigned long)firmware);
+	msg.data[0] = lower_32_bits((unsigned long)fw.data);
 	/* Actual address of the container header */
-	msg.data[2] = lower_32_bits((unsigned long)firmware);
+	msg.data[2] = lower_32_bits((unsigned long)fw.data);
 
 	ret = ele_call(&msg);
 	if (ret)
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 6dc92e90fc..a34bdd3389 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -1024,10 +1024,9 @@ imx6_barebox_entry(unsigned long membase, void *boarddata)
 	    IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tzasc()) {
 		void *fdto;
 		unsigned int fdto_size;
-		int tee_size;
-		void *tee;
+		struct fwobj tee;
 
-		get_builtin_firmware(imx6_optee_bin, &tee, &tee_size);
+		get_builtin_firmware(imx6_optee_bin, &tee);
 
 		imx_init_scratch_space(membase + memsize, 1);
 		fdto = imx_scratch_get_fdt(&fdto_size);
@@ -1037,7 +1036,7 @@ imx6_barebox_entry(unsigned long membase, void *boarddata)
 		} else if (fdto == NULL)
 			pr_warn("No space configured for OP-TEE devicetree\n");
 
-		start_optee_early(fdto, tee);
+		start_optee_early(fdto, tee.data);
 		if (!IS_ERR(fdto))
 			optee_handoff_overlay(fdto, fdto_size);
 	}
diff --git a/arch/arm/mach-layerscape/tfa.c b/arch/arm/mach-layerscape/tfa.c
index d9c4abdd90..e69bbd8c4e 100644
--- a/arch/arm/mach-layerscape/tfa.c
+++ b/arch/arm/mach-layerscape/tfa.c
@@ -11,12 +11,11 @@
 void ls1046_start_tfa(void *barebox, struct dram_regions_info *dram_info)
 {
 	void (*bl31)(void) = (void *)0xfbe00000;
-	size_t bl31_size;
-	void *bl31_image;
+	struct fwobj bl31_fw;
 	struct bl2_to_bl31_params_mem_v2 *params;
 
-	get_builtin_firmware_ext(ls1046a_bl31_bin, barebox, &bl31_image, &bl31_size);
-	memcpy(bl31, bl31_image, bl31_size);
+	get_builtin_firmware_ext(ls1046a_bl31_bin, barebox, &bl31_fw);
+	memcpy(bl31, bl31_fw.data, bl31_fw.size);
 
 	sync_caches_for_execution();
 
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 8d7e505a99..0d26dfb740 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -110,18 +110,16 @@ static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
 
 static uintptr_t barebox_load_address; /* where barebox is loaded and started */
 static uintptr_t optee_load_address; /* standard SoC specific OP-TEE load address */
-static const void *bl31; /* pointer to TF-A in barebox image */
-static size_t bl31_size; /* size of TF-A in barebox image */
-static const void *bl32; /* pointer to OP-TEE in barebox image */
-static size_t bl32_size; /* size of OP-TEE in barebox image */
+static struct fwobj bl31; /* TF-A in barebox image */
+static struct fwobj bl32; /* OP-TEE in barebox image */
 
 #define ROCKCHIP_GET_ADDRESSES(SOC, atf_bin, tee_bin)				\
 	do {									\
 		barebox_load_address = SOC##_BAREBOX_LOAD_ADDRESS;		\
 		optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;			\
-		get_builtin_firmware(atf_bin, &bl31, &bl31_size);		\
+		get_builtin_firmware(atf_bin, &bl31);				\
 		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))			\
-			get_builtin_firmware(tee_bin, &bl32, &bl32_size);	\
+			get_builtin_firmware(tee_bin, &bl32);			\
 	} while (0)
 
 
@@ -129,10 +127,10 @@ static void rockchip_atf_load_bl31(void *fdt)
 {
 	unsigned long bl31_ep;
 
-	bl31_ep = load_elf64_image_phdr(bl31);
+	bl31_ep = load_elf64_image_phdr(bl31.data);
 
 	if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))
-		optee_load_address = rk_load_optee(optee_load_address, bl32, bl32_size);
+		optee_load_address = rk_load_optee(optee_load_address, bl32.data, bl32.size);
 
 	/* Setup an initial stack for EL2 */
 	asm volatile("msr sp_el2, %0" : :
diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index 23e2fffdce..d0f57d9541 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -13,16 +13,15 @@ void __noreturn agilex5_load_and_start_image_via_tfa(unsigned long memsize)
 {
 	unsigned long atf_dest = AGILEX5_ATF_BL31_BASE_ADDR;
 	void __noreturn (*bl31)(void) = (void *)atf_dest;
-	const void *tfa;
-	size_t tfa_size;
+	struct fwobj tfa;
 
 	pr_debug("Load TFA\n");
 
 	memcpy((void *)AGILEX5_ATF_BL33_BASE_ADDR, __image_start, barebox_image_size);
 
-	get_builtin_firmware(agilex5_bl31_bin, &tfa, &tfa_size);
+	get_builtin_firmware(agilex5_bl31_bin, &tfa);
 
-	memcpy(bl31, tfa, tfa_size);
+	memcpy(bl31, tfa.data, tfa.size);
 
 	asm volatile("msr sp_el2, %0" : :
 		     "r" (AGILEX5_ATF_BL33_BASE_ADDR - 16) :
diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
index 3185aaf61e..4f78d49228 100644
--- a/drivers/ddr/imx/ddrphy_train.c
+++ b/drivers/ddr/imx/ddrphy_train.c
@@ -10,103 +10,72 @@
 #include <soc/imx8m/ddr.h>
 #include <firmware.h>
 
-static const u16 *lpddr4_imem_1d;
-static size_t lpddr4_imem_1d_size;
-static const u16 *lpddr4_dmem_1d;
-static size_t lpddr4_dmem_1d_size;
-static const u16 *lpddr4_imem_2d;
-static size_t lpddr4_imem_2d_size;
-static const u16 *lpddr4_dmem_2d;
-static size_t lpddr4_dmem_2d_size;
+static struct fwobj lpddr4_imem_1d;
+static struct fwobj lpddr4_dmem_1d;
+static struct fwobj lpddr4_imem_2d;
+static struct fwobj lpddr4_dmem_2d;
 
 void ddr_get_firmware_lpddr4(void)
 {
-	get_builtin_firmware(lpddr4_pmu_train_1d_imem_bin, &lpddr4_imem_1d,
-			     &lpddr4_imem_1d_size);
-	get_builtin_firmware(lpddr4_pmu_train_1d_dmem_bin, &lpddr4_dmem_1d,
-			     &lpddr4_dmem_1d_size);
-	get_builtin_firmware(lpddr4_pmu_train_2d_imem_bin, &lpddr4_imem_2d,
-			     &lpddr4_imem_2d_size);
-	get_builtin_firmware(lpddr4_pmu_train_2d_dmem_bin, &lpddr4_dmem_2d,
-			     &lpddr4_dmem_2d_size);
+	get_builtin_firmware(lpddr4_pmu_train_1d_imem_bin, &lpddr4_imem_1d);
+	get_builtin_firmware(lpddr4_pmu_train_1d_dmem_bin, &lpddr4_dmem_1d);
+	get_builtin_firmware(lpddr4_pmu_train_2d_imem_bin, &lpddr4_imem_2d);
+	get_builtin_firmware(lpddr4_pmu_train_2d_dmem_bin, &lpddr4_dmem_2d);
 }
 
-static const u16 *ddr4_imem_1d;
-static size_t ddr4_imem_1d_size;
-static const u16 *ddr4_dmem_1d;
-static size_t ddr4_dmem_1d_size;
-static const u16 *ddr4_imem_2d;
-static size_t ddr4_imem_2d_size;
-static const u16 *ddr4_dmem_2d;
-static size_t ddr4_dmem_2d_size;
+static struct fwobj ddr4_imem_1d;
+static struct fwobj ddr4_dmem_1d;
+static struct fwobj ddr4_imem_2d;
+static struct fwobj ddr4_dmem_2d;
 
 void ddr_get_firmware_ddr4(void)
 {
-	get_builtin_firmware(ddr4_imem_1d_bin, &ddr4_imem_1d,
-			     &ddr4_imem_1d_size);
-	get_builtin_firmware(ddr4_dmem_1d_bin, &ddr4_dmem_1d,
-			     &ddr4_dmem_1d_size);
-	get_builtin_firmware(ddr4_imem_2d_bin, &ddr4_imem_2d,
-			     &ddr4_imem_2d_size);
-	get_builtin_firmware(ddr4_dmem_2d_bin, &ddr4_dmem_2d,
-			     &ddr4_dmem_2d_size);
+	get_builtin_firmware(ddr4_imem_1d_bin, &ddr4_imem_1d);
+	get_builtin_firmware(ddr4_dmem_1d_bin, &ddr4_dmem_1d);
+	get_builtin_firmware(ddr4_imem_2d_bin, &ddr4_imem_2d);
+	get_builtin_firmware(ddr4_dmem_2d_bin, &ddr4_dmem_2d);
 }
 
-static const u16 *ddr3_imem_1d;
-static size_t ddr3_imem_1d_size;
-static const u16 *ddr3_dmem_1d;
-static size_t ddr3_dmem_1d_size;
+static struct fwobj ddr3_imem_1d;
+static struct fwobj ddr3_dmem_1d;
 
 void ddr_get_firmware_ddr3(void)
 {
-	get_builtin_firmware(ddr3_imem_1d_bin, &ddr3_imem_1d,
-			     &ddr3_imem_1d_size);
-	get_builtin_firmware(ddr3_dmem_1d_bin, &ddr3_dmem_1d,
-			     &ddr3_dmem_1d_size);
+	get_builtin_firmware(ddr3_imem_1d_bin, &ddr3_imem_1d);
+	get_builtin_firmware(ddr3_dmem_1d_bin, &ddr3_dmem_1d);
 }
 
 void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
 			 enum fw_type fw_type)
 {
-	const u16 *imem, *dmem;
-	size_t isize, dsize;
+	struct fwobj *imem, *dmem;
 
 	if (dram_is_lpddr4(dram_type)) {
 		if (fw_type == FW_1D_IMAGE) {
-			imem = lpddr4_imem_1d;
-			isize = lpddr4_imem_1d_size;
-			dmem = lpddr4_dmem_1d;
-			dsize = lpddr4_dmem_1d_size;
+			imem = &lpddr4_imem_1d;
+			dmem = &lpddr4_dmem_1d;
 		} else {
-			imem = lpddr4_imem_2d;
-			isize = lpddr4_imem_2d_size;
-			dmem = lpddr4_dmem_2d;
-			dsize = lpddr4_dmem_2d_size;
+			imem = &lpddr4_imem_2d;
+			dmem = &lpddr4_dmem_2d;
 		}
 	} else if (dram_is_ddr4(dram_type)) {
 		if (fw_type == FW_1D_IMAGE) {
-			imem = ddr4_imem_1d;
-			isize = ddr4_imem_1d_size;
-			dmem = ddr4_dmem_1d;
-			dsize = ddr4_dmem_1d_size;
+			imem = &ddr4_imem_1d;
+			dmem = &ddr4_dmem_1d;
 		} else {
-			imem = ddr4_imem_2d;
-			isize = ddr4_imem_2d_size;
-			dmem = ddr4_dmem_2d;
-			dsize = ddr4_dmem_2d_size;
+			imem = &ddr4_imem_2d;
+			dmem = &ddr4_dmem_2d;
 		}
 	} else if (dram_is_ddr3(dram_type)) {
-		imem = ddr3_imem_1d;
-		isize = ddr3_imem_1d_size;
-		dmem = ddr3_dmem_1d;
-		dsize = ddr3_dmem_1d_size;
+		imem = &ddr3_imem_1d;
+		dmem = &ddr3_dmem_1d;
 	} else {
 		panic("No matching DDR PHY firmware found");
 	}
 
-	ddrc_phy_load_firmware(dram, DDRC_PHY_IMEM, imem, isize);
+	ddrc_phy_load_firmware(dram, DDRC_PHY_IMEM, imem->data, imem->size);
 
-	ddrc_phy_load_firmware(dram, DDRC_PHY_DMEM, dmem, dsize);
+	ddrc_phy_load_firmware(dram, DDRC_PHY_DMEM, dmem->data, dmem->size);
 }
 
 int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *dram_timing)
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 1040a0dfc9..fe06d418b0 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -391,8 +391,7 @@ static int ls1028a_esdhc_start_image(void __iomem *base, struct dram_regions_inf
 	};
 	void *sdram = (void *)0x80000000;
 	void (*bl31)(void) = (void *)LS1028A_TFA_RESERVED_START;
-	size_t bl31_size;
-	void *bl31_image;
+	struct fwobj bl31_fw;
 	struct bl2_to_bl31_params_mem_v2 *params;
 	unsigned long size = ALIGN(barebox_image_size + LS1046A_SD_IMAGE_OFFSET, 512);
 	void (*barebox)(void) = (sdram + LS1046A_SD_IMAGE_OFFSET);
@@ -402,8 +401,8 @@ static int ls1028a_esdhc_start_image(void __iomem *base, struct dram_regions_inf
 	if (ret)
 		return ret;
 
-	get_builtin_firmware_ext(ls1028a_bl31_bin, barebox, &bl31_image, &bl31_size);
-	memcpy(bl31, bl31_image, bl31_size);
+	get_builtin_firmware_ext(ls1028a_bl31_bin, barebox, &bl31_fw);
+	memcpy(bl31, bl31_fw.data, bl31_fw.size);
 
 	/* Setup an initial stack for EL2 */
 	asm volatile("msr sp_el2, %0" : : "r" ((unsigned long)barebox - 16) : "cc");
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index bde054d751..f70af5ff14 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -209,16 +209,19 @@ static int fm_upload_ucode(struct fm_imem *imem,
 
 static int fman_upload_firmware(struct device *dev, struct fm_imem *fm_imem)
 {
-	int i, size, ret;
+	int i, ret;
+	struct fwobj fw;
 	const struct qe_firmware *firmware;
 
-	get_builtin_firmware(fsl_fman_ucode_ls1046_r1_0_106_4_18_bin, &firmware, &size);
-	if (!size) {
+	get_builtin_firmware(fsl_fman_ucode_ls1046_r1_0_106_4_18_bin, &fw);
+	if (!fw.size) {
 		dev_err(dev, "FMan Firmware was not included in build\n");
 		return -ENOSYS;
 	}
 
-	ret = qe_validate_firmware(firmware, size);
+	firmware = fw.data;
+
+	ret = qe_validate_firmware(firmware, fw.size);
 	if (ret)
 		return ret;
 
diff --git a/include/firmware.h b/include/firmware.h
index ab518cb432..6609bdbc9e 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -90,30 +90,35 @@ static inline void firmware_ext_verify(const void *data_start, size_t data_size,
 	}
 }
 
-#define __get_builtin_firmware(name, offset, start, size)		\
+struct fwobj {
+	size_t size;
+	void *data;
+};
+
+#define __get_builtin_firmware(name, offset, fwobj)			\
 	do {								\
 		extern char _fw_##name##_start[];			\
 		extern char _fw_##name##_end[];				\
 		extern char _fw_##name##_sha_start[];			\
 		extern char _fw_##name##_sha_end[];			\
-		*start = (typeof(*start)) _fw_##name##_start;		\
-		*size = _fw_##name##_end - _fw_##name##_start;		\
+		(fwobj)->data = _fw_##name##_start;			\
+		(fwobj)->size = _fw_##name##_end - _fw_##name##_start;	\
 		if (!(offset))						\
 			break;						\
-		*start += (offset);					\
+		(fwobj)->data += (offset);				\
 		firmware_ext_verify(					\
-			*start, *size,					\
+			(fwobj)->data, (fwobj)->size,			\
 			_fw_##name##_sha_start,				\
 			_fw_##name##_sha_end - _fw_##name##_sha_start	\
 		);							\
 	} while (0)
 
 
-#define get_builtin_firmware(name, start, size) \
-	__get_builtin_firmware(name, 0, start, size)
+#define get_builtin_firmware(name, fwobj) \
+	__get_builtin_firmware(name, 0, fwobj)
 
-#define get_builtin_firmware_ext(name, base, start, size)		\
-	__get_builtin_firmware(name, (long)base - (long)_text, start, size)
+#define get_builtin_firmware_ext(name, base, fwobj)			\
+	__get_builtin_firmware(name, (long)base - (long)_text, fwobj)
 
 static inline int firmware_next_image_check_sha256(const void *hash, bool verbose)
 {

-- 
2.47.3



