Delivery-date: Thu, 02 Feb 2023 09:00:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUVy-00B88g-5Q
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 09:00:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUVu-0001By-No
	for lore@pengutronix.de; Thu, 02 Feb 2023 09:00:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CXDykK6PLpsp5z7wZ4BRqXOn8rJlWRyyoVFapcyom7M=; b=1m1CTDoDxhg17sKYF/7nfxXjR2
	jrWhrHyXihVL0MxXGWuwY6KbK0uA8zEI3F3rLDgyWrTiZw5Wo3dDn9pN9aVYgIRMqlJzYgHskUxDu
	ATflzYWCSswIH3Jr7KVizpjpQ39PD6if2OTNNIQ6bdXKxxzBuEJQAQg/0uOlPmTRUkP2D10vVouat
	ZStIRiKrVy8ePaqH70wHR+xjzsUGZNs0h/GDOnb2tqGOHhYkWZDKq01dNxg72n7FGPMtcUEYWviB1
	W2b+ndoChBOKKWyLqXsyk+hgjAIQajFQPG0S90txtIjXn4fZHxhX2BuQXOo8GIgIJsjVlwfCEx5mX
	JfZ7mCEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUUY-00EoiE-6g; Thu, 02 Feb 2023 07:58:46 +0000
Received: from out-130.mta0.migadu.com ([2001:41d0:1004:224b::82])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUUD-00Eoad-2C
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:58:27 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675324700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CXDykK6PLpsp5z7wZ4BRqXOn8rJlWRyyoVFapcyom7M=;
	b=01kjEDTB1zNYJ+0WVE9BDMVCo7Lcx22RpRdv5s3/F7NZTVK2pWDrWwtTCFPdo5riNa2lx3
	AP+jEDASFLK056OVCfmEMDd+0Rky+8zjf3wEwDYvJNwg4IxNyAKlCkx9Ig2twhTthTbVpx
	66UK42wEBis2waz5pKikSc4Jc+LWnk/SX5wY6epAPI0WKuUTOFGiq0udMFhNCIUWf5qCYS
	De51ExZqn4fGewpx0/53bijU1UV2GgcsIlGoebVtro/WIH6Ig+TmGlrq04F97wkjp+zGAU
	oZUqkTMuuRj8pezVVRYHTXs2fGhy6R7cqgTehSVI94pZN6P/ie8YhJBVX72t3g==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Thu,  2 Feb 2023 18:57:39 +1100
Message-Id: <20230202075741.2350028-3-contact@jookia.org>
In-Reply-To: <20230202075741.2350028-1-contact@jookia.org>
References: <20230202075741.2350028-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_235825_281878_0308468F 
X-CRM114-Status: GOOD (  18.65  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 2/4] ARM: novena: Setup RAM using static configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Novena laptops were shipped with a 4GB stick that can be set up
using this DDR3 configuration.
This isn't ideal as the stick is swappable, but it will work for
most people.

The DDR registers are copied from /board/kosagi/novena/novena_spl.c
from the Novena U-Boot fork (tag novena-r2) with two changes:

- Bank interleaving is disabled: The Novena U-Boot code disables it
  unconditionally during execution anyway
- Page size is set to 1KB: I'm not sure the hardware supports x16 DIMMs

Mainline U-Boot has similar code, but the timing differences don't work
on my board so I'm unable to test or port that code over.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/boards/novena/ddr_regs.h | 119 ++++++++++++++++++++++++++++++
 arch/arm/boards/novena/lowlevel.c |  14 +++-
 2 files changed, 131 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/novena/ddr_regs.h

diff --git a/arch/arm/boards/novena/ddr_regs.h b/arch/arm/boards/novena/ddr_regs.h
new file mode 100644
index 0000000000..5f18d5e0e4
--- /dev/null
+++ b/arch/arm/boards/novena/ddr_regs.h
@@ -0,0 +1,119 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: 2014 Marek Vasut <marex@denx.de> */
+
+#ifndef NOVENA_DDR_REGS_H
+#define NOVENA_DDR_REGS_H
+
+/* MEMORY CONTROLLER CONFIGURATION */
+
+static struct mx6dq_iomux_ddr_regs novena_ddr_regs = {
+	/* SDCLK[0:1], CAS, RAS, Reset: Differential input, 40ohm */
+	.dram_sdclk_0		= 0x00020038,
+	.dram_sdclk_1		= 0x00020038,
+	.dram_cas		= 0x00000038,
+	.dram_ras		= 0x00000038,
+	.dram_reset		= 0x00000038,
+	/* SDCKE[0:1]: 100k pull-up */
+	.dram_sdcke0		= 0x00003000,
+	.dram_sdcke1		= 0x00003000,
+	/* SDBA2: pull-up disabled */
+	.dram_sdba2		= 0x00000000,
+	/* SDODT[0:1]: 100k pull-up, 40 ohm */
+	.dram_sdodt0		= 0x00000038,
+	.dram_sdodt1		= 0x00000038,
+	/* SDQS[0:7]: Differential input, 40 ohm */
+	.dram_sdqs0		= 0x00000038,
+	.dram_sdqs1		= 0x00000038,
+	.dram_sdqs2		= 0x00000038,
+	.dram_sdqs3		= 0x00000038,
+	.dram_sdqs4		= 0x00000038,
+	.dram_sdqs5		= 0x00000038,
+	.dram_sdqs6		= 0x00000038,
+	.dram_sdqs7		= 0x00000038,
+
+	/* DQM[0:7]: Differential input, 40 ohm */
+	.dram_dqm0		= 0x00000038,
+	.dram_dqm1		= 0x00000038,
+	.dram_dqm2		= 0x00000038,
+	.dram_dqm3		= 0x00000038,
+	.dram_dqm4		= 0x00000038,
+	.dram_dqm5		= 0x00000038,
+	.dram_dqm6		= 0x00000038,
+	.dram_dqm7		= 0x00000038,
+};
+
+static struct mx6dq_iomux_grp_regs novena_grp_regs = {
+	/* DDR3 */
+	.grp_ddr_type		= 0x000c0000,
+	.grp_ddrmode_ctl	= 0x00020000,
+	/* Disable DDR pullups */
+	.grp_ddrpke		= 0x00000000,
+	/* ADDR[00:16], SDBA[0:1]: 40 ohm */
+	.grp_addds		= 0x00000038,
+	/* CS0/CS1/SDBA2/CKE0/CKE1/SDWE: 40 ohm */
+	.grp_ctlds		= 0x00000038,
+	/* DATA[00:63]: Differential input, 40 ohm */
+	.grp_ddrmode		= 0x00020000,
+	.grp_b0ds		= 0x00000038,
+	.grp_b1ds		= 0x00000038,
+	.grp_b2ds		= 0x00000038,
+	.grp_b3ds		= 0x00000038,
+	.grp_b4ds		= 0x00000038,
+	.grp_b5ds		= 0x00000038,
+	.grp_b6ds		= 0x00000038,
+	.grp_b7ds		= 0x00000038,
+};
+
+/* MEMORY STICK CONFIGURATION */
+
+static struct mx6_mmdc_calibration novena_mmdc_calib = {
+	/* write leveling calibration determine */
+	.p0_mpwldectrl0		= 0x00420048,
+	.p0_mpwldectrl1		= 0x006f0059,
+	.p1_mpwldectrl0		= 0x005a0104,
+	.p1_mpwldectrl1		= 0x01070113,
+	/* Read DQS Gating calibration */
+	.p0_mpdgctrl0		= 0x437c040b,
+	.p0_mpdgctrl1		= 0x0413040e,
+	.p1_mpdgctrl0		= 0x444f0446,
+	.p1_mpdgctrl1		= 0x044d0422,
+	/* Read Calibration: DQS delay relative to DQ read access */
+	.p0_mprddlctl		= 0x4c424249,
+	.p1_mprddlctl		= 0x4e48414f,
+	/* Write Calibration: DQ/DM delay relative to DQS write access */
+	.p0_mpwrdlctl		= 0x42414641,
+	.p1_mpwrdlctl		= 0x46374b43,
+};
+
+static struct mx6_ddr_sysinfo novena_ddr_info = {
+	/* Width of data bus: 0=16, 1=32, 2=64 */
+	.dsize		= 2,
+	/* Config for full 4GB range so that get_mem_size() works */
+	.cs_density	= 32,	/* 32Gb per CS */
+	/* Single chip select */
+	.ncs		= 1,
+	.cs1_mirror	= 0,
+	.rtt_wr		= 1,	/* RTT_Wr = RZQ/4 */
+	.rtt_nom	= 2,	/* RTT_Nom = RZQ/2 */
+	.walat		= 3,	/* Write additional latency */
+	.ralat		= 7,	/* Read additional latency */
+	.mif3_mode	= 3,	/* Command prediction working mode */
+	.bi_on		= 0,	/* Bank interleaving disabled */
+	.sde_to_rst	= 0x10,	/* 14 cycles, 200us (JEDEC default) */
+	.rst_to_cke	= 0x23,	/* 33 cycles, 500us (JEDEC default) */
+};
+
+static struct mx6_ddr3_cfg novena_ddr_cfg = {
+	.mem_speed	= 1600,
+	.density	= 4,
+	.width		= 64,
+	.banks		= 8,
+	.rowaddr	= 16,
+	.coladdr	= 10,
+	.pagesz		= 1,
+	.trcd		= 1300,
+	.trcmin		= 4900,
+	.trasmin	= 3590,
+};
+
+#endif
diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
index 5782e598c7..c49c6aab41 100644
--- a/arch/arm/boards/novena/lowlevel.c
+++ b/arch/arm/boards/novena/lowlevel.c
@@ -7,9 +7,11 @@
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <mach/imx6.h>
+#include <mach/imx6-mmdc.h>
 #include <mach/iomux-mx6.h>
 #include <mach/xload.h>
 #include <soc/fsl/fsl_udc.h>
+#include "ddr_regs.h"
 
 #define STACK_TOP (MX6_OCRAM_BASE_ADDR + MX6_OCRAM_MAX_SIZE)
 
@@ -35,6 +37,12 @@ static void setup_uart(void)
 	pr_debug(">");
 }
 
+static void setup_ram(void)
+{
+	mx6dq_dram_iocfg(64, &novena_ddr_regs, &novena_grp_regs);
+	mx6_dram_cfg(&novena_ddr_info, &novena_mmdc_calib, &novena_ddr_cfg);
+}
+
 static void load_barebox(void)
 {
 	enum bootsource bootsrc;
@@ -61,8 +69,10 @@ ENTRY_FUNCTION_WITHSTACK(start_imx6q_novena, STACK_TOP, r0, r1, r2)
 	imx6_ungate_all_peripherals();
 	setup_uart();
 
-	if (!running_from_ram())
+	if (!running_from_ram()) {
+		setup_ram();
 		load_barebox();
-	else
+	} else {
 		imx6q_barebox_entry(__dtb_z_imx6q_novena_start);
+	}
 }
-- 
2.39.1



