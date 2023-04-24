Delivery-date: Mon, 24 Apr 2023 14:19:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAS-00FZ4c-0r
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:19:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAR-0004UQ-39
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:19:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n3iHRT0mCSlO01/Z2BolIMsOb2A+2K+1srVWqhp+vA0=; b=v8hu9k4+wii8GJ0lau6aSyvC7D
	TndXlcXwu5FmuGylxmk/mkX/75U72cXKxJg6j158uOijoSOlrb8Jn769EgBNeHVAmpvGCwU8ybhTp
	SArqKWMpbTybLiVlTC7Xo0GBje0wJipC6khWNRa5PAi5csrcF1vjaSJP+TqRGHrO/CTUiV0exjfvI
	tuswVzUq4AXvr/FblR08eCUkXGTMYdOcb/94GLZwOlwcc1YOsRSw/Jg1ntFSlTn0TenJQDafdxnqu
	EEsNNt0LxavtkpEuKvZQo795L9Zb8anivCGC2r4GfRipoBFPVV6c2t5B9FMcb0D5eTZIGaIUPwW5O
	dLlRZvGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv9C-00GHam-0B;
	Mon, 24 Apr 2023 12:18:22 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv96-00GHXL-0V
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 12:18:19 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id A5DAB40002;
	Mon, 24 Apr 2023 12:18:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 14:18:02 +0200
Message-Id: <20230424121805.150434-4-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424121805.150434-1-ahmad@a3f.at>
References: <20230424121805.150434-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_051816_501230_3F34E4CC 
X-CRM114-Status: GOOD (  18.26  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/7] treewide: drop trailing space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Found by manual inspection of the output of:

  rg '\s+$' | rg -v dts/

Patch can be verified by observing that no diff results from:

  git show --ignore-space-at-eol

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/boards/ibase-mi991af.rst                    | 2 +-
 Documentation/user/state.rst                              | 2 +-
 arch/arm/boards/boundarydevices-nitrogen6/Makefile        | 2 +-
 arch/arm/boards/ls1046ardb/board.c                        | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg  | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg | 2 +-
 arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg  | 2 +-
 arch/arm/boards/zii-imx8mq-dev/ddr_init.c                 | 2 +-
 arch/arm/dts/imx6qdl-nitrogen6_max.dtsi                   | 2 +-
 arch/arm/dts/vf610.dtsi                                   | 2 +-
 arch/arm/dts/zynq-7000.dtsi                               | 2 +-
 arch/arm/mach-at91/sam9263_ll.c                           | 4 ++--
 arch/arm/mach-omap/am33xx_bbu_nand.c                      | 2 +-
 commands/of_overlay.c                                     | 2 +-
 drivers/clk/clk-qoric.c                                   | 2 +-
 drivers/ddr/fsl/ctrl_regs.c                               | 2 +-
 drivers/mtd/nand/Kconfig                                  | 2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                         | 2 +-
 drivers/net/usb/ax88179_178a.c                            | 2 +-
 drivers/regulator/core.c                                  | 2 +-
 drivers/serial/serial_omap4_usbboot.c                     | 2 +-
 include/crypto/des.h                                      | 2 +-
 include/linux/idr.h                                       | 2 +-
 include/tlsf.h                                            | 6 +++---
 scripts/socfpga_import_preloader                          | 2 +-
 32 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/Documentation/boards/ibase-mi991af.rst b/Documentation/boards/ibase-mi991af.rst
index a22e5fcf795b..8e40a0d657b0 100644
--- a/Documentation/boards/ibase-mi991af.rst
+++ b/Documentation/boards/ibase-mi991af.rst
@@ -40,4 +40,4 @@ To continue please proceed with barebox :ref:`barebox_on_uefi` documentation.
 Links
 -----
 
-  * https://www.ibase.com.tw/english/ProductDetail/EmbeddedComputing/MI991 
+  * https://www.ibase.com.tw/english/ProductDetail/EmbeddedComputing/MI991
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index a0e27d4fe847..594c2c15945b 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -24,7 +24,7 @@ barebox itself uses a *state* driver to access the variables in the
 persistent memory.
 
 Currently there is only one implementation, enabled by
-``CONFIG_STATE_DRV=y``. Without driver, the state framework will silently 
+``CONFIG_STATE_DRV=y``. Without driver, the state framework will silently
 fail and be non-functional.
 
 For the Linux run-time there is a userspace tool_ to do
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/Makefile b/arch/arm/boards/boundarydevices-nitrogen6/Makefile
index b365c8eab067..da63d2625f7a 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/Makefile
+++ b/arch/arm/boards/boundarydevices-nitrogen6/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += board.o 
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index 921629d2a840..ee70171ca3d3 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -33,7 +33,7 @@ struct nxid {
 	u8 mac_count;     /* 0x40        Number of MAC addresses */
 	u8 mac_flag;      /* 0x41        MAC table flags */
 	u8 mac[MAX_NUM_PORTS][6];     /* 0x42 - 0xa1 MAC addresses */
-	u8 res_2[90];     /* 0xa2 - 0xfb Reserved */	
+	u8 res_2[90];     /* 0xa2 - 0xfb Reserved */
 	u32 crc;          /* 0xfc - 0xff CRC32 checksum */
 } __packed;
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
index e6e37672aa3e..7deaaa9b7b34 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
@@ -61,7 +61,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
index 16f2f596c773..c9c9d076f587 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
@@ -63,7 +63,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
index 1692c1e08771..71df95b96853 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
@@ -63,7 +63,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
index 2d0064e8c1cb..deced6901bc7 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
@@ -65,7 +65,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
index 887811fa4240..58530910fc63 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
@@ -63,7 +63,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
index 16f2f596c773..c9c9d076f587 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
@@ -63,7 +63,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
index 7f2662567e6b..5073458a0302 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
@@ -61,7 +61,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
index b86a32be0c2c..a879229923bb 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
@@ -63,7 +63,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
index 3abb21b70e32..8e41a410df5b 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
@@ -66,7 +66,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
index a8178fe2580b..54a86a0008a6 100644
--- a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
@@ -126,7 +126,7 @@ wm 32 0x021b001c 0x04008040
 
 /* MPZQHWCTRL */
 wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
-wm 32 0x021b4800 0xa1390003 
+wm 32 0x021b4800 0xa1390003
 
 wm 32 0x021b0020 MDREF_64KHZ
 
diff --git a/arch/arm/boards/zii-imx8mq-dev/ddr_init.c b/arch/arm/boards/zii-imx8mq-dev/ddr_init.c
index 902d0ee3cd6e..2d4133fb1375 100644
--- a/arch/arm/boards/zii-imx8mq-dev/ddr_init.c
+++ b/arch/arm/boards/zii-imx8mq-dev/ddr_init.c
@@ -178,7 +178,7 @@ void ddr_init(void)
 	reg32_write(DDRC_SWCTL(0), 0x0000);
 	/*
 	 * ------------------- 9 -------------------
-	 * Set DFIMISC.dfi_init_start to 1 
+	 * Set DFIMISC.dfi_init_start to 1
 	 *  -----------------------------------------
 	 */
 	reg32_write(DDRC_DFIMISC(0), 0x00000030);
diff --git a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
index 5d301289f3ed..0f6d17ad6ce5 100644
--- a/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
+++ b/arch/arm/dts/imx6qdl-nitrogen6_max.dtsi
@@ -39,7 +39,7 @@
  *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
  *     OTHER DEALINGS IN THE SOFTWARE.
  */
- 
+
 / {
 	chosen {
 		environment {
diff --git a/arch/arm/dts/vf610.dtsi b/arch/arm/dts/vf610.dtsi
index 3060031b8aaf..d1297e952c00 100644
--- a/arch/arm/dts/vf610.dtsi
+++ b/arch/arm/dts/vf610.dtsi
@@ -9,4 +9,4 @@
 		mmc0 = &esdhc0;
 		mmc1 = &esdhc1;
 	};
-};	
+};
diff --git a/arch/arm/dts/zynq-7000.dtsi b/arch/arm/dts/zynq-7000.dtsi
index 3791f743a47d..f7a0d70babef 100644
--- a/arch/arm/dts/zynq-7000.dtsi
+++ b/arch/arm/dts/zynq-7000.dtsi
@@ -8,7 +8,7 @@
 		clocks = <&clkc 10>, <&clkc 43>;
 		clock-names = "ref_clk", "pclk";
 		status = "disabled";
-		
+
 		#address-cells = <1>;
 		#size-cells = <0>;
 	};
diff --git a/arch/arm/mach-at91/sam9263_ll.c b/arch/arm/mach-at91/sam9263_ll.c
index 2beeaccd618e..8855a679fdf2 100644
--- a/arch/arm/mach-at91/sam9263_ll.c
+++ b/arch/arm/mach-at91/sam9263_ll.c
@@ -17,12 +17,12 @@ static void sam9263_pmc_init(const struct sam92_pmc_config *config)
 	/* Setting PLL A and divider A */
 	at91_pmc_cfg_plla(IOMEM(AT91SAM926X_BASE_PMC),
 			  AT91_PMC_MUL_(config->mula) |
-			  AT91_PMC_OUT_2 |		// 190 to 240 MHz		
+			  AT91_PMC_OUT_2 |		// 190 to 240 MHz
 			  config->diva,			// Divider
 			  0);
 
 	/* Selection of Master Clock and Processor Clock */
-	 
+
 	/* PCK = PLLA = 2 * MCK */
 	at91_pmc_cfg_mck(IOMEM(AT91SAM926X_BASE_PMC),
 			 AT91_PMC_CSS_SLOW
diff --git a/arch/arm/mach-omap/am33xx_bbu_nand.c b/arch/arm/mach-omap/am33xx_bbu_nand.c
index 2041cf3c0b46..40e382780a9c 100644
--- a/arch/arm/mach-omap/am33xx_bbu_nand.c
+++ b/arch/arm/mach-omap/am33xx_bbu_nand.c
@@ -213,7 +213,7 @@ static int nand_update_handler_complete(struct bbu_handler *handler,
 
 		buf = xzalloc(mtd->erasesize);
 		memcpy(buf, data->image, data->len);
-	
+
 		for (i = 0; i < 4; i++) {
 			if (mtd_peb_is_bad(mtd, i)) {
 				pr_info("PEB%d is bad, skipping\n", i);
diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index b80f371c5c93..b0ca57749bf6 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -36,7 +36,7 @@ static int do_of_overlay(int argc, char *argv[])
 		printf("Support for live tree overlays is disabled. Enable CONFIG_OF_OVERLAY_LIVE\n");
 		return 1;
 	}
-		
+
 	fdt = read_file(argv[optind], &size);
 	if (!fdt) {
 		printf("cannot read %s\n", argv[optind]);
diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index f7dbf7230d9f..667ce6df298b 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -592,7 +592,7 @@ static void __init clockgen_init(struct device_node *np,
 		pr_err("sysclk not found: %pe\n", clockgen.sysclk);
 		return;
 	}
-	
+
 	clockgen.coreclk = of_clk_get(clockgen.node, 1);
 	if (IS_ERR(clockgen.coreclk))
 		clockgen.coreclk = NULL;
diff --git a/drivers/ddr/fsl/ctrl_regs.c b/drivers/ddr/fsl/ctrl_regs.c
index b0d98a929c5d..7c882946b9df 100644
--- a/drivers/ddr/fsl/ctrl_regs.c
+++ b/drivers/ddr/fsl/ctrl_regs.c
@@ -284,7 +284,7 @@ static void set_timing_cfg_0(struct fsl_ddr_controller *c)
 		/*
 		 * for single quad-rank DIMM and two-slot DIMMs
 		 * to avoid ODT overlap
-		 */ 
+		 */
 		switch (avoid_odt_overlap(c, dimm_params)) {
 		case 2:
 			twrt_mclk = 2;
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 1cfd65f40816..f50b860c45c3 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -40,7 +40,7 @@ config NAND_IMX
 	  "MXC" series:  i.MX21/25/27/31/35/51/53.
 
 	  This is not for the "MXS" series i.MX processors (23 & 28), or i.MX6
-	  and later, which use the GPMI NAND controller from the MXS series. 
+	  and later, which use the GPMI NAND controller from the MXS series.
 	  See the i.MX 'mxs' driver for those chips.
 
 config NAND_FSL_IFC
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index c5e50d27c862..ab3618300511 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -54,7 +54,7 @@
  * Copyright (c) 2004 Micron Technology Inc.
  * Copyright (c) 2004 David Brownell
  *
- * 
+ *
  */
 
 #include <common.h>
diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
index 318eb9be026c..c6108c488be6 100644
--- a/drivers/net/usb/ax88179_178a.c
+++ b/drivers/net/usb/ax88179_178a.c
@@ -469,7 +469,7 @@ static int ax88179_rx_fixup(struct usbnet *dev, void *buf, int len)
 			__func__, frame_pos, pkt_len);
 
 		net_receive(&dev->edev, buf + frame_pos, pkt_len);
-		
+
 		pkt_hdr++;
 		frame_pos += ((pkt_len + 7) & 0xfff8) - 2;
 	}
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 97f359d6d29f..f914641c8777 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -287,7 +287,7 @@ static struct regulator_internal *of_regulator_get(struct device *dev,
 
 	ret = of_device_ensure_probed(node);
 	if (ret) {
-		/* 
+		/*
 		 * If "barebox,allow-dummy-supply" property is set for regulator
 		 * provider allow use of dummy regulator (NULL is returned).
 		 * Check regulator node and its parent if this setting is set
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index 709398966ff2..6592be4f353b 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -54,7 +54,7 @@ static int serial_omap4_usbboot_probe(struct device *dev)
 	ret = omap4_usbboot_open();
 	if (ret)
 		return ret;
-	
+
 	priv = xzalloc(sizeof(*priv));
 
 	priv->cdev.dev = dev;
diff --git a/include/crypto/des.h b/include/crypto/des.h
index abc3d9c59d01..645a9c9969eb 100644
--- a/include/crypto/des.h
+++ b/include/crypto/des.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-/* 
+/*
  * DES & Triple DES EDE Cipher Algorithms.
  */
 
diff --git a/include/linux/idr.h b/include/linux/idr.h
index 8a0f452d766d..50c9e3f81ade 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * include/linux/idr.h
- * 
+ *
  * 2002-10-18  written by Jim Houston jim.houston@ccur.com
  *	Copyright (C) 2002 by Concurrent Computer Corporation
  *
diff --git a/include/tlsf.h b/include/tlsf.h
index 161176d5ac84..3fa220371577 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -11,10 +11,10 @@
 **
 ** This implementation was written to the specification
 ** of the document, therefore no GPL restrictions apply.
-** 
+**
 ** Copyright (c) 2006-2016, Matthew Conte
 ** All rights reserved.
-** 
+**
 ** Redistribution and use in source and binary forms, with or without
 ** modification, are permitted provided that the following conditions are met:
 **     * Redistributions of source code must retain the above copyright
@@ -25,7 +25,7 @@
 **     * Neither the name of the copyright holder nor the
 **       names of its contributors may be used to endorse or promote products
 **       derived from this software without specific prior written permission.
-** 
+**
 ** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ** ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 ** WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
index 2bec9f2d2173..bd54e1b913ba 100755
--- a/scripts/socfpga_import_preloader
+++ b/scripts/socfpga_import_preloader
@@ -8,7 +8,7 @@ usage() {
 	  -b|--board <BOARD_DIRECTORY>
 	optional:
 	  -e|--embedded-sdk <ALTERA_EMBEDDED_SDK>"
-	echo "EXAMPLE: $0 -i ~/cv_soc_devkit_ghrd/hps_isw_handoff/soc_system_hps_0/ -b arch/arm/boards/altera-socdk -e ~/altera-embedded-sdk/" 
+	echo "EXAMPLE: $0 -i ~/cv_soc_devkit_ghrd/hps_isw_handoff/soc_system_hps_0/ -b arch/arm/boards/altera-socdk -e ~/altera-embedded-sdk/"
 	exit 1
 }
 
-- 
2.38.4



