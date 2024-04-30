Delivery-date: Tue, 30 Apr 2024 07:57:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1gUa-009baF-1g
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 07:57:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1gUW-0000RN-HR
	for lore@pengutronix.de; Tue, 30 Apr 2024 07:57:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h13wM8y1kZLog8y8LZHeeP+6VNwGvRGgsp9+xWtasKY=; b=A+HBqCp7ABFYOdOoeDh7E01n2w
	C6+xxwYDpB2ZDd0ZekLwXEm+fO+0FLvWCkhLK1Nhe4sjwP9jEStjK7dWtp7O3olzI1ihvRuDsahUB
	h/HORREl3mbbsSh2QTmEC7wyhe5VVnD4224pwBegtLigsn9TFXuMC9jKaPcaKudoijJKxLe5oHARa
	eMxKmpE31pjFXefKTtvVxvLVZJhqaWIw11v6lPUXnATDRYR/UKc2zVVtOiq+g9UL4syH/Eu1IF5KO
	tOkArUAh1xFiHyB30qpVXtH6ZreEpnPa11rbVoz5gbNZs3U2hx40CtQtO/Srjr6mn5Wp2dhfBB7UL
	XYrEfKPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gTs-00000005CeT-2u3I;
	Tue, 30 Apr 2024 05:56:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gTq-00000005Ce2-1IJS
	for barebox@bombadil.infradead.org;
	Tue, 30 Apr 2024 05:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=h13wM8y1kZLog8y8LZHeeP+6VNwGvRGgsp9+xWtasKY=; b=br89CIdBNA5C2r0fkEbJk7n19z
	kMIqlBWI3QbrS9iQdhWMlkfAl9q9qHjqktPc8JOeYFRchD7QkCtGcZdNXxryNLJqzTbD72Oy7J7OF
	7zQ6ClVSq1XHFpaw8fleK0lE+J3s1Jp5AwGo6ZXvGIfqqubbxhnxuIVS1/Tex9PjeU+DV0tAvcnqV
	OKXe4PIlka8y9eJdjvPqE1pCmzRrW8qNr1aJRGl7yqUJQN9IXsnNHX8oPHhWhBRdEWW598xvwAtY7
	OYKoYC2PS4BdCxbCSH1CzUvIr82Z5XViYgR+gNglLTIOdqG7rYReg6zQxA2KriAQLbKP0aHJhIfn4
	WjDJM1Zw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gTm-0000000GoiU-0Vaz
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 05:56:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gTl-0000KL-Oc; Tue, 30 Apr 2024 07:56:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gTl-00F6qJ-Bg; Tue, 30 Apr 2024 07:56:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1gTl-00FBRT-0l;
	Tue, 30 Apr 2024 07:56:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Apr 2024 07:56:34 +0200
Message-Id: <20240430055634.3617606-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_065638_832864_BA00A5D3 
X-CRM114-Status: GOOD (  15.82  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] treewide: use runtime_address() where possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We now have runtime_address() to access a linker variable when the
binary is not yet relocated to the correct address. It provides a
safer API, so use this one where possible instead of using previous
way of adding get_runtime_offset() manually.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ac-sxb/lowlevel.c             |  2 +-
 arch/arm/boards/afi-gf/lowlevel.c             |  2 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |  2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |  2 +-
 arch/arm/boards/avnet-zedboard/lowlevel.c     |  3 +-
 arch/arm/boards/beaglebone/lowlevel.c         |  6 ++--
 .../boundarydevices-nitrogen6/lowlevel.c      | 10 +++---
 arch/arm/boards/ccxmx51/lowlevel.c            |  2 +-
 arch/arm/boards/ccxmx53/lowlevel.c            |  4 +--
 arch/arm/boards/clep7212/lowlevel.c           |  4 +--
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c |  2 +-
 arch/arm/boards/dfi-fs700-m60/lowlevel.c      |  6 ++--
 arch/arm/boards/duckbill/lowlevel.c           |  2 +-
 arch/arm/boards/efika-mx-smartbook/lowlevel.c |  2 +-
 arch/arm/boards/element14-warp7/lowlevel.c    |  2 +-
 arch/arm/boards/eltec-hipercam/lowlevel.c     |  2 +-
 arch/arm/boards/embedsky-e9/lowlevel.c        |  2 +-
 arch/arm/boards/embest-marsboard/lowlevel.c   |  2 +-
 arch/arm/boards/embest-riotboard/lowlevel.c   |  2 +-
 arch/arm/boards/enclustra-aa1/lowlevel.c      |  6 ++--
 arch/arm/boards/freescale-mx28-evk/lowlevel.c |  2 +-
 .../boards/freescale-mx51-babbage/lowlevel.c  |  2 +-
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c |  4 +--
 .../boards/freescale-mx53-vmx53/lowlevel.c    |  2 +-
 .../boards/freescale-mx6-sabresd/lowlevel.c   |  6 ++--
 .../freescale-mx6sx-sabresdb/lowlevel.c       |  2 +-
 .../boards/freescale-mx7-sabresd/lowlevel.c   |  2 +-
 .../arm/boards/freescale-vf610-twr/lowlevel.c |  2 +-
 arch/arm/boards/gateworks-ventana/lowlevel.c  |  2 +-
 arch/arm/boards/gk802/lowlevel.c              |  2 +-
 .../boards/globalscale-guruplug/lowlevel.c    |  3 +-
 .../arm/boards/globalscale-mirabox/lowlevel.c |  3 +-
 arch/arm/boards/grinn-liteboard/lowlevel.c    |  3 +-
 arch/arm/boards/guf-vincell/lowlevel.c        |  4 +--
 .../kamstrup-mx7-concentrator/lowlevel.c      |  2 +-
 arch/arm/boards/karo-tx25/lowlevel.c          |  2 +-
 arch/arm/boards/karo-tx53/lowlevel.c          |  7 ++--
 arch/arm/boards/karo-tx6x/lowlevel.c          |  8 ++---
 arch/arm/boards/kindle-mx50/lowlevel.c        |  6 ++--
 arch/arm/boards/kontron-samx6i/lowlevel.c     |  9 ++----
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c    |  3 +-
 arch/arm/boards/lxa-mc1/lowlevel.c            |  2 +-
 .../boards/marvell-armada-xp-db/lowlevel.c    |  2 +-
 .../boards/marvell-armada-xp-gp/lowlevel.c    |  2 +-
 arch/arm/boards/meerkat96/lowlevel.c          |  2 +-
 .../boards/microchip-ksz9477-evb/lowlevel.c   |  2 +-
 .../boards/microchip-sama5d3-eds/lowlevel.c   |  2 +-
 arch/arm/boards/myirtech-x335x/lowlevel.c     |  4 +--
 arch/arm/boards/netgear-rn104/lowlevel.c      |  3 +-
 arch/arm/boards/netgear-rn2120/lowlevel.c     |  3 +-
 arch/arm/boards/nvidia-beaver/entry.c         |  2 +-
 arch/arm/boards/nvidia-jetson-tk1/entry.c     |  2 +-
 .../boards/phytec-phycard-imx27/lowlevel.c    |  2 +-
 .../boards/phytec-phycore-imx27/lowlevel.c    |  2 +-
 .../arm/boards/phytec-phycore-imx7/lowlevel.c |  2 +-
 .../boards/phytec-phycore-stm32mp1/lowlevel.c |  2 +-
 arch/arm/boards/phytec-som-am335x/lowlevel.c  |  9 ++----
 arch/arm/boards/phytec-som-imx6/lowlevel.c    |  7 ++--
 arch/arm/boards/phytec-som-rk3288/lowlevel.c  |  2 +-
 .../boards/plathome-openblocks-a6/lowlevel.c  |  3 +-
 .../boards/plathome-openblocks-ax3/lowlevel.c |  3 +-
 arch/arm/boards/protonic-imx6/lowlevel.c      | 32 +++++++++----------
 arch/arm/boards/protonic-stm32mp1/lowlevel.c  |  6 ++--
 arch/arm/boards/radxa-rock/lowlevel.c         |  2 +-
 arch/arm/boards/raspberry-pi/lowlevel.c       | 10 +++---
 arch/arm/boards/reflex-achilles/lowlevel.c    |  4 +--
 .../arm/boards/sama5d27-giantboard/lowlevel.c |  2 +-
 arch/arm/boards/sama5d27-som1/lowlevel.c      |  2 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |  2 +-
 arch/arm/boards/sama5d4_wifx/lowlevel.c       |  2 +-
 arch/arm/boards/scb9328/lowlevel.c            |  2 +-
 arch/arm/boards/seeed-odyssey/lowlevel.c      |  2 +-
 arch/arm/boards/skov-arm9cpu/lowlevel.c       |  2 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c     |  2 +-
 arch/arm/boards/solidrun-microsom/lowlevel.c  | 18 +++++------
 arch/arm/boards/stm32mp15x-ev1/lowlevel.c     |  2 +-
 arch/arm/boards/stm32mp15xx-dkx/lowlevel.c    |  6 ++--
 .../boards/technexion-pico-hobbit/lowlevel.c  |  8 ++---
 arch/arm/boards/toradex-colibri-t20/entry.c   |  2 +-
 arch/arm/boards/toshiba-ac100/entry.c         |  2 +-
 arch/arm/boards/tqma53/lowlevel.c             |  4 +--
 arch/arm/boards/tqma6x/lowlevel.c             |  4 +--
 arch/arm/boards/turris-omnia/lowlevel.c       |  3 +-
 arch/arm/boards/udoo-neo/lowlevel.c           |  2 +-
 arch/arm/boards/udoo/lowlevel.c               |  2 +-
 arch/arm/boards/usi-topkick/lowlevel.c        |  2 +-
 arch/arm/boards/variscite-mx6/lowlevel.c      |  2 +-
 arch/arm/boards/variscite-som-mx7/lowlevel.c  |  2 +-
 arch/arm/boards/versatile/lowlevel.c          |  2 +-
 arch/arm/boards/vexpress/lowlevel.c           |  7 ++--
 arch/arm/boards/vscom-baltos/lowlevel.c       |  4 +--
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c    |  4 +--
 arch/arm/boards/xilinx-zcu104/lowlevel.c      |  2 +-
 arch/arm/boards/xilinx-zcu106/lowlevel.c      |  2 +-
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c     |  8 ++---
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c     |  6 ++--
 arch/arm/boards/zii-imx7d-dev/lowlevel.c      |  6 ++--
 arch/arm/boards/zii-vf610-dev/lowlevel.c      | 16 +++++-----
 arch/arm/cpu/board-dt-2nd.c                   |  2 +-
 arch/riscv/boards/beaglev/lowlevel.c          |  2 +-
 arch/riscv/boards/erizo/lowlevel.c            |  2 +-
 arch/riscv/boards/hifive/lowlevel.c           |  4 +--
 arch/riscv/boards/litex-linux/lowlevel.c      |  2 +-
 include/mach/socfpga/lowlevel.h               |  8 ++---
 include/mach/tegra/lowlevel.h                 |  2 +-
 105 files changed, 182 insertions(+), 225 deletions(-)

diff --git a/arch/arm/boards/ac-sxb/lowlevel.c b/arch/arm/boards/ac-sxb/lowlevel.c
index 713d8ce5f8..c59f8083bb 100644
--- a/arch/arm/boards/ac-sxb/lowlevel.c
+++ b/arch/arm/boards/ac-sxb/lowlevel.c
@@ -128,5 +128,5 @@ ENTRY_FUNCTION(start_ac_sxb, r0, r1, r2)
 	if (get_pc() < 0x80000000)
 		imx7d_sxb_sram_setup();
 
-	imx7d_barebox_entry(__dtb_z_ac_sxb_start + get_runtime_offset());
+	imx7d_barebox_entry(runtime_address(__dtb_z_ac_sxb_start));
 }
diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index 5c38198a36..ac496b0d69 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -251,7 +251,7 @@ ENTRY_FUNCTION(start_am33xx_afi_gf_sdram, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_z_am335x_afi_gf_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_am335x_afi_gf_start);
 
 	putc_ll('>');
 
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index aea772c743..b207d816e5 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -125,7 +125,7 @@ AT91_ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);
 
 	if (IS_ENABLED(CONFIG_MACH_AT91SAM9263EK_DT))
-		fdt = __dtb_z_at91sam9263ek_start + get_runtime_offset();
+		fdt = runtime_address(__dtb_z_at91sam9263ek_start);
 	else
 		fdt = NULL;
 
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index 5dbac307ac..b4a21dcf80 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -16,7 +16,7 @@ AT91_ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE);
 
-	fdt = __dtb_z_at91sam9x5ek_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_at91sam9x5ek_start);
 
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9x5_get_ddram_size(), fdt);
 }
diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 6e5a17d7ef..dc4b91c1c4 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -288,8 +288,7 @@ static void avnet_zedboard_pbl_console_init(void)
 
 ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 {
-
-	void *fdt = __dtb_z_zynq_zed_start + get_runtime_offset();
+	void *fdt = runtime_address(__dtb_z_zynq_zed_start);
 
 	/* MIO_07 in GPIO Mode 3.3V VIO, can be uncomented because it is the default value */
 	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 5dc49dfaaf..4701968fc5 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -160,13 +160,11 @@ ENTRY_FUNCTION(start_am33xx_beaglebone_sdram, r0, r1, r2)
 
 	if (is_beaglebone_black()) {
 		sdram_size = SZ_512M;
-		fdt = __dtb_z_am335x_boneblack_start;
+		fdt = runtime_address(__dtb_z_am335x_boneblack_start);
 	} else {
 		sdram_size = SZ_256M;
-		fdt = __dtb_z_am335x_bone_start;
+		fdt = runtime_address(__dtb_z_am335x_bone_start);
 	}
 
-	fdt += get_runtime_offset();
-
 	barebox_arm_entry(0x80000000, sdram_size, fdt);
 }
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
index 8ab5116d8e..7d8b1ee81b 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6/lowlevel.c
@@ -13,7 +13,7 @@ ENTRY_FUNCTION(start_imx6q_nitrogen6x_1g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_nitrogen6x_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_nitrogen6x_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -24,7 +24,7 @@ ENTRY_FUNCTION(start_imx6q_nitrogen6x_2g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_nitrogen6x_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_nitrogen6x_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -37,7 +37,7 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_1g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_nitrogen6x_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_nitrogen6x_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -48,7 +48,7 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_2g, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_nitrogen6x_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_nitrogen6x_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -61,7 +61,7 @@ ENTRY_FUNCTION(start_imx6qp_nitrogen6_max, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6qp_nitrogen6_max_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6qp_nitrogen6_max_start);
 
 	imx6q_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index b0881f9c5b..2bda234b02 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -46,7 +46,7 @@ static inline void start_ccxmx51(void)
 
 	arm_setup_stack(0x20000000);
 
-	fdt = __dtb_imx51_ccxmx51_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx51_ccxmx51_start);
 
 	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, fdt);
 }
diff --git a/arch/arm/boards/ccxmx53/lowlevel.c b/arch/arm/boards/ccxmx53/lowlevel.c
index 74fde99337..5f9c9f6a3c 100644
--- a/arch/arm/boards/ccxmx53/lowlevel.c
+++ b/arch/arm/boards/ccxmx53/lowlevel.c
@@ -29,7 +29,7 @@ ENTRY_FUNCTION(start_ccxmx53_512mb, r0, r1, r2)
 
 	IMD_USED(ccxmx53_memsize_SZ_512M);
 
-	fdt = __dtb_imx53_ccxmx53_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx53_ccxmx53_start);
 
 	imx53_barebox_entry(fdt);
 }
@@ -43,7 +43,7 @@ ENTRY_FUNCTION(start_ccxmx53_1gib, r0, r1, r2)
 
 	IMD_USED(ccxmx53_memsize_SZ_1G);
 
-	fdt = __dtb_imx53_ccxmx53_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx53_ccxmx53_start);
 
 	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index ba402cecea..f1da576432 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION_WITHSTACK(start_ep7212_clep7212,
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_ep7212_clep7212_start;
+	fdt = runtime_address(__dtb_ep7212_clep7212_start);
 
-	clps711x_start(fdt + get_runtime_offset());
+	clps711x_start(fdt);
 }
diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
index 9566e492e3..c69488e9c1 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
@@ -136,7 +136,7 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 
 	arm_setup_stack(0x00940000);
 
-	fdt = __dtb_imx6q_dmo_edmqmx6_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_dmo_edmqmx6_start);
 
 	if (get_pc() < 0x10000000) {
 		sdram_init();
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index 1ca0d6f090..f5472d765c 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -104,7 +104,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_nanya, r0, r1, r2)
 
 	early_uart_init_6q();
 
-	fdt = __dtb_imx6q_dfi_fs700_m60_6q_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_dfi_fs700_m60_6q_start);
 
 	barebox_arm_entry(0x10000000, memsize_1G_2G(), fdt);
 }
@@ -123,7 +123,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_micron, r0, r1, r2)
 
 	early_uart_init_6q();
 
-	fdt = __dtb_imx6q_dfi_fs700_m60_6q_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_dfi_fs700_m60_6q_start);
 
 	*(uint32_t *)0x10000000 = SZ_1G;
 
@@ -146,7 +146,7 @@ ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s, r0, r1, r2)
 
 	early_uart_init_6s();
 
-	fdt = __dtb_imx6dl_dfi_fs700_m60_6s_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_dfi_fs700_m60_6s_start);
 
 	barebox_arm_entry(0x10000000, memsize_512M_1G(), fdt);
 }
diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index 71862ec4b7..19a8325342 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -22,7 +22,7 @@ ENTRY_FUNCTION(start_barebox_duckbill, r0, r1, r2)
 
 	pr_debug("here we are!\n");
 
-	fdt = __dtb_imx28_duckbill_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx28_duckbill_start);
 
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, fdt);
 }
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index cf2f145e74..4b8be6ceef 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -17,7 +17,7 @@ ENTRY_FUNCTION(start_imx51_genesi_efikasb, r0, r1, r2)
 	arm_setup_stack(0x20000000);
 	imx51_init_lowlevel(800);
 
-	fdt = __dtb_imx51_genesi_efika_sb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx51_genesi_efika_sb_start);
 
 	imx51_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/element14-warp7/lowlevel.c b/arch/arm/boards/element14-warp7/lowlevel.c
index c6ddfea5a4..fa332dcf61 100644
--- a/arch/arm/boards/element14-warp7/lowlevel.c
+++ b/arch/arm/boards/element14-warp7/lowlevel.c
@@ -38,7 +38,7 @@ static noinline void warp7_start(void)
 
 	pr_debug("Element14 i.MX7 Warp\n");
 
-	fdt = __dtb_imx7s_warp_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx7s_warp_start);
 
 	barebox_arm_entry(0x80000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/eltec-hipercam/lowlevel.c b/arch/arm/boards/eltec-hipercam/lowlevel.c
index 154c0e58f5..3db44774f3 100644
--- a/arch/arm/boards/eltec-hipercam/lowlevel.c
+++ b/arch/arm/boards/eltec-hipercam/lowlevel.c
@@ -34,7 +34,7 @@ ENTRY_FUNCTION(start_imx6dl_eltec_hipercam, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6dl_eltec_hipercam_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_eltec_hipercam_start);
 
 	barebox_arm_entry(0x10000000, SZ_256M, fdt);
 }
diff --git a/arch/arm/boards/embedsky-e9/lowlevel.c b/arch/arm/boards/embedsky-e9/lowlevel.c
index fddc88df52..77204c4360 100644
--- a/arch/arm/boards/embedsky-e9/lowlevel.c
+++ b/arch/arm/boards/embedsky-e9/lowlevel.c
@@ -14,7 +14,7 @@ ENTRY_FUNCTION(start_imx6q_embedsky_e9, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_embedsky_e9_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_embedsky_e9_start);
 
 	barebox_arm_entry(0x10000000, SZ_2G, fdt);
 }
diff --git a/arch/arm/boards/embest-marsboard/lowlevel.c b/arch/arm/boards/embest-marsboard/lowlevel.c
index 84378c00f2..6180d60944 100644
--- a/arch/arm/boards/embest-marsboard/lowlevel.c
+++ b/arch/arm/boards/embest-marsboard/lowlevel.c
@@ -36,7 +36,7 @@ ENTRY_FUNCTION(start_imx6q_marsboard, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_z_imx6q_marsboard_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6q_marsboard_start);
 
 	imx6q_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index 9ea92f5091..48994c6b87 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -26,6 +26,6 @@ ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
 		putc_ll('a');
 	}
 
-	fdt = __dtb_imx6s_riotboard_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6s_riotboard_start);
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/enclustra-aa1/lowlevel.c b/arch/arm/boards/enclustra-aa1/lowlevel.c
index ba4d562e5f..167c270565 100644
--- a/arch/arm/boards/enclustra-aa1/lowlevel.c
+++ b/arch/arm/boards/enclustra-aa1/lowlevel.c
@@ -94,9 +94,9 @@ ENTRY_FUNCTION(start_socfpga_aa1, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_z_socfpga_arria10_mercury_aa1_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_socfpga_arria10_mercury_aa1_start);
 
-	barebox_arm_entry(0x0, SZ_2G, fdt);
+	barebox_arm_entry(0x0, SZ_2G, runtime_address(fdt);
 }
 
 ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_bringup, ARRIA10_STACKTOP, r0, r1, r2)
@@ -118,7 +118,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_bringup, ARRIA10_STACKTOP, r0, r1, r2
 
 	arria10_ddr_calibration_sequence();
 
-	fdt = __dtb_z_socfpga_arria10_mercury_aa1_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_socfpga_arria10_mercury_aa1_start);
 
 	barebox_arm_entry(0x0, SZ_2G, fdt);
 }
diff --git a/arch/arm/boards/freescale-mx28-evk/lowlevel.c b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
index 42ac33fbbd..5e4565f596 100644
--- a/arch/arm/boards/freescale-mx28-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx28-evk/lowlevel.c
@@ -20,7 +20,7 @@ ENTRY_FUNCTION(start_barebox_freescale_mx28evk, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_imx28_evk_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx28_evk_start);
 
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, fdt);
 }
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 7d219bad78..fc0dccfb10 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -45,7 +45,7 @@ ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 
 	arm_setup_stack(0x20000000);
 
-	fdt = __dtb_imx51_babbage_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx51_babbage_start);
 
 	imx51_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index 5870f266d2..329fe57eb9 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -17,7 +17,7 @@ ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
-	fdt = __dtb_imx53_qsb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx53_qsb_start);
 
 	imx53_barebox_entry(fdt);
 }
@@ -31,7 +31,7 @@ ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
 
-	fdt = __dtb_imx53_qsrb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx53_qsrb_start);
 
 	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index 4543171ec2..96ca06ad98 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION(start_imx53_vmx53, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(0xf8020000);
 
-	fdt = __dtb_imx53_voipac_bsb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx53_voipac_bsb_start);
 
 	imx53_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index 7cc08b47d5..bb3ac0e8e1 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -34,7 +34,7 @@ ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6q_sabresd_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_sabresd_start);
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
@@ -50,7 +50,7 @@ ENTRY_FUNCTION(start_imx6qp_sabresd, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6qp_sabresd_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6qp_sabresd_start);
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
@@ -66,7 +66,7 @@ ENTRY_FUNCTION(start_imx6dl_sabresd, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6dl_sabresd_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_sabresd_start);
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
index 721743dadb..a48e5de460 100644
--- a/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6sx-sabresdb/lowlevel.c
@@ -36,7 +36,7 @@ ENTRY_FUNCTION(start_imx6sx_sabresdb, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6sx_sdb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6sx_sdb_start);
 
 	barebox_arm_entry(0x80000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
index 5a7508143e..313bd2fb4c 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -34,5 +34,5 @@ ENTRY_FUNCTION(start_imx7d_sabresd, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	imx7d_barebox_entry(__dtb_imx7d_sdb_start + get_runtime_offset());
+	imx7d_barebox_entry(runtime_address(__dtb_imx7d_sdb_start));
 }
diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
index c7714f29a2..b8a3461afe 100644
--- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
+++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
@@ -33,5 +33,5 @@ ENTRY_FUNCTION(start_vf610_twr, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	vf610_barebox_entry(__dtb_vf610_twr_start + get_runtime_offset());
+	vf610_barebox_entry(runtime_address(__dtb_vf610_twr_start));
 }
diff --git a/arch/arm/boards/gateworks-ventana/lowlevel.c b/arch/arm/boards/gateworks-ventana/lowlevel.c
index db18b53139..50757fd4c4 100644
--- a/arch/arm/boards/gateworks-ventana/lowlevel.c
+++ b/arch/arm/boards/gateworks-ventana/lowlevel.c
@@ -14,7 +14,7 @@ ENTRY_FUNCTION(start_imx6q_gw54xx_1gx64, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_gw54xx_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_gw54xx_start);
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/gk802/lowlevel.c b/arch/arm/boards/gk802/lowlevel.c
index 7c56a6a1a6..ce709d8249 100644
--- a/arch/arm/boards/gk802/lowlevel.c
+++ b/arch/arm/boards/gk802/lowlevel.c
@@ -14,6 +14,6 @@ ENTRY_FUNCTION(start_imx6_gk802, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_gk802_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_gk802_start);
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/globalscale-guruplug/lowlevel.c b/arch/arm/boards/globalscale-guruplug/lowlevel.c
index a54d848c04..46faf1e412 100644
--- a/arch/arm/boards/globalscale-guruplug/lowlevel.c
+++ b/arch/arm/boards/globalscale-guruplug/lowlevel.c
@@ -15,8 +15,7 @@ ENTRY_FUNCTION_MVEBU(start_globalscale_guruplug, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_kirkwood_guruplug_server_plus_bb_start +
-		get_runtime_offset();
+	fdt = runtime_address(__dtb_kirkwood_guruplug_server_plus_bb_start);
 
 	kirkwood_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/globalscale-mirabox/lowlevel.c b/arch/arm/boards/globalscale-mirabox/lowlevel.c
index da08e80d74..20351831a4 100644
--- a/arch/arm/boards/globalscale-mirabox/lowlevel.c
+++ b/arch/arm/boards/globalscale-mirabox/lowlevel.c
@@ -15,8 +15,7 @@ ENTRY_FUNCTION_MVEBU(start_globalscale_mirabox, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_370_mirabox_bb_start +
-		get_runtime_offset();
+	fdt = runtime_address(__dtb_armada_370_mirabox_bb_start);
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/grinn-liteboard/lowlevel.c b/arch/arm/boards/grinn-liteboard/lowlevel.c
index 6851a678bc..696676a112 100644
--- a/arch/arm/boards/grinn-liteboard/lowlevel.c
+++ b/arch/arm/boards/grinn-liteboard/lowlevel.c
@@ -56,8 +56,7 @@ static void __noreturn start_imx6_liteboard(void)
 	if (IS_ENABLED(CONFIG_PBL_CONSOLE))
 		setup_uart();
 
-	imx6ul_barebox_entry(__dtb_imx6ul_liteboard_start +
-			get_runtime_offset());
+	imx6ul_barebox_entry(runtime_address(__dtb_imx6ul_liteboard_start));
 }
 
 #define LITEBOARD_ENTRY(name, memory_size)				\
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index e691aeca3e..4bda282001 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -54,14 +54,14 @@ static noinline void __imx53_guf_vincell_init(void *fdt)
 
 ENTRY_FUNCTION(start_imx53_guf_vincell_lt, r0, r1, r2)
 {
-	void *fdt = __dtb_imx53_guf_vincell_lt_start + get_runtime_offset();
+	void *fdt = runtime_address(__dtb_imx53_guf_vincell_lt_start);
 
 	__imx53_guf_vincell_init(fdt);
 }
 
 ENTRY_FUNCTION(start_imx53_guf_vincell, r0, r1, r2)
 {
-	void *fdt = __dtb_imx53_guf_vincell_start + get_runtime_offset();
+	void *fdt = runtime_address(__dtb_imx53_guf_vincell_start);
 
 	__imx53_guf_vincell_init(fdt);
 }
diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
index e1ba327251..e299127ce0 100644
--- a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
+++ b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
@@ -34,5 +34,5 @@ ENTRY_FUNCTION(start_kamstrup_mx7_concentrator, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	imx7d_barebox_entry(__dtb_z_imx7d_flex_concentrator_mfg_start + get_runtime_offset());
+	imx7d_barebox_entry(runtime_address(__dtb_z_imx7d_flex_concentrator_mfg_start));
 }
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index d6658b535f..298274cc51 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -65,7 +65,7 @@ static void __noreturn karo_tx25_start(void)
 {
 	void *fdt;
 
-	fdt = __dtb_imx25_karo_tx25_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx25_karo_tx25_start);
 
 	imx25_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index 914ef69de9..2286ebd540 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -31,8 +31,7 @@ static inline void setup_uart(void)
 
 static void __imx53_tx53_init(int is_xx30)
 {
-	void *fdt;
-	void *fdt_blob_fixed_offset = __dtb_imx53_tx53_1011_start;
+	void *fdt = runtime_address(__dtb_imx53_tx53_1011_start);
 
 	arm_early_mmu_cache_invalidate();
 	imx5_cpu_lowlevel_init();
@@ -44,14 +43,12 @@ static void __imx53_tx53_init(int is_xx30)
 
 	if (is_xx30) {
 		imx53_init_lowlevel_early(800);
-		fdt_blob_fixed_offset = __dtb_imx53_tx53_xx30_start;
+		fdt = runtime_address(__dtb_imx53_tx53_xx30_start);
 	}
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = fdt_blob_fixed_offset + get_runtime_offset();
-
 	imx53_barebox_entry(fdt);
 }
 
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index 082307626b..610e198684 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -43,7 +43,7 @@ ENTRY_FUNCTION(start_imx6dl_tx6x_512m, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6dl_tx6u_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_tx6u_start);
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
@@ -63,7 +63,7 @@ ENTRY_FUNCTION(start_imx6dl_tx6x_1g, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6dl_tx6u_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_tx6u_start);
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
@@ -83,7 +83,7 @@ ENTRY_FUNCTION(start_imx6q_tx6x_1g, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6q_tx6q_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_tx6q_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -103,7 +103,7 @@ ENTRY_FUNCTION(start_imx6q_tx6x_2g, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6q_tx6q_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_tx6q_start);
 
 	imx6q_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/kindle-mx50/lowlevel.c b/arch/arm/boards/kindle-mx50/lowlevel.c
index 61d2b037fe..f0e97881d5 100644
--- a/arch/arm/boards/kindle-mx50/lowlevel.c
+++ b/arch/arm/boards/kindle-mx50/lowlevel.c
@@ -22,7 +22,7 @@ ENTRY_FUNCTION(start_imx50_kindle_d01100, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE);
 
-	fdt = __dtb_imx50_kindle_d01100_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx50_kindle_d01100_start);
 
 	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
 }
@@ -34,7 +34,7 @@ ENTRY_FUNCTION(start_imx50_kindle_d01200, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE);
 
-	fdt = __dtb_imx50_kindle_d01200_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx50_kindle_d01200_start);
 
 	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
 }
@@ -46,7 +46,7 @@ ENTRY_FUNCTION(start_imx50_kindle_ey21, r0, r1, r2)
 	imx5_cpu_lowlevel_init();
 	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE);
 
-	fdt = __dtb_imx50_kindle_ey21_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx50_kindle_ey21_start);
 
 	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
 }
diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/kontron-samx6i/lowlevel.c
index 59694e72f9..9bef1d5519 100644
--- a/arch/arm/boards/kontron-samx6i/lowlevel.c
+++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
@@ -35,9 +35,8 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
-static void __noreturn start_imx6_samx6i_common(void *fdt_blob_fixed_offset)
+static void __noreturn start_imx6_samx6i_common(void *fdt)
 {
-	void *fdt;
 	resource_size_t size = 0;
 
 	size = samx6i_get_size();
@@ -48,8 +47,6 @@ static void __noreturn start_imx6_samx6i_common(void *fdt_blob_fixed_offset)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = fdt_blob_fixed_offset + get_runtime_offset();
-
 	barebox_arm_entry(0x10000000, size, fdt);
 }
 
@@ -58,10 +55,10 @@ extern char __dtb_imx6q_samx6i_start[];
 
 ENTRY_FUNCTION(start_imx6q_samx6i, r0, r1, r2)
 {
-	start_imx6_samx6i_common(__dtb_imx6q_samx6i_start);
+	start_imx6_samx6i_common(runtime_address(__dtb_imx6q_samx6i_start));
 }
 
 ENTRY_FUNCTION(start_imx6dl_samx6i, r0, r1, r2)
 {
-	start_imx6_samx6i_common(__dtb_imx6dl_samx6i_start);
+	start_imx6_samx6i_common(runtime_address(__dtb_imx6dl_samx6i_start));
 }
diff --git a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
index d76e4af30d..f9e98e73a2 100644
--- a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
+++ b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
@@ -15,8 +15,7 @@ ENTRY_FUNCTION_MVEBU(start_lenovo_ix4_300d, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_xp_lenovo_ix4_300d_bb_start +
-		get_runtime_offset();
+	fdt = runtime_address(__dtb_armada_xp_lenovo_ix4_300d_bb_start);
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/lxa-mc1/lowlevel.c b/arch/arm/boards/lxa-mc1/lowlevel.c
index 86211bf9d8..83c85522c7 100644
--- a/arch/arm/boards/lxa-mc1/lowlevel.c
+++ b/arch/arm/boards/lxa-mc1/lowlevel.c
@@ -20,7 +20,7 @@ ENTRY_FUNCTION(start_stm32mp157c_lxa_mc1, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_z_stm32mp157c_lxa_mc1_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_stm32mp157c_lxa_mc1_start);
 
 	stm32mp1_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/marvell-armada-xp-db/lowlevel.c b/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
index 14059fe8c5..05ccde7dca 100644
--- a/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
+++ b/arch/arm/boards/marvell-armada-xp-db/lowlevel.c
@@ -27,7 +27,7 @@ ENTRY_FUNCTION_MVEBU(start_marvell_armada_xp_db, r0, r1, r2)
 	reg |= 3 << 20;
 	writel(0x1a09ef00, L2_AUX_CONTRL_ADDRESS);
 
-	fdt = __dtb_armada_xp_db_bb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_armada_xp_db_bb_start);
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
index ae5ad2822a..f5f6c1af1c 100644
--- a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
+++ b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION_MVEBU(start_marvell_armada_xp_gp, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_xp_gp_bb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_armada_xp_gp_bb_start);
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/meerkat96/lowlevel.c b/arch/arm/boards/meerkat96/lowlevel.c
index 03a1a11466..ff32cd7fac 100644
--- a/arch/arm/boards/meerkat96/lowlevel.c
+++ b/arch/arm/boards/meerkat96/lowlevel.c
@@ -29,7 +29,7 @@ ENTRY_FUNCTION_WITHSTACK(start_imx7d_meerkat96, 0, r0, r1, r2)
 
 	setup_uart();
 
-	fdt = __dtb_z_imx7d_meerkat96_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx7d_meerkat96_start);
 
 	barebox_arm_entry(0x80000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index aa2161daee..68b425bee8 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -56,7 +56,7 @@ SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r4)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		dbgu_init();
 
-	fdt = __dtb_z_at91_microchip_ksz9477_evb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_at91_microchip_ksz9477_evb_start);
 
 	sama5d3_barebox_entry(r4, fdt);
 }
diff --git a/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c b/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
index 79346a9b6a..161126b1e5 100644
--- a/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
+++ b/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
@@ -56,7 +56,7 @@ SAMA5D3_ENTRY_FUNCTION(start_microchip_sama5d3_eds, r4)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		dbgu_init();
 
-	fdt = __dtb_z_at91_microchip_sama5d3_eds_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_at91_microchip_sama5d3_eds_start);
 
 	sama5d3_barebox_entry(r4, fdt);
 }
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index 0ac2370e57..2cff574cf7 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -103,9 +103,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sdram, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_z_am335x_myirtech_myd_start;
-
-	fdt += get_runtime_offset();
+	fdt = runtime_address(__dtb_z_am335x_myirtech_myd_start);
 
 	am335x_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/netgear-rn104/lowlevel.c b/arch/arm/boards/netgear-rn104/lowlevel.c
index e693d13993..81d54a368b 100644
--- a/arch/arm/boards/netgear-rn104/lowlevel.c
+++ b/arch/arm/boards/netgear-rn104/lowlevel.c
@@ -17,8 +17,7 @@ ENTRY_FUNCTION_MVEBU(start_netgear_rn104, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_370_rn104_bb_start +
-		get_runtime_offset();
+	fdt = runtime_address(__dtb_armada_370_rn104_bb_start);
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/netgear-rn2120/lowlevel.c b/arch/arm/boards/netgear-rn2120/lowlevel.c
index f923be5a27..6d6ab68d57 100644
--- a/arch/arm/boards/netgear-rn2120/lowlevel.c
+++ b/arch/arm/boards/netgear-rn2120/lowlevel.c
@@ -41,8 +41,7 @@ ENTRY_FUNCTION_MVEBU(start_netgear_rn2120, r0, r1, r2)
 	/* Win 0 Control Register: size=0x4000000, wincs=0, en=1 */
 	writel(0x3fffffe1, base + 0x20184);
 
-	fdt = __dtb_armada_xp_rn2120_bb_start +
-		get_runtime_offset();
+	fdt = runtime_address(__dtb_armada_xp_rn2120_bb_start);
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/nvidia-beaver/entry.c b/arch/arm/boards/nvidia-beaver/entry.c
index c79057cd9d..1e9128df04 100644
--- a/arch/arm/boards/nvidia-beaver/entry.c
+++ b/arch/arm/boards/nvidia-beaver/entry.c
@@ -9,7 +9,7 @@ extern char __dtb_tegra30_beaver_start[];
 
 ENTRY_FUNCTION(start_nvidia_beaver, r0, r1, r2)
 {
-	tegra_cpu_lowlevel_setup(__dtb_tegra30_beaver_start);
+	tegra_cpu_lowlevel_setup(runtime_address(__dtb_tegra30_beaver_start));
 
 	tegra_dvc_init();
 	tegra30_tps62366a_ramp_vddcore();
diff --git a/arch/arm/boards/nvidia-jetson-tk1/entry.c b/arch/arm/boards/nvidia-jetson-tk1/entry.c
index db9b1d9ebf..26acbd6f93 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/entry.c
+++ b/arch/arm/boards/nvidia-jetson-tk1/entry.c
@@ -9,7 +9,7 @@ extern char __dtb_tegra124_jetson_tk1_start[];
 
 ENTRY_FUNCTION(start_nvidia_jetson, r0, r1, r2)
 {
-	tegra_cpu_lowlevel_setup(__dtb_tegra124_jetson_tk1_start);
+	tegra_cpu_lowlevel_setup(runtime_address(__dtb_tegra124_jetson_tk1_start));
 
 	tegra_dvc_init();
 	tegra124_dvc_pinmux();
diff --git a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
index a43406e1a2..116033910f 100644
--- a/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx27/lowlevel.c
@@ -85,7 +85,7 @@ static void __noreturn phytec_phycard_imx27_start(void)
 {
 	void *fdt;
 
-	fdt = __dtb_imx27_phytec_phycard_s_rdk_bb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx27_phytec_phycard_s_rdk_bb_start);
 
 	imx27_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index a42b30a7bb..40619b3cde 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -24,7 +24,7 @@ static void __noreturn phytec_phycore_imx27_start(void)
 {
 	void *fdt;
 
-	fdt = __dtb_imx27_phytec_phycore_rdk_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx27_phytec_phycore_rdk_start);
 
 	imx27_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
index 1f3c08ac62..595a6a86b2 100644
--- a/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx7/lowlevel.c
@@ -31,7 +31,7 @@ static noinline void phytec_phycore_imx7_start(void)
 
 	pr_debug("Phytec phyCORE i.MX7\n");
 
-	fdt = __dtb_imx7d_phyboard_zeta_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx7d_phyboard_zeta_start);
 
 	barebox_arm_entry(0x80000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
index 8174e060af..eeb71dd053 100644
--- a/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-stm32mp1/lowlevel.c
@@ -13,7 +13,7 @@ ENTRY_FUNCTION(start_phycore_stm32mp1_3, r0, r1, r2)
 
 	putc_ll('>');
 
-	fdt = __dtb_z_stm32mp157c_phycore_stm32mp1_3_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_stm32mp157c_phycore_stm32mp1_3_start);
 
 	stm32mp1_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 267f30b638..516d525a67 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -190,8 +190,7 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram,
 	ENTRY_FUNCTION(name, bootinfo, r1, r2)				\
 	{								\
 		extern char __dtb_z_##fdt_name##_start[];		\
-		void *fdt = __dtb_z_##fdt_name##_start +		\
-			get_runtime_offset();				\
+		void *fdt = runtime_address(__dtb_z_##fdt_name##_start);\
 		physom_board_entry(bootinfo, 0, fdt, module_family);	\
 	}
 
@@ -199,8 +198,7 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram,
 	ENTRY_FUNCTION(name, bootinfo, r1, r2)				\
 	{								\
 		extern char __dtb_z_##fdt_name##_start[];		\
-		void *fdt = __dtb_z_##fdt_name##_start +		\
-			get_runtime_offset();				\
+		void *fdt = runtime_address(__dtb_z_##fdt_name##_start);\
 		physom_board_entry(bootinfo, sdram, fdt, NONE);		\
 	}
 
@@ -208,8 +206,7 @@ static noinline void physom_board_entry(unsigned long bootinfo, int sdram,
 	ENTRY_FUNCTION(name, r0, r1, r2)				\
 	{								\
 		extern char __dtb_z_##fdt_name##_start[];		\
-		void *fdt = __dtb_z_##fdt_name##_start +		\
-			get_runtime_offset();				\
+		void *fdt = runtime_address(__dtb_z_##fdt_name##_start);\
 		am335x_barebox_entry(fdt);				\
 	}
 
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index da5665a716..414fd15cd7 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -42,10 +42,9 @@ BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_4G, IMD_TYPE_PARAMETER, "memsize=40
 
 static void __noreturn start_imx6_phytec_common(uint32_t size,
 						bool do_early_uart_config,
-						void *fdt_blob_fixed_offset)
+						void *fdt)
 {
 	int cpu_type = __imx6_cpu_type();
-	void *fdt;
 
 	if (cpu_type == IMX6_CPUTYPE_IMX6UL
 	    || cpu_type == IMX6_CPUTYPE_IMX6ULL) {
@@ -61,8 +60,6 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 	if (do_early_uart_config && IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = fdt_blob_fixed_offset + get_runtime_offset();
-
 	if (cpu_type == IMX6_CPUTYPE_IMX6UL
 	    || cpu_type == IMX6_CPUTYPE_IMX6ULL)
 		barebox_arm_entry(0x80000000, size, fdt);
@@ -78,7 +75,7 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 		IMD_USED(physom_mx6_memsize_##memory_size);		\
 									\
 		start_imx6_phytec_common(memory_size, do_early_uart_config, \
-					 __dtb_##fdt_name##_start);	\
+					 runtime_address(__dtb_##fdt_name##_start));	\
 	}
 
 PHYTEC_ENTRY(start_phytec_phycard_imx6q_1gib, imx6q_phytec_phycard, SZ_1G, true);
diff --git a/arch/arm/boards/phytec-som-rk3288/lowlevel.c b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
index 12044b6039..c2a1b08e6f 100644
--- a/arch/arm/boards/phytec-som-rk3288/lowlevel.c
+++ b/arch/arm/boards/phytec-som-rk3288/lowlevel.c
@@ -29,7 +29,7 @@ ENTRY_FUNCTION(start_rk3288_phycore_som, r0, r1, r2)
 			     GPIO7C6_UART2DBG_SIN << GPIO7C6_SHIFT);
 		rockchip_debug_ll_init();
 	}
-	fdt = __dtb_rk3288_phycore_som_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_rk3288_phycore_som_start);
 
 	barebox_arm_entry(0x0, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
index 8a58d692d8..860df839d5 100644
--- a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
+++ b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
@@ -14,8 +14,7 @@ ENTRY_FUNCTION_MVEBU(start_plathome_openblocks_a6, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_kirkwood_openblocks_a6_bb_start +
-		get_runtime_offset();
+	fdt = runtime_address(__dtb_kirkwood_openblocks_a6_bb_start);
 
 	kirkwood_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
index 35888a0b83..61911fb0b5 100644
--- a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
+++ b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
@@ -15,8 +15,7 @@ ENTRY_FUNCTION_MVEBU(start_plathome_openblocks_ax3, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_xp_openblocks_ax3_4_bb_start +
-		get_runtime_offset();
+	fdt = runtime_address(__dtb_armada_xp_openblocks_ax3_4_bb_start);
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/protonic-imx6/lowlevel.c b/arch/arm/boards/protonic-imx6/lowlevel.c
index 38e65037e6..9a15893787 100644
--- a/arch/arm/boards/protonic-imx6/lowlevel.c
+++ b/arch/arm/boards/protonic-imx6/lowlevel.c
@@ -32,7 +32,7 @@ ENTRY_FUNCTION(start_imx6q_prti6q, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6q_prti6q_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6q_prti6q_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -43,7 +43,7 @@ ENTRY_FUNCTION(start_imx6q_prtwd2, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6q_prtwd2_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6q_prtwd2_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -54,7 +54,7 @@ ENTRY_FUNCTION(start_imx6q_vicut1, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6q_vicut1_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6q_vicut1_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -65,7 +65,7 @@ ENTRY_FUNCTION(start_imx6dl_alti6p, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_alti6p_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_alti6p_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -76,7 +76,7 @@ ENTRY_FUNCTION(start_imx6dl_lanmcu, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_lanmcu_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_lanmcu_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -87,7 +87,7 @@ ENTRY_FUNCTION(start_imx6dl_plybas, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_plybas_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_plybas_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -98,7 +98,7 @@ ENTRY_FUNCTION(start_imx6dl_plym2m, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_plym2m_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_plym2m_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -109,7 +109,7 @@ ENTRY_FUNCTION(start_imx6dl_prtmvt, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_prtmvt_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_prtmvt_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -120,7 +120,7 @@ ENTRY_FUNCTION(start_imx6dl_prtrvt, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_prtrvt_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_prtrvt_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -131,7 +131,7 @@ ENTRY_FUNCTION(start_imx6dl_prtvt7, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_prtvt7_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_prtvt7_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -142,7 +142,7 @@ ENTRY_FUNCTION(start_imx6dl_victgo, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_victgo_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_victgo_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -153,7 +153,7 @@ ENTRY_FUNCTION(start_imx6dl_vicut1, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6dl_vicut1_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6dl_vicut1_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -164,7 +164,7 @@ ENTRY_FUNCTION(start_imx6qp_prtwd3, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6qp_prtwd3_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6qp_prtwd3_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -175,7 +175,7 @@ ENTRY_FUNCTION(start_imx6qp_vicutp, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6qp_vicutp_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6qp_vicutp_start);
 
 	imx6q_barebox_entry(fdt);
 }
@@ -186,7 +186,7 @@ ENTRY_FUNCTION(start_imx6ul_prti6g, r0, r1, r2)
 
 	imx6ul_cpu_lowlevel_init();
 
-	fdt = __dtb_z_imx6ul_prti6g_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6ul_prti6g_start);
 
 	imx6ul_barebox_entry(fdt);
 }
@@ -205,7 +205,7 @@ ENTRY_FUNCTION(start_imx6ull_jozacp, r0, r1, r2)
 	writel(0x5, 0x020e0188);
 	writel(0x5, 0x020e018c);
 
-	fdt = __dtb_z_imx6ull_jozacp_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_imx6ull_jozacp_start);
 
 	imx6ul_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/protonic-stm32mp1/lowlevel.c b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
index 2fd7f8ba8b..c3239377bb 100644
--- a/arch/arm/boards/protonic-stm32mp1/lowlevel.c
+++ b/arch/arm/boards/protonic-stm32mp1/lowlevel.c
@@ -24,7 +24,7 @@ ENTRY_FUNCTION(start_prtt1a, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_z_stm32mp151_prtt1a_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_stm32mp151_prtt1a_start);
 
 	stm32mp1_barebox_entry(fdt);
 }
@@ -38,7 +38,7 @@ ENTRY_FUNCTION(start_prtt1c, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_z_stm32mp151_prtt1c_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_stm32mp151_prtt1c_start);
 
 	stm32mp1_barebox_entry(fdt);
 }
@@ -52,7 +52,7 @@ ENTRY_FUNCTION(start_prtt1s, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_z_stm32mp151_prtt1s_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_stm32mp151_prtt1s_start);
 
 	stm32mp1_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/radxa-rock/lowlevel.c b/arch/arm/boards/radxa-rock/lowlevel.c
index 982090e08c..0d545db606 100644
--- a/arch/arm/boards/radxa-rock/lowlevel.c
+++ b/arch/arm/boards/radxa-rock/lowlevel.c
@@ -14,7 +14,7 @@ ENTRY_FUNCTION(start_radxa_rock, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_rk3188_radxarock_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_rk3188_radxarock_start);
 
 	barebox_arm_entry(0x60000000, SZ_2G, fdt);
 }
diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index b3727d930f..d1de300957 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -53,8 +53,6 @@ static inline void start_raspberry_pi(unsigned long memsize, void *fdt,
 	/* leave SZ_1K for the initial stack */
 	copy_vc_fdt((void *)endmem, vc_fdt, VIDEOCORE_FDT_SZ - SZ_1K);
 
-	fdt += get_runtime_offset();
-
 	barebox_arm_entry(BCM2835_SDRAM_BASE, memsize, fdt);
 }
 
@@ -79,28 +77,28 @@ RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, fdt)
 {
 	arm_cpu_lowlevel_init();
 
-	start_raspberry_pi(SZ_128M, __dtb_z_bcm2835_rpi_start, (void *)fdt);
+	start_raspberry_pi(SZ_128M, runtime_address(__dtb_z_bcm2835_rpi_start), (void *)fdt);
 }
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi2, SZ_512M, fdt)
 {
 	arm_cpu_lowlevel_init();
 
-	start_raspberry_pi(SZ_512M, __dtb_z_bcm2836_rpi_2_start, (void *)fdt);
+	start_raspberry_pi(SZ_512M, runtime_address(__dtb_z_bcm2836_rpi_2_start), (void *)fdt);
 }
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi3, SZ_512M, fdt)
 {
 	arm_cpu_lowlevel_init();
 
-	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_3_start, (void *)fdt);
+	start_raspberry_pi(SZ_512M, runtime_address(__dtb_z_bcm2837_rpi_3_start), (void *)fdt);
 }
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi_cm3, SZ_512M, fdt)
 {
 	arm_cpu_lowlevel_init();
 
-	start_raspberry_pi(SZ_512M, __dtb_z_bcm2837_rpi_cm3_start, (void *)fdt);
+	start_raspberry_pi(SZ_512M, runtime_address(__dtb_z_bcm2837_rpi_cm3_start), (void *)fdt);
 }
 
 #define DT_IF_ENABLED(dt, cfg) \
diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 12ead6d6dd..2cc9457b3c 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -85,7 +85,7 @@ ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_z_socfpga_arria10_achilles_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_socfpga_arria10_achilles_start);
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
@@ -109,7 +109,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_bringup, ARRIA10_STACKTOP, r0, r
 
 	arria10_ddr_calibration_sequence();
 
-	fdt = __dtb_z_socfpga_arria10_achilles_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_socfpga_arria10_achilles_start);
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index 49540bede0..3ec8b8f558 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -42,7 +42,7 @@ SAMA5D2_ENTRY_FUNCTION(start_sama5d27_giantboard, r4)
 
 	putc_ll('>');
 
-	fdt = __dtb_z_at91_sama5d27_giantboard_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_at91_sama5d27_giantboard_start);
 
 	sama5d2_barebox_entry(r4, fdt);
 }
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index 67300587fe..4b3e0f00fa 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -66,7 +66,7 @@ SAMA5D2_ENTRY_FUNCTION(start_sama5d27_som1_ek, r4)
 
 	putc_ll('>');
 
-	fdt = __dtb_z_at91_sama5d27_som1_ek_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_at91_sama5d27_som1_ek_start);
 
 	ek_turn_led(RGB_LED_GREEN);
 	sama5d2_barebox_entry(r4, fdt);
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index d66b10fa8f..5d0f6b5d81 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -57,7 +57,7 @@ SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained, r4)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		dbgu_init();
 
-	fdt = __dtb_z_at91_sama5d3_xplained_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_at91_sama5d3_xplained_start);
 
 	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
 }
diff --git a/arch/arm/boards/sama5d4_wifx/lowlevel.c b/arch/arm/boards/sama5d4_wifx/lowlevel.c
index c47b14c55b..1b65696706 100644
--- a/arch/arm/boards/sama5d4_wifx/lowlevel.c
+++ b/arch/arm/boards/sama5d4_wifx/lowlevel.c
@@ -12,7 +12,7 @@ SAMA5D4_ENTRY_FUNCTION(start_sama5d4_wifx_l1, r4)
 
 	putc_ll('>');
 
-	fdt = __dtb_z_at91_sama5d4_wifx_l1_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_at91_sama5d4_wifx_l1_start);
 
 	sama5d4_barebox_entry(r4, fdt);
 }
diff --git a/arch/arm/boards/scb9328/lowlevel.c b/arch/arm/boards/scb9328/lowlevel.c
index d8b0d1cf18..d59cce65c8 100644
--- a/arch/arm/boards/scb9328/lowlevel.c
+++ b/arch/arm/boards/scb9328/lowlevel.c
@@ -15,7 +15,7 @@ void scb9328_start(void)
 {
 	void *fdt;
 
-	fdt = __dtb_imx1_scb9328_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx1_scb9328_start);
 
 	imx1_gpio_mode(PA23_PF_CS5);
 
diff --git a/arch/arm/boards/seeed-odyssey/lowlevel.c b/arch/arm/boards/seeed-odyssey/lowlevel.c
index a0e6173d49..aa766f6af6 100644
--- a/arch/arm/boards/seeed-odyssey/lowlevel.c
+++ b/arch/arm/boards/seeed-odyssey/lowlevel.c
@@ -13,7 +13,7 @@ ENTRY_FUNCTION(start_stm32mp157c_seeed_odyssey, r0, r1, r2)
 
 	putc_ll('>');
 
-	fdt = __dtb_z_stm32mp157c_odyssey_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_stm32mp157c_odyssey_start);
 
 	stm32mp1_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/skov-arm9cpu/lowlevel.c b/arch/arm/boards/skov-arm9cpu/lowlevel.c
index baf0b7bfc9..bf35b99c43 100644
--- a/arch/arm/boards/skov-arm9cpu/lowlevel.c
+++ b/arch/arm/boards/skov-arm9cpu/lowlevel.c
@@ -128,6 +128,6 @@ AT91_ENTRY_FUNCTION(start_skov_arm9cpu, r0, r1, r2)
 	 */
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_at91_skov_arm9cpu_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_at91_skov_arm9cpu_start);
 	barebox_arm_entry(AT91_CHIPSELECT_1, at91sam9263_get_sdram_size(0), fdt);
 }
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
index 8f1515e3b2..ef5a4f60fa 100644
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -16,7 +16,7 @@ ENTRY_FUNCTION_MVEBU(start_solidrun_cubox, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_dove_cubox_bb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_dove_cubox_bb_start);
 
 	dove_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
index 801678e777..2e62b33ab3 100644
--- a/arch/arm/boards/solidrun-microsom/lowlevel.c
+++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
@@ -17,7 +17,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i1, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_hummingboard_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_hummingboard_start);
 	imx6q_barebox_entry(fdt);
 }
 
@@ -27,7 +27,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i2, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_hummingboard_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_hummingboard_start);
 	imx6q_barebox_entry(fdt);
 }
 
@@ -37,7 +37,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i2ex, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_hummingboard_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_hummingboard_start);
 	imx6q_barebox_entry(fdt);
 }
 
@@ -47,7 +47,7 @@ ENTRY_FUNCTION(start_hummingboard_microsom_i4, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_hummingboard_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_hummingboard_start);
 	imx6q_barebox_entry(fdt);
 }
 
@@ -57,7 +57,7 @@ ENTRY_FUNCTION(start_hummingboard2_microsom_i1, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_hummingboard2_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_hummingboard2_start);
 	imx6q_barebox_entry(fdt);
 }
 
@@ -67,7 +67,7 @@ ENTRY_FUNCTION(start_hummingboard2_microsom_i2, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6dl_hummingboard2_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_hummingboard2_start);
 	imx6q_barebox_entry(fdt);
 }
 
@@ -77,7 +77,7 @@ ENTRY_FUNCTION(start_hummingboard2_microsom_i2ex, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_hummingboard2_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_hummingboard2_start);
 	imx6q_barebox_entry(fdt);
 }
 
@@ -87,7 +87,7 @@ ENTRY_FUNCTION(start_hummingboard2_microsom_i4, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_hummingboard2_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_hummingboard2_start);
 	imx6q_barebox_entry(fdt);
 }
 
@@ -97,6 +97,6 @@ ENTRY_FUNCTION(start_h100_microsom_i2ex, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_h100_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_h100_start);
 	imx6q_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/stm32mp15x-ev1/lowlevel.c b/arch/arm/boards/stm32mp15x-ev1/lowlevel.c
index 13f16f8dcb..807ce5db25 100644
--- a/arch/arm/boards/stm32mp15x-ev1/lowlevel.c
+++ b/arch/arm/boards/stm32mp15x-ev1/lowlevel.c
@@ -20,7 +20,7 @@ ENTRY_FUNCTION(start_stm32mp15x_ev1, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_z_stm32mp157c_ev1_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_stm32mp157c_ev1_start);
 
 	stm32mp1_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c b/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
index 402658d592..2ada841653 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
@@ -26,9 +26,9 @@ ENTRY_FUNCTION(start_stm32mp15xx_dkx, r0, r1, r2)
 
 	err = __stm32mp15_get_cpu_type(&cputype);
 	if (!err && cputype == CPU_STM32MP157Axx)
-		fdt = __dtb_z_stm32mp157a_dk1_start;
+		fdt = runtime_address(__dtb_z_stm32mp157a_dk1_start);
 	else
-		fdt = __dtb_z_stm32mp157c_dk2_start;
+		fdt = runtime_address(__dtb_z_stm32mp157c_dk2_start);
 
-	stm32mp1_barebox_entry(fdt + get_runtime_offset());
+	stm32mp1_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
index 7cc7c12d84..d04718b1a3 100644
--- a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
+++ b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
@@ -36,10 +36,8 @@ static inline void setup_uart(void)
 
 static void __noreturn start_imx6_pico_hobbit_common(uint32_t size,
 						bool do_early_uart_config,
-						void *fdt_blob_fixed_offset)
+						void *fdt)
 {
-	void *fdt;
-
 	imx6ul_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00910000);
@@ -58,8 +56,6 @@ static void __noreturn start_imx6_pico_hobbit_common(uint32_t size,
 	writew(0x0, 0x020c0008);
 	writew(0x0, 0x021e4008);
 
-	fdt = fdt_blob_fixed_offset + get_runtime_offset();
-
 	imx6ul_barebox_entry(fdt);
 }
 
@@ -74,7 +70,7 @@ BAREBOX_IMD_TAG_STRING(pico_hobbit_mx6_memsize_SZ_512M, IMD_TYPE_PARAMETER, "mem
 		IMD_USED(pico_hobbit_mx6_memsize_##memory_size);		\
 									\
 		start_imx6_pico_hobbit_common(memory_size, do_early_uart_config, \
-					 __dtb_##fdt_name##_start);	\
+					 runtime_address(__dtb_##fdt_name##_start));	\
 	}
 
 EDM1_ENTRY(start_imx6ul_pico_hobbit_256mb, imx6ul_pico_hobbit, SZ_256M, true);
diff --git a/arch/arm/boards/toradex-colibri-t20/entry.c b/arch/arm/boards/toradex-colibri-t20/entry.c
index af55689402..cc916451f8 100644
--- a/arch/arm/boards/toradex-colibri-t20/entry.c
+++ b/arch/arm/boards/toradex-colibri-t20/entry.c
@@ -8,7 +8,7 @@ extern char __dtb_tegra20_colibri_iris_start[];
 
 static void common_toradex_colibri_t20_iris_start(void)
 {
-	tegra_cpu_lowlevel_setup(__dtb_tegra20_colibri_iris_start);
+	tegra_cpu_lowlevel_setup(runtime_address(__dtb_tegra20_colibri_iris_start));
 
 	tegra_avp_reset_vector();
 }
diff --git a/arch/arm/boards/toshiba-ac100/entry.c b/arch/arm/boards/toshiba-ac100/entry.c
index 1cb5b1c0d0..c010b30629 100644
--- a/arch/arm/boards/toshiba-ac100/entry.c
+++ b/arch/arm/boards/toshiba-ac100/entry.c
@@ -8,7 +8,7 @@ extern char __dtb_tegra20_paz00_start[];
 
 ENTRY_FUNCTION(start_toshiba_ac100, r0, r1, r2)
 {
-	tegra_cpu_lowlevel_setup(__dtb_tegra20_paz00_start);
+	tegra_cpu_lowlevel_setup(runtime_address(__dtb_tegra20_paz00_start));
 
 	tegra_avp_reset_vector();
 }
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index 898b251d66..532d5f4bef 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -53,7 +53,7 @@ ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 
 	imx53_init_lowlevel_early(800);
 
-	fdt = __dtb_imx53_mba53_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx53_mba53_start);
 
 	start_imx53_tqma53_common(fdt);
 }
@@ -72,7 +72,7 @@ ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 
 	imx53_init_lowlevel_early(800);
 
-	fdt = __dtb_imx53_mba53_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx53_mba53_start);
 
 	start_imx53_tqma53_common(fdt);
 }
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index 6e9c9bed0b..5c79f1f158 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -30,7 +30,7 @@ ENTRY_FUNCTION_WITHSTACK(start_imx6q_mba6x, 0x00920000, r0, r1, r2)
 
 	arm_early_mmu_cache_invalidate();
 
-	fdt = __dtb_imx6q_mba6x_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_mba6x_start);
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
@@ -49,7 +49,7 @@ ENTRY_FUNCTION_WITHSTACK(start_imx6dl_mba6x, 0x00920000, r0, r1, r2)
 
 	arm_early_mmu_cache_invalidate();
 
-	fdt = __dtb_imx6dl_mba6x_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6dl_mba6x_start);
 
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
 }
diff --git a/arch/arm/boards/turris-omnia/lowlevel.c b/arch/arm/boards/turris-omnia/lowlevel.c
index 97d57e6ce0..56274364bf 100644
--- a/arch/arm/boards/turris-omnia/lowlevel.c
+++ b/arch/arm/boards/turris-omnia/lowlevel.c
@@ -16,8 +16,7 @@ ENTRY_FUNCTION_MVEBU(start_turris_omnia, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_armada_385_turris_omnia_bb_start +
-		get_runtime_offset();
+	fdt = runtime_address(__dtb_armada_385_turris_omnia_bb_start);
 
 	armada_370_xp_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/udoo-neo/lowlevel.c b/arch/arm/boards/udoo-neo/lowlevel.c
index e8712b0c72..cbee8a39e9 100644
--- a/arch/arm/boards/udoo-neo/lowlevel.c
+++ b/arch/arm/boards/udoo-neo/lowlevel.c
@@ -36,7 +36,7 @@ ENTRY_FUNCTION(start_imx6sx_udoo_neo, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_imx6sx_udoo_neo_full_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6sx_udoo_neo_full_start);
 
 	imx6sx_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/udoo/lowlevel.c b/arch/arm/boards/udoo/lowlevel.c
index 2570239b96..0082f0f343 100644
--- a/arch/arm/boards/udoo/lowlevel.c
+++ b/arch/arm/boards/udoo/lowlevel.c
@@ -14,7 +14,7 @@ ENTRY_FUNCTION(start_imx6_udoo, r0, r1, r2)
 
 	imx6_cpu_lowlevel_init();
 
-	fdt = __dtb_imx6q_udoo_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_udoo_start);
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/usi-topkick/lowlevel.c b/arch/arm/boards/usi-topkick/lowlevel.c
index d9118f5d2c..b80d7e61e5 100644
--- a/arch/arm/boards/usi-topkick/lowlevel.c
+++ b/arch/arm/boards/usi-topkick/lowlevel.c
@@ -15,7 +15,7 @@ ENTRY_FUNCTION_MVEBU(start_usi_topkick, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_kirkwood_topkick_bb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_kirkwood_topkick_bb_start);
 
 	kirkwood_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index d0842b1579..0478ee0358 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -42,7 +42,7 @@ ENTRY_FUNCTION(start_variscite_custom, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 	    setup_uart();
 
-	fdt = __dtb_imx6q_var_custom_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_imx6q_var_custom_start);
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/boards/variscite-som-mx7/lowlevel.c b/arch/arm/boards/variscite-som-mx7/lowlevel.c
index ef67fc3b5a..203831032a 100644
--- a/arch/arm/boards/variscite-som-mx7/lowlevel.c
+++ b/arch/arm/boards/variscite-som-mx7/lowlevel.c
@@ -40,5 +40,5 @@ ENTRY_FUNCTION_WITHSTACK(start_gome_e143_01, 0, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	imx7d_barebox_entry(__dtb_imx7d_gome_e143_01_start + get_runtime_offset());
+	imx7d_barebox_entry(runtime_address(__dtb_imx7d_gome_e143_01_start));
 }
diff --git a/arch/arm/boards/versatile/lowlevel.c b/arch/arm/boards/versatile/lowlevel.c
index 04209dc12c..c5e5d259cd 100644
--- a/arch/arm/boards/versatile/lowlevel.c
+++ b/arch/arm/boards/versatile/lowlevel.c
@@ -13,7 +13,7 @@ ENTRY_FUNCTION(start_versatile_pb, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = __dtb_versatile_pb_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_versatile_pb_start);
 
 	barebox_arm_entry(0x0, SZ_64M, fdt);
 }
diff --git a/arch/arm/boards/vexpress/lowlevel.c b/arch/arm/boards/vexpress/lowlevel.c
index ac27fbd7c6..ef2ab8b837 100644
--- a/arch/arm/boards/vexpress/lowlevel.c
+++ b/arch/arm/boards/vexpress/lowlevel.c
@@ -12,9 +12,8 @@
 #include <asm/unaligned.h>
 #include <linux/amba/sp804.h>
 
-static inline void start_vexpress_common(void *internal_dt)
+static inline void start_vexpress_common(void *fdt)
 {
-	void *fdt = internal_dt + get_runtime_offset();
 	unsigned long membase, memsize = SZ_512M;
 
 	arm_cpu_lowlevel_init();
@@ -42,11 +41,11 @@ static inline void start_vexpress_common(void *internal_dt)
 extern char __dtb_vexpress_v2p_ca9_start[];
 ENTRY_FUNCTION(start_vexpress_ca9, r0, r1, r2)
 {
-	start_vexpress_common(__dtb_vexpress_v2p_ca9_start);
+	start_vexpress_common(runtime_address(__dtb_vexpress_v2p_ca9_start));
 }
 
 extern char __dtb_vexpress_v2p_ca15_start[];
 ENTRY_FUNCTION(start_vexpress_ca15, r0, r1, r2)
 {
-	start_vexpress_common(__dtb_vexpress_v2p_ca15_start);
+	start_vexpress_common(runtime_address(__dtb_vexpress_v2p_ca15_start));
 }
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index aee0cde651..6473f4abd1 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -128,9 +128,7 @@ ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
 	 */
 	__raw_writel(0x000010ff, AM33XX_PRM_RSTTIME);
 
-	fdt = __dtb_z_am335x_baltos_minimal_start;
-
-	fdt += get_runtime_offset();
+	fdt = runtime_address(__dtb_z_am335x_baltos_minimal_start);
 
 	am335x_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
index 5429065c2d..6488ec723c 100644
--- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -223,9 +223,7 @@ extern char __dtb_am35xx_pfc_750_820x_start[];
 
 ENTRY_FUNCTION(start_am35xx_pfc_750_820x_sdram, r0, r1, r2)
 {
-	void *fdt = __dtb_am35xx_pfc_750_820x_start;
-
-	fdt += get_runtime_offset();
+	void *fdt = runtime_address(__dtb_am35xx_pfc_750_820x_start);
 
 	barebox_arm_entry(0x80000000, SZ_256M, fdt);
 }
diff --git a/arch/arm/boards/xilinx-zcu104/lowlevel.c b/arch/arm/boards/xilinx-zcu104/lowlevel.c
index 5541f9bc8e..e96456adb4 100644
--- a/arch/arm/boards/xilinx-zcu104/lowlevel.c
+++ b/arch/arm/boards/xilinx-zcu104/lowlevel.c
@@ -17,5 +17,5 @@ void noinline zynqmp_zcu104_start(uint32_t r0, uint32_t r1, uint32_t r2)
 	putc_ll('>');
 
 	barebox_arm_entry(0, SZ_2G,
-			  __dtb_zynqmp_zcu104_revA_start + global_variable_offset());
+			  runtime_address(__dtb_zynqmp_zcu104_revA_start));
 }
diff --git a/arch/arm/boards/xilinx-zcu106/lowlevel.c b/arch/arm/boards/xilinx-zcu106/lowlevel.c
index ccc8d61418..c641800b3d 100644
--- a/arch/arm/boards/xilinx-zcu106/lowlevel.c
+++ b/arch/arm/boards/xilinx-zcu106/lowlevel.c
@@ -20,5 +20,5 @@ void noinline zynqmp_zcu106_start(uint32_t r0, uint32_t r1, uint32_t r2)
 	putc_ll('>');
 
 	barebox_arm_entry(0, SZ_2G,
-			  __dtb_zynqmp_zcu106_revA_start + global_variable_offset());
+			  runtime_address(__dtb_zynqmp_zcu106_revA_start));
 }
diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
index 2418fe69ae..3b7cf42379 100644
--- a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
+++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
@@ -99,15 +99,15 @@ ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
 		/* FALLTHROUGH */
 	case ZII_PLATFORM_IMX51_RDU_REV_B:
 	case ZII_PLATFORM_IMX51_RDU_REV_C:
-		fdt = __dtb_z_imx51_zii_rdu1_start;
+		fdt = runtime_address(__dtb_z_imx51_zii_rdu1_start);
 		break;
 	case ZII_PLATFORM_IMX51_SCU2_MEZZ:
-		fdt = __dtb_z_imx51_zii_scu2_mezz_start;
+		fdt = runtime_address(__dtb_z_imx51_zii_scu2_mezz_start);
 		break;
 	case ZII_PLATFORM_IMX51_SCU3_ESB:
-		fdt = __dtb_z_imx51_zii_scu3_esb_start;
+		fdt = runtime_address(__dtb_z_imx51_zii_scu3_esb_start);
 		break;
 	}
 
-	imx51_barebox_entry(fdt + get_runtime_offset());
+	imx51_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index 5c94b120d3..a4c9322e8e 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -295,9 +295,7 @@ ENTRY_FUNCTION(start_imx6_zii_rdu2, r0, r1, r2)
 		rdu2_sram_setup();
 
 	if (__imx6_cpu_type() == IMX6_CPUTYPE_IMX6QP)
-		imx6q_barebox_entry(__dtb_z_imx6qp_zii_rdu2_start +
-				    get_runtime_offset());
+		imx6q_barebox_entry(runtime_address(__dtb_z_imx6qp_zii_rdu2_start));
 	else
-		imx6q_barebox_entry(__dtb_z_imx6q_zii_rdu2_start +
-				    get_runtime_offset());
+		imx6q_barebox_entry(runtime_address(__dtb_z_imx6q_zii_rdu2_start));
 }
diff --git a/arch/arm/boards/zii-imx7d-dev/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
index 2b2ad6aa84..9e6b9b2d8f 100644
--- a/arch/arm/boards/zii-imx7d-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
@@ -90,12 +90,12 @@ ENTRY_FUNCTION(start_zii_imx7d_dev, r0, r1, r2)
 		}
 		/* FALLTHROUGH */
 	case ZII_PLATFORM_IMX7D_RPU2:
-		fdt = __dtb_z_imx7d_zii_rpu2_start;
+		fdt = runtime_address(__dtb_z_imx7d_zii_rpu2_start);
 		break;
 	case ZII_PLATFORM_IMX7D_RMU2:
-		fdt = __dtb_z_imx7d_zii_rmu2_start;
+		fdt = runtime_address(__dtb_z_imx7d_zii_rmu2_start);
 		break;
 	}
 
-	imx7d_barebox_entry(fdt + get_runtime_offset());
+	imx7d_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index e45e31f7d8..6ed68b0433 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -96,27 +96,27 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 			puts_ll("*********************************\n");
 		}
 	case ZII_PLATFORM_VF610_DEV_REV_B: /* FALLTHROUGH */
-		fdt = __dtb_z_vf610_zii_dev_rev_b_start;
+		fdt = runtime_address(__dtb_z_vf610_zii_dev_rev_b_start);
 		break;
 	case ZII_PLATFORM_VF610_SCU4_AIB:
-		fdt = __dtb_z_vf610_zii_scu4_aib_start;
+		fdt = runtime_address(__dtb_z_vf610_zii_scu4_aib_start);
 		break;
 	case ZII_PLATFORM_VF610_DEV_REV_C:
-		fdt = __dtb_z_vf610_zii_dev_rev_c_start;
+		fdt = runtime_address(__dtb_z_vf610_zii_dev_rev_c_start);
 		break;
 	case ZII_PLATFORM_VF610_CFU1:
-		fdt = __dtb_z_vf610_zii_cfu1_start;
+		fdt = runtime_address(__dtb_z_vf610_zii_cfu1_start);
 		break;
 	case ZII_PLATFORM_VF610_SSMB_SPU3:
-		fdt = __dtb_z_vf610_zii_ssmb_spu3_start;
+		fdt = runtime_address(__dtb_z_vf610_zii_ssmb_spu3_start);
 		break;
 	case ZII_PLATFORM_VF610_SPB4:
-		fdt = __dtb_z_vf610_zii_spb4_start;
+		fdt = runtime_address(__dtb_z_vf610_zii_spb4_start);
 		break;
 	case ZII_PLATFORM_VF610_SSMB_DTU:
-		fdt = __dtb_z_vf610_zii_ssmb_dtu_start;
+		fdt = runtime_address(__dtb_z_vf610_zii_ssmb_dtu_start);
 		break;
 	}
 
-	vf610_barebox_entry(fdt + get_runtime_offset());
+	vf610_barebox_entry(fdt);
 }
diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
index 6f69a6dd27..67f00cd4a1 100644
--- a/arch/arm/cpu/board-dt-2nd.c
+++ b/arch/arm/cpu/board-dt-2nd.c
@@ -52,7 +52,7 @@ static noinline void dt_2nd_continue(void *fdt)
 
 ENTRY_FUNCTION(start_dt_2nd, r0, r1, r2)
 {
-	unsigned long image_start = (unsigned long)_text + global_variable_offset();
+	unsigned long image_start = (unsigned long)runtime_address(_text);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/riscv/boards/beaglev/lowlevel.c b/arch/riscv/boards/beaglev/lowlevel.c
index db884dc762..464bca937b 100644
--- a/arch/riscv/boards/beaglev/lowlevel.c
+++ b/arch/riscv/boards/beaglev/lowlevel.c
@@ -14,7 +14,7 @@ ENTRY_FUNCTION(start_beaglev_starlight, a0, a1, a2)
 	barebox_nmon_entry();
 	putc_ll('>');
 
-	fdt = __dtb_z_jh7100_beaglev_starlight_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_jh7100_beaglev_starlight_start);
 
 	barebox_riscv_supervisor_entry(0x84000000, SZ_512M, a0, fdt);
 }
diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index ab06634bdb..bd9ba7fc1b 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -16,7 +16,7 @@ ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 
 	/* On POR, we are running from read-only memory here. */
 
-	fdt = __dtb_z_erizo_generic_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_erizo_generic_start);
 
 	barebox_riscv_machine_entry(0x80000000, SZ_8M, fdt);
 }
diff --git a/arch/riscv/boards/hifive/lowlevel.c b/arch/riscv/boards/hifive/lowlevel.c
index 5e8969bef1..7ded97065a 100644
--- a/arch/riscv/boards/hifive/lowlevel.c
+++ b/arch/riscv/boards/hifive/lowlevel.c
@@ -15,12 +15,12 @@ ENTRY_FUNCTION(start_hifive_unmatched, a0, a1, a2)
 {
 	extern char __dtb_z_hifive_unmatched_a00_start[];
 
-	start_hifive(a0, __dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
+	start_hifive(a0, runtime_address(__dtb_z_hifive_unmatched_a00_start));
 }
 
 ENTRY_FUNCTION(start_hifive_unleashed, a0, a1, a2)
 {
 	extern char __dtb_z_hifive_unleashed_a00_start[];
 
-	start_hifive(a0, __dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
+	start_hifive(a0, runtime_address(__dtb_z_hifive_unleashed_a00_start));
 }
diff --git a/arch/riscv/boards/litex-linux/lowlevel.c b/arch/riscv/boards/litex-linux/lowlevel.c
index 6be3d62e64..6adc3dc283 100644
--- a/arch/riscv/boards/litex-linux/lowlevel.c
+++ b/arch/riscv/boards/litex-linux/lowlevel.c
@@ -16,7 +16,7 @@ ENTRY_FUNCTION(start_litex_linux, a0, a1, a2)
 
 	putc_ll('>');
 
-	fdt = __dtb_z_litex_linux_start + get_runtime_offset();
+	fdt = runtime_address(__dtb_z_litex_linux_start);
 
 	barebox_riscv_machine_entry(0x40000000, SZ_256M, fdt);
 }
diff --git a/include/mach/socfpga/lowlevel.h b/include/mach/socfpga/lowlevel.h
index f5b8d579e1..009774f789 100644
--- a/include/mach/socfpga/lowlevel.h
+++ b/include/mach/socfpga/lowlevel.h
@@ -15,14 +15,10 @@
 #include <mach/socfpga/pll_config.h>
 #include <mach/socfpga/cyclone5-sequencer.c>
 
-static void __noreturn start_socfpga_c5_common(uint32_t size, void *fdt_blob)
+static void __noreturn start_socfpga_c5_common(uint32_t size, void *fdt)
 {
-	void *fdt;
-
 	arm_cpu_lowlevel_init();
 
-	fdt = fdt_blob + get_runtime_offset();
-
 	barebox_arm_entry(0x0, size, fdt);
 }
 
@@ -31,7 +27,7 @@ static void __noreturn start_socfpga_c5_common(uint32_t size, void *fdt_blob)
 	{								\
 		extern char __dtb_##fdt_name##_start[];			\
 									\
-		start_socfpga_c5_common(memory_size, __dtb_##fdt_name##_start); \
+		start_socfpga_c5_common(memory_size, runtime_address(__dtb_##fdt_name##_start)); \
 	}
 
 static noinline void start_socfpga_c5_xload_common(uint32_t size)
diff --git a/include/mach/tegra/lowlevel.h b/include/mach/tegra/lowlevel.h
index 26228e48a8..26a6b97752 100644
--- a/include/mach/tegra/lowlevel.h
+++ b/include/mach/tegra/lowlevel.h
@@ -264,7 +264,7 @@ void tegra_cpu_lowlevel_setup(char *fdt)
 	arm_setup_stack(TEGRA_IRAM_BASE + SZ_256K);
 
 	if (tegra_cpu_is_maincomplex())
-		tegra_maincomplex_entry(fdt + get_runtime_offset());
+		tegra_maincomplex_entry(fdt);
 
 	tegra_ll_delay_setup();
 }
-- 
2.39.2



