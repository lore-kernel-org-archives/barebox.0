Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosB-00067v-RS
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:55:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:42 +0100
Message-Id: <20180316125354.23462-67-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 66/78] dt-bindings: Drop unused files
To: Barebox List <barebox@lists.infradead.org>

include/dt-bindings is not included in device tree builds anymore since
2014. Since then this directory is unused, so remove the files in it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/dt-bindings/clock/tegra30-car.h     | 265 ----------------------------
 include/dt-bindings/pinctrl/pinctrl-tegra.h |  45 -----
 include/dt-bindings/pinctrl/rockchip.h      |  32 ----
 3 files changed, 342 deletions(-)
 delete mode 100644 include/dt-bindings/clock/tegra30-car.h
 delete mode 100644 include/dt-bindings/pinctrl/pinctrl-tegra.h
 delete mode 100644 include/dt-bindings/pinctrl/rockchip.h

diff --git a/include/dt-bindings/clock/tegra30-car.h b/include/dt-bindings/clock/tegra30-car.h
deleted file mode 100644
index e40fae8f9a..0000000000
--- a/include/dt-bindings/clock/tegra30-car.h
+++ /dev/null
@@ -1,265 +0,0 @@
-/*
- * This header provides constants for binding nvidia,tegra30-car.
- *
- * The first 130 clocks are numbered to match the bits in the CAR's CLK_OUT_ENB
- * registers. These IDs often match those in the CAR's RST_DEVICES registers,
- * but not in all cases. Some bits in CLK_OUT_ENB affect multiple clocks. In
- * this case, those clocks are assigned IDs above 160 in order to highlight
- * this issue. Implementations that interpret these clock IDs as bit values
- * within the CLK_OUT_ENB or RST_DEVICES registers should be careful to
- * explicitly handle these special cases.
- *
- * The balance of the clocks controlled by the CAR are assigned IDs of 160 and
- * above.
- */
-
-#ifndef _DT_BINDINGS_CLOCK_TEGRA30_CAR_H
-#define _DT_BINDINGS_CLOCK_TEGRA30_CAR_H
-
-#define TEGRA30_CLK_CPU 0
-/* 1 */
-/* 2 */
-/* 3 */
-#define TEGRA30_CLK_RTC 4
-#define TEGRA30_CLK_TIMER 5
-#define TEGRA30_CLK_UARTA 6
-/* 7 (register bit affects uartb and vfir) */
-#define TEGRA30_CLK_GPIO 8
-#define TEGRA30_CLK_SDMMC2 9
-/* 10 (register bit affects spdif_in and spdif_out) */
-#define TEGRA30_CLK_I2S1 11
-#define TEGRA30_CLK_I2C1 12
-#define TEGRA30_CLK_NDFLASH 13
-#define TEGRA30_CLK_SDMMC1 14
-#define TEGRA30_CLK_SDMMC4 15
-/* 16 */
-#define TEGRA30_CLK_PWM 17
-#define TEGRA30_CLK_I2S2 18
-#define TEGRA30_CLK_EPP 19
-/* 20 (register bit affects vi and vi_sensor) */
-#define TEGRA30_CLK_GR2D 21
-#define TEGRA30_CLK_USBD 22
-#define TEGRA30_CLK_ISP 23
-#define TEGRA30_CLK_GR3D 24
-/* 25 */
-#define TEGRA30_CLK_DISP2 26
-#define TEGRA30_CLK_DISP1 27
-#define TEGRA30_CLK_HOST1X 28
-#define TEGRA30_CLK_VCP 29
-#define TEGRA30_CLK_I2S0 30
-#define TEGRA30_CLK_COP_CACHE 31
-
-#define TEGRA30_CLK_MC 32
-#define TEGRA30_CLK_AHBDMA 33
-#define TEGRA30_CLK_APBDMA 34
-/* 35 */
-#define TEGRA30_CLK_KBC 36
-#define TEGRA30_CLK_STATMON 37
-#define TEGRA30_CLK_PMC 38
-/* 39 (register bit affects fuse and fuse_burn) */
-#define TEGRA30_CLK_KFUSE 40
-#define TEGRA30_CLK_SBC1 41
-#define TEGRA30_CLK_NOR 42
-/* 43 */
-#define TEGRA30_CLK_SBC2 44
-/* 45 */
-#define TEGRA30_CLK_SBC3 46
-#define TEGRA30_CLK_I2C5 47
-#define TEGRA30_CLK_DSIA 48
-/* 49 (register bit affects cve and tvo) */
-#define TEGRA30_CLK_MIPI 50
-#define TEGRA30_CLK_HDMI 51
-#define TEGRA30_CLK_CSI 52
-#define TEGRA30_CLK_TVDAC 53
-#define TEGRA30_CLK_I2C2 54
-#define TEGRA30_CLK_UARTC 55
-/* 56 */
-#define TEGRA30_CLK_EMC 57
-#define TEGRA30_CLK_USB2 58
-#define TEGRA30_CLK_USB3 59
-#define TEGRA30_CLK_MPE 60
-#define TEGRA30_CLK_VDE 61
-#define TEGRA30_CLK_BSEA 62
-#define TEGRA30_CLK_BSEV 63
-
-#define TEGRA30_CLK_SPEEDO 64
-#define TEGRA30_CLK_UARTD 65
-#define TEGRA30_CLK_UARTE 66
-#define TEGRA30_CLK_I2C3 67
-#define TEGRA30_CLK_SBC4 68
-#define TEGRA30_CLK_SDMMC3 69
-#define TEGRA30_CLK_PCIE 70
-#define TEGRA30_CLK_OWR 71
-#define TEGRA30_CLK_AFI 72
-#define TEGRA30_CLK_CSITE 73
-#define TEGRA30_CLK_PCIEX 74
-#define TEGRA30_CLK_AVPUCQ 75
-#define TEGRA30_CLK_LA 76
-/* 77 */
-/* 78 */
-#define TEGRA30_CLK_DTV 79
-#define TEGRA30_CLK_NDSPEED 80
-#define TEGRA30_CLK_I2CSLOW 81
-#define TEGRA30_CLK_DSIB 82
-/* 83 */
-#define TEGRA30_CLK_IRAMA 84
-#define TEGRA30_CLK_IRAMB 85
-#define TEGRA30_CLK_IRAMC 86
-#define TEGRA30_CLK_IRAMD 87
-#define TEGRA30_CLK_CRAM2 88
-/* 89 */
-#define TEGRA30_CLK_AUDIO_2X 90 /* a/k/a audio_2x_sync_clk */
-/* 91 */
-#define TEGRA30_CLK_CSUS 92
-#define TEGRA30_CLK_CDEV2 93
-#define TEGRA30_CLK_CDEV1 94
-/* 95 */
-
-#define TEGRA30_CLK_CPU_G 96
-#define TEGRA30_CLK_CPU_LP 97
-#define TEGRA30_CLK_GR3D2 98
-#define TEGRA30_CLK_MSELECT 99
-#define TEGRA30_CLK_TSENSOR 100
-#define TEGRA30_CLK_I2S3 101
-#define TEGRA30_CLK_I2S4 102
-#define TEGRA30_CLK_I2C4 103
-#define TEGRA30_CLK_SBC5 104
-#define TEGRA30_CLK_SBC6 105
-#define TEGRA30_CLK_D_AUDIO 106
-#define TEGRA30_CLK_APBIF 107
-#define TEGRA30_CLK_DAM0 108
-#define TEGRA30_CLK_DAM1 109
-#define TEGRA30_CLK_DAM2 110
-#define TEGRA30_CLK_HDA2CODEC_2X 111
-#define TEGRA30_CLK_ATOMICS 112
-#define TEGRA30_CLK_AUDIO0_2X 113
-#define TEGRA30_CLK_AUDIO1_2X 114
-#define TEGRA30_CLK_AUDIO2_2X 115
-#define TEGRA30_CLK_AUDIO3_2X 116
-#define TEGRA30_CLK_AUDIO4_2X 117
-#define TEGRA30_CLK_SPDIF_2X 118
-#define TEGRA30_CLK_ACTMON 119
-#define TEGRA30_CLK_EXTERN1 120
-#define TEGRA30_CLK_EXTERN2 121
-#define TEGRA30_CLK_EXTERN3 122
-#define TEGRA30_CLK_SATA_OOB 123
-#define TEGRA30_CLK_SATA 124
-#define TEGRA30_CLK_HDA 125
-/* 126 */
-#define TEGRA30_CLK_SE 127
-
-#define TEGRA30_CLK_HDA2HDMI 128
-#define TEGRA30_CLK_SATA_COLD 129
-/* 130 */
-/* 131 */
-/* 132 */
-/* 133 */
-/* 134 */
-/* 135 */
-/* 136 */
-/* 137 */
-/* 138 */
-/* 139 */
-/* 140 */
-/* 141 */
-/* 142 */
-/* 143 */
-/* 144 */
-/* 145 */
-/* 146 */
-/* 147 */
-/* 148 */
-/* 149 */
-/* 150 */
-/* 151 */
-/* 152 */
-/* 153 */
-/* 154 */
-/* 155 */
-/* 156 */
-/* 157 */
-/* 158 */
-/* 159 */
-
-#define TEGRA30_CLK_UARTB 160
-#define TEGRA30_CLK_VFIR 161
-#define TEGRA30_CLK_SPDIF_IN 162
-#define TEGRA30_CLK_SPDIF_OUT 163
-#define TEGRA30_CLK_VI 164
-#define TEGRA30_CLK_VI_SENSOR 165
-#define TEGRA30_CLK_FUSE 166
-#define TEGRA30_CLK_FUSE_BURN 167
-#define TEGRA30_CLK_CVE 168
-#define TEGRA30_CLK_TVO 169
-#define TEGRA30_CLK_CLK_32K 170
-#define TEGRA30_CLK_CLK_M 171
-#define TEGRA30_CLK_CLK_M_DIV2 172
-#define TEGRA30_CLK_CLK_M_DIV4 173
-#define TEGRA30_CLK_PLL_REF 174
-#define TEGRA30_CLK_PLL_C 175
-#define TEGRA30_CLK_PLL_C_OUT1 176
-#define TEGRA30_CLK_PLL_M 177
-#define TEGRA30_CLK_PLL_M_OUT1 178
-#define TEGRA30_CLK_PLL_P 179
-#define TEGRA30_CLK_PLL_P_OUT1 180
-#define TEGRA30_CLK_PLL_P_OUT2 181
-#define TEGRA30_CLK_PLL_P_OUT3 182
-#define TEGRA30_CLK_PLL_P_OUT4 183
-#define TEGRA30_CLK_PLL_A 184
-#define TEGRA30_CLK_PLL_A_OUT0 185
-#define TEGRA30_CLK_PLL_D 186
-#define TEGRA30_CLK_PLL_D_OUT0 187
-#define TEGRA30_CLK_PLL_D2 188
-#define TEGRA30_CLK_PLL_D2_OUT0 189
-#define TEGRA30_CLK_PLL_U 190
-#define TEGRA30_CLK_PLL_X 191
-
-#define TEGRA30_CLK_PLL_X_OUT0 192
-#define TEGRA30_CLK_PLL_E 193
-#define TEGRA30_CLK_SPDIF_IN_SYNC 194
-#define TEGRA30_CLK_I2S0_SYNC 195
-#define TEGRA30_CLK_I2S1_SYNC 196
-#define TEGRA30_CLK_I2S2_SYNC 197
-#define TEGRA30_CLK_I2S3_SYNC 198
-#define TEGRA30_CLK_I2S4_SYNC 199
-#define TEGRA30_CLK_VIMCLK_SYNC 200
-#define TEGRA30_CLK_AUDIO0 201
-#define TEGRA30_CLK_AUDIO1 202
-#define TEGRA30_CLK_AUDIO2 203
-#define TEGRA30_CLK_AUDIO3 204
-#define TEGRA30_CLK_AUDIO4 205
-#define TEGRA30_CLK_SPDIF 206
-#define TEGRA30_CLK_CLK_OUT_1 207 /* (extern1) */
-#define TEGRA30_CLK_CLK_OUT_2 208 /* (extern2) */
-#define TEGRA30_CLK_CLK_OUT_3 209 /* (extern3) */
-#define TEGRA30_CLK_SCLK 210
-#define TEGRA30_CLK_BLINK 211
-#define TEGRA30_CLK_CCLK_G 212
-#define TEGRA30_CLK_CCLK_LP 213
-#define TEGRA30_CLK_TWD 214
-#define TEGRA30_CLK_CML0 215
-#define TEGRA30_CLK_CML1 216
-#define TEGRA30_CLK_HCLK 217
-#define TEGRA30_CLK_PCLK 218
-/* 219 */
-/* 220 */
-/* 221 */
-/* 222 */
-/* 223 */
-
-/* 288 */
-/* 289 */
-/* 290 */
-/* 291 */
-/* 292 */
-/* 293 */
-/* 294 */
-/* 295 */
-/* 296 */
-/* 297 */
-/* 298 */
-/* 299 */
-#define TEGRA30_CLK_CLK_OUT_1_MUX 300
-#define TEGRA30_CLK_CLK_MAX 301
-
-#endif	/* _DT_BINDINGS_CLOCK_TEGRA30_CAR_H */
diff --git a/include/dt-bindings/pinctrl/pinctrl-tegra.h b/include/dt-bindings/pinctrl/pinctrl-tegra.h
deleted file mode 100644
index ebafa498be..0000000000
--- a/include/dt-bindings/pinctrl/pinctrl-tegra.h
+++ /dev/null
@@ -1,45 +0,0 @@
-/*
- * This header provides constants for Tegra pinctrl bindings.
- *
- * Copyright (c) 2013, NVIDIA CORPORATION.  All rights reserved.
- *
- * Author: Laxman Dewangan <ldewangan@nvidia.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef _DT_BINDINGS_PINCTRL_TEGRA_H
-#define _DT_BINDINGS_PINCTRL_TEGRA_H
-
-/*
- * Enable/disable for diffeent dt properties. This is applicable for
- * properties nvidia,enable-input, nvidia,tristate, nvidia,open-drain,
- * nvidia,lock, nvidia,rcv-sel, nvidia,high-speed-mode, nvidia,schmitt.
- */
-#define TEGRA_PIN_DISABLE				0
-#define TEGRA_PIN_ENABLE				1
-
-#define TEGRA_PIN_PULL_NONE				0
-#define TEGRA_PIN_PULL_DOWN				1
-#define TEGRA_PIN_PULL_UP				2
-
-/* Low power mode driver */
-#define TEGRA_PIN_LP_DRIVE_DIV_8			0
-#define TEGRA_PIN_LP_DRIVE_DIV_4			1
-#define TEGRA_PIN_LP_DRIVE_DIV_2			2
-#define TEGRA_PIN_LP_DRIVE_DIV_1			3
-
-/* Rising/Falling slew rate */
-#define TEGRA_PIN_SLEW_RATE_FASTEST			0
-#define TEGRA_PIN_SLEW_RATE_FAST			1
-#define TEGRA_PIN_SLEW_RATE_SLOW			2
-#define TEGRA_PIN_SLEW_RATE_SLOWEST			3
-
-#endif
diff --git a/include/dt-bindings/pinctrl/rockchip.h b/include/dt-bindings/pinctrl/rockchip.h
deleted file mode 100644
index cd5788be82..0000000000
--- a/include/dt-bindings/pinctrl/rockchip.h
+++ /dev/null
@@ -1,32 +0,0 @@
-/*
- * Header providing constants for Rockchip pinctrl bindings.
- *
- * Copyright (c) 2013 MundoReader S.L.
- * Author: Heiko Stuebner <heiko@sntech.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
-#define __DT_BINDINGS_ROCKCHIP_PINCTRL_H__
-
-#define RK_GPIO0	0
-#define RK_GPIO1	1
-#define RK_GPIO2	2
-#define RK_GPIO3	3
-#define RK_GPIO4	4
-#define RK_GPIO6	6
-
-#define RK_FUNC_GPIO	0
-#define RK_FUNC_1	1
-#define RK_FUNC_2	2
-
-#endif
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
