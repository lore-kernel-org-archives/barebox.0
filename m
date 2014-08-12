Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XHEaV-0007J3-0g
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 16:06:16 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XHEa8-00024L-BG
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 18:05:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 12 Aug 2014 18:05:51 +0200
Message-Id: <1407859552-20180-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1407859552-20180-1-git-send-email-l.stach@pengutronix.de>
References: <1407859552-20180-1-git-send-email-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] arm: mach-imx: add MMDC and CCM register defines for use
 in DCD
To: barebox@lists.infradead.org

Makes .imxcfg files a lot more readable.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6-ccm-regs.h   | 24 +++++++++
 arch/arm/mach-imx/include/mach/imx6-ddr-regs.h   | 67 ++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h | 57 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h  | 57 ++++++++++++++++++++
 4 files changed, 205 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h

diff --git a/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
new file mode 100644
index 000000000000..099d5621de62
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#define MX6_CCM_CCOSR		0x020c4060
+#define MX6_CCM_CCGR0		0x020C4068
+#define MX6_CCM_CCGR1		0x020C406c
+#define MX6_CCM_CCGR2		0x020C4070
+#define MX6_CCM_CCGR3		0x020C4074
+#define MX6_CCM_CCGR4		0x020C4078
+#define MX6_CCM_CCGR5		0x020C407c
+#define MX6_CCM_CCGR6		0x020C4080
+
+#define MX6_PMU_MISC2		0x020C8170
diff --git a/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h b/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
new file mode 100644
index 000000000000..69707f0976bd
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
@@ -0,0 +1,67 @@
+/*
+ * Copyright (C) 2013 Boundary Devices Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#define MX6_MMDC_P0_MDCTL		0x021b0000
+#define MX6_MMDC_P0_MDPDC		0x021b0004
+#define MX6_MMDC_P0_MDOTC		0x021b0008
+#define MX6_MMDC_P0_MDCFG0		0x021b000c
+#define MX6_MMDC_P0_MDCFG1		0x021b0010
+#define MX6_MMDC_P0_MDCFG2		0x021b0014
+#define MX6_MMDC_P0_MDMISC		0x021b0018
+#define MX6_MMDC_P0_MDSCR		0x021b001c
+#define MX6_MMDC_P0_MDREF		0x021b0020
+#define MX6_MMDC_P0_MDRWD		0x021b002c
+#define MX6_MMDC_P0_MDOR		0x021b0030
+#define MX6_MMDC_P0_MDASP		0x021b0040
+#define MX6_MMDC_P0_MAPSR		0x021b0404
+#define MX6_MMDC_P0_MPZQHWCTRL		0x021b0800
+#define MX6_MMDC_P0_MPWLDECTRL0		0x021b080c
+#define MX6_MMDC_P0_MPWLDECTRL1		0x021b0810
+#define MX6_MMDC_P0_MPODTCTRL		0x021b0818
+#define MX6_MMDC_P0_MPRDDQBY0DL		0x021b081c
+#define MX6_MMDC_P0_MPRDDQBY1DL		0x021b0820
+#define MX6_MMDC_P0_MPRDDQBY2DL		0x021b0824
+#define MX6_MMDC_P0_MPRDDQBY3DL		0x021b0828
+#define MX6_MMDC_P0_MPDGCTRL0		0x021b083c
+#define MX6_MMDC_P0_MPDGCTRL1		0x021b0840
+#define MX6_MMDC_P0_MPRDDLCTL		0x021b0848
+#define MX6_MMDC_P0_MPWRDLCTL		0x021b0850
+#define MX6_MMDC_P0_MPMUR0		0x021b08b8
+
+#define MX6_MMDC_P1_MDCTL		0x021b4000
+#define MX6_MMDC_P1_MDPDC		0x021b4004
+#define MX6_MMDC_P1_MDOTC		0x021b4008
+#define MX6_MMDC_P1_MDCFG0		0x021b400c
+#define MX6_MMDC_P1_MDCFG1		0x021b4010
+#define MX6_MMDC_P1_MDCFG2		0x021b4014
+#define MX6_MMDC_P1_MDMISC		0x021b4018
+#define MX6_MMDC_P1_MDSCR		0x021b401c
+#define MX6_MMDC_P1_MDREF		0x021b4020
+#define MX6_MMDC_P1_MDRWD		0x021b402c
+#define MX6_MMDC_P1_MDOR		0x021b4030
+#define MX6_MMDC_P1_MDASP		0x021b4040
+#define MX6_MMDC_P1_MAPSR		0x021b4404
+#define MX6_MMDC_P1_MPZQHWCTRL		0x021b4800
+#define MX6_MMDC_P1_MPWLDECTRL0		0x021b480c
+#define MX6_MMDC_P1_MPWLDECTRL1		0x021b4810
+#define MX6_MMDC_P1_MPODTCTRL		0x021b4818
+#define MX6_MMDC_P1_MPRDDQBY0DL		0x021b481c
+#define MX6_MMDC_P1_MPRDDQBY1DL		0x021b4820
+#define MX6_MMDC_P1_MPRDDQBY2DL		0x021b4824
+#define MX6_MMDC_P1_MPRDDQBY3DL		0x021b4828
+#define MX6_MMDC_P1_MPDGCTRL0		0x021b483c
+#define MX6_MMDC_P1_MPDGCTRL1		0x021b4840
+#define MX6_MMDC_P1_MPRDDLCTL		0x021b4848
+#define MX6_MMDC_P1_MPWRDLCTL		0x021b4850
+#define MX6_MMDC_P1_MPMUR0		0x021b48b8
diff --git a/arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h b/arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h
new file mode 100644
index 000000000000..541d00e24489
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h
@@ -0,0 +1,57 @@
+/*
+ * Copyright (C) 2013 Boundary Devices Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#define MX6_IOM_DRAM_DQM0	0x020e0470
+#define MX6_IOM_DRAM_DQM1	0x020e0474
+#define MX6_IOM_DRAM_DQM2	0x020e0478
+#define MX6_IOM_DRAM_DQM3	0x020e047c
+#define MX6_IOM_DRAM_DQM4	0x020e0480
+#define MX6_IOM_DRAM_DQM5	0x020e0484
+#define MX6_IOM_DRAM_DQM6	0x020e0488
+#define MX6_IOM_DRAM_DQM7	0x020e048c
+
+#define MX6_IOM_DRAM_CAS	0x020e0464
+#define MX6_IOM_DRAM_RAS	0x020e0490
+#define MX6_IOM_DRAM_RESET	0x020e0494
+#define MX6_IOM_DRAM_SDCLK_0	0x020e04ac
+#define MX6_IOM_DRAM_SDCLK_1	0x020e04b0
+#define MX6_IOM_DRAM_SDBA2	0x020e04a0
+#define MX6_IOM_DRAM_SDCKE0	0x020e04a4
+#define MX6_IOM_DRAM_SDCKE1	0x020e04a8
+#define MX6_IOM_DRAM_SDODT0	0x020e04b4
+#define MX6_IOM_DRAM_SDODT1	0x020e04b8
+
+#define MX6_IOM_DRAM_SDQS0	0x020e04bc
+#define MX6_IOM_DRAM_SDQS1	0x020e04c0
+#define MX6_IOM_DRAM_SDQS2	0x020e04c4
+#define MX6_IOM_DRAM_SDQS3	0x020e04c8
+#define MX6_IOM_DRAM_SDQS4	0x020e04cc
+#define MX6_IOM_DRAM_SDQS5	0x020e04d0
+#define MX6_IOM_DRAM_SDQS6	0x020e04d4
+#define MX6_IOM_DRAM_SDQS7	0x020e04d8
+
+#define MX6_IOM_GRP_B0DS	0x020e0764
+#define MX6_IOM_GRP_B1DS	0x020e0770
+#define MX6_IOM_GRP_B2DS	0x020e0778
+#define MX6_IOM_GRP_B3DS	0x020e077c
+#define MX6_IOM_GRP_B4DS	0x020e0780
+#define MX6_IOM_GRP_B5DS	0x020e0784
+#define MX6_IOM_GRP_B6DS	0x020e078c
+#define MX6_IOM_GRP_B7DS	0x020e0748
+#define MX6_IOM_GRP_ADDDS	0x020e074c
+#define MX6_IOM_DDRMODE_CTL	0x020e0750
+#define MX6_IOM_GRP_DDRPKE	0x020e0754
+#define MX6_IOM_GRP_DDRMODE	0x020e0760
+#define MX6_IOM_GRP_CTLDS	0x020e076c
+#define MX6_IOM_GRP_DDR_TYPE	0x020e0774
diff --git a/arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h b/arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h
new file mode 100644
index 000000000000..f91057437064
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx6q-ddr-regs.h
@@ -0,0 +1,57 @@
+/*
+ * Copyright (C) 2013 Boundary Devices Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#define MX6_IOM_DRAM_DQM0	0x020e05ac
+#define MX6_IOM_DRAM_DQM1	0x020e05b4
+#define MX6_IOM_DRAM_DQM2	0x020e0528
+#define MX6_IOM_DRAM_DQM3	0x020e0520
+#define MX6_IOM_DRAM_DQM4	0x020e0514
+#define MX6_IOM_DRAM_DQM5	0x020e0510
+#define MX6_IOM_DRAM_DQM6	0x020e05bc
+#define MX6_IOM_DRAM_DQM7	0x020e05c4
+
+#define MX6_IOM_DRAM_CAS	0x020e056c
+#define MX6_IOM_DRAM_RAS	0x020e0578
+#define MX6_IOM_DRAM_RESET	0x020e057c
+#define MX6_IOM_DRAM_SDCLK_0	0x020e0588
+#define MX6_IOM_DRAM_SDCLK_1	0x020e0594
+#define MX6_IOM_DRAM_SDBA2	0x020e058c
+#define MX6_IOM_DRAM_SDCKE0	0x020e0590
+#define MX6_IOM_DRAM_SDCKE1	0x020e0598
+#define MX6_IOM_DRAM_SDODT0	0x020e059c
+#define MX6_IOM_DRAM_SDODT1	0x020e05a0
+
+#define MX6_IOM_DRAM_SDQS0	0x020e05a8
+#define MX6_IOM_DRAM_SDQS1	0x020e05b0
+#define MX6_IOM_DRAM_SDQS2	0x020e0524
+#define MX6_IOM_DRAM_SDQS3	0x020e051c
+#define MX6_IOM_DRAM_SDQS4	0x020e0518
+#define MX6_IOM_DRAM_SDQS5	0x020e050c
+#define MX6_IOM_DRAM_SDQS6	0x020e05b8
+#define MX6_IOM_DRAM_SDQS7	0x020e05c0
+
+#define MX6_IOM_GRP_B0DS	0x020e0784
+#define MX6_IOM_GRP_B1DS	0x020e0788
+#define MX6_IOM_GRP_B2DS	0x020e0794
+#define MX6_IOM_GRP_B3DS	0x020e079c
+#define MX6_IOM_GRP_B4DS	0x020e07a0
+#define MX6_IOM_GRP_B5DS	0x020e07a4
+#define MX6_IOM_GRP_B6DS	0x020e07a8
+#define MX6_IOM_GRP_B7DS	0x020e0748
+#define MX6_IOM_GRP_ADDDS	0x020e074c
+#define MX6_IOM_DDRMODE_CTL	0x020e0750
+#define MX6_IOM_GRP_DDRPKE	0x020e0758
+#define MX6_IOM_GRP_DDRMODE	0x020e0774
+#define MX6_IOM_GRP_CTLDS	0x020e078c
+#define MX6_IOM_GRP_DDR_TYPE	0x020e0798
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
