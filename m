Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg6T-0000rR-Nf
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:49:08 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id D779E18B425C
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:07 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Subject: [PATCH v2 16/25] scripts: tegra: import cbootimage
Date: Wed, 14 May 2014 22:45:43 +0200
Message-Id: <1400100352-13002-16-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
To: barebox@lists.infradead.org

Needed to built the BCTs and bootable images.

Version 1.2 from https://github.com/NVIDIA/cbootimage.git

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 scripts/Makefile                             |    1 +
 scripts/tegra/Makefile                       |   22 +
 scripts/tegra/aes_ref.c                      |  326 ++++++++
 scripts/tegra/bct_dump.c                     |  296 +++++++
 scripts/tegra/cbootimage.c                   |  247 ++++++
 scripts/tegra/cbootimage.h                   |  108 +++
 scripts/tegra/context.c                      |   42 +
 scripts/tegra/context.h                      |   28 +
 scripts/tegra/crypto.c                       |  299 +++++++
 scripts/tegra/crypto.h                       |   47 ++
 scripts/tegra/data_layout.c                  |  898 +++++++++++++++++++++
 scripts/tegra/data_layout.h                  |   55 ++
 scripts/tegra/nvaes_ref.h                    |   35 +
 scripts/tegra/parse.c                        |  803 +++++++++++++++++++
 scripts/tegra/parse.h                        |  923 +++++++++++++++++++++
 scripts/tegra/set.c                          |  206 +++++
 scripts/tegra/set.h                          |   49 ++
 scripts/tegra/t114/nvbctlib_t114.c           | 1103 +++++++++++++++++++++++++
 scripts/tegra/t114/nvboot_bct_t114.h         |  363 +++++++++
 scripts/tegra/t114/nvboot_sdram_param_t114.h |  806 +++++++++++++++++++
 scripts/tegra/t114/parse_t114.c              |  430 ++++++++++
 scripts/tegra/t124/nvbctlib_t124.c           | 1104 ++++++++++++++++++++++++++
 scripts/tegra/t124/nvboot_bct_t124.h         |  359 +++++++++
 scripts/tegra/t124/nvboot_sdram_param_t124.h |  803 +++++++++++++++++++
 scripts/tegra/t124/parse_t124.c              |  429 ++++++++++
 scripts/tegra/t20/nvbctlib_t20.c             |  684 ++++++++++++++++
 scripts/tegra/t20/nvboot_bct_t20.h           |  316 ++++++++
 scripts/tegra/t20/nvboot_sdram_param_t20.h   |  363 +++++++++
 scripts/tegra/t20/parse_t20.c                |  251 ++++++
 scripts/tegra/t30/nvbctlib_t30.c             |  891 +++++++++++++++++++++
 scripts/tegra/t30/nvboot_bct_t30.h           |  379 +++++++++
 scripts/tegra/t30/nvboot_sdram_param_t30.h   |  568 +++++++++++++
 scripts/tegra/t30/parse_t30.c                |  360 +++++++++
 33 files changed, 13594 insertions(+)
 create mode 100644 scripts/tegra/Makefile
 create mode 100644 scripts/tegra/aes_ref.c
 create mode 100644 scripts/tegra/bct_dump.c
 create mode 100644 scripts/tegra/cbootimage.c
 create mode 100644 scripts/tegra/cbootimage.h
 create mode 100644 scripts/tegra/context.c
 create mode 100644 scripts/tegra/context.h
 create mode 100644 scripts/tegra/crypto.c
 create mode 100644 scripts/tegra/crypto.h
 create mode 100644 scripts/tegra/data_layout.c
 create mode 100644 scripts/tegra/data_layout.h
 create mode 100644 scripts/tegra/nvaes_ref.h
 create mode 100644 scripts/tegra/parse.c
 create mode 100644 scripts/tegra/parse.h
 create mode 100644 scripts/tegra/set.c
 create mode 100644 scripts/tegra/set.h
 create mode 100644 scripts/tegra/t114/nvbctlib_t114.c
 create mode 100644 scripts/tegra/t114/nvboot_bct_t114.h
 create mode 100644 scripts/tegra/t114/nvboot_sdram_param_t114.h
 create mode 100644 scripts/tegra/t114/parse_t114.c
 create mode 100644 scripts/tegra/t124/nvbctlib_t124.c
 create mode 100644 scripts/tegra/t124/nvboot_bct_t124.h
 create mode 100644 scripts/tegra/t124/nvboot_sdram_param_t124.h
 create mode 100644 scripts/tegra/t124/parse_t124.c
 create mode 100644 scripts/tegra/t20/nvbctlib_t20.c
 create mode 100644 scripts/tegra/t20/nvboot_bct_t20.h
 create mode 100644 scripts/tegra/t20/nvboot_sdram_param_t20.h
 create mode 100644 scripts/tegra/t20/parse_t20.c
 create mode 100644 scripts/tegra/t30/nvbctlib_t30.c
 create mode 100644 scripts/tegra/t30/nvboot_bct_t30.h
 create mode 100644 scripts/tegra/t30/nvboot_sdram_param_t30.h
 create mode 100644 scripts/tegra/t30/parse_t30.c

diff --git a/scripts/Makefile b/scripts/Makefile
index 3908c1dcb953..c02c7f3bd3d1 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -24,6 +24,7 @@ subdir-$(CONFIG_OMAP4_USBBOOT)	+= omap4_usbboot
 subdir-$(CONFIG_ARCH_IMX)	+= imx
 subdir-$(CONFIG_X86)		+= setupmbr
 subdir-$(CONFIG_DTC)		+= dtc
+subdir-$(CONFIG_ARCH_TEGRA)	+= tegra
 
 targetprogs-$(CONFIG_BAREBOXENV_TARGET) += bareboxenv-target
 targetprogs-$(CONFIG_KERNEL_INSTALL_TARGET) += kernel-install-target
diff --git a/scripts/tegra/Makefile b/scripts/tegra/Makefile
new file mode 100644
index 000000000000..99aef3fa05c6
--- /dev/null
+++ b/scripts/tegra/Makefile
@@ -0,0 +1,22 @@
+hostprogs-$(CONFIG_ARCH_TEGRA) += cbootimage
+
+always          := $(hostprogs-y)
+
+HOSTLOADLIBES_cbootimage  = '-lm'
+
+cbootimage-objs := \
+	cbootimage.o \
+	data_layout.o \
+	set.o \
+	crypto.o \
+	aes_ref.o \
+	context.o \
+	parse.o \
+	t124/parse_t124.o \
+	t114/parse_t114.o \
+	t30/parse_t30.o \
+	t20/parse_t20.o \
+	t124/nvbctlib_t124.o \
+	t114/nvbctlib_t114.o \
+	t30/nvbctlib_t30.o \
+	t20/nvbctlib_t20.o
diff --git a/scripts/tegra/aes_ref.c b/scripts/tegra/aes_ref.c
new file mode 100644
index 000000000000..4ae110f9963b
--- /dev/null
+++ b/scripts/tegra/aes_ref.c
@@ -0,0 +1,326 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/* advanced encryption standard
+ * author: karl malbrain, malbrain@yahoo.com
+ */
+
+/*
+This work, including the source code, documentation
+and related data, is placed into the public domain.
+
+The orginal author is Karl Malbrain.
+
+THIS SOFTWARE IS PROVIDED AS-IS WITHOUT WARRANTY
+OF ANY KIND, NOT EVEN THE IMPLIED WARRANTY OF
+MERCHANTABILITY. THE AUTHOR OF THIS SOFTWARE,
+ASSUMES _NO_ RESPONSIBILITY FOR ANY CONSEQUENCE
+RESULTING FROM THE USE, MODIFICATION, OR
+REDISTRIBUTION OF THIS SOFTWARE.
+*/
+
+/*
+ * Modifications by NVIDIA:
+ * - Created nvaes_ref.h header.
+ * - Replaced type definitions with NVIDIA standard types.
+ * - Removed unneeded code that turns this source file into an executable.
+ * - Created function prototypes for some of the functions.
+ * - Reformatted the code to conform to coding conventions.
+ */
+
+#include "nvaes_ref.h"
+
+static void shift_rows(u_int8_t *state);
+static void mix_sub_columns(u_int8_t *state);
+static void add_round_key(u_int32_t *state, u_int32_t *key);
+
+static u_int8_t s_Sbox[256] =
+{	/* forward s-box */
+	0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5,
+	0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
+	0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0,
+	0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
+	0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc,
+	0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
+	0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a,
+	0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
+	0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0,
+	0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
+	0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b,
+	0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
+	0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85,
+	0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
+	0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5,
+	0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
+	0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17,
+	0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
+	0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88,
+	0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
+	0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c,
+	0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
+	0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9,
+	0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
+	0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6,
+	0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
+	0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e,
+	0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
+	0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94,
+	0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
+	0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68,
+	0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16
+};
+
+/* combined Xtimes2[Sbox[]] */
+static u_int8_t s_Xtime2Sbox[256] =
+{
+	0xc6, 0xf8, 0xee, 0xf6, 0xff, 0xd6, 0xde, 0x91,
+	0x60, 0x02, 0xce, 0x56, 0xe7, 0xb5, 0x4d, 0xec,
+	0x8f, 0x1f, 0x89, 0xfa, 0xef, 0xb2, 0x8e, 0xfb,
+	0x41, 0xb3, 0x5f, 0x45, 0x23, 0x53, 0xe4, 0x9b,
+	0x75, 0xe1, 0x3d, 0x4c, 0x6c, 0x7e, 0xf5, 0x83,
+	0x68, 0x51, 0xd1, 0xf9, 0xe2, 0xab, 0x62, 0x2a,
+	0x08, 0x95, 0x46, 0x9d, 0x30, 0x37, 0x0a, 0x2f,
+	0x0e, 0x24, 0x1b, 0xdf, 0xcd, 0x4e, 0x7f, 0xea,
+	0x12, 0x1d, 0x58, 0x34, 0x36, 0xdc, 0xb4, 0x5b,
+	0xa4, 0x76, 0xb7, 0x7d, 0x52, 0xdd, 0x5e, 0x13,
+	0xa6, 0xb9, 0x00, 0xc1, 0x40, 0xe3, 0x79, 0xb6,
+	0xd4, 0x8d, 0x67, 0x72, 0x94, 0x98, 0xb0, 0x85,
+	0xbb, 0xc5, 0x4f, 0xed, 0x86, 0x9a, 0x66, 0x11,
+	0x8a, 0xe9, 0x04, 0xfe, 0xa0, 0x78, 0x25, 0x4b,
+	0xa2, 0x5d, 0x80, 0x05, 0x3f, 0x21, 0x70, 0xf1,
+	0x63, 0x77, 0xaf, 0x42, 0x20, 0xe5, 0xfd, 0xbf,
+	0x81, 0x18, 0x26, 0xc3, 0xbe, 0x35, 0x88, 0x2e,
+	0x93, 0x55, 0xfc, 0x7a, 0xc8, 0xba, 0x32, 0xe6,
+	0xc0, 0x19, 0x9e, 0xa3, 0x44, 0x54, 0x3b, 0x0b,
+	0x8c, 0xc7, 0x6b, 0x28, 0xa7, 0xbc, 0x16, 0xad,
+	0xdb, 0x64, 0x74, 0x14, 0x92, 0x0c, 0x48, 0xb8,
+	0x9f, 0xbd, 0x43, 0xc4, 0x39, 0x31, 0xd3, 0xf2,
+	0xd5, 0x8b, 0x6e, 0xda, 0x01, 0xb1, 0x9c, 0x49,
+	0xd8, 0xac, 0xf3, 0xcf, 0xca, 0xf4, 0x47, 0x10,
+	0x6f, 0xf0, 0x4a, 0x5c, 0x38, 0x57, 0x73, 0x97,
+	0xcb, 0xa1, 0xe8, 0x3e, 0x96, 0x61, 0x0d, 0x0f,
+	0xe0, 0x7c, 0x71, 0xcc, 0x90, 0x06, 0xf7, 0x1c,
+	0xc2, 0x6a, 0xae, 0x69, 0x17, 0x99, 0x3a, 0x27,
+	0xd9, 0xeb, 0x2b, 0x22, 0xd2, 0xa9, 0x07, 0x33,
+	0x2d, 0x3c, 0x15, 0xc9, 0x87, 0xaa, 0x50, 0xa5,
+	0x03, 0x59, 0x09, 0x1a, 0x65, 0xd7, 0x84, 0xd0,
+	0x82, 0x29, 0x5a, 0x1e, 0x7b, 0xa8, 0x6d, 0x2c
+};
+
+/* combined Xtimes3[Sbox[]] */
+static u_int8_t s_Xtime3Sbox[256] =
+{
+	0xa5, 0x84, 0x99, 0x8d, 0x0d, 0xbd, 0xb1, 0x54,
+	0x50, 0x03, 0xa9, 0x7d, 0x19, 0x62, 0xe6, 0x9a,
+	0x45, 0x9d, 0x40, 0x87, 0x15, 0xeb, 0xc9, 0x0b,
+	0xec, 0x67, 0xfd, 0xea, 0xbf, 0xf7, 0x96, 0x5b,
+	0xc2, 0x1c, 0xae, 0x6a, 0x5a, 0x41, 0x02, 0x4f,
+	0x5c, 0xf4, 0x34, 0x08, 0x93, 0x73, 0x53, 0x3f,
+	0x0c, 0x52, 0x65, 0x5e, 0x28, 0xa1, 0x0f, 0xb5,
+	0x09, 0x36, 0x9b, 0x3d, 0x26, 0x69, 0xcd, 0x9f,
+	0x1b, 0x9e, 0x74, 0x2e, 0x2d, 0xb2, 0xee, 0xfb,
+	0xf6, 0x4d, 0x61, 0xce, 0x7b, 0x3e, 0x71, 0x97,
+	0xf5, 0x68, 0x00, 0x2c, 0x60, 0x1f, 0xc8, 0xed,
+	0xbe, 0x46, 0xd9, 0x4b, 0xde, 0xd4, 0xe8, 0x4a,
+	0x6b, 0x2a, 0xe5, 0x16, 0xc5, 0xd7, 0x55, 0x94,
+	0xcf, 0x10, 0x06, 0x81, 0xf0, 0x44, 0xba, 0xe3,
+	0xf3, 0xfe, 0xc0, 0x8a, 0xad, 0xbc, 0x48, 0x04,
+	0xdf, 0xc1, 0x75, 0x63, 0x30, 0x1a, 0x0e, 0x6d,
+	0x4c, 0x14, 0x35, 0x2f, 0xe1, 0xa2, 0xcc, 0x39,
+	0x57, 0xf2, 0x82, 0x47, 0xac, 0xe7, 0x2b, 0x95,
+	0xa0, 0x98, 0xd1, 0x7f, 0x66, 0x7e, 0xab, 0x83,
+	0xca, 0x29, 0xd3, 0x3c, 0x79, 0xe2, 0x1d, 0x76,
+	0x3b, 0x56, 0x4e, 0x1e, 0xdb, 0x0a, 0x6c, 0xe4,
+	0x5d, 0x6e, 0xef, 0xa6, 0xa8, 0xa4, 0x37, 0x8b,
+	0x32, 0x43, 0x59, 0xb7, 0x8c, 0x64, 0xd2, 0xe0,
+	0xb4, 0xfa, 0x07, 0x25, 0xaf, 0x8e, 0xe9, 0x18,
+	0xd5, 0x88, 0x6f, 0x72, 0x24, 0xf1, 0xc7, 0x51,
+	0x23, 0x7c, 0x9c, 0x21, 0xdd, 0xdc, 0x86, 0x85,
+	0x90, 0x42, 0xc4, 0xaa, 0xd8, 0x05, 0x01, 0x12,
+	0xa3, 0x5f, 0xf9, 0xd0, 0x91, 0x58, 0x27, 0xb9,
+	0x38, 0x13, 0xb3, 0x33, 0xbb, 0x70, 0x89, 0xa7,
+	0xb6, 0x22, 0x92, 0x20, 0x49, 0xff, 0x78, 0x7a,
+	0x8f, 0xf8, 0x80, 0x17, 0xda, 0x31, 0xc6, 0xb8,
+	0xc3, 0xb0, 0x77, 0x11, 0xcb, 0xfc, 0xd6, 0x3a
+};
+
+/* exchanges columns in each of 4 rows
+ * row0 - unchanged, row1- shifted left 1,
+ * row2 - shifted left 2 and row3 - shifted left 3
+ */
+static void
+shift_rows(u_int8_t *state)
+{
+	u_int8_t tmp;
+
+	/* just substitute row 0 */
+	state[ 0] = s_Sbox[state[ 0]];
+	state[ 4] = s_Sbox[state[ 4]];
+	state[ 8] = s_Sbox[state[ 8]];
+	state[12] = s_Sbox[state[12]];
+
+	/* rotate row 1 */
+	tmp       = s_Sbox[state[ 1]];
+	state[ 1] = s_Sbox[state[ 5]];
+	state[ 5] = s_Sbox[state[ 9]];
+	state[ 9] = s_Sbox[state[13]];
+	state[13] = tmp;
+
+	/* rotate row 2 */
+	tmp       = s_Sbox[state[ 2]];
+	state[ 2] = s_Sbox[state[10]];
+	state[10] = tmp;
+	tmp       = s_Sbox[state[ 6]];
+	state[ 6] = s_Sbox[state[14]];
+	state[14] = tmp;
+
+	/* rotate row 3 */
+	tmp       = s_Sbox[state[15]];
+	state[15] = s_Sbox[state[11]];
+	state[11] = s_Sbox[state[ 7]];
+	state[ 7] = s_Sbox[state[ 3]];
+	state[ 3] = tmp;
+}
+
+/* recombine and mix each row in a column */
+static void
+mix_sub_columns(u_int8_t *state)
+{
+	u_int8_t tmp[4 * NVAES_STATECOLS];
+
+	/* mixing column 0 */
+	tmp[ 0] = s_Xtime2Sbox[state[ 0]] ^ s_Xtime3Sbox[state[ 5]] ^
+			s_Sbox[state[10]] ^ s_Sbox[state[15]];
+	tmp[ 1] = s_Sbox[state[ 0]] ^ s_Xtime2Sbox[state[ 5]] ^
+			s_Xtime3Sbox[state[10]] ^ s_Sbox[state[15]];
+	tmp[ 2] = s_Sbox[state[ 0]] ^ s_Sbox[state[ 5]] ^
+			s_Xtime2Sbox[state[10]] ^ s_Xtime3Sbox[state[15]];
+	tmp[ 3] = s_Xtime3Sbox[state[ 0]] ^ s_Sbox[state[ 5]] ^
+			s_Sbox[state[10]] ^ s_Xtime2Sbox[state[15]];
+
+	/* mixing column 1 */
+	tmp[ 4] = s_Xtime2Sbox[state[ 4]] ^ s_Xtime3Sbox[state[ 9]] ^
+			s_Sbox[state[14]] ^ s_Sbox[state[ 3]];
+	tmp[ 5] = s_Sbox[state[ 4]] ^ s_Xtime2Sbox[state[ 9]] ^
+			s_Xtime3Sbox[state[14]] ^ s_Sbox[state[ 3]];
+	tmp[ 6] = s_Sbox[state[ 4]] ^ s_Sbox[state[ 9]] ^
+			s_Xtime2Sbox[state[14]] ^ s_Xtime3Sbox[state[ 3]];
+	tmp[ 7] = s_Xtime3Sbox[state[ 4]] ^ s_Sbox[state[ 9]] ^
+			s_Sbox[state[14]] ^ s_Xtime2Sbox[state[ 3]];
+
+	/* mixing column 2 */
+	tmp[ 8] = s_Xtime2Sbox[state[ 8]] ^ s_Xtime3Sbox[state[13]] ^
+			s_Sbox[state[ 2]] ^ s_Sbox[state[ 7]];
+	tmp[ 9] = s_Sbox[state[ 8]] ^ s_Xtime2Sbox[state[13]] ^
+			s_Xtime3Sbox[state[ 2]] ^       s_Sbox[state[ 7]];
+	tmp[10] = s_Sbox[state[ 8]] ^ s_Sbox[state[13]] ^
+			s_Xtime2Sbox[state[ 2]] ^ s_Xtime3Sbox[state[ 7]];
+	tmp[11] = s_Xtime3Sbox[state[ 8]] ^ s_Sbox[state[13]] ^
+			s_Sbox[state[ 2]] ^ s_Xtime2Sbox[state[ 7]];
+
+	/* mixing column 3 */
+	tmp[12] = s_Xtime2Sbox[state[12]] ^ s_Xtime3Sbox[state[ 1]] ^
+			s_Sbox[state[ 6]] ^ s_Sbox[state[11]];
+	tmp[13] = s_Sbox[state[12]] ^ s_Xtime2Sbox[state[ 1]] ^
+			s_Xtime3Sbox[state[ 6]] ^ s_Sbox[state[11]];
+	tmp[14] = s_Sbox[state[12]] ^ s_Sbox[state[ 1]] ^
+			s_Xtime2Sbox[state[ 6]] ^ s_Xtime3Sbox[state[11]];
+	tmp[15] = s_Xtime3Sbox[state[12]] ^ s_Sbox[state[ 1]] ^
+			s_Sbox[state[ 6]] ^ s_Xtime2Sbox[state[11]];
+
+	memcpy (state, tmp, sizeof(tmp));
+}
+
+/* encrypt/decrypt columns of the key
+ * n.b. you can replace this with
+ *      byte-wise xor if you wish.
+ */
+
+static void
+add_round_key(u_int32_t *state, u_int32_t *key)
+{
+	int idx;
+
+	for (idx = 0; idx < 4; idx++)
+		state[idx] ^= key[idx];
+}
+
+static u_int8_t s_Rcon[11] =
+{
+	0x00, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36
+};
+
+/* produce NVAES_STATECOLS bytes for each round */
+void
+nv_aes_expand_key(u_int8_t *key, u_int8_t *expkey)
+{
+	u_int8_t  tmp0, tmp1, tmp2, tmp3, tmp4;
+	u_int32_t idx;
+
+	memcpy(expkey, key, NVAES_KEYCOLS * 4);
+
+	for (idx = NVAES_KEYCOLS;
+	     idx < NVAES_STATECOLS * (NVAES_ROUNDS + 1);
+	     idx++) {
+		tmp0 = expkey[4*idx - 4];
+		tmp1 = expkey[4*idx - 3];
+		tmp2 = expkey[4*idx - 2];
+		tmp3 = expkey[4*idx - 1];
+		if (!(idx % NVAES_KEYCOLS)) {
+			tmp4 = tmp3;
+			tmp3 = s_Sbox[tmp0];
+			tmp0 = s_Sbox[tmp1] ^ s_Rcon[idx/NVAES_KEYCOLS];
+			tmp1 = s_Sbox[tmp2];
+			tmp2 = s_Sbox[tmp4];
+		} else if (NVAES_KEYCOLS > 6 && idx % NVAES_KEYCOLS == 4 ) {
+			tmp0 = s_Sbox[tmp0];
+			tmp1 = s_Sbox[tmp1];
+			tmp2 = s_Sbox[tmp2];
+			tmp3 = s_Sbox[tmp3];
+		}
+
+		expkey[4*idx+0] = expkey[4*idx - 4*NVAES_KEYCOLS + 0] ^ tmp0;
+		expkey[4*idx+1] = expkey[4*idx - 4*NVAES_KEYCOLS + 1] ^ tmp1;
+		expkey[4*idx+2] = expkey[4*idx - 4*NVAES_KEYCOLS + 2] ^ tmp2;
+		expkey[4*idx+3] = expkey[4*idx - 4*NVAES_KEYCOLS + 3] ^ tmp3;
+	}
+}
+
+/* encrypt one 128 bit block */
+void
+nv_aes_encrypt(u_int8_t *in, u_int8_t *expkey, u_int8_t *out)
+{
+	u_int8_t  state[NVAES_STATECOLS * 4];
+	u_int32_t round;
+
+	memcpy(state, in, NVAES_STATECOLS * 4);
+	add_round_key((u_int32_t *)state, (u_int32_t *)expkey);
+
+	for (round = 1; round < NVAES_ROUNDS + 1; round++) {
+		if (round < NVAES_ROUNDS)
+			mix_sub_columns (state);
+		else
+			shift_rows (state);
+
+		add_round_key((u_int32_t *)state, (u_int32_t *)expkey +
+					round * NVAES_STATECOLS);
+	}
+
+	memcpy(out, state, sizeof(state));
+}
diff --git a/scripts/tegra/bct_dump.c b/scripts/tegra/bct_dump.c
new file mode 100644
index 000000000000..dbef91382c60
--- /dev/null
+++ b/scripts/tegra/bct_dump.c
@@ -0,0 +1,296 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#include "cbootimage.h"
+#include "data_layout.h"
+#include "context.h"
+#include "parse.h"
+#include "t20/nvboot_bct_t20.h"
+#include <string.h>
+
+int enable_debug;
+cbootimage_soc_config * g_soc_config;
+
+typedef struct {
+	parse_token id;
+	char const * message;
+} value_data;
+
+static value_data const values[] = {
+	{ token_boot_data_version,   "Version       = 0x%08x;\n" },
+	{ token_block_size_log2,     "BlockSize     = 0x%08x;\n" },
+	{ token_page_size_log2,      "PageSize      = 0x%08x;\n" },
+	{ token_partition_size,      "PartitionSize = 0x%08x;\n" },
+	{ token_odm_data,            "OdmData       = 0x%08x;\n\n" },
+	{ token_bootloader_used,     "# Bootloader used       = %d;\n" },
+	{ token_bootloaders_max,     "# Bootloaders max       = %d;\n" },
+	{ token_bct_size,            "# BCT size              = %d;\n" },
+	{ token_hash_size,           "# Hash size             = %d;\n" },
+	{ token_crypto_offset,       "# Crypto offset         = %d;\n" },
+	{ token_crypto_length,       "# Crypto length         = %d;\n" },
+	{ token_max_bct_search_blks, "# Max BCT search blocks = %d;\n" },
+};
+
+static value_data const bl_values[] = {
+	{ token_bl_version,     "Version      = 0x%08x;\n" },
+	{ token_bl_start_blk,   "Start block  = %d;\n" },
+	{ token_bl_start_page,  "Start page   = %d;\n" },
+	{ token_bl_length,      "Length       = %d;\n" },
+	{ token_bl_load_addr,   "Load address = 0x%08x;\n" },
+	{ token_bl_entry_point, "Entry point  = 0x%08x;\n" },
+	{ token_bl_attribute,   "Attributes   = 0x%08x;\n" },
+};
+
+/*****************************************************************************/
+static void usage(void)
+{
+	printf("Usage: bct_dump bctfile\n");
+	printf("  bctfile   BCT filename to read and display\n");
+}
+/*****************************************************************************/
+static int max_width(field_item const * table)
+{
+	int width = 0;
+	int i;
+
+	for (i = 0; table[i].name != NULL; ++i) {
+		int length = strlen(table[i].name);
+
+		if (width < length)
+			width = length;
+	}
+
+	return width;
+}
+/*****************************************************************************/
+static enum_item const * find_enum_item(build_image_context *context,
+					enum_item const * table,
+					u_int32_t value)
+{
+	int i;
+
+	for (i = 0; table[i].name != NULL; ++i) {
+		if (table[i].value == value)
+			return table + i;
+	}
+
+	return NULL;
+}
+/*****************************************************************************/
+static void display_enum_value(build_image_context *context,
+			       enum_item const * table,
+			       u_int32_t value)
+{
+	enum_item const * e_item = find_enum_item(context, table, value);
+
+	if (e_item)
+		printf("%s", e_item->name);
+	else
+		printf("<UNKNOWN ENUM VALUE (%d)>", value);
+}
+/*****************************************************************************/
+static int display_field_value(build_image_context *context,
+			       field_item const * item,
+			       u_int32_t value)
+{
+	switch (item->type) {
+		case field_type_enum:
+			display_enum_value(context, item->enum_table, value);
+			break;
+
+		case field_type_u32:
+			printf("0x%08x", value);
+			break;
+
+		case field_type_u8:
+			printf("%d", value);
+			break;
+
+		default:
+			printf("<UNKNOWN FIELD TYPE (%d)>", item->type);
+			return 1;
+	}
+
+	return 0;
+}
+/*****************************************************************************/
+int main(int argc, char *argv[])
+{
+	int e;
+	build_image_context context;
+	u_int32_t bootloaders_used;
+	u_int32_t parameters_used;
+	u_int32_t sdram_used;
+	nvboot_dev_type type;
+	u_int32_t data;
+	int i;
+	int j;
+
+	if (argc != 2)
+		usage();
+
+	memset(&context, 0, sizeof(build_image_context));
+	context.bct_filename = argv[1];
+
+	e = read_bct_file(&context);
+	if (e != 0)
+		return e;
+
+	/* Display root values */
+	for (i = 0; i < sizeof(values) / sizeof(values[0]); ++i) {
+		e = g_soc_config->get_value(values[i].id,
+						&data,
+						context.bct);
+
+		if (e != 0)
+			data = -1;
+		else if (values[i].id == token_block_size_log2 ||
+			 values[i].id == token_page_size_log2)
+			data = 1 << data;
+
+		printf(values[i].message, data);
+	}
+
+	/* Display bootloader values */
+	e = g_soc_config->get_value(token_bootloader_used,
+				     &bootloaders_used,
+				     context.bct);
+
+	if ((e == 0) && (bootloaders_used > 0)) {
+		int bl_count = sizeof(bl_values) / sizeof(bl_values[0]);
+
+		printf("#\n"
+		       "# These values are set by cbootimage using the\n"
+		       "# bootloader provided by the Bootloader=...\n"
+		       "# configuration option.\n"
+		       "#\n");
+
+		for (i = 0; i < bootloaders_used; ++i) {
+			for (j = 0; j < bl_count; ++j) {
+				e = g_soc_config->getbl_param(i,
+							       bl_values[j].id,
+							       &data,
+							       context.bct);
+				printf("# Bootloader[%d].", i);
+
+				if (e != 0)
+					data = -1;
+
+				printf(bl_values[j].message, data);
+			}
+		}
+	}
+
+	/* Display flash device parameters */
+	e = g_soc_config->get_value(token_num_param_sets,
+				     &parameters_used,
+				     context.bct);
+
+	for (i = 0; (e == 0) && (i < parameters_used); ++i) {
+		field_item const * device_field_table = NULL;
+		char const * prefix = NULL;
+		field_item const * item;
+
+		e = g_soc_config->get_dev_param(&context,
+							i,
+							token_dev_type,
+							&type);
+		printf("\n"
+		       "DevType[%d] = ", i);
+		display_enum_value(&context, g_soc_config->devtype_table, type);
+		printf(";\n");
+
+		switch (type) {
+			case nvboot_dev_type_spi:
+				device_field_table = g_soc_config->spiflash_table;
+				prefix = "SpiFlashParams";
+				break;
+
+			case nvboot_dev_type_sdmmc:
+				device_field_table = g_soc_config->sdmmc_table;
+				prefix = "SdmmcParams";
+				break;
+
+			case nvboot_dev_type_nand:
+				device_field_table = g_soc_config->nand_table;
+				prefix = "NandParams";
+				break;
+
+			default:
+				device_field_table = NULL;
+				prefix = "";
+				break;
+		}
+
+		if (!device_field_table)
+			continue;
+
+		int width = max_width(device_field_table);
+
+		for (item = device_field_table; item->name != NULL; ++item) {
+			g_soc_config->get_dev_param(&context,
+							i,
+							item->token,
+							&data);
+			printf("DeviceParam[%d].%s.%-*s = ",
+			       i, prefix, width, item->name);
+
+			if (e != 0)
+				printf("<ERROR reading parameter (%d)>", e);
+			else
+				display_field_value(&context, item, data);
+
+			printf(";\n");
+		}
+	}
+
+	/* Display SDRAM parameters */
+	e = g_soc_config->get_value(token_num_sdram_sets,
+				     &sdram_used,
+				     context.bct);
+
+	for (i = 0; (e == 0) && (i < sdram_used); ++i) {
+		field_item const *item;
+
+		printf("\n");
+
+		int width = max_width(g_soc_config->sdram_field_table);
+
+		for (item = g_soc_config->sdram_field_table; item->name != NULL; ++item) {
+			e = g_soc_config->get_sdram_param(&context,
+								i,
+								item->token,
+								&data);
+			printf("SDRAM[%d].%-*s = ", i, width, item->name);
+
+			if (e != 0)
+				printf("<ERROR reading parameter (%d)>", e);
+			else
+				display_field_value(&context, item, data);
+
+			printf(";\n");
+		}
+	}
+
+	/* Clean up memory. */
+	cleanup_context(&context);
+
+	return e;
+}
+/*****************************************************************************/
diff --git a/scripts/tegra/cbootimage.c b/scripts/tegra/cbootimage.c
new file mode 100644
index 000000000000..1332c5f118b5
--- /dev/null
+++ b/scripts/tegra/cbootimage.c
@@ -0,0 +1,247 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * cbootimage.c - Implementation of the cbootimage tool.
+ */
+
+#include <strings.h>
+#include "cbootimage.h"
+#include "crypto.h"
+#include "data_layout.h"
+#include "parse.h"
+#include "set.h"
+#include "context.h"
+#include <getopt.h>
+
+/*
+ * Global data
+ */
+int enable_debug;
+static int help_only; // Only print help & exit
+cbootimage_soc_config * g_soc_config;
+
+/*
+ * Function prototypes
+ */
+int main(int argc, char *argv[]);
+
+struct option cbootcmd[] = {
+	{"help", 0, NULL, 'h'},
+	{"debug", 0, NULL, 'd'},
+	{"generate", 1, NULL, 'g'},
+	{"tegra", 1, NULL, 't'},
+	{"odmdata", 1, NULL, 'o'},
+	{"soc", 1, NULL, 's'},
+	{0, 0, 0, 0},
+};
+
+int
+write_image_file(build_image_context *context)
+{
+	assert(context != NULL);
+
+	return write_block_raw(context);
+}
+
+static void
+usage(void)
+{
+	printf("Usage: cbootimage [options] configfile imagename\n");
+	printf("    options:\n");
+	printf("    -h, --help, -?        Display this message.\n");
+	printf("    -d, --debug           Output debugging information.\n");
+	printf("    -gbct                 Generate the new bct file.\n");
+	printf("    -o<ODM_DATA>          Specify the odm_data(in hex).\n");
+	printf("    -t|--tegra NN         Select target device. Must be one of:\n");
+	printf("                          20, 30, 114, 124.\n");
+	printf("                          Default: 20. This option is deprecated\n");
+	printf("    -s|--soc tegraNN      Select target device. Must be one of:\n");
+	printf("                          tegra20, tegra30, tegra114, tegra124.\n");
+	printf("                          Default: tegra20.\n");
+	printf("    configfile            File with configuration information\n");
+	printf("    imagename             Output image name\n");
+}
+
+static int
+process_command_line(int argc, char *argv[], build_image_context *context)
+{
+	int c;
+
+	context->generate_bct = 0;
+
+	while ((c = getopt_long(argc, argv, "hdg:t:o:s:", cbootcmd, NULL)) != -1) {
+		switch (c) {
+		case 'h':
+			help_only = 1;
+			usage();
+			return 0;
+		case 'd':
+			enable_debug = 1;
+			break;
+		case 'g':
+			if (!strcasecmp("bct", optarg)) {
+				context->generate_bct = 1;
+			} else {
+				printf("Invalid argument!\n");
+				usage();
+				return -EINVAL;
+			}
+			break;
+		case 's':
+			if (strncmp("tegra", optarg, 5)) {
+				printf("Unsupported chipname!\n");
+				usage();
+				return -EINVAL;
+			}
+			optarg += 5;
+			/* Deliberate fall-through */
+		case 't':
+			/* Assign the soc_config based on the chip. */
+			if (!strcasecmp("20", optarg)) {
+				t20_get_soc_config(context, &g_soc_config);
+			} else if (!strcasecmp("30", optarg)) {
+				t30_get_soc_config(context, &g_soc_config);
+			} else if (!strcasecmp("114", optarg)) {
+				t114_get_soc_config(context, &g_soc_config);
+			} else if (!strcasecmp("124", optarg)) {
+				t124_get_soc_config(context, &g_soc_config);
+			} else {
+				printf("Unsupported chipname!\n");
+				usage();
+				return -EINVAL;
+			}
+			break;
+		case 'o':
+			context->odm_data = strtoul(optarg, NULL, 16);
+			break;
+		}
+	}
+
+	if (argc - optind != 2) {
+		printf("Missing configuration and/or image file name.\n");
+		usage();
+		return -EINVAL;
+	}
+
+	/* If SoC is not specified, make the default soc_config to t20. */
+	if (!context->boot_data_version)
+		t20_get_soc_config(context, &g_soc_config);
+
+	/* Open the configuration file. */
+	context->config_file = fopen(argv[optind], "r");
+	if (context->config_file == NULL) {
+		printf("Error opening config file.\n");
+		return -ENODATA;
+	}
+
+	/* Record the output filename */
+	context->image_filename = argv[optind + 1];
+
+	return 0;
+}
+
+int
+main(int argc, char *argv[])
+{
+	int e = 0;
+	build_image_context context;
+
+	memset(&context, 0, sizeof(build_image_context));
+
+	/* Process command line arguments. */
+	if (process_command_line(argc, argv, &context) != 0)
+		return -EINVAL;
+
+	if (help_only)
+		return 1;
+
+	assert(g_soc_config != NULL);
+
+	g_soc_config->get_value(token_bct_size,
+					&context.bct_size,
+					context.bct);
+
+	e = init_context(&context);
+	if (e != 0) {
+		printf("context initialization failed.  Aborting.\n");
+		return e;
+	}
+
+	if (enable_debug) {
+		/* Debugging information... */
+		printf("bct size: %d\n", e == 0 ? context.bct_size : -1);
+	}
+
+	/* Open the raw output file. */
+	context.raw_file = fopen(context.image_filename,
+		                 "w+");
+	if (context.raw_file == NULL) {
+		printf("Error opening raw file %s.\n",
+			context.image_filename);
+		goto fail;
+	}
+
+	/* first, if we aren't generating the bct, read in config file */
+	if (context.generate_bct == 0) {
+		process_config_file(&context, 1);
+	}
+	/* Generate the new bct file */
+	else {
+		/* Initialize the bct memory */
+		init_bct(&context);
+		/* Parse & process the contents of the config file. */
+		process_config_file(&context, 0);
+		/* Update the BCT */
+		begin_update(&context);
+		/* Signing the bct. */
+		e = sign_bct(&context, context.bct);
+		if (e != 0) 
+			printf("Signing BCT failed, error: %d.\n", e);
+
+		fwrite(context.bct, 1, context.bct_size,
+			context.raw_file);
+		printf("New BCT file %s has been successfully generated!\n",
+			context.image_filename);
+		goto fail;
+	}
+
+	/* Peform final signing & encryption of bct. */
+	e = sign_bct(&context, context.bct);
+	if (e != 0) {
+		printf("Signing BCT failed, error: %d.\n", e);
+		goto fail;
+	}
+	/* Write the image file. */
+	/* The image hasn't been written yet. */
+	if (write_image_file(&context) != 0)
+		printf("Error writing image file.\n");
+	else
+		printf("Image file %s has been successfully generated!\n",
+				context.image_filename);
+
+ fail:
+	/* Close the file(s). */
+	if (context.raw_file)
+		fclose(context.raw_file);
+
+	/* Clean up memory. */
+	cleanup_context(&context);
+	return e;
+}
diff --git a/scripts/tegra/cbootimage.h b/scripts/tegra/cbootimage.h
new file mode 100644
index 000000000000..46e3b8b3b7cb
--- /dev/null
+++ b/scripts/tegra/cbootimage.h
@@ -0,0 +1,108 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * cbootimage.h - Definitions for the cbootimage code.
+ */
+
+#ifndef INCLUDED_BUILDIMAGE_H
+#define INCLUDED_BUILDIMAGE_H
+
+#include <sys/types.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <assert.h>
+#include <errno.h>
+#include <math.h>
+
+#define NVBOOT_AES_BLOCK_SIZE_LOG2 4
+#define MAX_BUFFER 200
+#define MAX_STR_LEN	20
+#define MAX_BOOTLOADER_SIZE (16 * 1024 * 1024)
+#define NVBOOT_BOOTDATA_VERSION(a, b) ((((a)&0xffff) << 16) | ((b)&0xffff))
+#define NVBOOT_BAD_BLOCK_TABLE_SIZE 4096
+#define NV_MAX(a, b) (((a) > (b)) ? (a) : (b))
+
+#define BOOTDATA_VERSION_T20		NVBOOT_BOOTDATA_VERSION(0x2, 0x1)
+#define BOOTDATA_VERSION_T30		NVBOOT_BOOTDATA_VERSION(0x3, 0x1)
+#define BOOTDATA_VERSION_T114		NVBOOT_BOOTDATA_VERSION(0x35, 0x1)
+#define BOOTDATA_VERSION_T124		NVBOOT_BOOTDATA_VERSION(0x40, 0x1)
+
+/*
+ * Enumerations
+ */
+
+typedef enum
+{
+	file_type_bl = 0,
+	file_type_bct,
+} file_type;
+
+/*
+ * The main context data structure of cbootimage tool
+ */
+typedef struct build_image_context_rec
+{
+	FILE *config_file;
+	char *image_filename;
+	FILE *raw_file;
+	u_int32_t block_size;
+	u_int32_t block_size_log2;
+	u_int32_t page_size;
+	u_int32_t page_size_log2;
+	u_int32_t pages_per_blk;
+	u_int32_t partition_size;
+	u_int32_t redundancy;
+	u_int32_t version;
+	u_int32_t bct_copy;
+	/*
+	 * Number of blocks at start of device to skip before the BCT.
+	 * This may be used to reserve space for a partition table, for
+	 * example, in order to write the resultant boot image to e.g. an
+	 * SD card while using the remaining space for a user filesystem.
+	 */
+	u_int32_t pre_bct_pad_blocks;
+	/* Allocation data. */
+	struct blk_data_rec *memory; /* Representation of memory */
+	/* block number for the BCT block */
+	u_int32_t next_bct_blk;
+
+	char *newbl_filename;
+	u_int32_t newbl_load_addr;
+	u_int32_t newbl_entry_point;
+	u_int32_t newbl_attr;
+	u_int8_t generate_bct;
+	u_int8_t *bct;
+
+	char *bct_filename;
+	u_int32_t last_bl_blk;
+	u_int32_t bct_size; /* The BCT file size */
+	u_int32_t boot_data_version; /* The boot data version of BCT */
+	u_int8_t bct_init; /* The flag for the memory allocation of bct */
+	u_int32_t odm_data; /* The odm data value */
+} build_image_context;
+
+/* Function prototypes */
+
+int write_image_file(build_image_context *context);
+
+/* Global data */
+extern int enable_debug;
+
+#endif /* #ifndef INCLUDED_BUILDIMAGE_H */
diff --git a/scripts/tegra/context.c b/scripts/tegra/context.c
new file mode 100644
index 000000000000..25b322f41bd1
--- /dev/null
+++ b/scripts/tegra/context.c
@@ -0,0 +1,42 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#include "cbootimage.h"
+#include "data_layout.h"
+#include "set.h"
+
+void
+cleanup_context(build_image_context *context)
+{
+	destroy_block_list(context->memory);
+	free(context->bct);
+}
+
+int
+init_context(build_image_context *context)
+{
+	/* Set defaults */
+	context->memory = new_block_list();
+	context->next_bct_blk = 0; /* Default to block 0 */
+	context_set_value(context, token_redundancy, 1);
+	context_set_value(context, token_version, 1);
+	context_set_value(context, token_bct_copy, 2);
+
+	return 0;
+}
diff --git a/scripts/tegra/context.h b/scripts/tegra/context.h
new file mode 100644
index 000000000000..6e724718b640
--- /dev/null
+++ b/scripts/tegra/context.h
@@ -0,0 +1,28 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#ifndef INCLUDED_CONTEXT_H
+#define INCLUDED_CONTEXT_H
+
+#include "cbootimage.h"
+
+int init_context(build_image_context *context);
+void cleanup_context(build_image_context *context);
+
+#endif /* #ifndef INCLUDED_CONTEXT_H */
diff --git a/scripts/tegra/crypto.c b/scripts/tegra/crypto.c
new file mode 100644
index 000000000000..99e9f085763c
--- /dev/null
+++ b/scripts/tegra/crypto.c
@@ -0,0 +1,299 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * crypto.c - Cryptography support
+ */
+#include "crypto.h"
+#include "parse.h"
+#include "nvaes_ref.h"
+#include <stdio.h>
+
+/* Local function declarations */
+static void
+apply_cbc_chain_data(u_int8_t *cbc_chain_data,
+			u_int8_t *src,
+			u_int8_t *dst);
+
+static void
+generate_key_schedule(u_int8_t *key, u_int8_t *key_schedule);
+
+static void
+encrypt_object( u_int8_t	*key_schedule,
+		u_int8_t	*src,
+		u_int8_t	*dst,
+		u_int32_t	num_aes_blocks);
+
+static int
+encrypt_and_sign(u_int8_t		*key,
+		 u_int8_t		*src,
+		 u_int32_t		length,
+		 u_int8_t		*sig_dst);
+
+u_int8_t enable_debug_crypto = 0;
+
+/* Implementation */
+static u_int8_t zero_key[16] = { 0, 0, 0, 0, 0, 0, 0, 0,
+				0, 0, 0, 0, 0, 0, 0, 0 };
+
+static void
+print_vector(char *name, u_int32_t num_bytes, u_int8_t *data)
+{
+	u_int32_t i;
+
+	printf("%s [%d] @%p", name, num_bytes, data);
+	for (i=0; i<num_bytes; i++) {
+		if ( i % 16 == 0 )
+			printf(" = ");
+		printf("%02x", data[i]);
+		if ( (i+1) % 16 != 0 )
+			printf(" ");
+	}
+	printf("\n");
+}
+
+
+static void
+apply_cbc_chain_data(u_int8_t *cbc_chain_data,
+			u_int8_t *src,
+			u_int8_t *dst)
+{
+	int i;
+
+	for (i = 0; i < 16; i++) {
+		*dst++ = *src++ ^ *cbc_chain_data++;
+	}
+}
+
+static void
+generate_key_schedule(u_int8_t *key, u_int8_t *key_schedule)
+{
+	/*
+	 * The only need for a key is for signing/checksum purposes, so
+	 * expand a key of 0's.
+	 */
+	nv_aes_expand_key(zero_key, key_schedule);
+}
+
+static void
+encrypt_object(u_int8_t	*key_schedule,
+		u_int8_t	*src,
+		u_int8_t	*dst,
+		u_int32_t	num_aes_blocks)
+{
+	u_int32_t i;
+	u_int8_t *cbc_chain_data;
+	u_int8_t  tmp_data[KEY_LENGTH];
+
+	cbc_chain_data = zero_key; /* Convenient array of 0's for IV */
+
+	for (i = 0; i < num_aes_blocks; i++) {
+		if (enable_debug_crypto) {
+			printf("encrypt_object: block %d of %d\n", i,
+							num_aes_blocks);
+			print_vector("AES Src", KEY_LENGTH, src);
+		}
+
+		/* Apply the chain data */
+		apply_cbc_chain_data(cbc_chain_data, src, tmp_data);
+
+		if (enable_debug_crypto)
+			print_vector("AES Xor", KEY_LENGTH,
+							tmp_data);
+
+		/* encrypt the AES block */
+		nv_aes_encrypt(tmp_data, key_schedule, dst);
+
+		if (enable_debug_crypto)
+			print_vector("AES Dst", KEY_LENGTH, dst);
+		/* Update pointers for next loop. */
+		cbc_chain_data = dst;
+		src += KEY_LENGTH;
+		dst += KEY_LENGTH;
+	}
+}
+
+static void
+left_shift_vector(u_int8_t *in,
+		  u_int8_t	*out,
+		  u_int32_t size)
+{
+	u_int32_t i;
+	u_int8_t carry = 0;
+
+	for (i=0; i<size; i++) {
+		u_int32_t j = size-1-i;
+
+		out[j] = (in[j] << 1) | carry;
+		carry = in[j] >> 7; /* get most significant bit */
+	}
+}
+
+static void
+sign_objext(
+	u_int8_t	*key,
+	u_int8_t	*key_schedule,
+	u_int8_t	*src,
+	u_int8_t	*dst,
+	u_int32_t	num_aes_blocks)
+{
+	u_int32_t i;
+	u_int8_t *cbc_chain_data;
+
+	u_int8_t	l[KEY_LENGTH];
+	u_int8_t	k1[KEY_LENGTH];
+	u_int8_t	tmp_data[KEY_LENGTH];
+
+	cbc_chain_data = zero_key; /* Convenient array of 0's for IV */
+
+	/* compute k1 constant needed by AES-CMAC calculation */
+
+	for (i=0; i<KEY_LENGTH; i++)
+		tmp_data[i] = 0;
+
+	encrypt_object(key_schedule, tmp_data, l, 1);
+
+	if (enable_debug_crypto)
+		print_vector("AES(key, nonce)", KEY_LENGTH, l);
+
+	left_shift_vector(l, k1, sizeof(l));
+
+	if (enable_debug_crypto)
+		print_vector("L", KEY_LENGTH, l);
+
+	if ( (l[0] >> 7) != 0 ) /* get MSB of L */
+		k1[KEY_LENGTH-1] ^= AES_CMAC_CONST_RB;
+
+	if (enable_debug_crypto)
+		print_vector("K1", KEY_LENGTH, k1);
+
+	/* compute the AES-CMAC value */
+	for (i = 0; i < num_aes_blocks; i++) {
+		/* Apply the chain data */
+		apply_cbc_chain_data(cbc_chain_data, src, tmp_data);
+
+		/* for the final block, XOR k1 into the IV */
+		if ( i == num_aes_blocks-1 )
+			apply_cbc_chain_data(tmp_data, k1, tmp_data);
+
+		/* encrypt the AES block */
+		nv_aes_encrypt(tmp_data, key_schedule, (u_int8_t*)dst);
+
+		if (enable_debug_crypto) {
+			printf("sign_objext: block %d of %d\n", i,
+							num_aes_blocks);
+			print_vector("AES-CMAC Src", KEY_LENGTH, src);
+			print_vector("AES-CMAC Xor", KEY_LENGTH, tmp_data);
+			print_vector("AES-CMAC Dst",
+				KEY_LENGTH,
+				(u_int8_t*)dst);
+		}
+
+		/* Update pointers for next loop. */
+		cbc_chain_data = (u_int8_t*)dst;
+		src += KEY_LENGTH;
+	}
+
+	if (enable_debug_crypto)
+		print_vector("AES-CMAC Hash", KEY_LENGTH, (u_int8_t*)dst);
+}
+
+static int
+encrypt_and_sign(u_int8_t		*key,
+		u_int8_t		*src,
+		u_int32_t		length,
+		u_int8_t		*sig_dst)
+{
+	u_int32_t	num_aes_blocks;
+	u_int8_t	key_schedule[4*NVAES_STATECOLS*(NVAES_ROUNDS+1)];
+
+	if (enable_debug_crypto) {
+		printf("encrypt_and_sign: length = %d\n", length);
+		print_vector("AES key", KEY_LENGTH, key);
+	}
+
+	generate_key_schedule(key, key_schedule);
+
+	num_aes_blocks = ICEIL(length, KEY_LENGTH);
+
+	if (enable_debug_crypto)
+		printf("encrypt_and_sign: begin signing\n");
+
+	/* encrypt the data, overwriting the result in signature. */
+	sign_objext(key, key_schedule, src, sig_dst, num_aes_blocks);
+
+	if (enable_debug_crypto)
+		printf("encrypt_and_sign: end signing\n");
+
+	return 0;
+}
+
+int
+sign_data_block(u_int8_t *source,
+		u_int32_t length,
+		u_int8_t *signature)
+{
+	return encrypt_and_sign(zero_key,
+				source,
+				length,
+				signature);
+}
+
+int
+sign_bct(build_image_context *context,
+		u_int8_t *bct)
+{
+	u_int32_t Offset;
+	u_int32_t length;
+	u_int32_t hash_size;
+	u_int8_t *hash_buffer = NULL;
+	int e = 0;
+
+	assert(bct != NULL);
+
+	if (g_soc_config->get_value(token_hash_size,
+					&hash_size,
+					bct) != 0)
+		return -ENODATA;
+	if (g_soc_config->get_value(token_crypto_offset,
+	 	 	 	 	&Offset,
+					bct) != 0)
+		return -ENODATA;
+	if (g_soc_config->get_value(token_crypto_length,
+					&length,
+					bct) != 0)
+		return -ENODATA;
+
+	hash_buffer = calloc(1, hash_size);
+	if (hash_buffer == NULL)
+		return -ENOMEM;
+	e = sign_data_block(bct + Offset, length, hash_buffer);
+	if (e != 0)
+		goto fail;
+	e = g_soc_config->set_data(token_crypto_hash,
+						hash_buffer,
+						hash_size,
+						bct);
+	if (e != 0)
+		goto fail;
+
+ fail:
+	free(hash_buffer);
+	return e;
+}
diff --git a/scripts/tegra/crypto.h b/scripts/tegra/crypto.h
new file mode 100644
index 000000000000..d7151e0cd191
--- /dev/null
+++ b/scripts/tegra/crypto.h
@@ -0,0 +1,47 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * crypto.h - Definitions for the crypto support.
+ */
+
+#ifndef INCLUDED_CRYPTO_H_N
+#define INCLUDED_CRYPTO_H_N
+
+#include "cbootimage.h"
+
+/* lengths, in bytes */
+#define KEY_LENGTH (128/8)
+
+#define ICEIL(a, b) (((a) + (b) - 1)/(b))
+
+#define AES_CMAC_CONST_RB 0x87  // from RFC 4493, Figure 2.2
+
+/* Function prototypes */
+
+int
+sign_bct(build_image_context *context,
+                  u_int8_t *bct);
+
+int
+sign_data_block(u_int8_t *source,
+		u_int32_t length,
+		u_int8_t *signature);
+
+#endif /* #ifndef INCLUDED_CRYPTO_H */
diff --git a/scripts/tegra/data_layout.c b/scripts/tegra/data_layout.c
new file mode 100644
index 000000000000..ba3361ae65db
--- /dev/null
+++ b/scripts/tegra/data_layout.c
@@ -0,0 +1,898 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * data_layout.c - Code to manage the layout of data in the boot device.
+ *
+ */
+
+#include "data_layout.h"
+#include "cbootimage.h"
+#include "crypto.h"
+#include "set.h"
+#include "context.h"
+#include "parse.h"
+#include <sys/param.h>
+
+typedef struct blk_data_rec
+{
+	u_int32_t blk_number;
+	u_int32_t pages_used; /* pages always used starting from 0. */
+	u_int8_t *data;
+
+	/* Pointer to ECC errors? */
+
+	struct blk_data_rec *next;
+} block_data;
+
+/* Function prototypes */
+static block_data
+*new_block(u_int32_t blk_number, u_int32_t block_size);
+static block_data
+*find_block(u_int32_t blk_number, block_data  *block_list);
+static block_data
+*add_block(u_int32_t blk_number, block_data **block_list,
+			u_int32_t block_size);
+static int
+erase_block(build_image_context *context, u_int32_t blk_number);
+
+static int
+write_page(build_image_context *context,
+			u_int32_t blk_number,
+			u_int32_t page_number,
+			u_int8_t *data);
+
+static void
+insert_padding(u_int8_t *data, u_int32_t length);
+
+static void
+write_padding(u_int8_t *data, u_int32_t length);
+
+static int write_bct(build_image_context *context,
+		u_int32_t block,
+		u_int32_t bct_slot);
+
+static void
+set_bl_data(build_image_context *context,
+			u_int32_t instance,
+			u_int32_t start_blk,
+			u_int32_t start_page,
+			u_int32_t length);
+
+static int write_bootloaders(build_image_context *context);
+
+static void find_new_bct_blk(build_image_context *context);
+static int finish_update(build_image_context *context);
+
+u_int32_t
+iceil_log2(u_int32_t a, u_int32_t b)
+{
+	return (a + (1 << b) - 1) >> b;
+}
+
+/* Returns the smallest power of 2 >= a */
+u_int32_t
+ceil_log2(u_int32_t a)
+{
+	u_int32_t result;
+
+	result = log2(a);
+	if ((1UL << result) < a)
+		result++;
+
+	return result;
+}
+
+static block_data *new_block(u_int32_t blk_number, u_int32_t block_size)
+{
+	block_data *new_block = malloc(sizeof(block_data));
+	if (new_block == NULL)
+		return NULL;
+
+	new_block->blk_number = blk_number;
+	new_block->pages_used = 0;
+	new_block->data = malloc(block_size);
+	if (new_block->data == NULL) {
+		free(new_block);
+		return NULL;
+	}
+	new_block->next = NULL;
+
+	memset(new_block->data, 0, block_size);
+
+	return new_block;
+}
+
+block_data *new_block_list(void)
+{
+	return NULL;
+}
+
+void destroy_block_list(block_data *block_list)
+{
+	block_data *next;
+
+	while (block_list) {
+		next = block_list->next;
+		free(block_list->data);
+		free(block_list);
+		block_list = next;
+	}
+}
+
+static block_data *find_block(u_int32_t blk_number, block_data  *block_list)
+{
+	while (block_list) {
+		if (block_list->blk_number == blk_number)
+			return block_list;
+
+		block_list = block_list->next;
+	}
+
+	return NULL;
+}
+
+/* Returns pointer to block after adding it to block_list, if needed. */
+static block_data *add_block(u_int32_t blk_number,
+		block_data **block_list,
+		u_int32_t block_size)
+{
+	block_data *block = find_block(blk_number,*block_list);
+	block_data *parent;
+
+	if (block == NULL) {
+		block = new_block(blk_number, block_size);
+		if (block == NULL)
+			return block;
+
+		/* Insert block into the list */
+		if ((*block_list == NULL) ||
+			(blk_number < (*block_list)->blk_number)) {
+			block->next = *block_list;
+			*block_list = block;
+		} else {
+			/* Search for the correct place to insert the block. */
+			parent = *block_list;
+			while (parent->next != NULL &&
+				parent->next->blk_number < blk_number) {
+				parent = parent->next;
+			}
+
+			block->next = parent->next;
+			parent->next = block;
+		}
+	}
+
+	return block;
+}
+
+static int
+erase_block(build_image_context *context, u_int32_t blk_number)
+{
+	block_data   *block;
+
+	assert(context != NULL);
+
+	block = add_block(blk_number, &(context->memory), context->block_size);
+
+	if (block == NULL)
+		return -ENOMEM;
+	if (block->data == NULL)
+		return -ENOMEM;
+
+	memset(block->data, 0, context->block_size);
+	block->pages_used = 0;
+	return 0;
+}
+
+static int
+write_page(build_image_context *context,
+	u_int32_t blk_number,
+	u_int32_t page_number,
+	u_int8_t *data)
+{
+	block_data *block;
+	u_int8_t *page_ptr;
+
+	assert(context);
+
+	block = add_block(blk_number, &(context->memory), context->block_size);
+
+	if (block == NULL)
+		return -ENOMEM;
+	if (block->data == NULL)
+		return -ENOMEM;
+	assert(((page_number + 1) * context->page_size)
+			<= context->block_size);
+
+	if (block->pages_used != page_number) {
+		printf("Warning: Writing page in block out of order.\n");
+		printf("     block=%d  page=%d\n", blk_number, page_number);
+	}
+
+	page_ptr = block->data + (page_number * context->page_size);
+	memcpy(page_ptr, data, context->page_size);
+	if (block->pages_used < (page_number+1))
+		block->pages_used = page_number+1;
+	return 0;
+}
+
+static void
+insert_padding(u_int8_t *data, u_int32_t length)
+{
+	u_int32_t aes_blks;
+	u_int32_t remaining;
+
+	aes_blks = iceil_log2(length, NVBOOT_AES_BLOCK_SIZE_LOG2);
+	remaining = (aes_blks << NVBOOT_AES_BLOCK_SIZE_LOG2) - length;
+
+	write_padding(data + length, remaining);
+}
+
+static void
+write_padding(u_int8_t *p, u_int32_t remaining)
+{
+	u_int8_t value = 0x80;
+
+	while (remaining) {
+		*p++ = value;
+		remaining--;
+		value = 0x00;
+	}
+}
+
+static int
+write_bct(build_image_context *context,
+	u_int32_t block,
+	u_int32_t bct_slot)
+{
+	u_int32_t pagesremaining;
+	u_int32_t page;
+	u_int32_t pages_per_bct;
+	u_int8_t *buffer;
+	u_int8_t *data;
+	int err = 0;
+
+	assert(context);
+
+	pages_per_bct = iceil_log2(context->bct_size, context->page_size_log2);
+	pagesremaining = pages_per_bct;
+	page = bct_slot * pages_per_bct;
+
+	/* Create a local copy of the BCT data */
+	buffer = malloc(pages_per_bct * context->page_size);
+	if (buffer == NULL)
+		return -ENOMEM;
+	memset(buffer, 0, pages_per_bct * context->page_size);
+
+	memcpy(buffer, context->bct, context->bct_size);
+
+	insert_padding(buffer, context->bct_size);
+
+	/* Encrypt and compute hash */
+	err = sign_bct(context, buffer);
+	if (err != 0)
+		goto fail;
+
+	/* Write the BCT data to the storage device, picking up ECC errors */
+	data = buffer;
+	while (pagesremaining > 0) {
+		err = write_page(context, block, page, data);
+		if (err != 0)
+			goto fail;
+		page++;
+		pagesremaining--;
+		data += context->page_size;
+	}
+fail:
+	/* Cleanup */
+	free(buffer);
+	return err;
+}
+
+#define SET_BL_FIELD(instance, field, value)                \
+do {                                                        \
+	g_soc_config->setbl_param(instance,           \
+		token_bl_##field,                           \
+			&(value),                           \
+			context->bct);                      \
+} while (0);
+
+#define GET_BL_FIELD(instance, field, ptr)                  \
+g_soc_config->getbl_param(instance,                   \
+		token_bl_##field,                           \
+			ptr,                                \
+			context->bct);
+
+#define COPY_BL_FIELD(from, to, field)                      \
+do {                                                        \
+	u_int32_t v;                                        \
+	GET_BL_FIELD(from, field, &v);                      \
+	SET_BL_FIELD(to,   field,  v);                      \
+} while (0);
+
+static void
+set_bl_data(build_image_context *context,
+		u_int32_t instance,
+		u_int32_t start_blk,
+		u_int32_t start_page,
+		u_int32_t length)
+{
+	assert(context);
+
+	SET_BL_FIELD(instance, version, context->version);
+	SET_BL_FIELD(instance, start_blk, start_blk);
+	SET_BL_FIELD(instance, start_page, start_page);
+	SET_BL_FIELD(instance, length, length);
+	SET_BL_FIELD(instance, load_addr, context->newbl_load_addr);
+	SET_BL_FIELD(instance, entry_point, context->newbl_entry_point);
+	SET_BL_FIELD(instance, attribute, context->newbl_attr);
+}
+
+/*
+ * Load the bootloader image then update it with the information
+ * from config file.
+ * In the interest of expediency, all BL's allocated from bottom to top start
+ * at page 0 of a block, and all BL's allocated from top to bottom end at
+ * the end of a block.
+ *
+ * @param context		The main context pointer
+ * @return 0 for success
+ */
+static int
+write_bootloaders(build_image_context *context)
+{
+	u_int32_t i;
+	u_int32_t j;
+	u_int32_t bl_instance;
+	u_int32_t bl_move_count = 0;
+	u_int32_t bl_move_remaining;
+	u_int32_t current_blk;
+	u_int32_t current_page;
+	u_int32_t  pages_in_bl;
+	u_int8_t  *bl_storage; /* Holds the Bl after reading */
+	u_int8_t  *buffer;	/* Holds the Bl for writing */
+	u_int8_t  *src;	/* Scans through the Bl during writing */
+	u_int32_t  bl_actual_size; /* In bytes */
+	u_int32_t  pagesremaining;
+	u_int32_t  virtual_blk;
+	u_int32_t  pages_per_blk;
+	u_int32_t  bl_0_version;
+	u_int32_t  bl_used;
+	u_int8_t  *hash_buffer;
+	u_int32_t  hash_size;
+	u_int32_t  bootloaders_max;
+	file_type bl_filetype = file_type_bl;
+	int err = 0;
+
+	assert(context);
+
+	pages_per_blk = 1 << (context->block_size_log2
+			- context->page_size_log2);
+
+	g_soc_config->get_value(token_hash_size,
+			&hash_size, context->bct);
+	g_soc_config->get_value(token_bootloaders_max,
+			&bootloaders_max, context->bct);
+
+	hash_buffer = calloc(1, hash_size);
+	if (hash_buffer == NULL)
+		return -ENOMEM;
+
+	if (enable_debug) {
+		printf("write_bootloaders()\n");
+		printf("  redundancy = %d\n", context->redundancy);
+	}
+
+	/* Make room for the Bl(s) in the BCT. */
+
+	/* Determine how many to move.
+	 * Note that this code will count Bl[0] only if there is already
+	 * a BL in the device.
+	 */
+	GET_BL_FIELD(0, version, &bl_0_version);
+	g_soc_config->get_value(token_bootloader_used,
+			&bl_used, context->bct);
+	for (bl_instance = 0; bl_instance < bl_used; bl_instance++) {
+		u_int32_t bl_version;
+		GET_BL_FIELD(bl_instance, version, &bl_version);
+		if (bl_version == bl_0_version)
+			bl_move_count++;
+	}
+
+	/* Adjust the move count, if needed, to avoid overflowing the BL table.
+	 * This can happen due to too much redundancy.
+	 */
+	bl_move_count = MIN(bl_move_count,
+			bootloaders_max - context->redundancy);
+
+	/* Move the Bl entries down. */
+	bl_move_remaining = bl_move_count;
+	while (bl_move_remaining > 0) {
+		u_int32_t  inst_from = bl_move_remaining - 1;
+		u_int32_t  inst_to   =
+			bl_move_remaining + context->redundancy - 1;
+
+		COPY_BL_FIELD(inst_from, inst_to, version);
+		COPY_BL_FIELD(inst_from, inst_to, start_blk);
+		COPY_BL_FIELD(inst_from, inst_to, start_page);
+		COPY_BL_FIELD(inst_from, inst_to, length);
+		COPY_BL_FIELD(inst_from, inst_to, load_addr);
+		COPY_BL_FIELD(inst_from, inst_to, entry_point);
+		COPY_BL_FIELD(inst_from, inst_to, attribute);
+
+		g_soc_config->getbl_param(inst_from,
+			token_bl_crypto_hash,
+			(u_int32_t*)hash_buffer,
+			context->bct);
+		g_soc_config->setbl_param(inst_to,
+			token_bl_crypto_hash,
+			(u_int32_t*)hash_buffer,
+			context->bct);
+		bl_move_remaining--;
+	}
+
+	/* Read the BL into memory. */
+	if (read_from_image(context->newbl_filename,
+		&bl_storage,
+		&bl_actual_size,
+		bl_filetype) == 1) {
+		printf("Error reading Bootloader %s.\n",
+			context->newbl_filename);
+		exit(1);
+	}
+
+	pages_in_bl = iceil_log2(bl_actual_size, context->page_size_log2);
+
+	current_blk = context->next_bct_blk;
+	current_page  = 0;
+	for (bl_instance = 0; bl_instance < context->redundancy;
+					bl_instance++) {
+
+		pagesremaining = pages_in_bl;
+		/* Advance to the next block if needed. */
+		if (current_page > 0) {
+			current_blk++;
+			current_page = 0;
+		}
+
+		virtual_blk = 0;
+
+		while (pagesremaining > 0) {
+			/* Update the bad block table with relative
+			  * bad blocks.
+			  */
+			if (virtual_blk == 0) {
+				set_bl_data(context,
+					bl_instance,
+					current_blk,
+					current_page,
+					bl_actual_size);
+			}
+
+			if (pagesremaining > pages_per_blk) {
+				current_blk++;
+				virtual_blk++;
+				pagesremaining -= pages_per_blk;
+			} else {
+				current_page = pagesremaining;
+				pagesremaining = 0;
+			}
+		}
+	}
+
+	/* Scan forwards to write each copy. */
+	for (bl_instance = 0; bl_instance < context->redundancy;
+					bl_instance++) {
+
+		/* Create a local copy of the BCT data */
+		buffer = malloc(pages_in_bl * context->page_size);
+		if (buffer == NULL)
+			return -ENOMEM;
+
+		memset(buffer, 0, pages_in_bl * context->page_size);
+		memcpy(buffer, bl_storage, bl_actual_size);
+		insert_padding(buffer, bl_actual_size);
+
+		pagesremaining = pages_in_bl;
+
+		GET_BL_FIELD(bl_instance, start_blk, &current_blk);
+		GET_BL_FIELD(bl_instance, start_page,  &current_page);
+
+		/* Encrypt and compute hash */
+		sign_data_block(buffer,
+				bl_actual_size,
+				hash_buffer);
+		g_soc_config->setbl_param(bl_instance,
+				token_bl_crypto_hash,
+				(u_int32_t*)hash_buffer,
+				context->bct);
+
+		/* Write the BCT data to the storage device,
+		 * picking up ECC errors
+		 */
+		src = buffer;
+
+		/* Write pages as we go. */
+		virtual_blk = 0;
+		while (pagesremaining) {
+			if (current_page == 0) {
+				/* Erase the block before writing into it. */
+				erase_block(context, current_blk);
+			}
+
+			err = write_page(context,
+				current_blk, current_page, src);
+			if (err != 0)
+				goto fail;
+			pagesremaining--;
+			src += context->page_size;
+			current_page++;
+			if (current_page >= pages_per_blk) {
+				current_page = 0;
+				current_blk++;
+				virtual_blk++;
+			}
+			context->last_bl_blk = current_blk;
+		}
+		free(buffer);
+	}
+
+	g_soc_config->set_value(token_bootloader_used,
+			context->redundancy + bl_move_count,
+			context->bct);
+
+	if (enable_debug) {
+		for (i = 0; i < bootloaders_max; i++) {
+			u_int32_t version;
+			u_int32_t start_blk;
+			u_int32_t start_page;
+			u_int32_t length;
+			u_int32_t load_addr;
+			u_int32_t entry_point;
+
+			GET_BL_FIELD(i, version,     &version);
+			GET_BL_FIELD(i, start_blk,  &start_blk);
+			GET_BL_FIELD(i, start_page,   &start_page);
+			GET_BL_FIELD(i, length,      &length);
+			GET_BL_FIELD(i, load_addr, &load_addr);
+			GET_BL_FIELD(i, entry_point,  &entry_point);
+
+			printf("%sBL[%d]: %d %04d %04d %04d 0x%08x 0x%08x k=",
+				i < bl_used ? "  " : "**",
+				i,
+				version,
+				start_blk,
+				start_page,
+				length,
+				load_addr,
+				entry_point);
+
+			g_soc_config->getbl_param(i,
+				token_bl_crypto_hash,
+				(u_int32_t*)hash_buffer,
+				context->bct);
+			for (j = 0; j < hash_size / 4; j++) {
+				printf("%08x",
+					*((u_int32_t*)(hash_buffer + 4*j)));
+			}
+			printf("\n");
+		}
+	}
+	free(bl_storage);
+	free(hash_buffer);
+	return 0;
+
+fail:
+	/* Cleanup. */
+	free(buffer);
+	free(bl_storage);
+	free(hash_buffer);
+	printf("Write bootloader failed, error: %d.\n", err);
+	return err;
+}
+
+void
+update_context(struct build_image_context_rec *context)
+{
+	g_soc_config->get_value(token_partition_size,
+			&context->partition_size,
+			context->bct);
+	g_soc_config->get_value(token_page_size_log2,
+			&context->page_size_log2,
+			context->bct);
+	g_soc_config->get_value(token_block_size_log2,
+			&context->block_size_log2,
+			context->bct);
+	g_soc_config->get_value(token_odm_data,
+			&context->odm_data,
+			context->bct);
+
+	context->page_size = 1 << context->page_size_log2;
+	context->block_size = 1 << context->block_size_log2;
+	context->pages_per_blk = 1 << (context->block_size_log2 -
+                                           context->page_size_log2);
+}
+
+/*
+ * Allocate and initialize the memory for bct data.
+ *
+ * @param context		The main context pointer
+ * @return 0 for success
+ */
+int
+init_bct(struct build_image_context_rec *context)
+{
+	/* Allocate space for the bct.	 */
+	context->bct = malloc(context->bct_size);
+
+	if (context->bct == NULL)
+		return -ENOMEM;
+
+	memset(context->bct, 0, context->bct_size);
+	context->bct_init = 1;
+
+	return 0;
+}
+
+/*
+ * Read the bct data from given file to allocated memory.
+ * Assign the global parse interface to corresponding hardware interface
+ *   according to the boot data version in bct file.
+ *
+ * @param context		The main context pointer
+ * @return 0 for success
+ */
+int
+read_bct_file(struct build_image_context_rec *context)
+{
+	u_int8_t  *bct_storage; /* Holds the Bl after reading */
+	u_int32_t  bct_actual_size; /* In bytes */
+	file_type bct_filetype = file_type_bct;
+	int err = 0;
+
+	if (read_from_image(context->bct_filename,
+		&bct_storage,
+		&bct_actual_size,
+		bct_filetype) == 1) {
+		printf("Error reading bct file %s.\n", context->bct_filename);
+		exit(1);
+	}
+	context->bct_size = bct_actual_size;
+	if (context->bct_init != 1)
+		err = init_bct(context);
+	if (err != 0) {
+		printf("Context initialization failed.  Aborting.\n");
+		return err;
+	}
+	memcpy(context->bct, bct_storage, context->bct_size);
+	free(bct_storage);
+
+	/* get proper soc_config pointer by polling each supported chip */
+	if (if_bct_is_t20_get_soc_config(context, &g_soc_config))
+		return 0;
+	if (if_bct_is_t30_get_soc_config(context, &g_soc_config))
+		return 0;
+	if (if_bct_is_t114_get_soc_config(context, &g_soc_config))
+		return 0;
+	if (if_bct_is_t124_get_soc_config(context, &g_soc_config))
+		return 0;
+
+	return ENODATA;
+}
+/*
+ * Update the next_bct_blk and make it point to the next
+ * new blank block according to bct_copy given.
+ *
+ * @param context		The main context pointer
+ */
+static void
+find_new_bct_blk(build_image_context *context)
+{
+	u_int32_t max_bct_search_blks;
+
+	assert(context);
+
+	g_soc_config->get_value(token_max_bct_search_blks,
+			&max_bct_search_blks, context->bct);
+
+	if (context->next_bct_blk > max_bct_search_blks) {
+		printf("Error: Unable to locate a journal block.\n");
+		exit(1);
+	}
+	context->next_bct_blk++;
+}
+
+/*
+ * Initialization before bct and bootloader update.
+ * Find the new blank block and erase it.
+ *
+ * @param context		The main context pointer
+ * @return 0 for success
+ */
+int
+begin_update(build_image_context *context)
+{
+	u_int32_t hash_size;
+	u_int32_t reserved_size;
+	u_int32_t reserved_offset;
+	int err = 0;
+	int i;
+
+	assert(context);
+
+	/* Ensure that the BCT block & page data is current. */
+	if (enable_debug) {
+		u_int32_t block_size_log2;
+		u_int32_t page_size_log2;
+
+		g_soc_config->get_value(token_block_size_log2,
+			&block_size_log2, context->bct);
+		g_soc_config->get_value(token_page_size_log2,
+			&page_size_log2, context->bct);
+
+		printf("begin_update(): bct data: b=%d p=%d\n",
+			block_size_log2, page_size_log2);
+	}
+
+	g_soc_config->set_value(token_boot_data_version,
+			context->boot_data_version, context->bct);
+	g_soc_config->get_value(token_hash_size,
+			&hash_size, context->bct);
+	g_soc_config->get_value(token_reserved_size,
+			&reserved_size, context->bct);
+	g_soc_config->get_value(token_reserved_offset,
+			&reserved_offset, context->bct);
+	/* Set the odm data */
+	g_soc_config->set_value(token_odm_data,
+			context->odm_data, context->bct);
+
+	/* Initialize the bad block table field. */
+	g_soc_config->init_bad_block_table(context);
+	/* Fill the reserved data w/the padding pattern. */
+	write_padding(context->bct + reserved_offset, reserved_size);
+
+	/* Create the pad before the BCT starting at block 1 */
+	for (i = 0; i < context->pre_bct_pad_blocks; i++) {
+		find_new_bct_blk(context);
+		err = erase_block(context, i);
+		if (err != 0)
+			goto fail;
+	}
+	/* Find the next bct block starting at block pre_bct_pad_blocks. */
+	for (i = 0; i < context->bct_copy; i++) {
+		find_new_bct_blk(context);
+		err = erase_block(context, i + context->pre_bct_pad_blocks);
+		if (err != 0)
+			goto fail;
+	}
+	return 0;
+fail:
+	printf("Erase block failed, error: %d.\n", err);
+	return err;
+}
+
+/*
+ * Write the BCT(s) starting at slot 0 of block context->pre_bct_pad_blocks.
+ *
+ * @param context		The main context pointer
+ * @return 0 for success
+ */
+static int
+finish_update(build_image_context *context)
+{
+	int err = 0;
+	int i;
+
+	for (i = 0; i < context->bct_copy; i++) {
+		err = write_bct(context, i + context->pre_bct_pad_blocks, 0);
+		if (err != 0)
+			goto fail;
+	}
+
+	return 0;
+fail:
+	printf("Write BCT failed, error: %d.\n", err);
+	return err;
+}
+
+/*
+ * For now, ignore end state.
+ */
+int
+update_bl(build_image_context *context)
+{
+	if (enable_debug)
+		printf("**update_bl()\n");
+
+	if (begin_update(context) != 0)
+		return 1;
+	if (write_bootloaders(context) != 0)
+		return 1;
+	if (finish_update(context) != 0)
+		return 1;
+	return 0;
+}
+
+/*
+ * To write the current image:
+ *   Loop over all blocks in the block data list:
+ *     Write out the data of real blocks.
+ *     Write out 0's for unused blocks.
+ *     Stop on the last used page of the last used block.
+ *
+ * @param context		The main context pointer
+ * @return 0 for success
+ */
+int
+write_block_raw(build_image_context *context)
+{
+	block_data *block_list;
+	block_data *block;
+	u_int32_t blk_number;
+	u_int32_t last_blk;
+	u_int32_t pages_to_write;
+	u_int8_t *data;
+	u_int8_t *empty_blk = NULL;
+
+	assert(context != NULL);
+	assert(context->memory);
+
+	block_list = context->memory;
+
+	/* Compute the end of the image. */
+	block_list = context->memory;
+	while (block_list->next)
+		block_list = block_list->next;
+
+	last_blk = block_list->blk_number;
+
+	/* Loop over all the storage from block 0, page 0 to
+	 *last_blk, Lastpage
+	 */
+	for (blk_number = 0; blk_number <= last_blk; blk_number++) {
+		block = find_block(blk_number, context->memory);
+		if (block)	{
+			pages_to_write = (blk_number == last_blk) ?
+			block->pages_used :
+			context->pages_per_blk;
+			data = block->data;
+		} else {
+			/* Allocate empty_blk if needed. */
+			if (empty_blk == NULL) {
+				empty_blk = malloc(context->block_size);
+				if (!empty_blk)
+					return -ENOMEM;
+				memset(empty_blk, 0, context->block_size);
+			}
+			pages_to_write = context->pages_per_blk;
+			data = empty_blk;
+		}
+		/* Write the data */
+		{
+			size_t bytes = pages_to_write * context->page_size;
+
+			if (fwrite(data, 1, bytes, context->raw_file) != bytes)
+				return -1;
+		}
+	}
+
+	free(empty_blk);
+	return 0;
+}
diff --git a/scripts/tegra/data_layout.h b/scripts/tegra/data_layout.h
new file mode 100644
index 000000000000..9ee8267a626e
--- /dev/null
+++ b/scripts/tegra/data_layout.h
@@ -0,0 +1,55 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * data_layout.h - Definitions for the cbootimage data layout code.
+ */
+
+#ifndef INCLUDED_DATA_LAYOUT_H
+#define INCLUDED_DATA_LAYOUT_H
+
+#include "cbootimage.h"
+
+/* Foward declarations */
+struct build_image_context_rec;
+
+typedef struct blk_data_rec *blk_data_handle;
+
+blk_data_handle new_block_list(void);
+void destroy_block_list(blk_data_handle);
+
+int
+update_bl(struct build_image_context_rec *context);
+
+void
+update_context(struct build_image_context_rec *context);
+
+int
+read_bct_file(struct build_image_context_rec *context);
+
+int
+init_bct(struct build_image_context_rec *context);
+
+int
+write_block_raw(struct build_image_context_rec *context);
+
+int
+begin_update(build_image_context *context);
+
+#endif /* #ifndef INCLUDED_DATA_LAYOUT_H */
diff --git a/scripts/tegra/nvaes_ref.h b/scripts/tegra/nvaes_ref.h
new file mode 100644
index 000000000000..76bd6c3a96ab
--- /dev/null
+++ b/scripts/tegra/nvaes_ref.h
@@ -0,0 +1,35 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#include "cbootimage.h"
+#include "string.h"
+
+#ifndef INCLUDED_NVAES_REF_H
+#define INCLUDED_NVAES_REF_H
+
+#define NVAES_STATECOLS	4
+#define NVAES_KEYCOLS	4
+#define NVAES_ROUNDS	10
+
+void nv_aes_expand_key(u_int8_t *key, u_int8_t *expkey);
+void nv_aes_encrypt(u_int8_t *in,
+		u_int8_t *expkey,
+		u_int8_t *out);
+
+#endif // INCLUDED_NVAES_REF_H
diff --git a/scripts/tegra/parse.c b/scripts/tegra/parse.c
new file mode 100644
index 000000000000..464ee8ff40e4
--- /dev/null
+++ b/scripts/tegra/parse.c
@@ -0,0 +1,803 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * parse.c - Parsing support for the cbootimage tool
+ */
+
+#include <ctype.h>
+#include "parse.h"
+#include "cbootimage.h"
+#include "data_layout.h"
+#include "crypto.h"
+#include "set.h"
+
+/*
+ * Function prototypes
+ *
+ * ParseXXX() parses XXX in the input
+ * SetXXX() sets state based on the parsing results but does not perform
+ *      any parsing of its own
+ * A ParseXXX() function may call other parse functions and set functions.
+ * A SetXXX() function may not call any parseing functions.
+ */
+
+static int
+set_array(build_image_context *context,
+			u_int32_t index,
+			parse_token token,
+			u_int32_t value);
+static char *parse_u32(char *str, u_int32_t *val);
+static char *parse_u8(char *str, u_int32_t *val);
+static char *parse_filename(char *str, char *name, int chars_remaining);
+static char *parse_enum(build_image_context *context,
+			char *str,
+			enum_item *table,
+			u_int32_t *val);
+static char
+*parse_field_name(char *rest, field_item *field_table, field_item **field);
+static char
+*parse_field_value(build_image_context *context,
+			char *rest,
+			field_item *field,
+			u_int32_t *value);
+static int
+parse_array(build_image_context *context, parse_token token, char *rest);
+static int
+parse_bootloader(build_image_context *context, parse_token token, char *rest);
+static int
+parse_value_u32(build_image_context *context, parse_token token, char *rest);
+static int
+parse_bct_file(build_image_context *context, parse_token token, char *rest);
+static char
+*parse_end_state(char *str, char *uname, int chars_remaining);
+static int
+parse_dev_param(build_image_context *context, parse_token token, char *rest);
+static int
+parse_sdram_param(build_image_context *context, parse_token token, char *rest);
+
+static int process_statement(build_image_context *context,
+				char *str,
+				u_int8_t simple_parse);
+
+static parse_item parse_simple_items[] =
+{
+	{ "Bctfile=",       token_bct_file,		parse_bct_file },
+	{ "BootLoader=",    token_bootloader,		parse_bootloader },
+	{ "Redundancy=",    token_redundancy,		parse_value_u32 },
+	{ "Bctcopy=",       token_bct_copy,		parse_value_u32 },
+	{ "Version=",       token_version,		parse_value_u32 },
+	{ "PreBctPadBlocks=", token_pre_bct_pad_blocks,	parse_value_u32 },
+	{ NULL, 0, NULL } /* Must be last */
+};
+
+static parse_item s_top_level_items[] = {
+	{ "Bctfile=",       token_bct_file,		parse_bct_file },
+	{ "Attribute=",     token_attribute,		parse_value_u32 },
+	{ "Attribute[",     token_attribute,		parse_array },
+	{ "PageSize=",      token_page_size,		parse_value_u32 },
+	{ "BlockSize=",     token_block_size,		parse_value_u32 },
+	{ "PartitionSize=", token_partition_size,	parse_value_u32 },
+	{ "DevType[",       token_dev_type,		parse_array },
+	{ "DeviceParam[",   token_dev_param,		parse_dev_param },
+	{ "SDRAM[",         token_sdram,		parse_sdram_param },
+	{ "BootLoader=",    token_bootloader,		parse_bootloader },
+	{ "Redundancy=",    token_redundancy,		parse_value_u32 },
+	{ "Bctcopy=",       token_bct_copy,		parse_value_u32 },
+	{ "Version=",       token_version,		parse_value_u32 },
+	{ "OdmData=",       token_odm_data,		parse_value_u32 },
+	{ NULL, 0, NULL } /* Must be last */
+};
+
+/* Macro to simplify parser code a bit. */
+#define PARSE_COMMA(x) if (*rest != ',') return (x); rest++
+
+/*
+ * Parse the given string and find the u32 dec/hex number.
+ *
+ * @param str	String to parse
+ * @param val	Returns value that was parsed
+ * @return the remainder of the string after the number was parsed
+ */
+static char *
+parse_u32(char *str, u_int32_t *val)
+{
+	u_int32_t value = 0;
+	u_int32_t digit;
+
+	while (*str == '0')
+		str++;
+
+	if (tolower(*str) == 'x') {
+		str++;
+		while (isxdigit(*str)) {
+			value *= 16;
+			digit = tolower(*str);
+			value += digit <= '9' ? digit - '0' : digit - 'a' + 10;
+			str++;
+		}
+	} else {
+		while (*str >= '0' && *str <= '9') {
+			value = value*10 + (*str - '0');
+			str++;
+		}
+	}
+	*val = value;
+	return str;
+}
+
+/*
+ * Parse the given string and find the u8 dec/hex number.
+ *
+ * @param str	String to parse
+ * @param val	Returns value that was parsed
+ * @return the remainder of the string after the number was parsed
+ */
+static char *
+parse_u8(char *str, u_int32_t *val)
+{
+	char *retval;
+
+	retval = parse_u32(str, val);
+
+	if (*val > 0xff) {
+		printf("Warning: Parsed 8-bit value that exceeded 8-bits.\n");
+		printf("         Parsed value = %d. Remaining text = %s\n",
+			 *val, retval);
+	}
+
+	return retval;
+}
+
+
+/*
+ * Parse the given string and find the file name then
+ * return the rest of the string.
+ *
+ * @param str            	String to parse
+ * @param name           	Returns the filename that was parsed
+ * @param chars_remaining	The maximum length of filename
+ * @return the remainder of the string after the name was parsed
+ */
+static char *
+parse_filename(char *str, char *name, int chars_remaining)
+{
+	/*
+	 * Check if the filename buffer is out of space, preserving one
+	 * character to null terminate the string.
+	 */
+	while (isalnum(*str) || strchr("\\/~_-+:.", *str)) {
+
+		chars_remaining--;
+
+		if (chars_remaining < 1)
+			return NULL;
+		*name++ = *str++;
+	}
+
+	/* Null terminate the filename. */
+	*name = '\0';
+
+	return str;
+}
+
+/*
+ * Parse the given string and find the match field name listed
+ * in field table.
+ *
+ * @param rest       	String to parse
+ * @param field_table	The field table to parse
+ * @param field      	Returns the field item that was parsed
+ * @return NULL or the remainder of the string after the field item was parsed
+ */
+static char
+*parse_field_name(char *rest, field_item *field_table, field_item **field)
+{
+	u_int32_t i;
+	u_int32_t field_name_len = 0;
+
+	assert(field_table != NULL);
+	assert(rest != NULL);
+	assert(field != NULL);
+
+	while (rest[field_name_len] != '=')
+		field_name_len++;
+
+	/* Parse the field name. */
+	for (i = 0; field_table[i].name != NULL; i++) {
+		if ((strlen(field_table[i].name) == field_name_len) &&
+			!strncmp(field_table[i].name,
+			rest,
+			field_name_len)) {
+
+			*field = &(field_table[i]);
+			rest = rest + field_name_len;
+			return rest;
+		}
+	}
+
+	/* Field wasn't found or a parse error occurred. */
+	return NULL;
+}
+
+/*
+ * Parse the value based on the field table
+ *
+ * @param context	The main context pointer
+ * @param rest   	String to parse
+ * @param field  	Field item to parse
+ * @param value	Returns the value that was parsed
+ * @return the remainder of the string after the value was parsed
+ */
+static char
+*parse_field_value(build_image_context *context,
+			char *rest,
+			field_item *field,
+			u_int32_t *value)
+{
+	assert(rest != NULL);
+	assert(field != NULL);
+	assert((field->type != field_type_enum)
+		|| (field->enum_table != NULL));
+
+	switch (field->type) {
+	case field_type_enum:
+		rest = parse_enum(context, rest, field->enum_table, value);
+		break;
+
+	case field_type_u32:
+		rest = parse_u32(rest, value);
+		break;
+
+	case field_type_u8:
+		rest = parse_u8(rest, value);
+		break;
+
+	default:
+		printf("Unexpected field type %d at line %d\n",
+			field->type, __LINE__);
+		rest = NULL;
+		break;
+	}
+
+	return rest;
+}
+
+/*
+ * Parse the given string and find the match enum item listed
+ * in table.
+ *
+ * @param context	The main context pointer
+ * @param str    	String to parse
+ * @param table  	Enum item table to parse
+ * @param value  	Returns the value that was parsed
+ * @return the remainder of the string after the item was parsed
+ */
+static char *
+parse_enum(build_image_context *context,
+		char *str,
+		enum_item *table,
+		u_int32_t *val)
+{
+	int i;
+	char *rest;
+
+	for (i = 0; table[i].name != NULL; i++) {
+		if (!strncmp(table[i].name, str,
+			strlen(table[i].name))) {
+			*val = table[i].value;
+			rest = str + strlen(table[i].name);
+			return rest;
+		}
+	}
+	return parse_u32(str, val);
+
+}
+
+/*
+ * Parse the given string and find the bootloader file name, load address and
+ * entry point information then call set_bootloader function.
+ *
+ * @param context	The main context pointer
+ * @param token  	The parse token value
+ * @param rest   	String to parse
+ * @return 0 and 1 for success and failure
+ */
+static int parse_bootloader(build_image_context *context,
+			parse_token token,
+			char *rest)
+{
+	char filename[MAX_BUFFER];
+	char e_state[MAX_STR_LEN];
+	u_int32_t load_addr;
+	u_int32_t entry_point;
+
+	assert(context != NULL);
+	assert(rest != NULL);
+
+	if (context->generate_bct != 0)
+		return 0;
+	/* Parse the file name. */
+	rest = parse_filename(rest, filename, MAX_BUFFER);
+	if (rest == NULL)
+		return 1;
+
+	PARSE_COMMA(1);
+
+	/* Parse the load address. */
+	rest = parse_u32(rest, &load_addr);
+	if (rest == NULL)
+		return 1;
+
+	PARSE_COMMA(1);
+
+	/* Parse the entry point. */
+	rest = parse_u32(rest, &entry_point);
+	if (rest == NULL)
+		return 1;
+
+	PARSE_COMMA(1);
+
+	/* Parse the end state. */
+	rest = parse_end_state(rest, e_state, MAX_STR_LEN);
+	if (rest == NULL)
+		return 1;
+	if (strncmp(e_state, "Complete", strlen("Complete")))
+		return 1;
+
+	/* Parsing has finished - set the bootloader */
+	return set_bootloader(context, filename, load_addr, entry_point);
+}
+
+/*
+ * Parse the given string and find the array items in config file.
+ *
+ * @param context	The main context pointer
+ * @param token  	The parse token value
+ * @param rest   	String to parse
+ * @return 0 and 1 for success and failure
+ */
+static int
+parse_array(build_image_context *context, parse_token token, char *rest)
+{
+	u_int32_t index;
+	u_int32_t value;
+
+	assert(context != NULL);
+	assert(rest != NULL);
+
+	/* Parse the index. */
+	rest = parse_u32(rest, &index);
+	if (rest == NULL)
+		return 1;
+
+	/* Parse the closing bracket. */
+	if (*rest != ']')
+		return 1;
+	rest++;
+
+	/* Parse the equals sign.*/
+	if (*rest != '=')
+		return 1;
+	rest++;
+
+	/* Parse the value based on the field table. */
+	switch (token) {
+	case token_attribute:
+		rest = parse_u32(rest, &value);
+		break;
+	case token_dev_type:
+		rest = parse_enum(context,
+				rest,
+				g_soc_config->devtype_table,
+				&value);
+		break;
+
+	default:
+	/* Unknown token */
+		return 1;
+	}
+
+	if (rest == NULL)
+		return 1;
+
+	/* Store the result. */
+	return set_array(context, index, token, value);
+}
+
+/*
+ * Call hw interface to set the value for array item in bct such as device
+ * type and bootloader attribute.
+ *
+ * @param context	The main context pointer
+ * @param index  	The index for array
+ * @param token  	The parse token value
+ * @param value  	The value to set
+ * @return 0 and -ENODATA for success and failure
+ */
+
+static int
+set_array(build_image_context *context,
+			u_int32_t index,
+			parse_token token,
+			u_int32_t value)
+{
+	int err = 0;
+
+	assert(context != NULL);
+
+	switch (token) {
+	case token_attribute:
+		err = g_soc_config->setbl_param(index,
+					token_bl_attribute,
+					&value,
+					context->bct);
+		break;
+	case token_dev_type:
+		err = g_soc_config->set_dev_param(context,
+						index,
+						token_dev_type,
+						value);
+		break;
+	default:
+		break;
+	}
+	return err;
+}
+
+/*
+ * General handler for setting u_int32_t values in config files.
+ *
+ * @param context	The main context pointer
+ * @param token  	The parse token value
+ * @param rest   	String to parse
+ * @return 0 and 1 for success and failure
+ */
+static int parse_value_u32(build_image_context *context,
+			parse_token token,
+			char *rest)
+{
+	u_int32_t value;
+
+	assert(context != NULL);
+	assert(rest != NULL);
+
+	rest = parse_u32(rest, &value);
+	if (rest == NULL)
+		return 1;
+
+	return context_set_value(context, token, value);
+}
+
+/*
+ * Parse the given string and find the bct file name.
+ *
+ * @param context	The main context pointer
+ * @param token  	The parse token value
+ * @param rest   	String to parse
+ * @return 0 and 1 for success and failure
+ */
+static int
+parse_bct_file(build_image_context *context, parse_token token, char *rest)
+{
+	char   filename[MAX_BUFFER];
+
+	assert(context != NULL);
+	assert(rest != NULL);
+
+	/* Parse the file name. */
+	rest = parse_filename(rest, filename, MAX_BUFFER);
+	if (rest == NULL)
+		return 1;
+
+	/* Parsing has finished - set the bctfile */
+	context->bct_filename = filename;
+	/* Read the bct file to buffer */
+	if (read_bct_file(context))
+		return 1;
+
+	update_context(context);
+	return 0;
+}
+
+static char *
+parse_end_state(char *str, char *uname, int chars_remaining)
+{
+	while (isalpha(*str)) {
+
+		*uname++ = *str++;
+		if (--chars_remaining < 0)
+			return NULL;
+	}
+	*uname = '\0';
+	return str;
+}
+
+/*
+ * Parse the given string and find device parameter listed in device table
+ * and value for this device parameter. If match, call the corresponding
+ * function in the table to set device parameter.
+ *
+ * @param context	The main context pointer
+ * @param token  	The parse token value
+ * @param rest   	String to parse
+ * @return 0 and 1 for success and failure
+ */
+static int
+parse_dev_param(build_image_context *context, parse_token token, char *rest)
+{
+	u_int32_t i;
+	u_int32_t value;
+	field_item *field;
+	u_int32_t index;
+	parse_subfield_item *device_item = NULL;
+
+	assert(context != NULL);
+	assert(rest != NULL);
+
+	/* Parse the index. */
+	rest = parse_u32(rest, &index);
+	if (rest == NULL)
+		return 1;
+
+	/* Parse the closing bracket. */
+	if (*rest != ']')
+		return 1;
+	rest++;
+
+	/* Parse the following '.' */
+	if (*rest != '.')
+		return 1;
+	rest++;
+
+	/* Parse the device name. */
+	for (i = 0; g_soc_config->device_type_table[i].prefix != NULL; i++) {
+		if (!strncmp(g_soc_config->device_type_table[i].prefix,
+			rest, strlen(g_soc_config->device_type_table[i].prefix))) {
+
+			device_item = &(g_soc_config->device_type_table[i]);
+			rest = rest + strlen(g_soc_config->device_type_table[i].prefix);
+
+			/* Parse the field name. */
+			rest = parse_field_name(rest,
+					g_soc_config->device_type_table[i].field_table,
+				&field);
+			if (rest == NULL)
+				return 1;
+
+			/* Parse the equals sign.*/
+			if (*rest != '=')
+				return 1;
+			rest++;
+
+			/* Parse the value based on the field table. */
+			rest = parse_field_value(context, rest, field, &value);
+			if (rest == NULL)
+				return 1;
+			return device_item->process(context,
+						index, field->token, value);
+		}
+	}
+	return 1;
+}
+
+/*
+ * Parse the given string and find sdram parameter and value in config
+ * file. If match, call the corresponding function set the sdram parameter.
+ *
+ * @param context	The main context pointer
+ * @param token  	The parse token value
+ * @param rest   	String to parse
+ * @return 0 and 1 for success and failure
+ */
+static int
+parse_sdram_param(build_image_context *context, parse_token token, char *rest)
+{
+	u_int32_t value;
+	field_item *field;
+	u_int32_t index;
+
+	assert(context != NULL);
+	assert(rest != NULL);
+
+	/* Parse the index. */
+	rest = parse_u32(rest, &index);
+	if (rest == NULL)
+		return 1;
+
+	/* Parse the closing bracket. */
+	if (*rest != ']')
+		return 1;
+	rest++;
+
+	/* Parse the following '.' */
+	if (*rest != '.')
+		return 1;
+	rest++;
+
+	/* Parse the field name. */
+	rest = parse_field_name(rest, g_soc_config->sdram_field_table, &field);
+
+	if (rest == NULL)
+		return 1;
+
+	/* Parse the equals sign.*/
+	if (*rest != '=')
+		return 1;
+	rest++;
+
+	/* Parse the value based on the field table. */
+	rest = parse_field_value(context, rest, field, &value);
+	if (rest == NULL)
+		return 1;
+
+	/* Store the result. */
+	return g_soc_config->set_sdram_param(context,
+						index,
+						field->token,
+						value);
+}
+
+/*
+ * Compare the given string with item listed in table.
+ * Execute the proper process function if match.
+ *
+ * @param context	The main context pointer
+ * @param str    	String to parse
+ * @param simple_parse	Simple parse flag
+ * @return 0 and 1 for success and failure
+ */
+static int
+process_statement(build_image_context *context,
+			char *str,
+			u_int8_t simple_parse)
+{
+	int i;
+	char *rest;
+	parse_item *cfg_parse_item;
+
+	if (simple_parse == 0)
+		cfg_parse_item = s_top_level_items;
+	else
+		cfg_parse_item = parse_simple_items;
+
+	for (i = 0; cfg_parse_item[i].prefix != NULL; i++) {
+		if (!strncmp(cfg_parse_item[i].prefix, str,
+			strlen(cfg_parse_item[i].prefix))) {
+			rest = str + strlen(cfg_parse_item[i].prefix);
+
+			return cfg_parse_item[i].process(context,
+						cfg_parse_item[i].token,
+						rest);
+		}
+	}
+
+	/* If this point was reached, there was a processing error. */
+	return 1;
+}
+
+/*
+ * The main function parse the config file.
+ *
+ * @param context     	The main context pointer
+ * @param simple_parse	Simple parse flag
+ */
+void process_config_file(build_image_context *context, u_int8_t simple_parse)
+{
+	char buffer[MAX_BUFFER];
+	int  space = 0;
+	int current;
+	u_int8_t c_eol_comment_start = 0; /* True after first slash */
+	u_int8_t comment = 0;
+	u_int8_t string = 0;
+	u_int8_t equal_encounter = 0;
+
+	assert(context != NULL);
+	assert(context->config_file != NULL);
+
+	while ((current = fgetc(context->config_file)) != EOF) {
+		if (space >= (MAX_BUFFER-1)) {
+			/* if we exceeded the max buffer size, it is likely
+			 due to a missing semi-colon at the end of a line */
+			printf("Config file parsing error!");
+			exit(1);
+		}
+
+		/* Handle failure to complete "//" comment token.
+		 Insert the '/' into the busffer and proceed with
+		 processing the current character. */
+		if (c_eol_comment_start && current != '/') {
+			c_eol_comment_start = 0;
+			buffer[space++] = '/';
+		}
+
+		switch (current) {
+		case '\"': /* " indicates start or end of a string */
+			if (!comment) {
+				string ^= 1;
+				buffer[space++] = current;
+			}
+			break;
+		case ';':
+			if (!string && !comment) {
+				buffer[space++] = '\0';
+
+				if (process_statement(context,
+							buffer,
+							simple_parse))
+					goto error;
+				space = 0;
+				equal_encounter = 0;
+			} else if (string)
+				buffer[space++] = current;
+			break;
+
+		case '/':
+			if (!string && !comment) {
+				if (c_eol_comment_start) {
+					/* EOL comment started. */
+					comment = 1;
+					c_eol_comment_start = 0;
+				} else {
+					/* Potential start of eol comment. */
+					c_eol_comment_start = 1;
+				}
+			} else if (!comment)
+				buffer[space++] = current;
+			break;
+
+		/* ignore whitespace.  uses fallthrough */
+		case '\n':
+		case '\r': /* carriage returns end comments */
+			string  = 0;
+			comment = 0;
+			c_eol_comment_start = 0;
+		case ' ':
+		case '\t':
+			if (string)
+				buffer[space++] = current;
+			break;
+
+		case '#':
+			if (!string)
+				comment = 1;
+			else
+				buffer[space++] = current;
+			break;
+
+		default:
+			if (!comment) {
+				buffer[space++] = current;
+				if (current == '=') {
+					if (!equal_encounter)
+						equal_encounter = 1;
+					else
+						goto error;
+				}
+			}
+			break;
+		}
+	}
+
+	return;
+
+ error:
+	printf("Error parsing: %s\n", buffer);
+	exit(1);
+}
diff --git a/scripts/tegra/parse.h b/scripts/tegra/parse.h
new file mode 100644
index 000000000000..80f42c4269b1
--- /dev/null
+++ b/scripts/tegra/parse.h
@@ -0,0 +1,923 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * parse.h - Definitions for the cbootimage parsing code.
+ */
+
+/*
+ * TODO / Notes
+ * - Add doxygen commentary
+ */
+
+#ifndef INCLUDED_PARSE_H
+#define INCLUDED_PARSE_H
+
+#include "cbootimage.h"
+
+
+/*
+ * Enums
+ */
+
+typedef enum
+{
+	token_none = 0,
+	token_attribute,
+	token_bootloader,
+	token_block_size,
+	token_page_size,
+	token_partition_size,
+	token_dev_type,
+	token_dev_param,
+	token_redundancy,
+	token_version,
+	token_odm_data,
+	token_bct_file,
+	token_bct_copy,
+	token_bct_size,
+	token_nand_params,
+	token_sdmmc_params,
+	token_spiflash_params,
+	token_data_width,
+	token_clock_divider,
+	token_clock_source,
+	token_read_command_type_fast,
+	token_max_power_class_supported,
+	token_sd_controller,
+	token_nand_timing2,
+	token_nand_timing,
+	token_block_size_log2,
+	token_page_size_log2,
+	token_nand_async_timing0,
+	token_nand_async_timing1,
+	token_nand_async_timing2,
+	token_nand_async_timing3,
+	token_nand_sddr_timing0,
+	token_nand_sddr_timing1,
+	token_nand_tddr_timing0,
+	token_nand_tddr_timing1,
+	token_nand_fbio_dqsib_dly_byte,
+	token_nand_fbio_quse_dly_byte,
+	token_nand_fbio_cfg_quse_late,
+	token_async_timing0,
+	token_async_timing1,
+	token_async_timing2,
+	token_async_timing3,
+	token_sddr_timing0,
+	token_sddr_timing1,
+	token_tddr_timing0,
+	token_tddr_timing1,
+	token_fbio_dqsib_dly_byte,
+	token_fbio_quse_dly_byte,
+	token_fbio_cfg_quse_late,
+	token_disable_sync_ddr,
+	token_nand_disable_sync_ddr,
+	token_sdram,
+	token_crypto_hash,
+	token_random_aes_blk,
+	token_boot_data_version,
+	token_bootloader_used,
+	token_bootloaders_max,
+	token_reserved,
+	token_reserved_size,
+	token_reserved_offset,
+	token_hash_size,
+	token_crypto_offset,
+	token_crypto_length,
+	token_max_bct_search_blks,
+	token_num_param_sets,
+	token_dev_type_nand,
+	token_dev_type_sdmmc,
+	token_dev_type_spi,
+	token_num_sdram_sets,
+	token_pre_bct_pad_blocks,
+
+	token_nand_clock_divider,
+	token_nand_nand_timing,
+	token_nand_nand_timing2,
+	token_nand_block_size_log2,
+	token_nand_page_size_log2,
+	token_sdmmc_clock_divider,
+	token_sdmmc_data_width,
+	token_sdmmc_multi_page_support,
+	token_sdmmc_sd_controller,
+	token_sdmmc_max_power_class_supported,
+	token_spiflash_read_command_type_fast,
+	token_spiflash_page_size_2k_or_16k,
+	token_spiflash_clock_source,
+	token_spiflash_clock_divider,
+	token_sdmmc_data_width_4bit,
+	token_sdmmc_data_width_8bit,
+	token_spi_clock_source_pllp_out0,
+	token_spi_clock_source_pllc_out0,
+	token_spi_clock_source_pllm_out0,
+	token_spi_clock_source_clockm,
+	token_memory_type_none,
+	token_memory_type_ddr,
+	token_memory_type_lpddr,
+	token_memory_type_ddr2,
+	token_memory_type_lpddr2,
+	token_memory_type_ddr3,
+
+	token_bl_version,
+	token_bl_start_blk,
+	token_bl_start_page,
+	token_bl_length,
+	token_bl_load_addr,
+	token_bl_entry_point,
+	token_bl_attribute,
+	token_bl_crypto_hash,
+
+	token_memory_type,
+	token_pllm_charge_pump_setup_ctrl,
+	token_pllm_loop_filter_setup_ctrl,
+	token_pllm_input_divider,
+	token_pllm_feedback_divider,
+	token_pllm_post_divider,
+	token_pllm_stable_time,
+	token_pllm_setup_control,
+	token_pllm_select_div2,
+	token_pllm_pdlshift_ph45,
+	token_pllm_pdlshift_ph90,
+	token_pllm_pdlshift_ph135,
+	token_pllm_kcp,
+	token_pllm_kvco,
+	token_emc_bct_spare0,
+	token_emc_bct_spare1,
+	token_emc_bct_spare2,
+	token_emc_bct_spare3,
+	token_emc_bct_spare4,
+	token_emc_bct_spare5,
+	token_emc_bct_spare6,
+	token_emc_bct_spare7,
+	token_emc_bct_spare8,
+	token_emc_bct_spare9,
+	token_emc_bct_spare10,
+	token_emc_bct_spare11,
+	token_emc_clock_divider,
+	token_emc_auto_cal_interval,
+	token_emc_auto_cal_config,
+	token_emc_auto_cal_config2,
+	token_emc_auto_cal_config3,
+	token_emc_auto_cal_wait,
+	token_emc_pin_program_wait,
+	token_emc_rc,
+	token_emc_rfc,
+	token_emc_rfc_slr,
+	token_emc_ras,
+	token_emc_rp,
+	token_emc_r2r,
+	token_emc_w2w,
+	token_emc_r2w,
+	token_emc_w2r,
+	token_emc_r2p,
+	token_emc_w2p,
+	token_emc_rd_rcd,
+	token_emc_wr_rcd,
+	token_emc_rrd,
+	token_emc_rext,
+	token_emc_wdv,
+	token_emc_wdv_mask,
+	token_emc_quse,
+	token_emc_quse_width,
+	token_emc_ibdly,
+	token_emc_einput,
+	token_emc_einput_duration,
+	token_emc_puterm_extra,
+	token_emc_puterm_width,
+	token_emc_puterm_adj,
+	token_emc_cdb_cntl1,
+	token_emc_cdb_cntl2,
+	token_emc_cdb_cntl3,
+	token_emc_qrst,
+	token_emc_qsafe,
+	token_emc_rdv,
+	token_emc_rdv_mask,
+	token_emc_qpop,
+	token_emc_refresh,
+	token_emc_burst_refresh_num,
+	token_emc_pdex2wr,
+	token_emc_pdex2rd,
+	token_emc_pchg2pden,
+	token_emc_act2pden,
+	token_emc_ar2pden,
+	token_emc_rw2pden,
+	token_emc_txsr,
+	token_emc_tcke,
+	token_emc_tckesr,
+	token_emc_tpd,
+	token_emc_tfaw,
+	token_emc_trpab,
+	token_emc_tclkstable,
+	token_emc_tclkstop,
+	token_emc_trefbw,
+	token_emc_quse_extra,
+	token_emc_fbio_cfg5,
+	token_emc_fbio_cfg6,
+	token_emc_fbio_spare,
+	token_emc_mrs,
+	token_emc_emrs,
+	token_emc_emrs2,
+	token_emc_emrs3,
+	token_emc_mrw1,
+	token_emc_mrw2,
+	token_emc_mrw3,
+	token_emc_mrw4,
+	token_emc_mrw_reset_command,
+	token_emc_mrw_reset_ninit_wait,
+	token_emc_adr_cfg,
+	token_mc_emem_cfg,
+	token_emc_cfg,
+	token_emc_cfg2,
+	token_emc_cfg_pipe,
+	token_emc_dbg,
+	token_emc_cfg_dig_dll,
+	token_emc_cfg_dig_dll_period,
+	token_warm_boot_wait,
+	token_emc_ctt_term_ctrl,
+	token_emc_odt_write,
+	token_emc_odt_read,
+	token_emc_zcal_ref_cnt,
+	token_emc_zcal_wait_cnt,
+	token_emc_zcal_mrw_cmd,
+	token_emc_mrs_reset_dll,
+	token_emc_mrs_reset_dll_wait,
+	token_emc_emrs_emr2,
+	token_emc_emrs_emr3,
+	token_emc_emrs_ddr2_dll_enable,
+	token_emc_mrs_ddr2_dll_reset,
+	token_emc_emrs_ddr2_ocd_calib,
+	token_emc_ddr2_wait,
+	token_pmc_ddr_pwr,
+
+	token_emc_fbio_cfg1,
+	token_emc_fbio_dqsib_dly,
+	token_emc_fbio_dqsib_dly_msb,
+	token_emc_fbio_quse_dly,
+	token_emc_fbio_quse_dly_msb,
+	token_emc_adr_cfg1,
+	token_mc_lowlatency_config,
+	token_emc_cfg_clktrim0,
+	token_emc_cfg_clktrim1,
+	token_emc_cfg_clktrim2,
+	token_ahb_arbitration_xbar_ctrl,
+	token_emc_dll_xform_dqs,
+	token_emc_dll_xform_quse,
+	token_emc_mrw_zq_init_dev0,
+	token_emc_mrw_zq_init_dev1,
+	token_emc_mrw_zq_init_wait,
+	token_apb_misc_gp_xm2cfga_pad_ctrl,
+	token_apb_misc_gp_xm2cfgc_pad_ctrl,
+	token_apb_misc_gp_xm2cfgc_pad_ctrl2,
+	token_apb_misc_gp_xm2cfgd_pad_ctrl,
+	token_apb_misc_gp_xm2cfgd_pad_ctrl2,
+	token_apb_misc_gp_xm2clkcfg_Pad_ctrl,
+	token_apb_misc_gp_xm2comp_pad_ctrl,
+	token_apb_misc_gp_xm2vttgen_pad_ctrl,
+
+	token_emc_clock_source,
+	token_emc_clock_use_pll_mud,
+	token_emc_pin_extra_wait,
+	token_emc_timing_control_wait,
+	token_emc_wext,
+	token_emc_ctt,
+	token_emc_ctt_duration,
+	token_emc_prerefresh_req_cnt,
+	token_emc_txsr_dll,
+	token_emc_cfg_rsv,
+	token_emc_mrw_extra,
+	token_emc_warm_boot_mrw1,
+	token_emc_warm_boot_mrw2,
+	token_emc_warm_boot_mrw3,
+	token_emc_warm_boot_mrw_extra,
+	token_emc_warm_boot_extramode_reg_write_enable,
+	token_emc_extramode_reg_write_enable,
+	token_emc_mrs_wait_cnt,
+	token_emc_mrs_wait_cnt2,
+	token_emc_cmd_q,
+	token_emc_mc2emc_q,
+	token_emc_dyn_self_ref_control,
+	token_ahb_arbitration_xbar_ctrl_meminit_done,
+	token_emc_dev_select,
+	token_emc_sel_dpd_ctrl,
+	token_emc_dll_xform_dqs0,
+	token_emc_dll_xform_dqs1,
+	token_emc_dll_xform_dqs2,
+	token_emc_dll_xform_dqs3,
+	token_emc_dll_xform_dqs4,
+	token_emc_dll_xform_dqs5,
+	token_emc_dll_xform_dqs6,
+	token_emc_dll_xform_dqs7,
+	token_emc_dll_xform_dqs8,
+	token_emc_dll_xform_dqs9,
+	token_emc_dll_xform_dqs10,
+	token_emc_dll_xform_dqs11,
+	token_emc_dll_xform_dqs12,
+	token_emc_dll_xform_dqs13,
+	token_emc_dll_xform_dqs14,
+	token_emc_dll_xform_dqs15,
+	token_emc_dll_xform_quse0,
+	token_emc_dll_xform_quse1,
+	token_emc_dll_xform_quse2,
+	token_emc_dll_xform_quse3,
+	token_emc_dll_xform_quse4,
+	token_emc_dll_xform_quse5,
+	token_emc_dll_xform_quse6,
+	token_emc_dll_xform_quse7,
+	token_emc_dll_xform_addr0,
+	token_emc_dll_xform_addr1,
+	token_emc_dll_xform_addr2,
+	token_emc_dll_xform_addr3,
+	token_emc_dll_xform_addr4,
+	token_emc_dll_xform_addr5,
+	token_emc_dll_xform_quse8,
+	token_emc_dll_xform_quse9,
+	token_emc_dll_xform_quse10,
+	token_emc_dll_xform_quse11,
+	token_emc_dll_xform_quse12,
+	token_emc_dll_xform_quse13,
+	token_emc_dll_xform_quse14,
+	token_emc_dll_xform_quse15,
+	token_emc_dli_trim_tx_dqs0,
+	token_emc_dli_trim_tx_dqs1,
+	token_emc_dli_trim_tx_dqs2,
+	token_emc_dli_trim_tx_dqs3,
+	token_emc_dli_trim_tx_dqs4,
+	token_emc_dli_trim_tx_dqs5,
+	token_emc_dli_trim_tx_dqs6,
+	token_emc_dli_trim_tx_dqs7,
+	token_emc_dli_trim_tx_dqs8,
+	token_emc_dli_trim_tx_dqs9,
+	token_emc_dli_trim_tx_dqs10,
+	token_emc_dli_trim_tx_dqs11,
+	token_emc_dli_trim_tx_dqs12,
+	token_emc_dli_trim_tx_dqs13,
+	token_emc_dli_trim_tx_dqs14,
+	token_emc_dli_trim_tx_dqs15,
+	token_emc_dll_xform_dq0,
+	token_emc_dll_xform_dq1,
+	token_emc_dll_xform_dq2,
+	token_emc_dll_xform_dq3,
+	token_emc_dll_xform_dq4,
+	token_emc_dll_xform_dq5,
+	token_emc_dll_xform_dq6,
+	token_emc_dll_xform_dq7,
+	token_emc_zcal_interval,
+	token_emc_zcal_init_dev0,
+	token_emc_zcal_init_dev1,
+	token_emc_zcal_init_wait,
+	token_emc_zcal_cold_boot_enable,
+	token_emc_zcal_warm_boot_enable,
+	token_emc_zcal_warm_cold_boot_enables,
+	token_emc_mrw_lpddr2zcal_warm_boot,
+	token_emc_zqcal_ddr3_warm_boot,
+	token_emc_zcal_warm_boot_wait,
+	token_emc_mrs_warm_boot_enable,
+	token_emc_mrs_extra,
+	token_emc_warm_boot_mrs,
+	token_emc_warm_boot_emrs,
+	token_emc_warm_boot_emr2,
+	token_emc_warm_boot_emr3,
+	token_emc_warm_boot_mrs_extra,
+	token_emc_clken_override,
+	token_mc_dis_extra_snap_levels,
+	token_emc_extra_refresh_num,
+	token_emc_clken_override_allwarm_boot,
+	token_mc_clken_override_allwarm_boot,
+	token_emc_cfg_dig_dll_period_warm_boot,
+	token_pmc_vddp_sel,
+	token_pmc_vddp_sel_wait,
+	token_pmc_ddr_cfg,
+	token_pmc_io_dpd_req,
+	token_pmc_io_dpd2_req,
+	token_pmc_io_dpd3_req,
+	token_pmc_io_dpd3_req_wait,
+	token_pmc_reg_short,
+	token_pmc_eno_vtt_gen,
+	token_pmc_no_io_power,
+	token_pmc_por_dpd_ctrl_wait,
+	token_emc_xm2cmd_pad_ctrl,
+	token_emc_xm2cmd_pad_ctrl2,
+	token_emc_xm2cmd_pad_ctrl3,
+	token_emc_xm2cmd_pad_ctrl4,
+	token_emc_xm2cmd_pad_ctrl5,
+	token_emc_xm2dqs_pad_ctrl,
+	token_emc_xm2dqs_pad_ctrl2,
+	token_emc_xm2dqs_pad_ctrl3,
+	token_emc_xm2dqs_pad_ctrl4,
+	token_emc_xm2dqs_pad_ctrl5,
+	token_emc_xm2dqs_pad_ctrl6,
+	token_emc_xm2dq_pad_ctrl,
+	token_emc_xm2dq_pad_ctrl2,
+	token_emc_xm2dq_pad_ctrl3,
+	token_emc_xm2clk_pad_ctrl,
+	token_emc_xm2clk_pad_ctrl2,
+	token_emc_xm2comp_pad_ctrl,
+	token_emc_xm2vttgen_pad_ctrl,
+	token_emc_xm2vttgen_pad_ctrl2,
+	token_emc_xm2vttgen_pad_ctrl3,
+	token_emc_xm2quse_pad_ctrl,
+	token_emc_acpd_control,
+	token_emc_swizzle_rank0_byte_cfg,
+	token_emc_swizzle_rank0_byte0,
+	token_emc_swizzle_rank0_byte1,
+	token_emc_swizzle_rank0_byte2,
+	token_emc_swizzle_rank0_byte3,
+	token_emc_swizzle_rank1_byte_cfg,
+	token_emc_swizzle_rank1_byte0,
+	token_emc_swizzle_rank1_byte1,
+	token_emc_swizzle_rank1_byte2,
+	token_emc_swizzle_rank1_byte3,
+	token_emc_addr_swizzle_stack1a,
+	token_emc_addr_swizzle_stack1b,
+	token_emc_addr_swizzle_stack2a,
+	token_emc_addr_swizzle_stack2b,
+	token_emc_addr_swizzle_stack3,
+	token_emc_dsr_vttgen_drv,
+	token_emc_txdsrvttgen,
+	token_emc_bgbias_ctl0,
+	token_mc_emem_adr_cfg,
+	token_mc_emem_adr_cfg_dev0,
+	token_mc_emem_adr_cfg_dev1,
+	token_mc_emem_adr_cfg_channel_mask,
+	token_mc_emem_adr_cfg_channel_mask_propagation_count,
+	token_mc_emem_adr_cfg_bank_mask0,
+	token_mc_emem_adr_cfg_bank_mask1,
+	token_mc_emem_adr_cfg_bank_mask2,
+	token_mc_emem_adr_cfg_bank_swizzle3,
+	token_mc_emem_arb_cfg,
+	token_mc_emem_arb_outstanding_req,
+	token_mc_emem_arb_timing_rcd,
+	token_mc_emem_arb_timing_rp,
+	token_mc_emem_arb_timing_rc,
+	token_mc_emem_arb_timing_ras,
+	token_mc_emem_arb_timing_faw,
+	token_mc_emem_arb_timing_rrd,
+	token_mc_emem_arb_timing_rap2pre,
+	token_mc_emem_arb_timing_wap2pre,
+	token_mc_emem_arb_timing_r2r,
+	token_mc_emem_arb_timing_w2w,
+	token_mc_emem_arb_timing_r2w,
+	token_mc_emem_arb_timing_w2r,
+	token_mc_emem_arb_da_turns,
+	token_mc_emem_arb_da_covers,
+	token_mc_emem_arb_misc0,
+	token_mc_emem_arb_misc1,
+	token_mc_emem_arb_ring1_throttle,
+	token_mc_emem_arb_override,
+	token_mc_emem_arb_override1,
+	token_mc_emem_arb_rsv,
+	token_mc_clken_override,
+	token_mc_emc_reg_mode,
+	token_mc_stat_control,
+	token_mc_display_snap_ring,
+	token_mc_video_protect_bom,
+	token_mc_video_protect_bom_adr_hi,
+	token_mc_video_protect_size_mb,
+	token_mc_video_protect_vpr_override,
+	token_mc_video_protect_vpr_override1,
+	token_mc_video_protect_gpu_override0,
+	token_mc_video_protect_gpu_override1,
+	token_mc_sec_carveout_bom,
+	token_mc_sec_carveout_adr_hi,
+	token_mc_sec_carveout_size_mb,
+	token_mc_video_protect_write_access,
+	token_mc_sec_carveout_protect_write_access,
+	token_emc_ca_training_enable,
+	token_emc_ca_training_timing_cntl1,
+	token_emc_ca_training_timing_cntl2,
+	token_swizzle_rank_byte_encode,
+	token_boot_rom_patch_control,
+	token_boot_rom_patch_data,
+	token_ch1_emc_dll_xform_dqs0,
+	token_ch1_emc_dll_xform_dqs1,
+	token_ch1_emc_dll_xform_dqs2,
+	token_ch1_emc_dll_xform_dqs3,
+	token_ch1_emc_dll_xform_dqs4,
+	token_ch1_emc_dll_xform_dqs5,
+	token_ch1_emc_dll_xform_dqs6,
+	token_ch1_emc_dll_xform_dqs7,
+	token_ch1_emc_dll_xform_quse0,
+	token_ch1_emc_dll_xform_quse1,
+	token_ch1_emc_dll_xform_quse2,
+	token_ch1_emc_dll_xform_quse3,
+	token_ch1_emc_dll_xform_quse4,
+	token_ch1_emc_dll_xform_quse5,
+	token_ch1_emc_dll_xform_quse6,
+	token_ch1_emc_dll_xform_quse7,
+	token_ch1_emc_dli_trim_tx_dqs0,
+	token_ch1_emc_dli_trim_tx_dqs1,
+	token_ch1_emc_dli_trim_tx_dqs2,
+	token_ch1_emc_dli_trim_tx_dqs3,
+	token_ch1_emc_dli_trim_tx_dqs4,
+	token_ch1_emc_dli_trim_tx_dqs5,
+	token_ch1_emc_dli_trim_tx_dqs6,
+	token_ch1_emc_dli_trim_tx_dqs7,
+	token_ch1_emc_dll_xform_dq0,
+	token_ch1_emc_dll_xform_dq1,
+	token_ch1_emc_dll_xform_dq2,
+	token_ch1_emc_dll_xform_dq3,
+	token_ch1_emc_swizzle_rank0_byte_cfg,
+	token_ch1_emc_swizzle_rank0_byte0,
+	token_ch1_emc_swizzle_rank0_byte1,
+	token_ch1_emc_swizzle_rank0_byte2,
+	token_ch1_emc_swizzle_rank0_byte3,
+	token_ch1_emc_swizzle_rank1_byte_cfg,
+	token_ch1_emc_swizzle_rank1_byte0,
+	token_ch1_emc_swizzle_rank1_byte1,
+	token_ch1_emc_swizzle_rank1_byte2,
+	token_ch1_emc_swizzle_rank1_byte3,
+	token_ch1_emc_addr_swizzle_stack1a,
+	token_ch1_emc_addr_swizzle_stack1b,
+	token_ch1_emc_addr_swizzle_stack2a,
+	token_ch1_emc_addr_swizzle_stack2b,
+	token_ch1_emc_addr_swizzle_stack3,
+	token_ch1_emc_auto_cal_config,
+	token_ch1_emc_auto_cal_config2,
+	token_ch1_emc_auto_cal_config3,
+	token_ch1_emc_cdb_cntl1,
+	token_ch1_emc_dll_xform_addr0,
+	token_ch1_emc_dll_xform_addr1,
+	token_ch1_emc_dll_xform_addr2,
+	token_ch1_emc_fbio_spare,
+	token_ch1_emc_xm2_clk_pad_ctrl,
+	token_ch1_emc_xm2_clk_pad_ctrl2,
+	token_ch1_emc_xm2_cmd_pad_ctrl2,
+	token_ch1_emc_xm2_cmd_pad_ctrl3,
+	token_ch1_emc_xm2_cmd_pad_ctrl4,
+	token_ch1_emc_xm2_dq_pad_ctrl,
+	token_ch1_emc_xm2_dq_pad_ctrl2,
+	token_ch1_emc_xm2_dqs_pad_ctrl,
+	token_ch1_emc_xm2_dqs_pad_ctrl3,
+	token_ch1_emc_xm2_dqs_pad_ctrl4,
+	token_mc_mts_carveout_bom,
+	token_mc_mts_carveout_adr_hi,
+	token_mc_mts_carveout_size_mb,
+	token_mc_mts_carveout_reg_ctrl,
+
+	token_force32 = 0x7fffffff
+} parse_token;
+
+typedef enum
+{
+	field_type_none = 0,
+	field_type_enum,
+	field_type_u32,
+	field_type_u8,
+	field_type_force32 = 0x7fffffff
+} field_type;
+
+/* Forward declarations */
+typedef int (*process_function)(build_image_context *context,
+				parse_token token,
+				char *remainder);
+
+typedef int (*process_subfield_function)(build_image_context *context,
+					u_int32_t index,
+					parse_token token,
+					u_int32_t value);
+
+
+typedef struct
+{
+	char *name;
+	u_int32_t value;
+} enum_item;
+
+typedef struct
+{
+	char *name;
+	u_int32_t token;
+	field_type type;
+	enum_item *enum_table;
+} field_item;
+
+
+typedef struct
+{
+	char *prefix;
+	parse_token token;
+	field_item *field_table;
+	process_subfield_function process;
+} parse_subfield_item;
+
+typedef struct
+{
+	char *prefix;
+	parse_token token;
+	process_function process;
+} parse_item;
+
+/*
+ * Set of function pointers and table pointers to be used to access the different hardware
+ * interface for setting/getting bct information.
+ */
+typedef struct cbootimage_soc_config_rec {
+	/*
+	 * Set device parameters in bct according to the value listed
+	 *
+	 * @param context	The main context pointer
+	 * @param index  	The device index in bct field
+	 * @param token  	The parse token value
+	 * @param value  	Value to set
+	 * @return 0 and -ENODATA for success and failure
+	 */
+	int (*set_dev_param)(build_image_context *context,
+			u_int32_t index,
+			parse_token token,
+			u_int32_t value);
+	/*
+	 * Get the specified device parameters from bct data stored
+	 * in context.
+	 *
+	 * @param context	The main context pointer
+	 * @param index  	The device index in bct field
+	 * @param token  	The parse token value
+	 * @param value  	Return value get from bct field
+	 * @return 0 and -ENODATA for success and failure
+	 */
+	int (*get_dev_param)(build_image_context *context,
+			u_int32_t index,
+			parse_token token,
+			u_int32_t *value);
+	/*
+	 * Set sdram parameters in bct according to the value listed
+	 * in config file.
+	 *
+	 * @param context	The main context pointer
+	 * @param index  	The sdram index in bct field
+	 * @param token  	The parse token value
+	 * @param value  	Value to set
+	 * @return 0 and 1 for success and failure
+	 */
+	int (*set_sdram_param)(build_image_context *context,
+			u_int32_t index,
+			parse_token token,
+			u_int32_t value);
+	/*
+	 * Get the specified sdram parameters from bct data stored
+	 * in context.
+	 *
+	 * @param context	The main context pointer
+	 * @param index  	The sdram index in bct field
+	 * @param token  	The parse token value
+	 * @param value  	Return value get from bct field
+	 * @return 0 and 1 for success and failure
+	 */
+	int (*get_sdram_param)(build_image_context *context,
+			u_int32_t index,
+			parse_token token,
+			u_int32_t *value);
+	/*
+	 * Set bootloader parameters in bct according to the value listed
+	 * in config file.
+	 *
+	 * @param set 	Bootloader index
+	 * @param id  	The parse token value
+	 * @param data	Value to set
+	 * @param bct 	Bct pointer
+	 * @return 0 and -ENODATA for success and failure
+	 */
+	int (*setbl_param)(u_int32_t set,
+			parse_token id,
+			u_int32_t *data,
+			u_int8_t *bct);
+	/*
+	 * Get the specified bootloader parameters from bct data stored
+	 * in context.
+	 *
+	 * @param set 	Bootloader index
+	 * @param id  	The parse token value
+	 * @param data	Return value get from bct data
+	 * @param bct 	Bct pointer
+	 * @return 0 and -ENODATA for success and failure
+	 */
+	int (*getbl_param)(u_int32_t set,
+			parse_token id,
+			u_int32_t *data,
+			u_int8_t *bct);
+	/*
+	 * Set the specified bct value stored in context bct data structure.
+	 *
+	 * @param id  	The parse token value
+	 * @param data	Value to set
+	 * @param bct 	Bct pointer
+	 * @return 0 and -ENODATA for success and failure
+	 */
+	int (*set_value)(parse_token id,
+			u_int32_t  data,
+			u_int8_t *bct);
+	/*
+	 * Get the specified bct value or some constant value of clocks and
+	 * hw type.
+	 *
+	 * @param id  	The parse token value
+	 * @param data	Return value get from bct data
+	 * @param bct 	Bct pointer
+	 * @return 0 and -ENODATA for success and failure
+	 */
+	int (*get_value)(parse_token id,
+			u_int32_t *data,
+			u_int8_t *bct);
+	/*
+	 * Set the bct crypto hash data.
+	 *
+	 * @param id    	The parse token value
+	 * @param data  	Value to set
+	 * @param length	Length of data to set
+	 * @param bct   	Bct pointer
+	 * @return 0 and -ENODATA for success and failure
+	 */
+	int (*set_data)(parse_token id,
+			u_int8_t *data,
+			u_int32_t  length,
+			u_int8_t *bct);
+
+	void (*init_bad_block_table)(build_image_context *context);
+
+	enum_item *devtype_table;
+	enum_item *sdmmc_data_width_table;
+	enum_item *spi_clock_source_table;
+	enum_item *nvboot_memory_type_table;
+	field_item *sdram_field_table;
+	field_item *nand_table;
+	field_item *sdmmc_table;
+	field_item *spiflash_table;
+	parse_subfield_item *device_type_table;
+} cbootimage_soc_config;
+
+void process_config_file(build_image_context *context, u_int8_t simple_parse);
+
+void t124_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config);
+void t114_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config);
+void t30_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config);
+void t20_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config);
+
+int if_bct_is_t124_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config);
+int if_bct_is_t114_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config);
+int if_bct_is_t30_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config);
+int if_bct_is_t20_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config);
+
+int
+t124_get_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value);
+int
+t124_set_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value);
+int
+t124_get_sdram_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value);
+int
+t124_set_sdram_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value);
+int
+t114_get_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value);
+int
+t114_set_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value);
+int
+t114_get_sdram_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value);
+int
+t114_set_sdram_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value);
+int
+t30_get_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value);
+int
+t30_set_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value);
+int
+t30_get_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t *value);
+int
+t30_set_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t value);
+int
+t20_get_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value);
+int
+t20_set_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value);
+
+int
+t20_get_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t *value);
+int
+t20_set_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t value);
+
+u_int32_t iceil_log2(u_int32_t a, u_int32_t b);
+
+/* Returns the smallest power of 2 >= a */
+u_int32_t ceil_log2(u_int32_t a);
+
+extern cbootimage_soc_config *g_soc_config;
+
+/*
+ * Provide access to enum and field tables.  These tables are useful when
+ * pretty printing a BCT file using bct_dump.
+ */
+
+extern enum_item s_devtype_table_t20[];
+extern enum_item s_devtype_table_t30[];
+extern enum_item s_devtype_table_t114[];
+extern enum_item s_devtype_table_t124[];
+
+extern enum_item s_sdmmc_data_width_table_t20[];
+extern enum_item s_sdmmc_data_width_table_t30[];
+extern enum_item s_sdmmc_data_width_table_t114[];
+extern enum_item s_sdmmc_data_width_table_t124[];
+
+extern enum_item s_spi_clock_source_table_t20[];
+extern enum_item s_spi_clock_source_table_t30[];
+extern enum_item s_spi_clock_source_table_t114[];
+extern enum_item s_spi_clock_source_table_t124[];
+
+extern enum_item s_nvboot_memory_type_table_t20[];
+extern enum_item s_nvboot_memory_type_table_t30[];
+extern enum_item s_nvboot_memory_type_table_t114[];
+extern enum_item s_nvboot_memory_type_table_t124[];
+
+extern field_item s_sdram_field_table_t20[];
+extern field_item s_sdram_field_table_t30[];
+extern field_item s_sdram_field_table_t114[];
+extern field_item s_sdram_field_table_t124[];
+
+extern field_item s_nand_table_t20[];
+extern field_item s_nand_table_t30[];
+
+extern field_item s_sdmmc_table_t20[];
+extern field_item s_sdmmc_table_t30[];
+extern field_item s_sdmmc_table_t114[];
+extern field_item s_sdmmc_table_t124[];
+
+extern field_item s_spiflash_table_t20[];
+extern field_item s_spiflash_table_t30[];
+extern field_item s_spiflash_table_t114[];
+extern field_item s_spiflash_table_t124[];
+
+extern parse_subfield_item s_device_type_table_t20[];
+extern parse_subfield_item s_device_type_table_t30[];
+extern parse_subfield_item s_device_type_table_t114[];
+extern parse_subfield_item s_device_type_table_t124[];
+
+#endif /* #ifndef INCLUDED_PARSE_H */
diff --git a/scripts/tegra/set.c b/scripts/tegra/set.c
new file mode 100644
index 000000000000..08c9fb62e7d0
--- /dev/null
+++ b/scripts/tegra/set.c
@@ -0,0 +1,206 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * set.c - State setting support for the cbootimage tool
+ */
+
+#include "set.h"
+#include "cbootimage.h"
+#include "crypto.h"
+#include "data_layout.h"
+
+/*
+ * Function prototypes
+ *
+ * ParseXXX() parses XXX in the input
+ * SetXXX() sets state based on the parsing results but does not perform
+ *      any parsing of its own
+ * A ParseXXX() function may call other parse functions and set functions.
+ * A SetXXX() function may not call any parseing functions.
+ */
+#define DEFAULT()                                                     \
+	default:                                                      \
+		printf("Unexpected token %d at line %d\n",            \
+		token, __LINE__);                              \
+	return 1
+
+int
+read_from_image(char	*filename,
+		u_int8_t	**image,
+		u_int32_t	*actual_size,
+		file_type	f_type)
+{
+	int result = 0; /* 0 = success, 1 = failure */
+	FILE *fp;
+	struct stat stats;
+
+	fp = fopen(filename, "r");
+	if (fp == NULL) {
+		result = 1;
+		return result;
+	}
+
+	if (stat(filename, &stats) != 0) {
+		printf("Error: Unable to query info on bootloader path %s\n",
+			filename);
+		result = 1;
+		goto cleanup;
+	}
+
+	*actual_size  = (u_int32_t)stats.st_size;
+
+	if (f_type == file_type_bl && *actual_size > MAX_BOOTLOADER_SIZE) {
+		printf("Error: Bootloader file %s is too large.\n",
+			filename);
+		result = 1;
+		goto cleanup;
+	}
+	*image = malloc(*actual_size);
+	if (*image == NULL) {
+		result = 1;
+		goto cleanup;
+	}
+
+	memset(*image, 0, *actual_size);
+
+	if (fread(*image, 1, (size_t)stats.st_size, fp) != stats.st_size) {
+		result = 1;
+		goto cleanup;
+	}
+
+cleanup:
+	fclose(fp);
+	return result;
+}
+
+/*
+ * Processes commands to set a bootloader.
+ *
+ * @param context    	The main context pointer
+ * @param filename   	The file name of bootloader
+ * @param load_addr  	The load address value for bootloader
+ * @param entry_point	The entry point value for bootloader
+ * @return 0 and 1 for success and failure
+ */
+int
+set_bootloader(build_image_context	*context,
+		char	*filename,
+		u_int32_t	load_addr,
+		u_int32_t	entry_point)
+{
+	context->newbl_filename = filename;
+	context->newbl_load_addr = load_addr;
+	context->newbl_entry_point = entry_point;
+	return update_bl(context);
+}
+
+#define DEFAULT()                                                     \
+	default:                                                      \
+		printf("Unexpected token %d at line %d\n",            \
+			token, __LINE__);                              \
+		return 1
+
+/*
+ * General handler for setting values in config files.
+ *
+ * @param context	The main context pointer
+ * @param token  	The parse token value
+ * @param value  	The value to set
+ * @return 0 for success
+ */
+int context_set_value(build_image_context *context,
+		parse_token token,
+		u_int32_t value)
+{
+	assert(context != NULL);
+
+	switch (token) {
+	case token_attribute:
+		context->newbl_attr = value;
+		break;
+
+	case token_block_size:
+		context->block_size = value;
+		context->block_size_log2 = log2(value);
+
+		if (context->memory != NULL) {
+			printf("Error: Too late to change block size.\n");
+			return 1;
+		}
+
+		if (value != (u_int32_t)(1 << context->block_size_log2)) {
+			printf("Error: Block size must be a power of 2.\n");
+			return 1;
+		}
+		context->pages_per_blk= 1 << (context->block_size_log2- 
+				context->page_size_log2);
+		g_soc_config->set_value(token_block_size_log2,
+			context->block_size_log2, context->bct);
+		break;
+
+	case token_partition_size:
+		if (context->memory != NULL) {
+			printf("Error: Too late to change block size.\n");
+			return 1;
+		}
+
+		context->partition_size= value;
+		g_soc_config->set_value(token_partition_size,
+			value, context->bct);
+		break;
+
+	case token_page_size:
+		context->page_size = value;
+		context->page_size_log2 = log2(value);
+		context->pages_per_blk= 1 << (context->block_size_log2- 
+			context->page_size_log2);
+
+		g_soc_config->set_value(token_page_size_log2,
+			context->page_size_log2, context->bct);
+		break;
+	case token_redundancy:
+		context->redundancy = value;
+		break;
+
+	case token_version:
+		context->version = value;
+		break;
+
+	case token_bct_copy:
+		context->bct_copy = value;
+		break;
+
+	case token_odm_data:
+		context->odm_data = value;
+		break;
+
+	case token_pre_bct_pad_blocks:
+		if (context->bct_init) {
+			printf("Error: Too late to pre-BCT pad.\n");
+			return 1;
+		}
+		context->pre_bct_pad_blocks = value;
+		break;
+
+	DEFAULT();
+	}
+
+	return 0;
+}
diff --git a/scripts/tegra/set.h b/scripts/tegra/set.h
new file mode 100644
index 000000000000..1515fcd740bc
--- /dev/null
+++ b/scripts/tegra/set.h
@@ -0,0 +1,49 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * set.h - Definitions for the cbootimage state setting code.
+ */
+
+#ifndef INCLUDED_SET_H
+#define INCLUDED_SET_H
+
+#include "cbootimage.h"
+#include "parse.h"
+#include "string.h"
+#include "sys/stat.h"
+
+int
+set_bootloader(build_image_context	*context,
+		char	*filename,
+		u_int32_t	load_addr,
+		u_int32_t	entry_point);
+
+int
+context_set_value(build_image_context	*context,
+		parse_token	token,
+		u_int32_t	value);
+
+int
+read_from_image(char *filename,
+		u_int8_t	**Image,
+		u_int32_t	*actual_size,
+		file_type	f_type);
+
+#endif /* #ifndef INCLUDED_SET_H */
diff --git a/scripts/tegra/t114/nvbctlib_t114.c b/scripts/tegra/t114/nvbctlib_t114.c
new file mode 100644
index 000000000000..f7e449aceb54
--- /dev/null
+++ b/scripts/tegra/t114/nvbctlib_t114.c
@@ -0,0 +1,1103 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#include "../cbootimage.h"
+#include "../parse.h"
+#include "../crypto.h"
+#include "nvboot_bct_t114.h"
+#include "string.h"
+
+/* nvbctlib_t114.c: The implementation of the nvbctlib API for t114. */
+
+/* Definitions that simplify the code which follows. */
+#define CASE_GET_SDRAM_PARAM(x) \
+case token_##x:\
+	*value = params->x; \
+	break
+
+#define CASE_SET_SDRAM_PARAM(x) \
+case token_##x:\
+	params->x = value; \
+	break
+
+#define CASE_GET_DEV_PARAM(dev, x) \
+case token_##dev##_##x:\
+	*value = bct->dev_params[index].dev##_params.x; \
+	break
+
+#define CASE_SET_DEV_PARAM(dev, x) \
+case token_##dev##_##x:\
+	bct->dev_params[index].dev##_params.x = value; \
+	break
+
+#define CASE_GET_BL_PARAM(x) \
+case token_bl_##x:\
+	*data = bct_ptr->bootloader[set].x; \
+	break
+
+#define CASE_SET_BL_PARAM(x) \
+case token_bl_##x:\
+	bct_ptr->bootloader[set].x = *data; \
+	break
+
+#define CASE_GET_NVU32(id) \
+case token_##id:\
+	if (bct == NULL) return -ENODATA; \
+	*data = bct_ptr->id; \
+	break
+
+#define CASE_GET_CONST(id, val) \
+case token_##id:\
+	*data = val; \
+	break
+
+#define CASE_GET_CONST_PREFIX(id, val_prefix) \
+case token_##id:\
+	*data = val_prefix##_##id; \
+	break
+
+#define CASE_SET_NVU32(id) \
+case token_##id:\
+	bct_ptr->id = data; \
+	break
+
+#define CASE_GET_DATA(id, size) \
+case token_##id:\
+	if (*length < size) return -ENODATA;\
+	memcpy(data, &(bct_ptr->id), size);   \
+	*length = size;\
+	break
+
+#define CASE_SET_DATA(id, size) \
+case token_##id:\
+	if (length < size) return -ENODATA;\
+	memcpy(&(bct_ptr->id), data, size);   \
+	break
+
+#define DEFAULT()                                   \
+default :                                           \
+	printf("Unexpected token %d at line %d\n",  \
+		token, __LINE__);                   \
+	return 1
+
+int
+t114_set_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value)
+{
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	bct->num_param_sets = NV_MAX(bct->num_param_sets, index + 1);
+
+	switch (token) {
+	CASE_SET_DEV_PARAM(sdmmc, clock_divider);
+	CASE_SET_DEV_PARAM(sdmmc, data_width);
+	CASE_SET_DEV_PARAM(sdmmc, max_power_class_supported);
+	CASE_SET_DEV_PARAM(sdmmc, multi_page_support);
+
+	CASE_SET_DEV_PARAM(spiflash, clock_source);
+	CASE_SET_DEV_PARAM(spiflash, clock_divider);
+	CASE_SET_DEV_PARAM(spiflash, read_command_type_fast);
+	CASE_SET_DEV_PARAM(spiflash, page_size_2k_or_16k);
+
+	case token_dev_type:
+		bct->dev_type[index] = value;
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t114_get_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value)
+{
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	switch (token) {
+	CASE_GET_DEV_PARAM(sdmmc, clock_divider);
+	CASE_GET_DEV_PARAM(sdmmc, data_width);
+	CASE_GET_DEV_PARAM(sdmmc, max_power_class_supported);
+	CASE_GET_DEV_PARAM(sdmmc, multi_page_support);
+
+	CASE_GET_DEV_PARAM(spiflash, clock_source);
+	CASE_GET_DEV_PARAM(spiflash, clock_divider);
+	CASE_GET_DEV_PARAM(spiflash, read_command_type_fast);
+	CASE_GET_DEV_PARAM(spiflash, page_size_2k_or_16k);
+
+	case token_dev_type:
+		*value = bct->dev_type[index];
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t114_get_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t *value)
+{
+	nvboot_sdram_params *params;
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+	params = &(bct->sdram_params[index]);
+
+	switch (token) {
+	CASE_GET_SDRAM_PARAM(memory_type);
+	CASE_GET_SDRAM_PARAM(pllm_input_divider);
+	CASE_GET_SDRAM_PARAM(pllm_feedback_divider);
+	CASE_GET_SDRAM_PARAM(pllm_stable_time);
+	CASE_GET_SDRAM_PARAM(pllm_setup_control);
+	CASE_GET_SDRAM_PARAM(pllm_select_div2);
+	CASE_GET_SDRAM_PARAM(pllm_pdlshift_ph45);
+	CASE_GET_SDRAM_PARAM(pllm_pdlshift_ph90);
+	CASE_GET_SDRAM_PARAM(pllm_pdlshift_ph135);
+	CASE_GET_SDRAM_PARAM(pllm_kcp);
+	CASE_GET_SDRAM_PARAM(pllm_kvco);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare0);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_interval);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_config);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_config2);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_config3);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_wait);
+	CASE_GET_SDRAM_PARAM(emc_pin_program_wait);
+	CASE_GET_SDRAM_PARAM(emc_rc);
+	CASE_GET_SDRAM_PARAM(emc_rfc);
+	CASE_GET_SDRAM_PARAM(emc_rfc_slr);
+	CASE_GET_SDRAM_PARAM(emc_ras);
+	CASE_GET_SDRAM_PARAM(emc_rp);
+	CASE_GET_SDRAM_PARAM(emc_r2r);
+	CASE_GET_SDRAM_PARAM(emc_w2w);
+	CASE_GET_SDRAM_PARAM(emc_r2w);
+	CASE_GET_SDRAM_PARAM(emc_w2r);
+	CASE_GET_SDRAM_PARAM(emc_r2p);
+	CASE_GET_SDRAM_PARAM(emc_w2p);
+	CASE_GET_SDRAM_PARAM(emc_rd_rcd);
+	CASE_GET_SDRAM_PARAM(emc_wr_rcd);
+	CASE_GET_SDRAM_PARAM(emc_rrd);
+	CASE_GET_SDRAM_PARAM(emc_rext);
+	CASE_GET_SDRAM_PARAM(emc_wdv);
+	CASE_GET_SDRAM_PARAM(emc_wdv_mask);
+	CASE_GET_SDRAM_PARAM(emc_quse);
+	CASE_GET_SDRAM_PARAM(emc_ibdly);
+	CASE_GET_SDRAM_PARAM(emc_einput);
+	CASE_GET_SDRAM_PARAM(emc_einput_duration);
+	CASE_GET_SDRAM_PARAM(emc_puterm_extra);
+	CASE_GET_SDRAM_PARAM(emc_cdb_cntl1);
+	CASE_GET_SDRAM_PARAM(emc_cdb_cntl2);
+	CASE_GET_SDRAM_PARAM(emc_qrst);
+	CASE_GET_SDRAM_PARAM(emc_qsafe);
+	CASE_GET_SDRAM_PARAM(emc_rdv);
+	CASE_GET_SDRAM_PARAM(emc_rdv_mask);
+	CASE_GET_SDRAM_PARAM(emc_refresh);
+	CASE_GET_SDRAM_PARAM(emc_burst_refresh_num);
+	CASE_GET_SDRAM_PARAM(emc_pdex2wr);
+	CASE_GET_SDRAM_PARAM(emc_pdex2rd);
+	CASE_GET_SDRAM_PARAM(emc_pchg2pden);
+	CASE_GET_SDRAM_PARAM(emc_act2pden);
+	CASE_GET_SDRAM_PARAM(emc_ar2pden);
+	CASE_GET_SDRAM_PARAM(emc_rw2pden);
+	CASE_GET_SDRAM_PARAM(emc_txsr);
+	CASE_GET_SDRAM_PARAM(emc_tcke);
+	CASE_GET_SDRAM_PARAM(emc_tckesr);
+	CASE_GET_SDRAM_PARAM(emc_tpd);
+	CASE_GET_SDRAM_PARAM(emc_tfaw);
+	CASE_GET_SDRAM_PARAM(emc_trpab);
+	CASE_GET_SDRAM_PARAM(emc_tclkstable);
+	CASE_GET_SDRAM_PARAM(emc_tclkstop);
+	CASE_GET_SDRAM_PARAM(emc_trefbw);
+	CASE_GET_SDRAM_PARAM(emc_quse_extra);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg5);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg6);
+	CASE_GET_SDRAM_PARAM(emc_fbio_spare);
+	CASE_GET_SDRAM_PARAM(emc_mrs);
+	CASE_GET_SDRAM_PARAM(emc_emrs);
+	CASE_GET_SDRAM_PARAM(emc_emrs2);
+	CASE_GET_SDRAM_PARAM(emc_emrs3);
+	CASE_GET_SDRAM_PARAM(emc_mrw1);
+	CASE_GET_SDRAM_PARAM(emc_mrw2);
+	CASE_GET_SDRAM_PARAM(emc_mrw3);
+	CASE_GET_SDRAM_PARAM(emc_mrw4);
+	CASE_GET_SDRAM_PARAM(emc_mrw_reset_command);
+	CASE_GET_SDRAM_PARAM(emc_mrw_reset_ninit_wait);
+	CASE_GET_SDRAM_PARAM(emc_adr_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_cfg);
+	CASE_GET_SDRAM_PARAM(emc_cfg);
+	CASE_GET_SDRAM_PARAM(emc_cfg2);
+	CASE_GET_SDRAM_PARAM(emc_dbg);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll_period);
+	CASE_GET_SDRAM_PARAM(warm_boot_wait);
+	CASE_GET_SDRAM_PARAM(emc_ctt_term_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_odt_write);
+	CASE_GET_SDRAM_PARAM(emc_odt_read);
+	CASE_GET_SDRAM_PARAM(emc_zcal_wait_cnt);
+	CASE_GET_SDRAM_PARAM(emc_zcal_mrw_cmd);
+	CASE_GET_SDRAM_PARAM(emc_mrs_reset_dll);
+	CASE_GET_SDRAM_PARAM(emc_mrs_reset_dll_wait);
+	CASE_GET_SDRAM_PARAM(emc_emrs_ddr2_dll_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_ddr2_dll_reset);
+	CASE_GET_SDRAM_PARAM(emc_emrs_ddr2_ocd_calib);
+	CASE_GET_SDRAM_PARAM(emc_ddr2_wait);
+	CASE_GET_SDRAM_PARAM(pmc_ddr_pwr);
+	CASE_GET_SDRAM_PARAM(emc_clock_source);
+	CASE_GET_SDRAM_PARAM(emc_pin_extra_wait);
+	CASE_GET_SDRAM_PARAM(emc_timing_control_wait);
+	CASE_GET_SDRAM_PARAM(emc_wext);
+	CASE_GET_SDRAM_PARAM(emc_ctt);
+	CASE_GET_SDRAM_PARAM(emc_ctt_duration);
+	CASE_GET_SDRAM_PARAM(emc_prerefresh_req_cnt);
+	CASE_GET_SDRAM_PARAM(emc_txsr_dll);
+	CASE_GET_SDRAM_PARAM(emc_cfg_rsv);
+	CASE_GET_SDRAM_PARAM(emc_mrw_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrw_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_extramode_reg_write_enable);
+	CASE_GET_SDRAM_PARAM(emc_extramode_reg_write_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_wait_cnt);
+	CASE_GET_SDRAM_PARAM(emc_mrs_wait_cnt2);
+	CASE_GET_SDRAM_PARAM(emc_cmd_q);
+	CASE_GET_SDRAM_PARAM(emc_mc2emc_q);
+	CASE_GET_SDRAM_PARAM(emc_dyn_self_ref_control);
+	CASE_GET_SDRAM_PARAM(ahb_arbitration_xbar_ctrl_meminit_done);
+	CASE_GET_SDRAM_PARAM(emc_dev_select);
+	CASE_GET_SDRAM_PARAM(emc_sel_dpd_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs3);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs4);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs5);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs6);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs7);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse3);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse4);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse5);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse6);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse7);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr2);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs0);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs1);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs2);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs3);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs4);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs5);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs6);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs7);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq3);
+	CASE_GET_SDRAM_PARAM(emc_zcal_interval);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_dev0);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_dev1);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_wait);
+	CASE_GET_SDRAM_PARAM(emc_zcal_warm_cold_boot_enables);
+	CASE_GET_SDRAM_PARAM(emc_mrw_lpddr2zcal_warm_boot);
+	CASE_GET_SDRAM_PARAM(emc_zqcal_ddr3_warm_boot);
+	CASE_GET_SDRAM_PARAM(emc_zcal_warm_boot_wait);
+	CASE_GET_SDRAM_PARAM(emc_mrs_warm_boot_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrs_extra);
+	CASE_GET_SDRAM_PARAM(emc_clken_override);
+	CASE_GET_SDRAM_PARAM(emc_extra_refresh_num);
+	CASE_GET_SDRAM_PARAM(emc_clken_override_allwarm_boot);
+	CASE_GET_SDRAM_PARAM(mc_clken_override_allwarm_boot);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll_period_warm_boot);
+	CASE_GET_SDRAM_PARAM(pmc_vddp_sel);
+	CASE_GET_SDRAM_PARAM(pmc_ddr_cfg);
+	CASE_GET_SDRAM_PARAM(pmc_io_dpd_req);
+	CASE_GET_SDRAM_PARAM(pmc_io_dpd2_req);
+	CASE_GET_SDRAM_PARAM(pmc_reg_short);
+	CASE_GET_SDRAM_PARAM(pmc_eno_vtt_gen);
+	CASE_GET_SDRAM_PARAM(pmc_no_io_power);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl4);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl4);
+	CASE_GET_SDRAM_PARAM(emc_xm2dq_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2dq_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2clk_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2clk_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2comp_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_acpd_control);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte_cfg);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte0);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte1);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte2);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte3);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte_cfg);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte0);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte1);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte2);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte3);
+	CASE_GET_SDRAM_PARAM(emc_addr_swizzle_stack1a);
+	CASE_GET_SDRAM_PARAM(emc_addr_swizzle_stack1b);
+	CASE_GET_SDRAM_PARAM(emc_addr_swizzle_stack2a);
+	CASE_GET_SDRAM_PARAM(emc_addr_swizzle_stack2b);
+	CASE_GET_SDRAM_PARAM(emc_addr_swizzle_stack3);
+	CASE_GET_SDRAM_PARAM(emc_dsr_vttgen_drv);
+	CASE_GET_SDRAM_PARAM(emc_txdsrvttgen);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_dev0);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_dev1);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_channel_mask);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_channel_mask_propagation_count);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask0);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask1);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask2);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_outstanding_req);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rcd);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rp);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rc);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_ras);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_faw);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rrd);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rap2pre);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_wap2pre);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_r2r);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_w2w);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_r2w);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_w2r);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_da_turns);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_da_covers);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_misc0);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_misc1);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_ring1_throttle);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_override);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_rsv);
+	CASE_GET_SDRAM_PARAM(mc_clken_override);
+	CASE_GET_SDRAM_PARAM(mc_emc_reg_mode);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_bom);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_size_mb);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_vpr_override);
+	CASE_GET_SDRAM_PARAM(mc_sec_carveout_bom);
+	CASE_GET_SDRAM_PARAM(mc_sec_carveout_size_mb);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_write_access);
+	CASE_GET_SDRAM_PARAM(mc_sec_carveout_protect_write_access);
+	CASE_GET_SDRAM_PARAM(emc_ca_training_enable);
+	CASE_GET_SDRAM_PARAM(emc_ca_training_timing_cntl1);
+	CASE_GET_SDRAM_PARAM(emc_ca_training_timing_cntl2);
+	CASE_GET_SDRAM_PARAM(swizzle_rank_byte_encode);
+	CASE_GET_SDRAM_PARAM(boot_rom_patch_control);
+	CASE_GET_SDRAM_PARAM(boot_rom_patch_data);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dqs0);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dqs1);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dqs2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dqs3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dqs4);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dqs5);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dqs6);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dqs7);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_quse0);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_quse1);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_quse2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_quse3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_quse4);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_quse5);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_quse6);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_quse7);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs0);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs1);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs4);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs5);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs6);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs7);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dq0);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dq1);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dq2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_dq3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte_cfg);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte0);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte1);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte_cfg);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte0);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte1);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack1a);
+	CASE_GET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack1b);
+	CASE_GET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack2a);
+	CASE_GET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack2b);
+	CASE_GET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_auto_cal_config);
+	CASE_GET_SDRAM_PARAM(ch1_emc_auto_cal_config2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_auto_cal_config3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_cdb_cntl1);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_addr0);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_addr1);
+	CASE_GET_SDRAM_PARAM(ch1_emc_dll_xform_addr2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_fbio_spare);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_clk_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_clk_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_cmd_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_cmd_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_cmd_pad_ctrl4);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_dq_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_dq_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_dqs_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_dqs_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(ch1_emc_xm2_dqs_pad_ctrl4);
+
+	DEFAULT();
+	}
+	return 0;
+}
+
+int
+t114_set_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t value)
+{
+	nvboot_sdram_params *params;
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+	params = &(bct->sdram_params[index]);
+	/* Update the number of SDRAM parameter sets. */
+	bct->num_sdram_sets = NV_MAX(bct->num_sdram_sets, index + 1);
+
+	switch (token) {
+	CASE_SET_SDRAM_PARAM(memory_type);
+	CASE_SET_SDRAM_PARAM(pllm_input_divider);
+	CASE_SET_SDRAM_PARAM(pllm_feedback_divider);
+	CASE_SET_SDRAM_PARAM(pllm_stable_time);
+	CASE_SET_SDRAM_PARAM(pllm_setup_control);
+	CASE_SET_SDRAM_PARAM(pllm_select_div2);
+	CASE_SET_SDRAM_PARAM(pllm_pdlshift_ph45);
+	CASE_SET_SDRAM_PARAM(pllm_pdlshift_ph90);
+	CASE_SET_SDRAM_PARAM(pllm_pdlshift_ph135);
+	CASE_SET_SDRAM_PARAM(pllm_kcp);
+	CASE_SET_SDRAM_PARAM(pllm_kvco);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare0);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_interval);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_config);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_config2);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_config3);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_wait);
+	CASE_SET_SDRAM_PARAM(emc_pin_program_wait);
+	CASE_SET_SDRAM_PARAM(emc_rc);
+	CASE_SET_SDRAM_PARAM(emc_rfc);
+	CASE_SET_SDRAM_PARAM(emc_rfc_slr);
+	CASE_SET_SDRAM_PARAM(emc_ras);
+	CASE_SET_SDRAM_PARAM(emc_rp);
+	CASE_SET_SDRAM_PARAM(emc_r2r);
+	CASE_SET_SDRAM_PARAM(emc_w2w);
+	CASE_SET_SDRAM_PARAM(emc_r2w);
+	CASE_SET_SDRAM_PARAM(emc_w2r);
+	CASE_SET_SDRAM_PARAM(emc_r2p);
+	CASE_SET_SDRAM_PARAM(emc_w2p);
+	CASE_SET_SDRAM_PARAM(emc_rd_rcd);
+	CASE_SET_SDRAM_PARAM(emc_wr_rcd);
+	CASE_SET_SDRAM_PARAM(emc_rrd);
+	CASE_SET_SDRAM_PARAM(emc_rext);
+	CASE_SET_SDRAM_PARAM(emc_wdv);
+	CASE_SET_SDRAM_PARAM(emc_wdv_mask);
+	CASE_SET_SDRAM_PARAM(emc_quse);
+	CASE_SET_SDRAM_PARAM(emc_ibdly);
+	CASE_SET_SDRAM_PARAM(emc_einput);
+	CASE_SET_SDRAM_PARAM(emc_einput_duration);
+	CASE_SET_SDRAM_PARAM(emc_puterm_extra);
+	CASE_SET_SDRAM_PARAM(emc_cdb_cntl1);
+	CASE_SET_SDRAM_PARAM(emc_cdb_cntl2);
+	CASE_SET_SDRAM_PARAM(emc_qrst);
+	CASE_SET_SDRAM_PARAM(emc_qsafe);
+	CASE_SET_SDRAM_PARAM(emc_rdv);
+	CASE_SET_SDRAM_PARAM(emc_rdv_mask);
+	CASE_SET_SDRAM_PARAM(emc_refresh);
+	CASE_SET_SDRAM_PARAM(emc_burst_refresh_num);
+	CASE_SET_SDRAM_PARAM(emc_pdex2wr);
+	CASE_SET_SDRAM_PARAM(emc_pdex2rd);
+	CASE_SET_SDRAM_PARAM(emc_pchg2pden);
+	CASE_SET_SDRAM_PARAM(emc_act2pden);
+	CASE_SET_SDRAM_PARAM(emc_ar2pden);
+	CASE_SET_SDRAM_PARAM(emc_rw2pden);
+	CASE_SET_SDRAM_PARAM(emc_txsr);
+	CASE_SET_SDRAM_PARAM(emc_tcke);
+	CASE_SET_SDRAM_PARAM(emc_tckesr);
+	CASE_SET_SDRAM_PARAM(emc_tpd);
+	CASE_SET_SDRAM_PARAM(emc_tfaw);
+	CASE_SET_SDRAM_PARAM(emc_trpab);
+	CASE_SET_SDRAM_PARAM(emc_tclkstable);
+	CASE_SET_SDRAM_PARAM(emc_tclkstop);
+	CASE_SET_SDRAM_PARAM(emc_trefbw);
+	CASE_SET_SDRAM_PARAM(emc_quse_extra);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg5);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg6);
+	CASE_SET_SDRAM_PARAM(emc_fbio_spare);
+	CASE_SET_SDRAM_PARAM(emc_mrs);
+	CASE_SET_SDRAM_PARAM(emc_emrs);
+	CASE_SET_SDRAM_PARAM(emc_emrs2);
+	CASE_SET_SDRAM_PARAM(emc_emrs3);
+	CASE_SET_SDRAM_PARAM(emc_mrw1);
+	CASE_SET_SDRAM_PARAM(emc_mrw2);
+	CASE_SET_SDRAM_PARAM(emc_mrw3);
+	CASE_SET_SDRAM_PARAM(emc_mrw4);
+	CASE_SET_SDRAM_PARAM(emc_mrw_reset_command);
+	CASE_SET_SDRAM_PARAM(emc_mrw_reset_ninit_wait);
+	CASE_SET_SDRAM_PARAM(emc_adr_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_cfg);
+	CASE_SET_SDRAM_PARAM(emc_cfg);
+	CASE_SET_SDRAM_PARAM(emc_cfg2);
+	CASE_SET_SDRAM_PARAM(emc_dbg);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll_period);
+	CASE_SET_SDRAM_PARAM(warm_boot_wait);
+	CASE_SET_SDRAM_PARAM(emc_ctt_term_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_odt_write);
+	CASE_SET_SDRAM_PARAM(emc_odt_read);
+	CASE_SET_SDRAM_PARAM(emc_zcal_wait_cnt);
+	CASE_SET_SDRAM_PARAM(emc_zcal_mrw_cmd);
+	CASE_SET_SDRAM_PARAM(emc_mrs_reset_dll);
+	CASE_SET_SDRAM_PARAM(emc_mrs_reset_dll_wait);
+	CASE_SET_SDRAM_PARAM(emc_emrs_ddr2_dll_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_ddr2_dll_reset);
+	CASE_SET_SDRAM_PARAM(emc_emrs_ddr2_ocd_calib);
+	CASE_SET_SDRAM_PARAM(emc_ddr2_wait);
+	CASE_SET_SDRAM_PARAM(pmc_ddr_pwr);
+	CASE_SET_SDRAM_PARAM(emc_clock_source);
+	CASE_SET_SDRAM_PARAM(emc_pin_extra_wait);
+	CASE_SET_SDRAM_PARAM(emc_timing_control_wait);
+	CASE_SET_SDRAM_PARAM(emc_wext);
+	CASE_SET_SDRAM_PARAM(emc_ctt);
+	CASE_SET_SDRAM_PARAM(emc_ctt_duration);
+	CASE_SET_SDRAM_PARAM(emc_prerefresh_req_cnt);
+	CASE_SET_SDRAM_PARAM(emc_txsr_dll);
+	CASE_SET_SDRAM_PARAM(emc_cfg_rsv);
+	CASE_SET_SDRAM_PARAM(emc_mrw_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrw_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_extramode_reg_write_enable);
+	CASE_SET_SDRAM_PARAM(emc_extramode_reg_write_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_wait_cnt);
+	CASE_SET_SDRAM_PARAM(emc_mrs_wait_cnt2);
+	CASE_SET_SDRAM_PARAM(emc_cmd_q);
+	CASE_SET_SDRAM_PARAM(emc_mc2emc_q);
+	CASE_SET_SDRAM_PARAM(emc_dyn_self_ref_control);
+	CASE_SET_SDRAM_PARAM(ahb_arbitration_xbar_ctrl_meminit_done);
+	CASE_SET_SDRAM_PARAM(emc_dev_select);
+	CASE_SET_SDRAM_PARAM(emc_sel_dpd_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs3);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs4);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs5);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs6);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs7);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse3);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse4);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse5);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse6);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse7);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr2);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs0);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs1);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs2);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs3);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs4);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs5);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs6);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs7);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq3);
+	CASE_SET_SDRAM_PARAM(emc_zcal_interval);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_dev0);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_dev1);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_wait);
+	CASE_SET_SDRAM_PARAM(emc_zcal_warm_cold_boot_enables);
+	CASE_SET_SDRAM_PARAM(emc_mrw_lpddr2zcal_warm_boot);
+	CASE_SET_SDRAM_PARAM(emc_zqcal_ddr3_warm_boot);
+	CASE_SET_SDRAM_PARAM(emc_zcal_warm_boot_wait);
+	CASE_SET_SDRAM_PARAM(emc_mrs_warm_boot_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrs_extra);
+	CASE_SET_SDRAM_PARAM(emc_clken_override);
+	CASE_SET_SDRAM_PARAM(emc_extra_refresh_num);
+	CASE_SET_SDRAM_PARAM(emc_clken_override_allwarm_boot);
+	CASE_SET_SDRAM_PARAM(mc_clken_override_allwarm_boot);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll_period_warm_boot);
+	CASE_SET_SDRAM_PARAM(pmc_vddp_sel);
+	CASE_SET_SDRAM_PARAM(pmc_ddr_cfg);
+	CASE_SET_SDRAM_PARAM(pmc_io_dpd_req);
+	CASE_SET_SDRAM_PARAM(pmc_io_dpd2_req);
+	CASE_SET_SDRAM_PARAM(pmc_reg_short);
+	CASE_SET_SDRAM_PARAM(pmc_eno_vtt_gen);
+	CASE_SET_SDRAM_PARAM(pmc_no_io_power);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl4);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl4);
+	CASE_SET_SDRAM_PARAM(emc_xm2dq_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2dq_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2clk_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2clk_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2comp_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_acpd_control);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte_cfg);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte0);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte1);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte2);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte3);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte_cfg);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte0);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte1);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte2);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte3);
+	CASE_SET_SDRAM_PARAM(emc_addr_swizzle_stack1a);
+	CASE_SET_SDRAM_PARAM(emc_addr_swizzle_stack1b);
+	CASE_SET_SDRAM_PARAM(emc_addr_swizzle_stack2a);
+	CASE_SET_SDRAM_PARAM(emc_addr_swizzle_stack2b);
+	CASE_SET_SDRAM_PARAM(emc_addr_swizzle_stack3);
+	CASE_SET_SDRAM_PARAM(emc_dsr_vttgen_drv);
+	CASE_SET_SDRAM_PARAM(emc_txdsrvttgen);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_dev0);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_dev1);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_channel_mask);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_channel_mask_propagation_count);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask0);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask1);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask2);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_outstanding_req);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rcd);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rp);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rc);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_ras);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_faw);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rrd);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rap2pre);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_wap2pre);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_r2r);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_w2w);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_r2w);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_w2r);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_da_turns);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_da_covers);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_misc0);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_misc1);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_ring1_throttle);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_override);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_rsv);
+	CASE_SET_SDRAM_PARAM(mc_clken_override);
+	CASE_SET_SDRAM_PARAM(mc_emc_reg_mode);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_bom);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_size_mb);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_vpr_override);
+	CASE_SET_SDRAM_PARAM(mc_sec_carveout_bom);
+	CASE_SET_SDRAM_PARAM(mc_sec_carveout_size_mb);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_write_access);
+	CASE_SET_SDRAM_PARAM(mc_sec_carveout_protect_write_access);
+	CASE_SET_SDRAM_PARAM(emc_ca_training_enable);
+	CASE_SET_SDRAM_PARAM(emc_ca_training_timing_cntl1);
+	CASE_SET_SDRAM_PARAM(emc_ca_training_timing_cntl2);
+	CASE_SET_SDRAM_PARAM(swizzle_rank_byte_encode);
+	CASE_SET_SDRAM_PARAM(boot_rom_patch_control);
+	CASE_SET_SDRAM_PARAM(boot_rom_patch_data);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dqs0);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dqs1);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dqs2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dqs3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dqs4);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dqs5);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dqs6);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dqs7);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_quse0);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_quse1);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_quse2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_quse3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_quse4);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_quse5);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_quse6);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_quse7);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs0);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs1);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs4);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs5);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs6);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dli_trim_tx_dqs7);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dq0);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dq1);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dq2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_dq3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte_cfg);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte0);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte1);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank0_byte3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte_cfg);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte0);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte1);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_swizzle_rank1_byte3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack1a);
+	CASE_SET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack1b);
+	CASE_SET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack2a);
+	CASE_SET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack2b);
+	CASE_SET_SDRAM_PARAM(ch1_emc_addr_swizzle_stack3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_auto_cal_config);
+	CASE_SET_SDRAM_PARAM(ch1_emc_auto_cal_config2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_auto_cal_config3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_cdb_cntl1);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_addr0);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_addr1);
+	CASE_SET_SDRAM_PARAM(ch1_emc_dll_xform_addr2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_fbio_spare);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_clk_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_clk_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_cmd_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_cmd_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_cmd_pad_ctrl4);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_dq_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_dq_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_dqs_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_dqs_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(ch1_emc_xm2_dqs_pad_ctrl4);
+
+	DEFAULT();
+	}
+	return 0;
+}
+
+int
+t114_getbl_param(u_int32_t set,
+		parse_token id,
+		u_int32_t *data,
+		u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (set >= NVBOOT_MAX_BOOTLOADERS)
+		return -ENODATA;
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	CASE_GET_BL_PARAM(version);
+	CASE_GET_BL_PARAM(start_blk);
+	CASE_GET_BL_PARAM(start_page);
+	CASE_GET_BL_PARAM(length);
+	CASE_GET_BL_PARAM(load_addr);
+	CASE_GET_BL_PARAM(entry_point);
+	CASE_GET_BL_PARAM(attribute);
+
+	case token_bl_crypto_hash:
+		memcpy(data,
+		&(bct_ptr->bootloader[set].signature.crypto_hash),
+		sizeof(nvboot_hash));
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t114_setbl_param(u_int32_t set,
+		parse_token id,
+		u_int32_t *data,
+		u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (set >= NVBOOT_MAX_BOOTLOADERS)
+		return -ENODATA;
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	CASE_SET_BL_PARAM(version);
+	CASE_SET_BL_PARAM(start_blk);
+	CASE_SET_BL_PARAM(start_page);
+	CASE_SET_BL_PARAM(length);
+	CASE_SET_BL_PARAM(load_addr);
+	CASE_SET_BL_PARAM(entry_point);
+	CASE_SET_BL_PARAM(attribute);
+
+	case token_bl_crypto_hash:
+		memcpy(&(bct_ptr->bootloader[set].signature.crypto_hash),
+		data,
+		sizeof(nvboot_hash));
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t114_bct_get_value(parse_token id, u_int32_t *data, u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+	nvboot_config_table  samplebct; /* Used for computing offsets. */
+
+	/*
+	 * Note: Not all queries require use of the BCT, so testing for a
+	 *       valid BCT is distributed within the code.
+	 */
+	if (data == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	/*
+	 * Simple BCT fields
+	 */
+	CASE_GET_NVU32(boot_data_version);
+	CASE_GET_NVU32(block_size_log2);
+	CASE_GET_NVU32(page_size_log2);
+	CASE_GET_NVU32(partition_size);
+	CASE_GET_NVU32(num_param_sets);
+	CASE_GET_NVU32(num_sdram_sets);
+	CASE_GET_NVU32(bootloader_used);
+	CASE_GET_NVU32(odm_data);
+
+	/*
+	 * Constants.
+	 */
+
+	CASE_GET_CONST(bootloaders_max,   NVBOOT_MAX_BOOTLOADERS);
+	CASE_GET_CONST(reserved_size,     NVBOOT_BCT_RESERVED_SIZE);
+
+	case token_crypto_hash:
+		memcpy(data,
+		&(bct_ptr->signature.crypto_hash),
+		sizeof(nvboot_hash));
+		break;
+
+	case token_reserved_offset:
+		*data = (u_int8_t *)&(samplebct.reserved)
+				- (u_int8_t *)&samplebct;
+		break;
+
+	case token_bct_size:
+		*data = sizeof(nvboot_config_table);
+		break;
+
+	CASE_GET_CONST(hash_size, sizeof(nvboot_hash));
+
+	case token_crypto_offset:
+		/* Offset to region in BCT to encrypt & sign */
+		*data = (u_int8_t *)&(samplebct.random_aes_blk)
+				- (u_int8_t *)&samplebct;
+		break;
+
+	case token_crypto_length:
+		/* size of region in BCT to encrypt & sign */
+		*data = (u_int8_t *)bct_ptr + sizeof(nvboot_config_table)
+				- (u_int8_t *)&(bct_ptr->random_aes_blk);
+		break;
+
+	CASE_GET_CONST(max_bct_search_blks, NVBOOT_MAX_BCT_SEARCH_BLOCKS);
+
+	CASE_GET_CONST_PREFIX(dev_type_sdmmc, nvboot);
+	CASE_GET_CONST_PREFIX(dev_type_spi, nvboot);
+	CASE_GET_CONST_PREFIX(sdmmc_data_width_4bit, nvboot);
+	CASE_GET_CONST_PREFIX(sdmmc_data_width_8bit, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_pllp_out0, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_clockm, nvboot);
+
+	CASE_GET_CONST_PREFIX(memory_type_none, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_lpddr, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr2, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_lpddr2, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr3, nvboot);
+
+	default:
+		return -ENODATA;
+	}
+	return 0;
+}
+
+int
+t114_bct_set_value(parse_token id, u_int32_t data, u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	/*
+	 * Simple BCT fields
+	 */
+	CASE_SET_NVU32(boot_data_version);
+	CASE_SET_NVU32(block_size_log2);
+	CASE_SET_NVU32(page_size_log2);
+	CASE_SET_NVU32(partition_size);
+	CASE_SET_NVU32(num_param_sets);
+	CASE_SET_NVU32(num_sdram_sets);
+	CASE_SET_NVU32(bootloader_used);
+	CASE_SET_NVU32(odm_data);
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t114_bct_set_data(parse_token id,
+	u_int8_t *data,
+	u_int32_t length,
+	u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+
+	case token_crypto_hash:
+		if (length < sizeof(nvboot_hash)) return -ENODATA;
+		memcpy( &bct_ptr->signature.crypto_hash, data, sizeof(nvboot_hash) );
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+void t114_init_bad_block_table(build_image_context *context)
+{
+	u_int32_t bytes_per_entry;
+	nvboot_badblock_table *table;
+	nvboot_config_table *bct;
+
+	bct = (nvboot_config_table *)(context->bct);
+
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	table = &bct->badblock_table;
+
+	bytes_per_entry = ICEIL(context->partition_size,
+				NVBOOT_BAD_BLOCK_TABLE_SIZE);
+	table->block_size_log2 = context->block_size_log2;
+	table->virtual_blk_size_log2 = NV_MAX(ceil_log2(bytes_per_entry),
+					table->block_size_log2);
+	table->entries_used = iceil_log2(context->partition_size,
+					table->virtual_blk_size_log2);
+}
+
+cbootimage_soc_config tegra114_config = {
+	.init_bad_block_table		= t114_init_bad_block_table,
+	.set_dev_param				= t114_set_dev_param,
+	.get_dev_param				= t114_get_dev_param,
+	.set_sdram_param			= t114_set_sdram_param,
+	.get_sdram_param			= t114_get_sdram_param,
+	.setbl_param				= t114_setbl_param,
+	.getbl_param				= t114_getbl_param,
+	.set_value					= t114_bct_set_value,
+	.get_value					= t114_bct_get_value,
+	.set_data					= t114_bct_set_data,
+
+	.devtype_table				= s_devtype_table_t114,
+	.sdmmc_data_width_table		= s_sdmmc_data_width_table_t114,
+	.spi_clock_source_table		= s_spi_clock_source_table_t114,
+	.nvboot_memory_type_table	= s_nvboot_memory_type_table_t114,
+	.sdram_field_table			= s_sdram_field_table_t114,
+	.nand_table					= 0,
+	.sdmmc_table				= s_sdmmc_table_t114,
+	.spiflash_table				= s_spiflash_table_t114,
+	.device_type_table			= s_device_type_table_t114,
+};
+
+void t114_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config)
+{
+	context->boot_data_version = BOOTDATA_VERSION_T114;
+	*soc_config = &tegra114_config;
+}
+
+int if_bct_is_t114_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config)
+{
+	nvboot_config_table * bct = (nvboot_config_table *) context->bct;
+
+	if (bct->boot_data_version == BOOTDATA_VERSION_T114)
+	{
+		t114_get_soc_config(context, soc_config);
+		return 1;
+	}
+	return 0;
+}
diff --git a/scripts/tegra/t114/nvboot_bct_t114.h b/scripts/tegra/t114/nvboot_bct_t114.h
new file mode 100644
index 000000000000..e42d14917cd8
--- /dev/null
+++ b/scripts/tegra/t114/nvboot_bct_t114.h
@@ -0,0 +1,363 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#ifndef INCLUDED_NVBOOT_BCT_T114_H
+#define INCLUDED_NVBOOT_BCT_T114_H
+
+#include <sys/types.h>
+#include "nvboot_sdram_param_t114.h"
+
+/**
+ * Defines the number of 32-bit words in the customer_data area of the BCT.
+ */
+#define NVBOOT_BCT_CUSTOMER_DATA_WORDS		178
+
+/**
+ * Defines the number of bytes in the customer_data area of the BCT.
+ */
+#define NVBOOT_BCT_CUSTOMER_DATA_SIZE \
+		(NVBOOT_BCT_CUSTOMER_DATA_WORDS * 4)
+
+/**
+ * Defines the number of bytes in the reserved area of the BCT.
+ */
+#define NVBOOT_BCT_RESERVED_SIZE		2
+
+/**
+ * Defines the maximum number of bootloader descriptions in the BCT.
+ */
+#define NVBOOT_MAX_BOOTLOADERS			4
+
+/**
+ * Defines the maximum number of device parameter sets in the BCT.
+ * The value must be equal to (1 << # of device straps)
+ */
+#define NVBOOT_BCT_MAX_PARAM_SETS		4
+
+/**
+ * Defines the maximum number of SDRAM parameter sets in the BCT.
+ * The value must be equal to (1 << # of SDRAM straps)
+ */
+#define NVBOOT_BCT_MAX_SDRAM_SETS		4
+
+/**
+ * Defines the number of entries (bits) in the bad block table.
+ * The consequences of changing its value are as follows.  Using P as the
+ * # of physical blocks in the boot loader and B as the value of this
+ * constant:
+ *    B > P: There will be unused storage in the bad block table.
+ *    B < P: The virtual block size will be greater than the physical block
+ *           size, so the granularity of the bad block table will be less than
+ *           one bit per physical block.
+ *
+ * 4096 bits is enough to represent an 8MiB partition of 2KiB blocks with one
+ * bit per block (1 virtual block = 1 physical block).  This occupies 512 bytes
+ * of storage.
+ */
+#define NVBOOT_BAD_BLOCK_TABLE_SIZE		4096
+
+/**
+ * Defines the amount of padding needed to pad the bad block table to a
+ * multiple of AES block size.
+ */
+#define NVBOOT_BAD_BLOCK_TABLE_PADDING	10
+
+/**
+ * Defines the maximum number of blocks to search for BCTs.
+ *
+ * This value covers the initial block and a set of journal blocks.
+ *
+ * Ideally, this number will span several erase units for reliable updates
+ * and tolerance for blocks to become bad with use.  Safe updates require
+ * a minimum of 2 erase units in which BCTs can appear.
+ *
+ * To ensure that the BCT search spans a sufficient range of configurations,
+ * the search block count has been set to 64. This allows for redundancy with
+ * a wide range of parts and provides room for greater problems in this
+ * region of the device.
+ */
+#define NVBOOT_MAX_BCT_SEARCH_BLOCKS	64
+
+#define ARSE_RSA_MAX_MODULUS_SIZE		2048
+
+/**
+ * Defines the RSA modulus length in bits and bytes used for PKC secure boot.
+ */
+enum {NVBOOT_SE_RSA_MODULUS_LENGTH_BITS = ARSE_RSA_MAX_MODULUS_SIZE};
+
+/*
+ * Defines the CMAC-AES-128 hash length in 32 bit words. (128 bits = 4 words)
+ */
+enum {NVBOOT_CMAC_AES_HASH_LENGTH = 4};
+
+/**
+ * Defines the storage for a hash value (128 bits).
+ */
+typedef struct nvboot_hash_rec {
+	u_int32_t hash[NVBOOT_CMAC_AES_HASH_LENGTH];
+} nvboot_hash;
+
+/*
+ *  Defines the storage for the RSA public key's modulus
+ *  in the BCT
+ */
+typedef struct nvboot_rsa_key_modulus_rec
+{
+	/// The modulus size is 2048-bits.
+	u_int32_t modulus[NVBOOT_SE_RSA_MODULUS_LENGTH_BITS / 8 / 4];
+} nvboot_rsa_key_modulus;
+
+typedef struct nvboot_rsa_pss_sig_rec
+{
+	/*
+	 * The RSA-PSS signature length is equal to the
+	 * length in octets of the RSA modulus.
+	 * In our case, it's 2048-bits.
+	 */
+	u_int32_t signature[NVBOOT_SE_RSA_MODULUS_LENGTH_BITS / 8 / 4];
+} nvboot_rsa_pss_sig;
+
+typedef union nvboot_object_signature_rec
+{
+	/*
+	 * Specifies the AES-CMAC signature for the rest of the BCT structure if symmetric key
+	 * encryption secure boot scheme is used.
+	 */
+	nvboot_hash crypto_hash;
+
+	/*
+	 * Specifies the RSASSA-PSS signature for the rest of the BCT structure if public
+	 * key cryptography secure boot scheme is used.
+	 */
+	nvboot_rsa_pss_sig rsa_pss_sig;
+} nvboot_object_signature;
+
+typedef struct nvboot_ecid_rec
+{
+	u_int32_t	ecid_0;
+	u_int32_t	ecid_1;
+	u_int32_t	ecid_2;
+	u_int32_t	ecid_3;
+} nvboot_ecid;
+
+/* Defines various data widths supported. */
+typedef enum {
+	/**
+	 * Specifies a 1 bit interface to eMMC.
+	 * Note that 1-bit data width is only for the driver's internal use.
+	 * Fuses doesn't provide option to select 1-bit data width.
+	 * The driver selects 1-bit internally based on need.
+	 * It is used for reading Extended CSD and when the power class
+	 * requirements of a card for 4-bit or 8-bit transfers are not
+	 * supported by the target board.
+	 */
+	nvboot_sdmmc_data_width_1bit = 0,
+
+	/* Specifies a 4 bit interface to eMMC. */
+	nvboot_sdmmc_data_width_4bit = 1,
+
+	/* Specifies a 8 bit interface to eMMC. */
+	nvboot_sdmmc_data_width_8bit = 2,
+	/* Specifies a 4 bit Ddr interface to eMMC. */
+	nvboot_sdmmc_data_width_ddr_4bit = 5,
+	/* Specifies a 8 bit Ddr interface to eMMC. */
+	nvboot_sdmmc_data_width_ddr_8bit = 6,
+
+	nvboot_sdmmc_data_width_num,
+	nvboot_sdmmc_data_width_force32 = 0x7FFFFFFF
+} nvboot_sdmmc_data_width;
+
+/* Defines the parameters that can be changed after BCT is read. */
+typedef struct nvboot_sdmmc_params_rec {
+	/**
+	 * Specifies the clock divider for the SDMMC controller's clock source,
+	 * which is PLLP running at 216MHz.  If it is set to 9, then the SDMMC
+	 * controller runs at 216/9 = 24MHz.
+	 */
+	u_int8_t clock_divider;
+
+	/* Specifies the data bus width. Supported data widths are 4/8 bits. */
+	nvboot_sdmmc_data_width data_width;
+
+	/**
+	 * Max Power class supported by the target board.
+	 * The driver determines the best data width and clock frequency
+	 * supported within the power class range (0 to Max) if the selected
+	 * data width cannot be used at the chosen clock frequency.
+	 */
+	u_int8_t max_power_class_supported;
+
+	/* Specifies the max page size supported by driver */
+	u_int8_t multi_page_support;
+} nvboot_sdmmc_params;
+
+typedef enum {
+	/* Specifies SPI clock source to be PLLP. */
+	nvboot_spi_clock_source_pllp_out0 = 0,
+
+	/* Specifies SPI clock source to be ClockM. */
+	nvboot_spi_clock_source_clockm = 6,
+
+	nvboot_spi_clock_source_num,
+	nvboot_spi_clock_source_force32 = 0x7FFFFFF
+} nvboot_spi_clock_source;
+
+/**
+ * Defines the parameters SPI FLASH devices.
+ */
+typedef struct nvboot_spiflash_params_rec {
+	/**
+	 * Specifies the clock source to use.
+	 */
+	u_int32_t clock_source;
+
+	/**
+	 * Specifes the clock divider to use.
+	 * The value is a 7-bit value based on an input clock of 432Mhz.
+	 * Divider = (432+ DesiredFrequency-1)/DesiredFrequency;
+	 * Typical values:
+	 *     NORMAL_READ at 20MHz: 22
+	 *     FAST_READ   at 33MHz: 14
+	 *     FAST_READ   at 40MHz: 11
+	 *     FAST_READ   at 50MHz:  9
+	 */
+	u_int8_t clock_divider;
+
+	/**
+	 * Specifies the type of command for read operations.
+	 * NV_FALSE specifies a NORMAL_READ Command
+	 * NV_TRUE  specifies a FAST_READ   Command
+	 */
+	u_int8_t read_command_type_fast;
+
+	/* 0 = 2k page size, 1 = 16K page size */
+	u_int8_t page_size_2k_or_16k;
+} nvboot_spiflash_params;
+
+/**
+* Defines the union of the parameters required by each device.
+*/
+typedef union {
+	u_int8_t size[64];
+	/* Specifies optimized parameters for eMMC and eSD */
+	nvboot_sdmmc_params sdmmc_params;
+	/* Specifies optimized parameters for SPI NOR */
+	nvboot_spiflash_params spiflash_params;
+} nvboot_dev_params;
+
+/**
+ * Identifies the types of devices from which the system booted.
+ * Used to identify primary and secondary boot devices.
+ * @note These no longer match the fuse API device values (for
+ * backward compatibility with AP15).
+ */
+typedef enum {
+	/* Specifies a default (unset) value. */
+	nvboot_dev_type_none = 0,
+
+	/* Specifies SPI NOR. */
+	nvboot_dev_type_spi = 3,
+
+	/* Specifies SDMMC (either eMMC or eSD). */
+	nvboot_dev_type_sdmmc = 4,
+
+	nvboot_dev_type_max,
+
+	/* Ignore -- Forces compilers to make 32-bit enums. */
+	nvboot_dev_type_force32 = 0x7FFFFFFF
+} nvboot_dev_type;
+
+/**
+ * Stores information needed to locate and verify a boot loader.
+ *
+ * There is one \c nv_bootloader_info structure for each copy of a BL stored on
+ * the device.
+ */
+typedef struct nv_bootloader_info_rec {
+	u_int32_t version;
+	u_int32_t start_blk;
+	u_int32_t start_page;
+	u_int32_t length;
+	u_int32_t load_addr;
+	u_int32_t entry_point;
+	u_int32_t attribute;
+
+	/* Specifies the AES-CMAC MAC or RSASSA-PSS signature of the BL. */
+	nvboot_object_signature signature;
+} nv_bootloader_info;
+
+/**
+ * Defines the bad block table structure stored in the BCT.
+ */
+typedef struct nvboot_badblock_table_rec {
+	u_int32_t entries_used;
+	u_int8_t virtual_blk_size_log2;
+	u_int8_t block_size_log2;
+	u_int8_t bad_blks[NVBOOT_BAD_BLOCK_TABLE_SIZE / 8];
+	/*
+	 * Add a reserved field as padding to make the bad block table structure
+	 * a multiple of 16 bytes (AES block size).
+	 */
+	u_int8_t reserved[NVBOOT_BAD_BLOCK_TABLE_PADDING];
+} nvboot_badblock_table;
+
+/**
+ * Contains the information needed to load BLs from the secondary boot device.
+ *
+ * - Supplying NumParamSets = 0 indicates not to load any of them.
+ * - Supplying NumDramSets  = 0 indicates not to load any of them.
+ * - The \c random_aes_blk member exists to increase the difficulty of
+ *   key attacks based on knowledge of this structure.
+ */
+typedef struct nvboot_config_table_rec {
+	nvboot_badblock_table badblock_table;
+	nvboot_rsa_key_modulus key;
+	nvboot_object_signature signature;
+	u_int8_t customer_data[NVBOOT_BCT_CUSTOMER_DATA_SIZE];
+	u_int32_t odm_data;
+	u_int32_t reserved1;
+
+	/* START OF SIGNED SECTION OF THE BCT */
+	nvboot_hash random_aes_blk;
+	nvboot_ecid unique_chip_id;
+	u_int32_t boot_data_version;
+	u_int32_t block_size_log2;
+	u_int32_t page_size_log2;
+	u_int32_t partition_size;
+	u_int32_t num_param_sets;
+	nvboot_dev_type dev_type[NVBOOT_BCT_MAX_PARAM_SETS];
+	nvboot_dev_params dev_params[NVBOOT_BCT_MAX_PARAM_SETS];
+	u_int32_t num_sdram_sets;
+	nvboot_sdram_params sdram_params[NVBOOT_BCT_MAX_SDRAM_SETS];
+
+	u_int32_t bootloader_used;
+	nv_bootloader_info bootloader[NVBOOT_MAX_BOOTLOADERS];
+
+	u_int8_t enable_fail_back;
+
+	/*
+	 * Specify whether or not to enable JTAG access when the JTAG disable fuse
+	 * has not been burned.
+	 * SecureJtagControl = NV_FALSE (0) = Disable JTAG access.
+	 * SecureJtagControl = NV_TRUE (1) = Enable JTAG access.
+	 */
+	u_int8_t secure_jtag_control;
+	u_int8_t reserved[NVBOOT_BCT_RESERVED_SIZE];
+} nvboot_config_table;
+#endif /* #ifndef INCLUDED_NVBOOT_BCT_T114_H */
diff --git a/scripts/tegra/t114/nvboot_sdram_param_t114.h b/scripts/tegra/t114/nvboot_sdram_param_t114.h
new file mode 100644
index 000000000000..85b758fd74b2
--- /dev/null
+++ b/scripts/tegra/t114/nvboot_sdram_param_t114.h
@@ -0,0 +1,806 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/**
+ * Defines the SDRAM parameter structure.
+ *
+ * Note that PLLM is used by EMC.
+ */
+
+#ifndef INCLUDED_NVBOOT_SDRAM_PARAM_T114_H
+#define INCLUDED_NVBOOT_SDRAM_PARAM_T114_H
+
+#define NVBOOT_BCT_SDRAM_ARB_CONFIG_WORDS 27
+
+typedef enum {
+	/* Specifies the memory type to be undefined */
+	nvboot_memory_type_none = 0,
+
+	/* Specifies the memory type to be DDR SDRAM */
+	nvboot_memory_type_ddr = 0,
+
+	/* Specifies the memory type to be LPDDR SDRAM */
+	nvboot_memory_type_lpddr = 0,
+
+	/* Specifies the memory type to be DDR2 SDRAM */
+	nvboot_memory_type_ddr2 = 0,
+
+	/* Specifies the memory type to be LPDDR2 SDRAM */
+	nvboot_memory_type_lpddr2,
+
+	/* Specifies the memory type to be DDR3 SDRAM */
+	nvboot_memory_type_ddr3,
+
+	nvboot_memory_type_num,
+	nvboot_memory_type_force32 = 0x7FFFFFF
+} nvboot_memory_type;
+
+/**
+ * Defines the SDRAM parameter structure
+ */
+typedef struct nvboot_sdram_params_rec {
+	/* sdram data structure generated by tool warmboot_code_gen */
+
+	/* Specifies the type of memory device */
+	nvboot_memory_type memory_type;
+
+	/* MC/EMC clock source configuration */
+
+	/* Specifies the M value for PllM */
+	u_int32_t pllm_input_divider;
+	/* Specifies the N value for PllM */
+	u_int32_t pllm_feedback_divider;
+	/* Specifies the time to wait for PLLM to lock (in microseconds) */
+	u_int32_t pllm_stable_time;
+	/* Specifies misc. control bits */
+	u_int32_t pllm_setup_control;
+	/* Enables the Div by 2 */
+	u_int32_t pllm_select_div2;
+	/* Powers down VCO output Level shifter */
+	u_int32_t pllm_pdlshift_ph45;
+	/* Powers down VCO output Level shifter */
+	u_int32_t pllm_pdlshift_ph90;
+	/* Powers down VCO output Level shifter */
+	u_int32_t pllm_pdlshift_ph135;
+	/* Specifies value for Charge Pump Gain Control */
+	u_int32_t pllm_kcp;
+	/* Specifies VCO gain */
+	u_int32_t pllm_kvco;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare0;
+	/* Defines EMC_2X_CLK_SRC, EMC_2X_CLK_DIVISOR, EMC_INVERT_DCD */
+	u_int32_t emc_clock_source;
+
+	/* Auto-calibration of EMC pads */
+
+	/* Specifies the value for EMC_AUTO_CAL_INTERVAL */
+	u_int32_t emc_auto_cal_interval;
+	/*
+	 * Specifies the value for EMC_AUTO_CAL_CONFIG
+	 * Note: Trigger bits are set by the SDRAM code.
+	 */
+	u_int32_t emc_auto_cal_config;
+
+	/* Specifies the value for EMC_AUTO_CAL_CONFIG2 */
+	u_int32_t emc_auto_cal_config2;
+
+	/* Specifies the value for EMC_AUTO_CAL_CONFIG3 */
+	u_int32_t emc_auto_cal_config3;
+
+	/*
+	 * Specifies the time for the calibration
+	 * to stabilize (in microseconds)
+	 */
+	u_int32_t emc_auto_cal_wait;
+
+	/*
+	 * DRAM size information
+	 * Specifies the value for EMC_ADR_CFG
+	 */
+	u_int32_t emc_adr_cfg;
+
+	/*
+	 * Specifies the time to wait after asserting pin
+	 * CKE (in microseconds)
+	 */
+	u_int32_t emc_pin_program_wait;
+	/* Specifies the extra delay before/after pin RESET/CKE command */
+	u_int32_t emc_pin_extra_wait;
+	/*
+	 * Specifies the extra delay after the first writing
+	 * of EMC_TIMING_CONTROL
+	 */
+	u_int32_t emc_timing_control_wait;
+
+	/* Timing parameters required for the SDRAM */
+
+	/* Specifies the value for EMC_RC */
+	u_int32_t emc_rc;
+	/* Specifies the value for EMC_RFC */
+	u_int32_t emc_rfc;
+	/* Specifies the value for EMC_RFC_SLR */
+	u_int32_t emc_rfc_slr;
+	/* Specifies the value for EMC_RAS */
+	u_int32_t emc_ras;
+	/* Specifies the value for EMC_RP */
+	u_int32_t emc_rp;
+	/* Specifies the value for EMC_R2R */
+	u_int32_t emc_r2r;
+	/* Specifies the value for EMC_W2W */
+	u_int32_t emc_w2w;
+	/* Specifies the value for EMC_R2W */
+	u_int32_t emc_r2w;
+	/* Specifies the value for EMC_R2W */
+	u_int32_t emc_w2r;
+	/* Specifies the value for EMC_R2P */
+	u_int32_t emc_r2p;
+	/* Specifies the value for EMC_W2P */
+	u_int32_t emc_w2p;
+	/* Specifies the value for EMC_RD_RCD */
+	u_int32_t emc_rd_rcd;
+	/* Specifies the value for EMC_WR_RCD */
+	u_int32_t emc_wr_rcd;
+	/* Specifies the value for EMC_RRD */
+	u_int32_t emc_rrd;
+	/* Specifies the value for EMC_REXT */
+	u_int32_t emc_rext;
+	/* Specifies the value for EMC_WEXT */
+	u_int32_t emc_wext;
+	/* Specifies the value for EMC_WDV */
+	u_int32_t emc_wdv;
+	/* Specifies the value for EMC_WDV_MASK */
+	u_int32_t emc_wdv_mask;
+	/* Specifies the value for EMC_QUSE */
+	u_int32_t emc_quse;
+	/* Specifies the value for EMC_IBDLY */
+	u_int32_t emc_ibdly;
+	/* Specifies the value for EMC_EINPUT */
+	u_int32_t emc_einput;
+	/* Specifies the value for EMC_EINPUT_DURATION */
+	u_int32_t emc_einput_duration;
+	/* Specifies the value for EMC_PUTERM_EXTRA */
+	u_int32_t emc_puterm_extra;
+	/* Specifies the value for EMC_CDB_CNTL_1 */
+	u_int32_t emc_cdb_cntl1;
+	/* Specifies the value for EMC_CDB_CNTL_2 */
+	u_int32_t emc_cdb_cntl2;
+	/* Specifies the value for EMC_QRST */
+	u_int32_t emc_qrst;
+	/* Specifies the value for EMC_QSAFE */
+	u_int32_t emc_qsafe;
+	/* Specifies the value for EMC_RDV */
+	u_int32_t emc_rdv;
+	/* Specifies the value for EMC_RDV_MASK */
+	u_int32_t emc_rdv_mask;
+	/* Specifies the value for EMC_CTT */
+	u_int32_t emc_ctt;
+	/* Specifies the value for EMC_CTT_DURATION */
+	u_int32_t emc_ctt_duration;
+	/* Specifies the value for EMC_REFRESH */
+	u_int32_t emc_refresh;
+	/* Specifies the value for EMC_BURST_REFRESH_NUM */
+	u_int32_t emc_burst_refresh_num;
+	/* Specifies the value for EMC_PRE_REFRESH_REQ_CNT */
+	u_int32_t emc_prerefresh_req_cnt;
+	/* Specifies the value for EMC_PDEX2WR */
+	u_int32_t emc_pdex2wr;
+	/* Specifies the value for EMC_PDEX2RD */
+	u_int32_t emc_pdex2rd;
+	/* Specifies the value for EMC_PCHG2PDEN */
+	u_int32_t emc_pchg2pden;
+	/* Specifies the value for EMC_ACT2PDEN */
+	u_int32_t emc_act2pden;
+	/* Specifies the value for EMC_AR2PDEN */
+	u_int32_t emc_ar2pden;
+	/* Specifies the value for EMC_RW2PDEN */
+	u_int32_t emc_rw2pden;
+	/* Specifies the value for EMC_TXSR */
+	u_int32_t emc_txsr;
+	/* Specifies the value for EMC_TXSRDLL */
+	u_int32_t emc_txsr_dll;
+	/* Specifies the value for EMC_TCKE */
+	u_int32_t emc_tcke;
+	/* Specifies the value for EMC_TCKESR */
+	u_int32_t emc_tckesr;
+	/* Specifies the value for EMC_TPD */
+	u_int32_t emc_tpd;
+	/* Specifies the value for EMC_TFAW */
+	u_int32_t emc_tfaw;
+	/* Specifies the value for EMC_TRPAB */
+	u_int32_t emc_trpab;
+	/* Specifies the value for EMC_TCLKSTABLE */
+	u_int32_t emc_tclkstable;
+	/* Specifies the value for EMC_TCLKSTOP */
+	u_int32_t emc_tclkstop;
+	/* Specifies the value for EMC_TREFBW */
+	u_int32_t emc_trefbw;
+	/* Specifies the value for EMC_QUSE_EXTRA */
+	u_int32_t emc_quse_extra;
+
+	/* FBIO configuration values */
+
+	/* Specifies the value for EMC_FBIO_CFG5 */
+	u_int32_t emc_fbio_cfg5;
+	/* Specifies the value for EMC_FBIO_CFG6 */
+	u_int32_t emc_fbio_cfg6;
+	/* Specifies the value for EMC_FBIO_SPARE */
+	u_int32_t emc_fbio_spare;
+
+	/* Specifies the value for EMC_CFG_RSV */
+	u_int32_t emc_cfg_rsv;
+
+	/* MRS command values */
+
+	/* Specifies the value for EMC_MRS */
+	u_int32_t emc_mrs;
+	/* Specifies the MP0 command to initialize mode registers */
+	u_int32_t emc_emrs;
+	/* Specifies the MP2 command to initialize mode registers */
+	u_int32_t emc_emrs2;
+	/* Specifies the MP3 command to initialize mode registers */
+	u_int32_t emc_emrs3;
+	/* Specifies the programming to LPDDR2 Mode Register 1 at cold boot */
+	u_int32_t emc_mrw1;
+	/* Specifies the programming to LPDDR2 Mode Register 2 at cold boot */
+	u_int32_t emc_mrw2;
+	/* Specifies the programming to LPDDR2 Mode Register 3 at cold boot */
+	u_int32_t emc_mrw3;
+	/* Specifies the programming to LPDDR2 Mode Register 11 at cold boot */
+	u_int32_t emc_mrw4;
+	/*
+	 * Specifies the programming to extra LPDDR2 Mode Register
+	 * at cold boot
+	 */
+	u_int32_t emc_mrw_extra;
+	/*
+	 * Specifies the programming to extra LPDDR2 Mode Register
+	 * at warm boot
+	 */
+	u_int32_t emc_warm_boot_mrw_extra;
+	/*
+	 * Specify the enable of extra Mode Register programming at
+	 * warm boot
+	 */
+	u_int32_t emc_warm_boot_extramode_reg_write_enable;
+	/*
+	 * Specify the enable of extra Mode Register programming at
+	 * cold boot
+	 */
+	u_int32_t emc_extramode_reg_write_enable;
+
+	/* Specifies the EMC_MRW reset command value */
+	u_int32_t emc_mrw_reset_command;
+	/* Specifies the EMC Reset wait time (in microseconds) */
+	u_int32_t emc_mrw_reset_ninit_wait;
+	/* Specifies the value for EMC_MRS_WAIT_CNT */
+	u_int32_t emc_mrs_wait_cnt;
+	/* Specifies the value for EMC_MRS_WAIT_CNT2 */
+	u_int32_t emc_mrs_wait_cnt2;
+
+	/* EMC miscellaneous configurations */
+
+	/* Specifies the value for EMC_CFG */
+	u_int32_t emc_cfg;
+	/* Specifies the value for EMC_CFG_2 */
+	u_int32_t emc_cfg2;
+	/* Specifies the value for EMC_DBG */
+	u_int32_t emc_dbg;
+	/* Specifies the value for EMC_CMDQ */
+	u_int32_t emc_cmd_q;
+	/* Specifies the value for EMC_MC2EMCQ */
+	u_int32_t emc_mc2emc_q;
+	/* Specifies the value for EMC_DYN_SELF_REF_CONTROL */
+	u_int32_t emc_dyn_self_ref_control;
+
+	/* Specifies the value for MEM_INIT_DONE */
+	u_int32_t ahb_arbitration_xbar_ctrl_meminit_done;
+
+	/* Specifies the value for EMC_CFG_DIG_DLL */
+	u_int32_t emc_cfg_dig_dll;
+	/* Specifies the value for EMC_CFG_DIG_DLL_PERIOD */
+	u_int32_t emc_cfg_dig_dll_period;
+	/* Specifies the value of *DEV_SELECTN of various EMC registers */
+	u_int32_t emc_dev_select;
+
+	/* Specifies the value for EMC_SEL_DPD_CTRL */
+	u_int32_t emc_sel_dpd_ctrl;
+
+	/* Pads trimmer delays */
+
+	/* Specifies the value for EMC_DLL_XFORM_DQS0 */
+	u_int32_t emc_dll_xform_dqs0;
+	/* Specifies the value for EMC_DLL_XFORM_DQS1 */
+	u_int32_t emc_dll_xform_dqs1;
+	/* Specifies the value for EMC_DLL_XFORM_DQS2 */
+	u_int32_t emc_dll_xform_dqs2;
+	/* Specifies the value for EMC_DLL_XFORM_DQS3 */
+	u_int32_t emc_dll_xform_dqs3;
+	/* Specifies the value for EMC_DLL_XFORM_DQS4 */
+	u_int32_t emc_dll_xform_dqs4;
+	/* Specifies the value for EMC_DLL_XFORM_DQS5 */
+	u_int32_t emc_dll_xform_dqs5;
+	/* Specifies the value for EMC_DLL_XFORM_DQS6 */
+	u_int32_t emc_dll_xform_dqs6;
+	/* Specifies the value for EMC_DLL_XFORM_DQS7 */
+	u_int32_t emc_dll_xform_dqs7;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE0 */
+	u_int32_t emc_dll_xform_quse0;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE1 */
+	u_int32_t emc_dll_xform_quse1;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE2 */
+	u_int32_t emc_dll_xform_quse2;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE3 */
+	u_int32_t emc_dll_xform_quse3;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE4 */
+	u_int32_t emc_dll_xform_quse4;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE5 */
+	u_int32_t emc_dll_xform_quse5;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE6 */
+	u_int32_t emc_dll_xform_quse6;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE7 */
+	u_int32_t emc_dll_xform_quse7;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR0 */
+	u_int32_t emc_dll_xform_addr0;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR1 */
+	u_int32_t emc_dll_xform_addr1;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR2 */
+	u_int32_t emc_dll_xform_addr2;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS0 */
+	u_int32_t emc_dli_trim_tx_dqs0;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS1 */
+	u_int32_t emc_dli_trim_tx_dqs1;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS2 */
+	u_int32_t emc_dli_trim_tx_dqs2;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS3 */
+	u_int32_t emc_dli_trim_tx_dqs3;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS4 */
+	u_int32_t emc_dli_trim_tx_dqs4;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS5 */
+	u_int32_t emc_dli_trim_tx_dqs5;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS6 */
+	u_int32_t emc_dli_trim_tx_dqs6;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS7 */
+	u_int32_t emc_dli_trim_tx_dqs7;
+	/* Specifies the value for EMC_DLL_XFORM_DQ0 */
+	u_int32_t emc_dll_xform_dq0;
+	/* Specifies the value for EMC_DLL_XFORM_DQ1 */
+	u_int32_t emc_dll_xform_dq1;
+	/* Specifies the value for EMC_DLL_XFORM_DQ2 */
+	u_int32_t emc_dll_xform_dq2;
+	/* Specifies the value for EMC_DLL_XFORM_DQ3 */
+	u_int32_t emc_dll_xform_dq3;
+
+	/*
+	 * Specifies the delay after asserting CKE pin during a WarmBoot0
+	 * sequence (in microseconds)
+	 */
+	u_int32_t warm_boot_wait;
+
+	/* Specifies the value for EMC_CTT_TERM_CTRL */
+	u_int32_t emc_ctt_term_ctrl;
+
+	/* Specifies the value for EMC_ODT_WRITE */
+	u_int32_t emc_odt_write;
+	/* Specifies the value for EMC_ODT_WRITE */
+	u_int32_t emc_odt_read;
+
+	/* Periodic ZQ calibration */
+
+	/*
+	 * Specifies the value for EMC_ZCAL_INTERVAL
+	 * Value 0 disables ZQ calibration
+	 */
+	u_int32_t emc_zcal_interval;
+	/* Specifies the value for EMC_ZCAL_WAIT_CNT */
+	u_int32_t emc_zcal_wait_cnt;
+	/* Specifies the value for EMC_ZCAL_MRW_CMD */
+	u_int32_t emc_zcal_mrw_cmd;
+
+	/* DRAM initialization sequence flow control */
+
+	/* Specifies the MRS command value for resetting DLL */
+	u_int32_t emc_mrs_reset_dll;
+	/* Specifies the command for ZQ initialization of device 0 */
+	u_int32_t emc_zcal_init_dev0;
+	/* Specifies the command for ZQ initialization of device 1 */
+	u_int32_t emc_zcal_init_dev1;
+	/*
+	 * Specifies the wait time after programming a ZQ initialization
+	 * command (in microseconds)
+	 */
+	u_int32_t emc_zcal_init_wait;
+	/* Specifies the enable for ZQ calibration at cold boot */
+	u_int32_t emc_zcal_warm_cold_boot_enables;
+
+	/*
+	 * Specifies the MRW command to LPDDR2 for ZQ calibration
+	 * on warmboot
+	 */
+	/* Is issued to both devices separately */
+	u_int32_t emc_mrw_lpddr2zcal_warm_boot;
+	/*
+	 * Specifies the ZQ command to DDR3 for ZQ calibration on warmboot
+	 * Is issued to both devices separately
+	 */
+	u_int32_t emc_zqcal_ddr3_warm_boot;
+	/*
+	 * Specifies the wait time for ZQ calibration on warmboot
+	 * (in microseconds)
+	 */
+	u_int32_t emc_zcal_warm_boot_wait;
+	/*
+	 * Specifies the enable for DRAM Mode Register programming
+	 * at warm boot
+	 */
+	u_int32_t emc_mrs_warm_boot_enable;
+	/*
+	 * Specifies the wait time after sending an MRS DLL reset command
+	 * in microseconds)
+	 */
+	u_int32_t emc_mrs_reset_dll_wait;
+	/* Specifies the extra MRS command to initialize mode registers */
+	u_int32_t emc_mrs_extra;
+	/* Specifies the extra MRS command at warm boot */
+	u_int32_t emc_warm_boot_mrs_extra;
+	/* Specifies the EMRS command to enable the DDR2 DLL */
+	u_int32_t emc_emrs_ddr2_dll_enable;
+	/* Specifies the MRS command to reset the DDR2 DLL */
+	u_int32_t emc_mrs_ddr2_dll_reset;
+	/* Specifies the EMRS command to set OCD calibration */
+	u_int32_t emc_emrs_ddr2_ocd_calib;
+	/*
+	 * Specifies the wait between initializing DDR and setting OCD
+	 * calibration (in microseconds)
+	 */
+	u_int32_t emc_ddr2_wait;
+	/* Specifies the value for EMC_CLKEN_OVERRIDE */
+	u_int32_t emc_clken_override;
+	/*
+	 * Specifies LOG2 of the extra refresh numbers after booting
+	 * Program 0 to disable
+	 */
+	u_int32_t emc_extra_refresh_num;
+	/* Specifies the master override for all EMC clocks */
+	u_int32_t emc_clken_override_allwarm_boot;
+	/* Specifies the master override for all MC clocks */
+	u_int32_t mc_clken_override_allwarm_boot;
+	/* Specifies digital dll period, choosing between 4 to 64 ms */
+	u_int32_t emc_cfg_dig_dll_period_warm_boot;
+
+	/* Pad controls */
+
+	/* Specifies the value for PMC_VDDP_SEL */
+	u_int32_t pmc_vddp_sel;
+	/* Specifies the value for PMC_DDR_PWR */
+	u_int32_t pmc_ddr_pwr;
+	/* Specifies the value for PMC_DDR_CFG */
+	u_int32_t pmc_ddr_cfg;
+	/* Specifies the value for PMC_IO_DPD_REQ */
+	u_int32_t pmc_io_dpd_req;
+	/* Specifies the value for PMC_IO_DPD2_REQ */
+	u_int32_t pmc_io_dpd2_req;
+	/* Specifies the value for PMC_REG_SHORT */
+	u_int32_t pmc_reg_short;
+	/* Specifies the value for PMC_E_NO_VTTGEN */
+	u_int32_t pmc_eno_vtt_gen;
+	/* Specifies the value for PMC_NO_IOPOWER */
+	u_int32_t pmc_no_io_power;
+	/* Specifies the value for EMC_XM2CMDPADCTRL */
+	u_int32_t emc_xm2cmd_pad_ctrl;
+	/* Specifies the value for EMC_XM2CMDPADCTRL2 */
+	u_int32_t emc_xm2cmd_pad_ctrl2;
+	/* Specifies the value for EMC_XM2CMDPADCTRL3 */
+	u_int32_t emc_xm2cmd_pad_ctrl3;
+	/* Specifies the value for EMC_XM2CMDPADCTRL4 */
+	u_int32_t emc_xm2cmd_pad_ctrl4;
+	/* Specifies the value for EMC_XM2DQSPADCTRL */
+	u_int32_t emc_xm2dqs_pad_ctrl;
+	/* Specifies the value for EMC_XM2DQSPADCTRL2 */
+	u_int32_t emc_xm2dqs_pad_ctrl2;
+	/* Specifies the value for EMC_XM2DQSPADCTRL3 */
+	u_int32_t emc_xm2dqs_pad_ctrl3;
+	/* Specifies the value for EMC_XM2DQSPADCTRL4 */
+	u_int32_t emc_xm2dqs_pad_ctrl4;
+	/* Specifies the value for EMC_XM2DQPADCTRL */
+	u_int32_t emc_xm2dq_pad_ctrl;
+	/* Specifies the value for EMC_XM2DQPADCTRL2 */
+	u_int32_t emc_xm2dq_pad_ctrl2;
+	/* Specifies the value for EMC_XM2CLKPADCTRL */
+	u_int32_t emc_xm2clk_pad_ctrl;
+	/* Specifies the value for EMC_XM2CLKPADCTRL2 */
+	u_int32_t emc_xm2clk_pad_ctrl2;
+	/* Specifies the value for EMC_XM2COMPPADCTRL */
+	u_int32_t emc_xm2comp_pad_ctrl;
+	/* Specifies the value for EMC_XM2VTTGENPADCTRL */
+	u_int32_t emc_xm2vttgen_pad_ctrl;
+	/* Specifies the value for EMC_XM2VTTGENPADCTRL2 */
+	u_int32_t emc_xm2vttgen_pad_ctrl2;
+	/* Specifies the value for EMC_ACPD_CONTROL */
+	u_int32_t emc_acpd_control;
+
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE_CFG */
+	u_int32_t emc_swizzle_rank0_byte_cfg;
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE0 */
+	u_int32_t emc_swizzle_rank0_byte0;
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE1 */
+	u_int32_t emc_swizzle_rank0_byte1;
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE2 */
+	u_int32_t emc_swizzle_rank0_byte2;
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE3 */
+	u_int32_t emc_swizzle_rank0_byte3;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE_CFG */
+	u_int32_t emc_swizzle_rank1_byte_cfg;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE0 */
+	u_int32_t emc_swizzle_rank1_byte0;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE1 */
+	u_int32_t emc_swizzle_rank1_byte1;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE2 */
+	u_int32_t emc_swizzle_rank1_byte2;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE3 */
+	u_int32_t emc_swizzle_rank1_byte3;
+	/* Specifies the value for EMC_ADDR_SWIZZLE_STACK1A */
+	u_int32_t emc_addr_swizzle_stack1a;
+	/* Specifies the value for EMC_ADDR_SWIZZLE_STACK1B */
+	u_int32_t emc_addr_swizzle_stack1b;
+	/* Specifies the value for EMC_ADDR_SWIZZLE_STACK2A */
+	u_int32_t emc_addr_swizzle_stack2a;
+	/* Specifies the value for EMC_ADDR_SWIZZLE_STACK2B */
+	u_int32_t emc_addr_swizzle_stack2b;
+	/* Specifies the value for EMC_ADDR_SWIZZLE_STACK3 */
+	u_int32_t emc_addr_swizzle_stack3;
+
+	/* Specifies the value for EMC_DSR_VTTGEN_DRV */
+	u_int32_t emc_dsr_vttgen_drv;
+
+	/* Specifies the value for EMC_TXDSRVTTGEN */
+	u_int32_t emc_txdsrvttgen;
+
+	/* DRAM size information */
+
+	/* Specifies the value for MC_EMEM_ADR_CFG */
+	u_int32_t mc_emem_adr_cfg;
+	/* Specifies the value for MC_EMEM_ADR_CFG_DEV0 */
+	u_int32_t mc_emem_adr_cfg_dev0;
+	/* Specifies the value for MC_EMEM_ADR_CFG_DEV1 */
+	u_int32_t mc_emem_adr_cfg_dev1;
+	/* Specifies the value for MC_EMEM_ADR_CFG_CHANNEL_MASK */
+	u_int32_t mc_emem_adr_cfg_channel_mask;
+	/* Specifies the value for MC_EMEM_ADR_CFG_CHANNEL_MASK_PROPAGATION_COUNT */
+	u_int32_t mc_emem_adr_cfg_channel_mask_propagation_count;
+	/* Specifies the value for MC_EMEM_ADR_CFG_BANK_MASK_0 */
+	u_int32_t mc_emem_adr_cfg_bank_mask0;
+	/* Specifies the value for MC_EMEM_ADR_CFG_BANK_MASK_1 */
+	u_int32_t mc_emem_adr_cfg_bank_mask1;
+	/* Specifies the value for MC_EMEM_ADR_CFG_BANK_MASK_2 */
+	u_int32_t mc_emem_adr_cfg_bank_mask2;
+
+	/*
+	 * Specifies the value for MC_EMEM_CFG which holds the external memory
+	 * size (in KBytes)
+	 */
+	u_int32_t mc_emem_cfg;
+
+	/* MC arbitration configuration */
+
+	/* Specifies the value for MC_EMEM_ARB_CFG */
+	u_int32_t mc_emem_arb_cfg;
+	/* Specifies the value for MC_EMEM_ARB_OUTSTANDING_REQ */
+	u_int32_t mc_emem_arb_outstanding_req;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RCD */
+	u_int32_t mc_emem_arb_timing_rcd;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RP */
+	u_int32_t mc_emem_arb_timing_rp;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RC */
+	u_int32_t mc_emem_arb_timing_rc;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RAS */
+	u_int32_t mc_emem_arb_timing_ras;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_FAW */
+	u_int32_t mc_emem_arb_timing_faw;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RRD */
+	u_int32_t mc_emem_arb_timing_rrd;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RAP2PRE */
+	u_int32_t mc_emem_arb_timing_rap2pre;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_WAP2PRE */
+	u_int32_t mc_emem_arb_timing_wap2pre;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_R2R */
+	u_int32_t mc_emem_arb_timing_r2r;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_W2W */
+	u_int32_t mc_emem_arb_timing_w2w;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_R2W */
+	u_int32_t mc_emem_arb_timing_r2w;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_W2R */
+	u_int32_t mc_emem_arb_timing_w2r;
+	/* Specifies the value for MC_EMEM_ARB_DA_TURNS */
+	u_int32_t mc_emem_arb_da_turns;
+	/* Specifies the value for MC_EMEM_ARB_DA_COVERS */
+	u_int32_t mc_emem_arb_da_covers;
+	/* Specifies the value for MC_EMEM_ARB_MISC0 */
+	u_int32_t mc_emem_arb_misc0;
+	/* Specifies the value for MC_EMEM_ARB_MISC1 */
+	u_int32_t mc_emem_arb_misc1;
+	/* Specifies the value for MC_EMEM_ARB_RING1_THROTTLE */
+	u_int32_t mc_emem_arb_ring1_throttle;
+	/* Specifies the value for MC_EMEM_ARB_OVERRIDE */
+	u_int32_t mc_emem_arb_override;
+	/* Specifies the value for MC_EMEM_ARB_RSV */
+	u_int32_t mc_emem_arb_rsv;
+
+	/* Specifies the value for MC_CLKEN_OVERRIDE */
+	u_int32_t mc_clken_override;
+
+	/* Specifies the MC/EMC register address aperture */
+	u_int32_t mc_emc_reg_mode;
+	/* Specifies the value for MC_VIDEO_PROTECT_BOM */
+	u_int32_t mc_video_protect_bom;
+	/* Specifies the value for MC_VIDEO_PROTECT_SIZE_MB */
+	u_int32_t mc_video_protect_size_mb;
+	/* Specifies the value for MC_VIDEO_PROTECT_VPR_OVERRIDE */
+	u_int32_t mc_video_protect_vpr_override;
+	/* Specifies the value for MC_SEC_CARVEOUT_BOM */
+	u_int32_t mc_sec_carveout_bom;
+	/* Specifies the value for MC_SEC_CARVEOUT_SIZE_MB */
+	u_int32_t mc_sec_carveout_size_mb;
+	/* Specifies the value for MC_VIDEO_PROTECT_REG_CTRL.VIDEO_PROTECT_WRITE_ACCESS */
+	u_int32_t mc_video_protect_write_access;
+	/* Specifies the value for MC_SEC_CARVEOUT_REG_CTRL.SEC_CARVEOUT_WRITE_ACCESS */
+	u_int32_t mc_sec_carveout_protect_write_access;
+
+	/* Specifies enable for CA training */
+	u_int32_t emc_ca_training_enable;
+	/* Specifies the value for EMC_CA_TRAINING_TIMING_CNTRL1 */
+	u_int32_t emc_ca_training_timing_cntl1;
+	/* Specifies the value for EMC_CA_TRAINING_TIMING_CNTRL2 */
+	u_int32_t emc_ca_training_timing_cntl2;
+	/* Set if bit 6 select is greater than bit 7 select; uses aremc.spec packet SWIZZLE_BIT6_GT_BIT7 */
+	u_int32_t swizzle_rank_byte_encode;
+	/* Specifies enable and offset for patched boot rom write */
+	u_int32_t boot_rom_patch_control;
+	/* Specifies data for patched boot rom write */
+	u_int32_t boot_rom_patch_data;
+
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQS0 */
+	u_int32_t ch1_emc_dll_xform_dqs0;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQS1 */
+	u_int32_t ch1_emc_dll_xform_dqs1;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQS2 */
+	u_int32_t ch1_emc_dll_xform_dqs2;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQS3 */
+	u_int32_t ch1_emc_dll_xform_dqs3;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQS4 */
+	u_int32_t ch1_emc_dll_xform_dqs4;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQS5 */
+	u_int32_t ch1_emc_dll_xform_dqs5;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQS6 */
+	u_int32_t ch1_emc_dll_xform_dqs6;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQS7 */
+	u_int32_t ch1_emc_dll_xform_dqs7;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_QUSE0 */
+	u_int32_t ch1_emc_dll_xform_quse0;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_QUSE1 */
+	u_int32_t ch1_emc_dll_xform_quse1;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_QUSE2 */
+	u_int32_t ch1_emc_dll_xform_quse2;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_QUSE3 */
+	u_int32_t ch1_emc_dll_xform_quse3;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_QUSE4 */
+	u_int32_t ch1_emc_dll_xform_quse4;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_QUSE5 */
+	u_int32_t ch1_emc_dll_xform_quse5;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_QUSE6 */
+	u_int32_t ch1_emc_dll_xform_quse6;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_QUSE7 */
+	u_int32_t ch1_emc_dll_xform_quse7;
+	/* (Channel 1) Specifies the value for EMC_DLI_TRIM_TXDQS0 */
+	u_int32_t ch1_emc_dli_trim_tx_dqs0;
+	/* (Channel 1) Specifies the value for EMC_DLI_TRIM_TXDQS1 */
+	u_int32_t ch1_emc_dli_trim_tx_dqs1;
+	/* (Channel 1) Specifies the value for EMC_DLI_TRIM_TXDQS2 */
+	u_int32_t ch1_emc_dli_trim_tx_dqs2;
+	/* (Channel 1) Specifies the value for EMC_DLI_TRIM_TXDQS3 */
+	u_int32_t ch1_emc_dli_trim_tx_dqs3;
+	/* (Channel 1) Specifies the value for EMC_DLI_TRIM_TXDQS4 */
+	u_int32_t ch1_emc_dli_trim_tx_dqs4;
+	/* (Channel 1) Specifies the value for EMC_DLI_TRIM_TXDQS5 */
+	u_int32_t ch1_emc_dli_trim_tx_dqs5;
+	/* (Channel 1) Specifies the value for EMC_DLI_TRIM_TXDQS6 */
+	u_int32_t ch1_emc_dli_trim_tx_dqs6;
+	/* (Channel 1) Specifies the value for EMC_DLI_TRIM_TXDQS7 */
+	u_int32_t ch1_emc_dli_trim_tx_dqs7;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQ0 */
+	u_int32_t ch1_emc_dll_xform_dq0;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQ1 */
+	u_int32_t ch1_emc_dll_xform_dq1;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQ2 */
+	u_int32_t ch1_emc_dll_xform_dq2;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_DQ3 */
+	u_int32_t ch1_emc_dll_xform_dq3;
+
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK0_BYTE_CFG */
+	u_int32_t ch1_emc_swizzle_rank0_byte_cfg;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK0_BYTE0 */
+	u_int32_t ch1_emc_swizzle_rank0_byte0;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK0_BYTE1 */
+	u_int32_t ch1_emc_swizzle_rank0_byte1;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK0_BYTE2 */
+	u_int32_t ch1_emc_swizzle_rank0_byte2;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK0_BYTE3 */
+	u_int32_t ch1_emc_swizzle_rank0_byte3;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK1_BYTE_CFG */
+	u_int32_t ch1_emc_swizzle_rank1_byte_cfg;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK1_BYTE0 */
+	u_int32_t ch1_emc_swizzle_rank1_byte0;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK1_BYTE1 */
+	u_int32_t ch1_emc_swizzle_rank1_byte1;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK1_BYTE2 */
+	u_int32_t ch1_emc_swizzle_rank1_byte2;
+	/* (Channel 1) Specifies the value for EMC_SWIZZLE_RANK1_BYTE3 */
+	u_int32_t ch1_emc_swizzle_rank1_byte3;
+	/* (Channel 1) Specifies the value for EMC_ADDR_SWIZZLE_STACK1A */
+	u_int32_t ch1_emc_addr_swizzle_stack1a;
+	/* (Channel 1) Specifies the value for EMC_ADDR_SWIZZLE_STACK1B */
+	u_int32_t ch1_emc_addr_swizzle_stack1b;
+	/* (Channel 1) Specifies the value for EMC_ADDR_SWIZZLE_STACK2A */
+	u_int32_t ch1_emc_addr_swizzle_stack2a;
+	/* (Channel 1) Specifies the value for EMC_ADDR_SWIZZLE_STACK2B */
+	u_int32_t ch1_emc_addr_swizzle_stack2b;
+	/* (Channel 1) Specifies the value for EMC_ADDR_SWIZZLE_STACK3 */
+	u_int32_t ch1_emc_addr_swizzle_stack3;
+
+	/* (Channel 1) Specifies the value for EMC_AUTO_CAL_CONFIG */
+	/* Note: Trigger bits are set by the SDRAM code. */
+	u_int32_t ch1_emc_auto_cal_config;
+	/* (Channel 1) Specifies the value for EMC_AUTO_CAL_CONFIG2 */
+	u_int32_t ch1_emc_auto_cal_config2;
+	/* (Channel 1) Specifies the value for EMC_AUTO_CAL_CONFIG3 */
+	u_int32_t ch1_emc_auto_cal_config3;
+	/* (Channel 1) Specifies the value for EMC_CDB_CNTL_1 */
+	u_int32_t ch1_emc_cdb_cntl1;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_ADDR0 */
+	u_int32_t ch1_emc_dll_xform_addr0;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_ADDR1 */
+	u_int32_t ch1_emc_dll_xform_addr1;
+	/* (Channel 1) Specifies the value for EMC_DLL_XFORM_ADDR2 */
+	u_int32_t ch1_emc_dll_xform_addr2;
+	/* (Channel 1) Specifies the value for EMC_FBIO_SPARE */
+	u_int32_t ch1_emc_fbio_spare;
+	/* (Channel 1) Specifies the value for EMC_XM2CLKPADCTRL */
+	u_int32_t ch1_emc_xm2_clk_pad_ctrl;
+	/* (Channel 1) Specifies the value for EMC_XM2CLKPADCTRL2 */
+	u_int32_t ch1_emc_xm2_clk_pad_ctrl2;
+	/* (Channel 1) Specifies the value for EMC_XM2CMDPADCTRL2 */
+	u_int32_t ch1_emc_xm2_cmd_pad_ctrl2;
+	/* (Channel 1) Specifies the value for EMC_XM2CMDPADCTRL3 */
+	u_int32_t ch1_emc_xm2_cmd_pad_ctrl3;
+	/* (Channel 1) Specifies the value for EMC_XM2CMDPADCTRL4 */
+	u_int32_t ch1_emc_xm2_cmd_pad_ctrl4;
+	/* (Channel 1) Specifies the value for EMC_XM2DQPADCTRL */
+	u_int32_t ch1_emc_xm2_dq_pad_ctrl;
+	/* (Channel 1) Specifies the value for EMC_XM2DQPADCTRL2 */
+	u_int32_t ch1_emc_xm2_dq_pad_ctrl2;
+	/* (Channel 1) Specifies the value for EMC_XM2DQSPADCTRL */
+	u_int32_t ch1_emc_xm2_dqs_pad_ctrl;
+	/* (Channel 1) Specifies the value for EMC_XM2DQSPADCTRL3 */
+	u_int32_t ch1_emc_xm2_dqs_pad_ctrl3;
+	/* (Channel 1) Specifies the value for EMC_XM2DQSPADCTRL4 */
+	u_int32_t ch1_emc_xm2_dqs_pad_ctrl4;
+
+	/* End of generated code by warmboot_code_gen */
+} nvboot_sdram_params;
+#endif /* #ifndef INCLUDED_NVBOOT_SDRAM_PARAM_T114_H */
+
diff --git a/scripts/tegra/t114/parse_t114.c b/scripts/tegra/t114/parse_t114.c
new file mode 100644
index 000000000000..17f612e8c8ab
--- /dev/null
+++ b/scripts/tegra/t114/parse_t114.c
@@ -0,0 +1,430 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * parse_t114.h - Definitions for the dev/sdram parameters
+ */
+
+#include "../parse.h"
+#include "nvboot_bct_t114.h"
+
+enum_item s_devtype_table_t114[] = {
+	{ "NvBootDevType_Sdmmc", nvboot_dev_type_sdmmc },
+	{ "NvBootDevType_Spi", nvboot_dev_type_spi },
+	{ "Sdmmc", nvboot_dev_type_sdmmc },
+	{ "Spi", nvboot_dev_type_spi },
+	{ NULL, 0 }
+};
+
+enum_item s_sdmmc_data_width_table_t114[] = {
+	{
+	  "NvBootSdmmcDataWidth_4Bit",
+	  nvboot_sdmmc_data_width_4bit
+	},
+	{
+	  "NvBootSdmmcDataWidth_8Bit",
+	  nvboot_sdmmc_data_width_8bit
+	},
+	{ "4Bit", nvboot_sdmmc_data_width_4bit },
+	{ "8Bit", nvboot_sdmmc_data_width_8bit },
+	{ NULL, 0 }
+};
+
+enum_item s_spi_clock_source_table_t114[] = {
+	{ "NvBootSpiClockSource_PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "NvBootSpiClockSource_ClockM", nvboot_spi_clock_source_clockm },
+	{ "ClockSource_PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "ClockSource_ClockM", nvboot_spi_clock_source_clockm },
+	{ "PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "ClockM", nvboot_spi_clock_source_clockm },
+	{ NULL, 0 }
+};
+
+enum_item s_nvboot_memory_type_table_t114[] = {
+	{ "NvBootMemoryType_None", nvboot_memory_type_none },
+	{ "NvBootMemoryType_Ddr3", nvboot_memory_type_ddr3 },
+	{ "NvBootMemoryType_Ddr2", nvboot_memory_type_ddr2 },
+	{ "NvBootMemoryType_Ddr", nvboot_memory_type_ddr },
+	{ "NvBootMemoryType_LpDdr2", nvboot_memory_type_lpddr2 },
+	{ "NvBootMemoryType_LpDdr", nvboot_memory_type_lpddr },
+
+	{ "None", nvboot_memory_type_none },
+	{ "Ddr3", nvboot_memory_type_ddr3 },
+	{ "Ddr2", nvboot_memory_type_ddr2 },
+	{ "Ddr", nvboot_memory_type_ddr },
+	{ "LpDdr2", nvboot_memory_type_lpddr2 },
+	{ "LpDdr", nvboot_memory_type_lpddr },
+
+	{ NULL, 0 }
+};
+
+#define TOKEN(name)						\
+	token_##name, field_type_u32, NULL
+
+field_item s_sdram_field_table_t114[] = {
+	{ "MemoryType", token_memory_type,
+	  field_type_enum, s_nvboot_memory_type_table_t114 },
+
+	{ "PllMInputDivider",           TOKEN(pllm_input_divider) },
+	{ "PllMFeedbackDivider",        TOKEN(pllm_feedback_divider) },
+	{ "PllMStableTime",             TOKEN(pllm_stable_time) },
+	{ "PllMSetupControl",           TOKEN(pllm_setup_control) },
+	{ "PllMSelectDiv2",             TOKEN(pllm_select_div2) },
+	{ "PllMPDLshiftPh45",           TOKEN(pllm_pdlshift_ph45) },
+	{ "PllMPDLshiftPh90",           TOKEN(pllm_pdlshift_ph90) },
+	{ "PllMPDLshiftPh135",          TOKEN(pllm_pdlshift_ph135) },
+	{ "PllMKCP",                    TOKEN(pllm_kcp) },
+	{ "PllMKVCO",                   TOKEN(pllm_kvco) },
+	{ "EmcBctSpare0",               TOKEN(emc_bct_spare0) },
+	{ "EmcAutoCalInterval",         TOKEN(emc_auto_cal_interval) },
+	{ "EmcAutoCalConfig",           TOKEN(emc_auto_cal_config) },
+	{ "EmcAutoCalConfig2",          TOKEN(emc_auto_cal_config2) },
+	{ "EmcAutoCalConfig3",          TOKEN(emc_auto_cal_config3) },
+	{ "EmcAutoCalWait",             TOKEN(emc_auto_cal_wait) },
+	{ "EmcPinProgramWait",          TOKEN(emc_pin_program_wait) },
+	{ "EmcRc",                      TOKEN(emc_rc) },
+	{ "EmcRfc",                     TOKEN(emc_rfc) },
+	{ "EmcRfcSlr",                  TOKEN(emc_rfc_slr) },
+	{ "EmcRas",                     TOKEN(emc_ras) },
+	{ "EmcRp",                      TOKEN(emc_rp) },
+	{ "EmcR2r",                     TOKEN(emc_r2r) },
+	{ "EmcW2w",                     TOKEN(emc_w2w) },
+	{ "EmcR2w",                     TOKEN(emc_r2w) },
+	{ "EmcW2r",                     TOKEN(emc_w2r) },
+	{ "EmcR2p",                     TOKEN(emc_r2p) },
+	{ "EmcW2p",                     TOKEN(emc_w2p) },
+	{ "EmcRrd",                     TOKEN(emc_rrd) },
+	{ "EmcRdRcd",                   TOKEN(emc_rd_rcd) },
+	{ "EmcWrRcd",                   TOKEN(emc_wr_rcd) },
+	{ "EmcRext",                    TOKEN(emc_rext) },
+	{ "EmcWdv",                     TOKEN(emc_wdv) },
+	{ "EmcWdvMask",                 TOKEN(emc_wdv_mask) },
+	{ "EmcQUseExtra",               TOKEN(emc_quse_extra) },
+	{ "EmcQUse",                    TOKEN(emc_quse) },
+	{ "EmcIbdly",                   TOKEN(emc_ibdly) },
+	{ "EmcEInput",                  TOKEN(emc_einput) },
+	{ "EmcEInputDuration",          TOKEN(emc_einput_duration) },
+	{ "EmcPutermExtra",             TOKEN(emc_puterm_extra) },
+	{ "EmcCdbCntl1",                TOKEN(emc_cdb_cntl1) },
+	{ "EmcCdbCntl2",                TOKEN(emc_cdb_cntl2) },
+	{ "EmcQRst",                    TOKEN(emc_qrst) },
+	{ "EmcQSafe",                   TOKEN(emc_qsafe) },
+	{ "EmcRdv",                     TOKEN(emc_rdv) },
+	{ "EmcRdvMask",                 TOKEN(emc_rdv_mask) },
+	{ "EmcRefresh",                 TOKEN(emc_refresh) },
+	{ "EmcBurstRefreshNum",         TOKEN(emc_burst_refresh_num) },
+	{ "EmcPdEx2Wr",                 TOKEN(emc_pdex2wr) },
+	{ "EmcPdEx2Rd",                 TOKEN(emc_pdex2rd) },
+	{ "EmcPChg2Pden",               TOKEN(emc_pchg2pden) },
+	{ "EmcAct2Pden",                TOKEN(emc_act2pden) },
+	{ "EmcAr2Pden",                 TOKEN(emc_ar2pden) },
+	{ "EmcRw2Pden",                 TOKEN(emc_rw2pden) },
+	{ "EmcTxsr",                    TOKEN(emc_txsr) },
+	{ "EmcTcke",                    TOKEN(emc_tcke) },
+	{ "EmcTckesr",                   TOKEN(emc_tckesr) },
+	{ "EmcTpd",                     TOKEN(emc_tpd) },
+	{ "EmcTfaw",                    TOKEN(emc_tfaw) },
+	{ "EmcTrpab",                   TOKEN(emc_trpab) },
+	{ "EmcTClkStable",              TOKEN(emc_tclkstable) },
+	{ "EmcTClkStop",                TOKEN(emc_tclkstop) },
+	{ "EmcTRefBw",                  TOKEN(emc_trefbw) },
+	{ "EmcFbioCfg5",                TOKEN(emc_fbio_cfg5) },
+	{ "EmcFbioCfg6",                TOKEN(emc_fbio_cfg6) },
+	{ "EmcFbioSpare",               TOKEN(emc_fbio_spare) },
+	{ "EmcMrsResetDllWait",         TOKEN(emc_mrs_reset_dll_wait) },
+	{ "EmcMrsResetDll",             TOKEN(emc_mrs_reset_dll) },
+	{ "EmcMrsDdr2DllReset",         TOKEN(emc_mrs_ddr2_dll_reset) },
+	{ "EmcMrs",                     TOKEN(emc_mrs) },
+	{ "EmcEmrs2",                   TOKEN(emc_emrs2) },
+	{ "EmcEmrs3",                   TOKEN(emc_emrs3) },
+	{ "EmcEmrsDdr2DllEnable",       TOKEN(emc_emrs_ddr2_dll_enable) },
+	{ "EmcEmrsDdr2OcdCalib",        TOKEN(emc_emrs_ddr2_ocd_calib) },
+	{ "EmcEmrs",                    TOKEN(emc_emrs) },
+	{ "EmcMrw1",                    TOKEN(emc_mrw1) },
+	{ "EmcMrw2",                    TOKEN(emc_mrw2) },
+	{ "EmcMrw3",                    TOKEN(emc_mrw3) },
+	{ "EmcMrw4",                    TOKEN(emc_mrw4) },
+	{ "EmcMrwResetCommand",         TOKEN(emc_mrw_reset_command) },
+	{ "EmcMrwResetNInitWait",       TOKEN(emc_mrw_reset_ninit_wait) },
+	{ "EmcAdrCfg",                  TOKEN(emc_adr_cfg) },
+	{ "McEmemCfg",                  TOKEN(mc_emem_cfg) },
+	{ "EmcCfg2",                    TOKEN(emc_cfg2) },
+	{ "EmcCfgDigDll",               TOKEN(emc_cfg_dig_dll) },
+	{ "EmcCfgDigDllPeriod",         TOKEN(emc_cfg_dig_dll_period) },
+	{ "EmcCfg",                     TOKEN(emc_cfg) },
+	{ "EmcDbg",                     TOKEN(emc_dbg) },
+	{ "WarmBootWait",               TOKEN(warm_boot_wait) },
+	{ "EmcCttTermCtrl",             TOKEN(emc_ctt_term_ctrl) },
+	{ "EmcOdtWrite",                TOKEN(emc_odt_write) },
+	{ "EmcOdtRead",                 TOKEN(emc_odt_read) },
+	{ "EmcZcalWaitCnt",             TOKEN(emc_zcal_wait_cnt) },
+	{ "EmcZcalMrwCmd",              TOKEN(emc_zcal_mrw_cmd) },
+	{ "EmcDdr2Wait",                TOKEN(emc_ddr2_wait) },
+	{ "PmcDdrPwr",                  TOKEN(pmc_ddr_pwr) },
+	{ "EmcClockSource",             TOKEN(emc_clock_source) },
+	{ "EmcPinExtraWait",            TOKEN(emc_pin_extra_wait) },
+	{ "EmcTimingControlWait",       TOKEN(emc_timing_control_wait) },
+	{ "EmcWext",                    TOKEN(emc_wext) },
+	{ "EmcCtt",                     TOKEN(emc_ctt) },
+	{ "EmcCttDuration",             TOKEN(emc_ctt_duration) },
+	{ "EmcPreRefreshReqCnt",        TOKEN(emc_prerefresh_req_cnt) },
+	{ "EmcTxsrDll",                 TOKEN(emc_txsr_dll) },
+	{ "EmcCfgRsv",                  TOKEN(emc_cfg_rsv) },
+	{ "EmcMrwExtra",                TOKEN(emc_mrw_extra) },
+	{ "EmcWarmBootMrwExtra",        TOKEN(emc_warm_boot_mrw_extra) },
+	{ "EmcWarmBootExtraModeRegWriteEnable",
+			TOKEN(emc_warm_boot_extramode_reg_write_enable) },
+	{ "EmcExtraModeRegWriteEnable", TOKEN(emc_extramode_reg_write_enable) },
+	{ "EmcMrsWaitCnt",              TOKEN(emc_mrs_wait_cnt) },
+	{ "EmcMrsWaitCnt2",             TOKEN(emc_mrs_wait_cnt2) },
+	{ "EmcCmdQ",                    TOKEN(emc_cmd_q) },
+	{ "EmcMc2EmcQ",                 TOKEN(emc_mc2emc_q) },
+	{ "EmcDynSelfRefControl",       TOKEN(emc_dyn_self_ref_control) },
+	{ "AhbArbitrationXbarCtrlMemInitDone",
+			TOKEN(ahb_arbitration_xbar_ctrl_meminit_done) },
+	{ "EmcDevSelect",               TOKEN(emc_dev_select) },
+	{ "EmcSelDpdCtrl",              TOKEN(emc_sel_dpd_ctrl) },
+	{ "EmcDllXformDqs0",            TOKEN(emc_dll_xform_dqs0) },
+	{ "EmcDllXformDqs1",            TOKEN(emc_dll_xform_dqs1) },
+	{ "EmcDllXformDqs2",            TOKEN(emc_dll_xform_dqs2) },
+	{ "EmcDllXformDqs3",            TOKEN(emc_dll_xform_dqs3) },
+	{ "EmcDllXformDqs4",            TOKEN(emc_dll_xform_dqs4) },
+	{ "EmcDllXformDqs5",            TOKEN(emc_dll_xform_dqs5) },
+	{ "EmcDllXformDqs6",            TOKEN(emc_dll_xform_dqs6) },
+	{ "EmcDllXformDqs7",            TOKEN(emc_dll_xform_dqs7) },
+	{ "EmcDllXformQUse0",           TOKEN(emc_dll_xform_quse0) },
+	{ "EmcDllXformQUse1",           TOKEN(emc_dll_xform_quse1) },
+	{ "EmcDllXformQUse2",           TOKEN(emc_dll_xform_quse2) },
+	{ "EmcDllXformQUse3",           TOKEN(emc_dll_xform_quse3) },
+	{ "EmcDllXformQUse4",           TOKEN(emc_dll_xform_quse4) },
+	{ "EmcDllXformQUse5",           TOKEN(emc_dll_xform_quse5) },
+	{ "EmcDllXformQUse6",           TOKEN(emc_dll_xform_quse6) },
+	{ "EmcDllXformQUse7",           TOKEN(emc_dll_xform_quse7) },
+	{ "EmcDllXformAddr0",           TOKEN(emc_dll_xform_addr0) },
+	{ "EmcDllXformAddr1",           TOKEN(emc_dll_xform_addr1) },
+	{ "EmcDllXformAddr2",           TOKEN(emc_dll_xform_addr2) },
+	{ "EmcDliTrimTxDqs0",           TOKEN(emc_dli_trim_tx_dqs0) },
+	{ "EmcDliTrimTxDqs1",           TOKEN(emc_dli_trim_tx_dqs1) },
+	{ "EmcDliTrimTxDqs2",           TOKEN(emc_dli_trim_tx_dqs2) },
+	{ "EmcDliTrimTxDqs3",           TOKEN(emc_dli_trim_tx_dqs3) },
+	{ "EmcDliTrimTxDqs4",           TOKEN(emc_dli_trim_tx_dqs4) },
+	{ "EmcDliTrimTxDqs5",           TOKEN(emc_dli_trim_tx_dqs5) },
+	{ "EmcDliTrimTxDqs6",           TOKEN(emc_dli_trim_tx_dqs6) },
+	{ "EmcDliTrimTxDqs7",           TOKEN(emc_dli_trim_tx_dqs7) },
+	{ "EmcDllXformDq0",             TOKEN(emc_dll_xform_dq0) },
+	{ "EmcDllXformDq1",             TOKEN(emc_dll_xform_dq1) },
+	{ "EmcDllXformDq2",             TOKEN(emc_dll_xform_dq2) },
+	{ "EmcDllXformDq3",             TOKEN(emc_dll_xform_dq3) },
+	{ "EmcZcalInterval",            TOKEN(emc_zcal_interval) },
+	{ "EmcZcalInitDev0",            TOKEN(emc_zcal_init_dev0) },
+	{ "EmcZcalInitDev1",            TOKEN(emc_zcal_init_dev1) },
+	{ "EmcZcalInitWait",            TOKEN(emc_zcal_init_wait) },
+	{ "EmcZcalWarmColdBootEnables", TOKEN(emc_zcal_warm_cold_boot_enables) },
+	{ "EmcMrwLpddr2ZcalWarmBoot",   TOKEN(emc_mrw_lpddr2zcal_warm_boot) },
+	{ "EmcZqCalDdr3WarmBoot",       TOKEN(emc_zqcal_ddr3_warm_boot) },
+	{ "EmcZcalWarmBootWait",        TOKEN(emc_zcal_warm_boot_wait) },
+	{ "EmcMrsWarmBootEnable",       TOKEN(emc_mrs_warm_boot_enable) },
+	{ "EmcMrsExtra",                TOKEN(emc_mrs_extra) },
+	{ "EmcWarmBootMrsExtra",        TOKEN(emc_warm_boot_mrs_extra) },
+	{ "EmcClkenOverride",           TOKEN(emc_clken_override) },
+	{ "EmcExtraRefreshNum",         TOKEN(emc_extra_refresh_num) },
+	{ "EmcClkenOverrideAllWarmBoot",
+			TOKEN(emc_clken_override_allwarm_boot) },
+	{ "McClkenOverrideAllWarmBoot", TOKEN(mc_clken_override_allwarm_boot) },
+	{ "EmcCfgDigDllPeriodWarmBoot",
+			TOKEN(emc_cfg_dig_dll_period_warm_boot) },
+	{ "PmcVddpSel",                 TOKEN(pmc_vddp_sel) },
+	{ "PmcDdrCfg",                  TOKEN(pmc_ddr_cfg) },
+	{ "PmcIoDpdReq",                TOKEN(pmc_io_dpd_req) },
+	{ "PmcIoDpd2Req",               TOKEN(pmc_io_dpd2_req) },
+	{ "PmcRegShort",                TOKEN(pmc_reg_short) },
+	{ "PmcENoVttGen",               TOKEN(pmc_eno_vtt_gen) },
+	{ "PmcNoIoPower",               TOKEN(pmc_no_io_power) },
+	{ "EmcXm2CmdPadCtrl",           TOKEN(emc_xm2cmd_pad_ctrl) },
+	{ "EmcXm2CmdPadCtrl2",          TOKEN(emc_xm2cmd_pad_ctrl2) },
+	{ "EmcXm2CmdPadCtrl3",          TOKEN(emc_xm2cmd_pad_ctrl3) },
+	{ "EmcXm2CmdPadCtrl4",          TOKEN(emc_xm2cmd_pad_ctrl4) },
+	{ "EmcXm2DqsPadCtrl",           TOKEN(emc_xm2dqs_pad_ctrl) },
+	{ "EmcXm2DqsPadCtrl2",          TOKEN(emc_xm2dqs_pad_ctrl2) },
+	{ "EmcXm2DqsPadCtrl3",          TOKEN(emc_xm2dqs_pad_ctrl3) },
+	{ "EmcXm2DqsPadCtrl4",          TOKEN(emc_xm2dqs_pad_ctrl4) },
+	{ "EmcXm2DqPadCtrl",            TOKEN(emc_xm2dq_pad_ctrl) },
+	{ "EmcXm2DqPadCtrl2",           TOKEN(emc_xm2dq_pad_ctrl2) },
+	{ "EmcXm2ClkPadCtrl",           TOKEN(emc_xm2clk_pad_ctrl) },
+	{ "EmcXm2ClkPadCtrl2",          TOKEN(emc_xm2clk_pad_ctrl2) },
+	{ "EmcXm2CompPadCtrl",          TOKEN(emc_xm2comp_pad_ctrl) },
+	{ "EmcXm2VttGenPadCtrl",        TOKEN(emc_xm2vttgen_pad_ctrl) },
+	{ "EmcXm2VttGenPadCtrl2",       TOKEN(emc_xm2vttgen_pad_ctrl2) },
+	{ "EmcAcpdControl",             TOKEN(emc_acpd_control) },
+	{ "EmcSwizzleRank0ByteCfg",     TOKEN(emc_swizzle_rank0_byte_cfg) },
+	{ "EmcSwizzleRank0Byte0",       TOKEN(emc_swizzle_rank0_byte0) },
+	{ "EmcSwizzleRank0Byte1",       TOKEN(emc_swizzle_rank0_byte1) },
+	{ "EmcSwizzleRank0Byte2",       TOKEN(emc_swizzle_rank0_byte2) },
+	{ "EmcSwizzleRank0Byte3",       TOKEN(emc_swizzle_rank0_byte3) },
+	{ "EmcSwizzleRank1ByteCfg",     TOKEN(emc_swizzle_rank1_byte_cfg) },
+	{ "EmcSwizzleRank1Byte0",       TOKEN(emc_swizzle_rank1_byte0) },
+	{ "EmcSwizzleRank1Byte1",       TOKEN(emc_swizzle_rank1_byte1) },
+	{ "EmcSwizzleRank1Byte2",       TOKEN(emc_swizzle_rank1_byte2) },
+	{ "EmcSwizzleRank1Byte3",       TOKEN(emc_swizzle_rank1_byte3) },
+	{ "EmcAddrSwizzleStack1a",      TOKEN(emc_addr_swizzle_stack1a) },
+	{ "EmcAddrSwizzleStack1b",      TOKEN(emc_addr_swizzle_stack1b) },
+	{ "EmcAddrSwizzleStack2a",      TOKEN(emc_addr_swizzle_stack2a) },
+	{ "EmcAddrSwizzleStack2b",      TOKEN(emc_addr_swizzle_stack2b) },
+	{ "EmcAddrSwizzleStack3",       TOKEN(emc_addr_swizzle_stack3) },
+	{ "EmcDsrVttgenDrv",            TOKEN(emc_dsr_vttgen_drv) },
+	{ "EmcTxdsrvttgen",             TOKEN(emc_txdsrvttgen) },
+	{ "McEmemAdrCfg",               TOKEN(mc_emem_adr_cfg) },
+	{ "McEmemAdrCfgDev0",           TOKEN(mc_emem_adr_cfg_dev0) },
+	{ "McEmemAdrCfgDev1",           TOKEN(mc_emem_adr_cfg_dev1) },
+	{ "McEmemAdrCfgChannelMask",    TOKEN(mc_emem_adr_cfg_channel_mask) },
+	{ "McEmemAdrCfgChannelMaskPropagationCount",
+			TOKEN(mc_emem_adr_cfg_channel_mask_propagation_count) },
+	{ "McEmemAdrCfgBankMask0",      TOKEN(mc_emem_adr_cfg_bank_mask0) },
+	{ "McEmemAdrCfgBankMask1",      TOKEN(mc_emem_adr_cfg_bank_mask1) },
+	{ "McEmemAdrCfgBankMask2",      TOKEN(mc_emem_adr_cfg_bank_mask2) },
+	{ "McEmemArbCfg",               TOKEN(mc_emem_arb_cfg) },
+	{ "McEmemArbOutstandingReq",    TOKEN(mc_emem_arb_outstanding_req) },
+	{ "McEmemArbTimingRcd",         TOKEN(mc_emem_arb_timing_rcd) },
+	{ "McEmemArbTimingRp",          TOKEN(mc_emem_arb_timing_rp) },
+	{ "McEmemArbTimingRc",          TOKEN(mc_emem_arb_timing_rc) },
+	{ "McEmemArbTimingRas",         TOKEN(mc_emem_arb_timing_ras) },
+	{ "McEmemArbTimingFaw",         TOKEN(mc_emem_arb_timing_faw) },
+	{ "McEmemArbTimingRrd",         TOKEN(mc_emem_arb_timing_rrd) },
+	{ "McEmemArbTimingRap2Pre",     TOKEN(mc_emem_arb_timing_rap2pre) },
+	{ "McEmemArbTimingWap2Pre",     TOKEN(mc_emem_arb_timing_wap2pre) },
+	{ "McEmemArbTimingR2R",         TOKEN(mc_emem_arb_timing_r2r) },
+	{ "McEmemArbTimingW2W",         TOKEN(mc_emem_arb_timing_w2w) },
+	{ "McEmemArbTimingR2W",         TOKEN(mc_emem_arb_timing_r2w) },
+	{ "McEmemArbTimingW2R",         TOKEN(mc_emem_arb_timing_w2r) },
+	{ "McEmemArbDaTurns",           TOKEN(mc_emem_arb_da_turns) },
+	{ "McEmemArbDaCovers",          TOKEN(mc_emem_arb_da_covers) },
+	{ "McEmemArbMisc0",             TOKEN(mc_emem_arb_misc0) },
+	{ "McEmemArbMisc1",             TOKEN(mc_emem_arb_misc1) },
+	{ "McEmemArbRing1Throttle",     TOKEN(mc_emem_arb_ring1_throttle) },
+	{ "McEmemArbOverride",          TOKEN(mc_emem_arb_override) },
+	{ "McEmemArbRsv",               TOKEN(mc_emem_arb_rsv) },
+	{ "McClkenOverride",            TOKEN(mc_clken_override) },
+	{ "McEmcRegMode",               TOKEN(mc_emc_reg_mode) },
+	{ "McVideoProtectBom",          TOKEN(mc_video_protect_bom) },
+	{ "McVideoProtectSizeMb",       TOKEN(mc_video_protect_size_mb) },
+	{ "McVideoProtectVprOverride",  TOKEN(mc_video_protect_vpr_override) },
+	{ "McSecCarveoutBom",           TOKEN(mc_sec_carveout_bom) },
+	{ "McSecCarveoutSizeMb",        TOKEN(mc_sec_carveout_size_mb) },
+	{ "McVideoProtectWriteAccess",  TOKEN(mc_video_protect_write_access) },
+	{ "McSecCarveoutProtectWriteAccess",
+			TOKEN(mc_sec_carveout_protect_write_access) },
+	{ "EmcCaTrainingEnable",        TOKEN(emc_ca_training_enable) },
+	{ "EmcCaTrainingTimingCntl1",   TOKEN(emc_ca_training_timing_cntl1) },
+	{ "EmcCaTrainingTimingCntl2",   TOKEN(emc_ca_training_timing_cntl2) },
+	{ "SwizzleRankByteEncode",      TOKEN(swizzle_rank_byte_encode) },
+	{ "BootRomPatchControl",        TOKEN(boot_rom_patch_control) },
+	{ "BootRomPatchData",           TOKEN(boot_rom_patch_data) },
+	{ "Ch1EmcDllXformDqs0",         TOKEN(ch1_emc_dll_xform_dqs0) },
+	{ "Ch1EmcDllXformDqs1",         TOKEN(ch1_emc_dll_xform_dqs1) },
+	{ "Ch1EmcDllXformDqs2",         TOKEN(ch1_emc_dll_xform_dqs2) },
+	{ "Ch1EmcDllXformDqs3",         TOKEN(ch1_emc_dll_xform_dqs3) },
+	{ "Ch1EmcDllXformDqs4",         TOKEN(ch1_emc_dll_xform_dqs4) },
+	{ "Ch1EmcDllXformDqs5",         TOKEN(ch1_emc_dll_xform_dqs5) },
+	{ "Ch1EmcDllXformDqs6",         TOKEN(ch1_emc_dll_xform_dqs6) },
+	{ "Ch1EmcDllXformDqs7",         TOKEN(ch1_emc_dll_xform_dqs7) },
+	{ "Ch1EmcDllXformQUse0",        TOKEN(ch1_emc_dll_xform_quse0) },
+	{ "Ch1EmcDllXformQUse1",        TOKEN(ch1_emc_dll_xform_quse1) },
+	{ "Ch1EmcDllXformQUse2",        TOKEN(ch1_emc_dll_xform_quse2) },
+	{ "Ch1EmcDllXformQUse3",        TOKEN(ch1_emc_dll_xform_quse3) },
+	{ "Ch1EmcDllXformQUse4",        TOKEN(ch1_emc_dll_xform_quse4) },
+	{ "Ch1EmcDllXformQUse5",        TOKEN(ch1_emc_dll_xform_quse5) },
+	{ "Ch1EmcDllXformQUse6",        TOKEN(ch1_emc_dll_xform_quse6) },
+	{ "Ch1EmcDllXformQUse7",        TOKEN(ch1_emc_dll_xform_quse7) },
+	{ "Ch1EmcDliTrimTxDqs0",        TOKEN(ch1_emc_dli_trim_tx_dqs0) },
+	{ "Ch1EmcDliTrimTxDqs1",        TOKEN(ch1_emc_dli_trim_tx_dqs1) },
+	{ "Ch1EmcDliTrimTxDqs2",        TOKEN(ch1_emc_dli_trim_tx_dqs2) },
+	{ "Ch1EmcDliTrimTxDqs3",        TOKEN(ch1_emc_dli_trim_tx_dqs3) },
+	{ "Ch1EmcDliTrimTxDqs4",        TOKEN(ch1_emc_dli_trim_tx_dqs4) },
+	{ "Ch1EmcDliTrimTxDqs5",        TOKEN(ch1_emc_dli_trim_tx_dqs5) },
+	{ "Ch1EmcDliTrimTxDqs6",        TOKEN(ch1_emc_dli_trim_tx_dqs6) },
+	{ "Ch1EmcDliTrimTxDqs7",        TOKEN(ch1_emc_dli_trim_tx_dqs7) },
+	{ "Ch1EmcDllXformDq0",          TOKEN(ch1_emc_dll_xform_dq0) },
+	{ "Ch1EmcDllXformDq1",          TOKEN(ch1_emc_dll_xform_dq1) },
+	{ "Ch1EmcDllXformDq2",          TOKEN(ch1_emc_dll_xform_dq2) },
+	{ "Ch1EmcDllXformDq3",          TOKEN(ch1_emc_dll_xform_dq3) },
+	{ "Ch1EmcSwizzleRank0ByteCfg",  TOKEN(ch1_emc_swizzle_rank0_byte_cfg) },
+	{ "Ch1EmcSwizzleRank0Byte0",    TOKEN(ch1_emc_swizzle_rank0_byte0) },
+	{ "Ch1EmcSwizzleRank0Byte1",    TOKEN(ch1_emc_swizzle_rank0_byte1) },
+	{ "Ch1EmcSwizzleRank0Byte2",    TOKEN(ch1_emc_swizzle_rank0_byte2) },
+	{ "Ch1EmcSwizzleRank0Byte3",    TOKEN(ch1_emc_swizzle_rank0_byte3) },
+	{ "Ch1EmcSwizzleRank1ByteCfg",  TOKEN(ch1_emc_swizzle_rank1_byte_cfg) },
+	{ "Ch1EmcSwizzleRank1Byte0",    TOKEN(ch1_emc_swizzle_rank1_byte0) },
+	{ "Ch1EmcSwizzleRank1Byte1",    TOKEN(ch1_emc_swizzle_rank1_byte1) },
+	{ "Ch1EmcSwizzleRank1Byte2",    TOKEN(ch1_emc_swizzle_rank1_byte2) },
+	{ "Ch1EmcSwizzleRank1Byte3",    TOKEN(ch1_emc_swizzle_rank1_byte3) },
+	{ "Ch1EmcAddrSwizzleStack1a",   TOKEN(ch1_emc_addr_swizzle_stack1a) },
+	{ "Ch1EmcAddrSwizzleStack1b",   TOKEN(ch1_emc_addr_swizzle_stack1b) },
+	{ "Ch1EmcAddrSwizzleStack2a",   TOKEN(ch1_emc_addr_swizzle_stack2a) },
+	{ "Ch1EmcAddrSwizzleStack2b",   TOKEN(ch1_emc_addr_swizzle_stack2b) },
+	{ "Ch1EmcAddrSwizzleStack3",    TOKEN(ch1_emc_addr_swizzle_stack3) },
+	{ "Ch1EmcAutoCalConfig",        TOKEN(ch1_emc_auto_cal_config) },
+	{ "Ch1EmcAutoCalConfig2",       TOKEN(ch1_emc_auto_cal_config2) },
+	{ "Ch1EmcAutoCalConfig3",       TOKEN(ch1_emc_auto_cal_config3) },
+	{ "Ch1EmcCdbCntl1",             TOKEN(ch1_emc_cdb_cntl1) },
+	{ "Ch1EmcDllXformAddr0",        TOKEN(ch1_emc_dll_xform_addr0) },
+	{ "Ch1EmcDllXformAddr1",        TOKEN(ch1_emc_dll_xform_addr1) },
+	{ "Ch1EmcDllXformAddr2",        TOKEN(ch1_emc_dll_xform_addr2) },
+	{ "Ch1EmcFbioSpare",            TOKEN(ch1_emc_fbio_spare) },
+	{ "Ch1EmcXm2ClkPadCtrl",        TOKEN(ch1_emc_xm2_clk_pad_ctrl) },
+	{ "Ch1EmcXm2ClkPadCtrl2",       TOKEN(ch1_emc_xm2_clk_pad_ctrl2) },
+	{ "Ch1EmcXm2CmdPadCtrl2",       TOKEN(ch1_emc_xm2_cmd_pad_ctrl2) },
+	{ "Ch1EmcXm2CmdPadCtrl3",       TOKEN(ch1_emc_xm2_cmd_pad_ctrl3) },
+	{ "Ch1EmcXm2CmdPadCtrl4",       TOKEN(ch1_emc_xm2_cmd_pad_ctrl4) },
+	{ "Ch1EmcXm2DqPadCtrl",         TOKEN(ch1_emc_xm2_dq_pad_ctrl) },
+	{ "Ch1EmcXm2DqPadCtrl2",        TOKEN(ch1_emc_xm2_dq_pad_ctrl2) },
+	{ "Ch1EmcXm2DqsPadCtrl",        TOKEN(ch1_emc_xm2_dqs_pad_ctrl) },
+	{ "Ch1EmcXm2DqsPadCtrl3",       TOKEN(ch1_emc_xm2_dqs_pad_ctrl3) },
+	{ "Ch1EmcXm2DqsPadCtrl4",       TOKEN(ch1_emc_xm2_dqs_pad_ctrl4) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_sdmmc_table_t114[] = {
+	{ "ClockDivider",               TOKEN(sdmmc_clock_divider) },
+	{ "DataWidth",
+	  token_sdmmc_data_width,
+	  field_type_enum,
+	  s_sdmmc_data_width_table_t114 },
+	{ "MaxPowerClassSupported",     TOKEN(sdmmc_max_power_class_supported) },
+	{ "MultiPageSupport",           TOKEN(sdmmc_multi_page_support) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_spiflash_table_t114[] = {
+	{ "ReadCommandTypeFast",        TOKEN(spiflash_read_command_type_fast) },
+	{ "PageSize2kor16k",            TOKEN(spiflash_page_size_2k_or_16k) },
+	{ "ClockDivider",               TOKEN(spiflash_clock_divider) },
+	{ "ClockSource",
+	  token_spiflash_clock_source,
+	  field_type_enum,
+	  s_spi_clock_source_table_t114 },
+	{ NULL, 0, 0, NULL }
+};
+
+parse_subfield_item s_device_type_table_t114[] = {
+	{ "SdmmcParams.", token_sdmmc_params,
+		s_sdmmc_table_t114, t114_set_dev_param },
+	{ "SpiFlashParams.", token_spiflash_params,
+		s_spiflash_table_t114, t114_set_dev_param },
+	{ NULL, 0, NULL }
+};
diff --git a/scripts/tegra/t124/nvbctlib_t124.c b/scripts/tegra/t124/nvbctlib_t124.c
new file mode 100644
index 000000000000..27e5a628af58
--- /dev/null
+++ b/scripts/tegra/t124/nvbctlib_t124.c
@@ -0,0 +1,1104 @@
+/*
+ * Copyright (c) 2013, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#include "../cbootimage.h"
+#include "../parse.h"
+#include "../crypto.h"
+#include "nvboot_bct_t124.h"
+#include "string.h"
+
+/* nvbctlib_t124.c: The implementation of the nvbctlib API for t124. */
+
+/* Definitions that simplify the code which follows. */
+#define CASE_GET_SDRAM_PARAM(x) \
+case token_##x:\
+	*value = params->x; \
+	break
+
+#define CASE_SET_SDRAM_PARAM(x) \
+case token_##x:\
+	params->x = value; \
+	break
+
+#define CASE_GET_DEV_PARAM(dev, x) \
+case token_##dev##_##x:\
+	*value = bct->dev_params[index].dev##_params.x; \
+	break
+
+#define CASE_SET_DEV_PARAM(dev, x) \
+case token_##dev##_##x:\
+	bct->dev_params[index].dev##_params.x = value; \
+	break
+
+#define CASE_GET_BL_PARAM(x) \
+case token_bl_##x:\
+	*data = bct_ptr->bootloader[set].x; \
+	break
+
+#define CASE_SET_BL_PARAM(x) \
+case token_bl_##x:\
+	bct_ptr->bootloader[set].x = *data; \
+	break
+
+#define CASE_GET_NVU32(id) \
+case token_##id:\
+	if (bct == NULL) \
+		return -ENODATA; \
+	*data = bct_ptr->id; \
+	break
+
+#define CASE_GET_CONST(id, val) \
+case token_##id:\
+	*data = val; \
+	break
+
+#define CASE_GET_CONST_PREFIX(id, val_prefix) \
+case token_##id:\
+	*data = val_prefix##_##id; \
+	break
+
+#define CASE_SET_NVU32(id) \
+case token_##id:\
+	bct_ptr->id = data; \
+	break
+
+#define CASE_GET_DATA(id, size) \
+case token_##id:\
+	if (*length < size) \
+		return -ENODATA;\
+	memcpy(data, &(bct_ptr->id), size);   \
+	*length = size;\
+	break
+
+#define CASE_SET_DATA(id, size) \
+case token_##id:\
+	if (length < size) \
+		return -ENODATA;\
+	memcpy(&(bct_ptr->id), data, size);   \
+	break
+
+#define DEFAULT()                                   \
+default :                                           \
+	printf("Unexpected token %d at line %d\n",  \
+		token, __LINE__);                   \
+	return 1
+
+int
+t124_set_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value)
+{
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	bct->num_param_sets = NV_MAX(bct->num_param_sets, index + 1);
+
+	switch (token) {
+	CASE_SET_DEV_PARAM(sdmmc, clock_divider);
+	CASE_SET_DEV_PARAM(sdmmc, data_width);
+	CASE_SET_DEV_PARAM(sdmmc, max_power_class_supported);
+	CASE_SET_DEV_PARAM(sdmmc, multi_page_support);
+
+	CASE_SET_DEV_PARAM(spiflash, clock_source);
+	CASE_SET_DEV_PARAM(spiflash, clock_divider);
+	CASE_SET_DEV_PARAM(spiflash, read_command_type_fast);
+	CASE_SET_DEV_PARAM(spiflash, page_size_2k_or_16k);
+
+	case token_dev_type:
+		bct->dev_type[index] = value;
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t124_get_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value)
+{
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	switch (token) {
+	CASE_GET_DEV_PARAM(sdmmc, clock_divider);
+	CASE_GET_DEV_PARAM(sdmmc, data_width);
+	CASE_GET_DEV_PARAM(sdmmc, max_power_class_supported);
+	CASE_GET_DEV_PARAM(sdmmc, multi_page_support);
+
+	CASE_GET_DEV_PARAM(spiflash, clock_source);
+	CASE_GET_DEV_PARAM(spiflash, clock_divider);
+	CASE_GET_DEV_PARAM(spiflash, read_command_type_fast);
+	CASE_GET_DEV_PARAM(spiflash, page_size_2k_or_16k);
+
+	case token_dev_type:
+		*value = bct->dev_type[index];
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t124_get_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t *value)
+{
+	nvboot_sdram_params *params;
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+	params = &(bct->sdram_params[index]);
+
+	switch (token) {
+	CASE_GET_SDRAM_PARAM(memory_type);
+	CASE_GET_SDRAM_PARAM(pllm_input_divider);
+	CASE_GET_SDRAM_PARAM(pllm_feedback_divider);
+	CASE_GET_SDRAM_PARAM(pllm_stable_time);
+	CASE_GET_SDRAM_PARAM(pllm_setup_control);
+	CASE_GET_SDRAM_PARAM(pllm_select_div2);
+	CASE_GET_SDRAM_PARAM(pllm_pdlshift_ph45);
+	CASE_GET_SDRAM_PARAM(pllm_pdlshift_ph90);
+	CASE_GET_SDRAM_PARAM(pllm_pdlshift_ph135);
+	CASE_GET_SDRAM_PARAM(pllm_kcp);
+	CASE_GET_SDRAM_PARAM(pllm_kvco);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare0);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare1);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare2);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare3);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare4);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare5);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare6);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare7);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare8);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare9);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare10);
+	CASE_GET_SDRAM_PARAM(emc_bct_spare11);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_interval);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_config);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_config2);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_config3);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_wait);
+	CASE_GET_SDRAM_PARAM(emc_pin_program_wait);
+	CASE_GET_SDRAM_PARAM(emc_rc);
+	CASE_GET_SDRAM_PARAM(emc_rfc);
+	CASE_GET_SDRAM_PARAM(emc_rfc_slr);
+	CASE_GET_SDRAM_PARAM(emc_ras);
+	CASE_GET_SDRAM_PARAM(emc_rp);
+	CASE_GET_SDRAM_PARAM(emc_r2r);
+	CASE_GET_SDRAM_PARAM(emc_w2w);
+	CASE_GET_SDRAM_PARAM(emc_r2w);
+	CASE_GET_SDRAM_PARAM(emc_w2r);
+	CASE_GET_SDRAM_PARAM(emc_r2p);
+	CASE_GET_SDRAM_PARAM(emc_w2p);
+	CASE_GET_SDRAM_PARAM(emc_rd_rcd);
+	CASE_GET_SDRAM_PARAM(emc_wr_rcd);
+	CASE_GET_SDRAM_PARAM(emc_rrd);
+	CASE_GET_SDRAM_PARAM(emc_rext);
+	CASE_GET_SDRAM_PARAM(emc_wdv);
+	CASE_GET_SDRAM_PARAM(emc_wdv_mask);
+	CASE_GET_SDRAM_PARAM(emc_quse);
+	CASE_GET_SDRAM_PARAM(emc_quse_width);
+	CASE_GET_SDRAM_PARAM(emc_ibdly);
+	CASE_GET_SDRAM_PARAM(emc_einput);
+	CASE_GET_SDRAM_PARAM(emc_einput_duration);
+	CASE_GET_SDRAM_PARAM(emc_puterm_extra);
+	CASE_GET_SDRAM_PARAM(emc_puterm_width);
+	CASE_GET_SDRAM_PARAM(emc_puterm_adj);
+	CASE_GET_SDRAM_PARAM(emc_cdb_cntl1);
+	CASE_GET_SDRAM_PARAM(emc_cdb_cntl2);
+	CASE_GET_SDRAM_PARAM(emc_cdb_cntl3);
+	CASE_GET_SDRAM_PARAM(emc_qrst);
+	CASE_GET_SDRAM_PARAM(emc_qsafe);
+	CASE_GET_SDRAM_PARAM(emc_rdv);
+	CASE_GET_SDRAM_PARAM(emc_rdv_mask);
+	CASE_GET_SDRAM_PARAM(emc_qpop);
+	CASE_GET_SDRAM_PARAM(emc_refresh);
+	CASE_GET_SDRAM_PARAM(emc_burst_refresh_num);
+	CASE_GET_SDRAM_PARAM(emc_pdex2wr);
+	CASE_GET_SDRAM_PARAM(emc_pdex2rd);
+	CASE_GET_SDRAM_PARAM(emc_pchg2pden);
+	CASE_GET_SDRAM_PARAM(emc_act2pden);
+	CASE_GET_SDRAM_PARAM(emc_ar2pden);
+	CASE_GET_SDRAM_PARAM(emc_rw2pden);
+	CASE_GET_SDRAM_PARAM(emc_txsr);
+	CASE_GET_SDRAM_PARAM(emc_tcke);
+	CASE_GET_SDRAM_PARAM(emc_tckesr);
+	CASE_GET_SDRAM_PARAM(emc_tpd);
+	CASE_GET_SDRAM_PARAM(emc_tfaw);
+	CASE_GET_SDRAM_PARAM(emc_trpab);
+	CASE_GET_SDRAM_PARAM(emc_tclkstable);
+	CASE_GET_SDRAM_PARAM(emc_tclkstop);
+	CASE_GET_SDRAM_PARAM(emc_trefbw);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg5);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg6);
+	CASE_GET_SDRAM_PARAM(emc_fbio_spare);
+	CASE_GET_SDRAM_PARAM(emc_mrs);
+	CASE_GET_SDRAM_PARAM(emc_emrs);
+	CASE_GET_SDRAM_PARAM(emc_emrs2);
+	CASE_GET_SDRAM_PARAM(emc_emrs3);
+	CASE_GET_SDRAM_PARAM(emc_mrw1);
+	CASE_GET_SDRAM_PARAM(emc_mrw2);
+	CASE_GET_SDRAM_PARAM(emc_mrw3);
+	CASE_GET_SDRAM_PARAM(emc_mrw4);
+	CASE_GET_SDRAM_PARAM(emc_mrw_reset_command);
+	CASE_GET_SDRAM_PARAM(emc_mrw_reset_ninit_wait);
+	CASE_GET_SDRAM_PARAM(emc_adr_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_cfg);
+	CASE_GET_SDRAM_PARAM(emc_cfg);
+	CASE_GET_SDRAM_PARAM(emc_cfg2);
+	CASE_GET_SDRAM_PARAM(emc_cfg_pipe);
+	CASE_GET_SDRAM_PARAM(emc_dbg);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll_period);
+	CASE_GET_SDRAM_PARAM(warm_boot_wait);
+	CASE_GET_SDRAM_PARAM(emc_ctt_term_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_odt_write);
+	CASE_GET_SDRAM_PARAM(emc_odt_read);
+	CASE_GET_SDRAM_PARAM(emc_zcal_wait_cnt);
+	CASE_GET_SDRAM_PARAM(emc_zcal_mrw_cmd);
+	CASE_GET_SDRAM_PARAM(emc_mrs_reset_dll);
+	CASE_GET_SDRAM_PARAM(emc_mrs_reset_dll_wait);
+	CASE_GET_SDRAM_PARAM(emc_emrs_ddr2_dll_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_ddr2_dll_reset);
+	CASE_GET_SDRAM_PARAM(emc_emrs_ddr2_ocd_calib);
+	CASE_GET_SDRAM_PARAM(emc_ddr2_wait);
+	CASE_GET_SDRAM_PARAM(pmc_ddr_pwr);
+	CASE_GET_SDRAM_PARAM(emc_clock_source);
+	CASE_GET_SDRAM_PARAM(emc_pin_extra_wait);
+	CASE_GET_SDRAM_PARAM(emc_timing_control_wait);
+	CASE_GET_SDRAM_PARAM(emc_wext);
+	CASE_GET_SDRAM_PARAM(emc_ctt);
+	CASE_GET_SDRAM_PARAM(emc_ctt_duration);
+	CASE_GET_SDRAM_PARAM(emc_prerefresh_req_cnt);
+	CASE_GET_SDRAM_PARAM(emc_txsr_dll);
+	CASE_GET_SDRAM_PARAM(emc_cfg_rsv);
+	CASE_GET_SDRAM_PARAM(emc_mrw_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrw_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_extramode_reg_write_enable);
+	CASE_GET_SDRAM_PARAM(emc_extramode_reg_write_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_wait_cnt);
+	CASE_GET_SDRAM_PARAM(emc_mrs_wait_cnt2);
+	CASE_GET_SDRAM_PARAM(emc_cmd_q);
+	CASE_GET_SDRAM_PARAM(emc_mc2emc_q);
+	CASE_GET_SDRAM_PARAM(emc_dyn_self_ref_control);
+	CASE_GET_SDRAM_PARAM(ahb_arbitration_xbar_ctrl_meminit_done);
+	CASE_GET_SDRAM_PARAM(emc_dev_select);
+	CASE_GET_SDRAM_PARAM(emc_sel_dpd_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs3);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs4);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs5);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs6);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs7);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs8);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs9);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs10);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs11);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs12);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs13);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs14);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs15);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse3);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse4);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse5);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse6);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse7);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr3);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr4);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_addr5);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse8);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse9);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse10);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse11);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse12);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse13);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse14);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse15);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs0);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs1);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs2);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs3);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs4);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs5);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs6);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs7);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs8);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs9);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs10);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs11);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs12);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs13);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs14);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs15);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq3);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq4);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq5);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq6);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq7);
+	CASE_GET_SDRAM_PARAM(emc_zcal_interval);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_dev0);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_dev1);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_wait);
+	CASE_GET_SDRAM_PARAM(emc_zcal_warm_cold_boot_enables);
+	CASE_GET_SDRAM_PARAM(emc_mrw_lpddr2zcal_warm_boot);
+	CASE_GET_SDRAM_PARAM(emc_zqcal_ddr3_warm_boot);
+	CASE_GET_SDRAM_PARAM(emc_zcal_warm_boot_wait);
+	CASE_GET_SDRAM_PARAM(emc_mrs_warm_boot_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrs_extra);
+	CASE_GET_SDRAM_PARAM(emc_clken_override);
+	CASE_GET_SDRAM_PARAM(mc_dis_extra_snap_levels);
+	CASE_GET_SDRAM_PARAM(emc_extra_refresh_num);
+	CASE_GET_SDRAM_PARAM(emc_clken_override_allwarm_boot);
+	CASE_GET_SDRAM_PARAM(mc_clken_override_allwarm_boot);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll_period_warm_boot);
+	CASE_GET_SDRAM_PARAM(pmc_vddp_sel);
+	CASE_GET_SDRAM_PARAM(pmc_vddp_sel_wait);
+	CASE_GET_SDRAM_PARAM(pmc_ddr_cfg);
+	CASE_GET_SDRAM_PARAM(pmc_io_dpd3_req);
+	CASE_GET_SDRAM_PARAM(pmc_io_dpd3_req_wait);
+	CASE_GET_SDRAM_PARAM(pmc_reg_short);
+	CASE_GET_SDRAM_PARAM(pmc_no_io_power);
+	CASE_GET_SDRAM_PARAM(pmc_por_dpd_ctrl_wait);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl4);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl5);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl4);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl5);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl6);
+	CASE_GET_SDRAM_PARAM(emc_xm2dq_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2dq_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2dq_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(emc_xm2clk_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2clk_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2comp_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(emc_acpd_control);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte_cfg);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte0);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte1);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte2);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank0_byte3);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte_cfg);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte0);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte1);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte2);
+	CASE_GET_SDRAM_PARAM(emc_swizzle_rank1_byte3);
+	CASE_GET_SDRAM_PARAM(emc_dsr_vttgen_drv);
+	CASE_GET_SDRAM_PARAM(emc_txdsrvttgen);
+	CASE_GET_SDRAM_PARAM(emc_bgbias_ctl0);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_dev0);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_dev1);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask0);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask1);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask2);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_bank_swizzle3);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_outstanding_req);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rcd);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rp);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rc);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_ras);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_faw);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rrd);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rap2pre);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_wap2pre);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_r2r);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_w2w);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_r2w);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_w2r);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_da_turns);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_da_covers);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_misc0);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_misc1);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_ring1_throttle);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_override);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_override1);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_rsv);
+	CASE_GET_SDRAM_PARAM(mc_clken_override);
+	CASE_GET_SDRAM_PARAM(mc_stat_control);
+	CASE_GET_SDRAM_PARAM(mc_display_snap_ring);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_bom);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_bom_adr_hi);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_size_mb);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_vpr_override);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_vpr_override1);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_gpu_override0);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_gpu_override1);
+	CASE_GET_SDRAM_PARAM(mc_sec_carveout_bom);
+	CASE_GET_SDRAM_PARAM(mc_sec_carveout_adr_hi);
+	CASE_GET_SDRAM_PARAM(mc_sec_carveout_size_mb);
+	CASE_GET_SDRAM_PARAM(mc_video_protect_write_access);
+	CASE_GET_SDRAM_PARAM(mc_sec_carveout_protect_write_access);
+	CASE_GET_SDRAM_PARAM(emc_ca_training_enable);
+	CASE_GET_SDRAM_PARAM(emc_ca_training_timing_cntl1);
+	CASE_GET_SDRAM_PARAM(emc_ca_training_timing_cntl2);
+	CASE_GET_SDRAM_PARAM(swizzle_rank_byte_encode);
+	CASE_GET_SDRAM_PARAM(boot_rom_patch_control);
+	CASE_GET_SDRAM_PARAM(boot_rom_patch_data);
+	CASE_GET_SDRAM_PARAM(mc_mts_carveout_bom);
+	CASE_GET_SDRAM_PARAM(mc_mts_carveout_adr_hi);
+	CASE_GET_SDRAM_PARAM(mc_mts_carveout_size_mb);
+	CASE_GET_SDRAM_PARAM(mc_mts_carveout_reg_ctrl);
+
+	DEFAULT();
+	}
+	return 0;
+}
+
+int
+t124_set_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t value)
+{
+	nvboot_sdram_params *params;
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+	params = &(bct->sdram_params[index]);
+	/* Update the number of SDRAM parameter sets. */
+	bct->num_sdram_sets = NV_MAX(bct->num_sdram_sets, index + 1);
+
+	switch (token) {
+	CASE_SET_SDRAM_PARAM(memory_type);
+	CASE_SET_SDRAM_PARAM(pllm_input_divider);
+	CASE_SET_SDRAM_PARAM(pllm_feedback_divider);
+	CASE_SET_SDRAM_PARAM(pllm_stable_time);
+	CASE_SET_SDRAM_PARAM(pllm_setup_control);
+	CASE_SET_SDRAM_PARAM(pllm_select_div2);
+	CASE_SET_SDRAM_PARAM(pllm_pdlshift_ph45);
+	CASE_SET_SDRAM_PARAM(pllm_pdlshift_ph90);
+	CASE_SET_SDRAM_PARAM(pllm_pdlshift_ph135);
+	CASE_SET_SDRAM_PARAM(pllm_kcp);
+	CASE_SET_SDRAM_PARAM(pllm_kvco);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare0);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare1);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare2);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare3);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare4);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare5);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare6);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare7);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare8);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare9);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare10);
+	CASE_SET_SDRAM_PARAM(emc_bct_spare11);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_interval);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_config);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_config2);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_config3);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_wait);
+	CASE_SET_SDRAM_PARAM(emc_pin_program_wait);
+	CASE_SET_SDRAM_PARAM(emc_rc);
+	CASE_SET_SDRAM_PARAM(emc_rfc);
+	CASE_SET_SDRAM_PARAM(emc_rfc_slr);
+	CASE_SET_SDRAM_PARAM(emc_ras);
+	CASE_SET_SDRAM_PARAM(emc_rp);
+	CASE_SET_SDRAM_PARAM(emc_r2r);
+	CASE_SET_SDRAM_PARAM(emc_w2w);
+	CASE_SET_SDRAM_PARAM(emc_r2w);
+	CASE_SET_SDRAM_PARAM(emc_w2r);
+	CASE_SET_SDRAM_PARAM(emc_r2p);
+	CASE_SET_SDRAM_PARAM(emc_w2p);
+	CASE_SET_SDRAM_PARAM(emc_rd_rcd);
+	CASE_SET_SDRAM_PARAM(emc_wr_rcd);
+	CASE_SET_SDRAM_PARAM(emc_rrd);
+	CASE_SET_SDRAM_PARAM(emc_rext);
+	CASE_SET_SDRAM_PARAM(emc_wdv);
+	CASE_SET_SDRAM_PARAM(emc_wdv_mask);
+	CASE_SET_SDRAM_PARAM(emc_quse);
+	CASE_SET_SDRAM_PARAM(emc_quse_width);
+	CASE_SET_SDRAM_PARAM(emc_ibdly);
+	CASE_SET_SDRAM_PARAM(emc_einput);
+	CASE_SET_SDRAM_PARAM(emc_einput_duration);
+	CASE_SET_SDRAM_PARAM(emc_puterm_extra);
+	CASE_SET_SDRAM_PARAM(emc_puterm_width);
+	CASE_SET_SDRAM_PARAM(emc_puterm_adj);
+	CASE_SET_SDRAM_PARAM(emc_cdb_cntl1);
+	CASE_SET_SDRAM_PARAM(emc_cdb_cntl2);
+	CASE_SET_SDRAM_PARAM(emc_cdb_cntl3);
+	CASE_SET_SDRAM_PARAM(emc_qrst);
+	CASE_SET_SDRAM_PARAM(emc_qsafe);
+	CASE_SET_SDRAM_PARAM(emc_rdv);
+	CASE_SET_SDRAM_PARAM(emc_rdv_mask);
+	CASE_SET_SDRAM_PARAM(emc_qpop);
+	CASE_SET_SDRAM_PARAM(emc_refresh);
+	CASE_SET_SDRAM_PARAM(emc_burst_refresh_num);
+	CASE_SET_SDRAM_PARAM(emc_pdex2wr);
+	CASE_SET_SDRAM_PARAM(emc_pdex2rd);
+	CASE_SET_SDRAM_PARAM(emc_pchg2pden);
+	CASE_SET_SDRAM_PARAM(emc_act2pden);
+	CASE_SET_SDRAM_PARAM(emc_ar2pden);
+	CASE_SET_SDRAM_PARAM(emc_rw2pden);
+	CASE_SET_SDRAM_PARAM(emc_txsr);
+	CASE_SET_SDRAM_PARAM(emc_tcke);
+	CASE_SET_SDRAM_PARAM(emc_tckesr);
+	CASE_SET_SDRAM_PARAM(emc_tpd);
+	CASE_SET_SDRAM_PARAM(emc_tfaw);
+	CASE_SET_SDRAM_PARAM(emc_trpab);
+	CASE_SET_SDRAM_PARAM(emc_tclkstable);
+	CASE_SET_SDRAM_PARAM(emc_tclkstop);
+	CASE_SET_SDRAM_PARAM(emc_trefbw);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg5);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg6);
+	CASE_SET_SDRAM_PARAM(emc_fbio_spare);
+	CASE_SET_SDRAM_PARAM(emc_mrs);
+	CASE_SET_SDRAM_PARAM(emc_emrs);
+	CASE_SET_SDRAM_PARAM(emc_emrs2);
+	CASE_SET_SDRAM_PARAM(emc_emrs3);
+	CASE_SET_SDRAM_PARAM(emc_mrw1);
+	CASE_SET_SDRAM_PARAM(emc_mrw2);
+	CASE_SET_SDRAM_PARAM(emc_mrw3);
+	CASE_SET_SDRAM_PARAM(emc_mrw4);
+	CASE_SET_SDRAM_PARAM(emc_mrw_reset_command);
+	CASE_SET_SDRAM_PARAM(emc_mrw_reset_ninit_wait);
+	CASE_SET_SDRAM_PARAM(emc_adr_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_cfg);
+	CASE_SET_SDRAM_PARAM(emc_cfg);
+	CASE_SET_SDRAM_PARAM(emc_cfg2);
+	CASE_SET_SDRAM_PARAM(emc_cfg_pipe);
+	CASE_SET_SDRAM_PARAM(emc_dbg);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll_period);
+	CASE_SET_SDRAM_PARAM(warm_boot_wait);
+	CASE_SET_SDRAM_PARAM(emc_ctt_term_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_odt_write);
+	CASE_SET_SDRAM_PARAM(emc_odt_read);
+	CASE_SET_SDRAM_PARAM(emc_zcal_wait_cnt);
+	CASE_SET_SDRAM_PARAM(emc_zcal_mrw_cmd);
+	CASE_SET_SDRAM_PARAM(emc_mrs_reset_dll);
+	CASE_SET_SDRAM_PARAM(emc_mrs_reset_dll_wait);
+	CASE_SET_SDRAM_PARAM(emc_emrs_ddr2_dll_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_ddr2_dll_reset);
+	CASE_SET_SDRAM_PARAM(emc_emrs_ddr2_ocd_calib);
+	CASE_SET_SDRAM_PARAM(emc_ddr2_wait);
+	CASE_SET_SDRAM_PARAM(pmc_ddr_pwr);
+	CASE_SET_SDRAM_PARAM(emc_clock_source);
+	CASE_SET_SDRAM_PARAM(emc_pin_extra_wait);
+	CASE_SET_SDRAM_PARAM(emc_timing_control_wait);
+	CASE_SET_SDRAM_PARAM(emc_wext);
+	CASE_SET_SDRAM_PARAM(emc_ctt);
+	CASE_SET_SDRAM_PARAM(emc_ctt_duration);
+	CASE_SET_SDRAM_PARAM(emc_prerefresh_req_cnt);
+	CASE_SET_SDRAM_PARAM(emc_txsr_dll);
+	CASE_SET_SDRAM_PARAM(emc_cfg_rsv);
+	CASE_SET_SDRAM_PARAM(emc_mrw_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrw_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_extramode_reg_write_enable);
+	CASE_SET_SDRAM_PARAM(emc_extramode_reg_write_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_wait_cnt);
+	CASE_SET_SDRAM_PARAM(emc_mrs_wait_cnt2);
+	CASE_SET_SDRAM_PARAM(emc_cmd_q);
+	CASE_SET_SDRAM_PARAM(emc_mc2emc_q);
+	CASE_SET_SDRAM_PARAM(emc_dyn_self_ref_control);
+	CASE_SET_SDRAM_PARAM(ahb_arbitration_xbar_ctrl_meminit_done);
+	CASE_SET_SDRAM_PARAM(emc_dev_select);
+	CASE_SET_SDRAM_PARAM(emc_sel_dpd_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs3);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs4);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs5);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs6);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs7);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs8);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs9);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs10);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs11);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs12);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs13);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs14);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs15);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse3);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse4);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse5);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse6);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse7);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr3);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr4);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_addr5);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse8);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse9);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse10);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse11);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse12);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse13);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse14);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse15);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs0);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs1);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs2);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs3);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs4);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs5);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs6);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs7);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs8);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs9);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs10);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs11);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs12);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs13);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs14);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs15);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq3);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq4);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq5);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq6);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq7);
+	CASE_SET_SDRAM_PARAM(emc_zcal_interval);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_dev0);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_dev1);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_wait);
+	CASE_SET_SDRAM_PARAM(emc_zcal_warm_cold_boot_enables);
+	CASE_SET_SDRAM_PARAM(emc_mrw_lpddr2zcal_warm_boot);
+	CASE_SET_SDRAM_PARAM(emc_zqcal_ddr3_warm_boot);
+	CASE_SET_SDRAM_PARAM(emc_zcal_warm_boot_wait);
+	CASE_SET_SDRAM_PARAM(emc_mrs_warm_boot_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrs_extra);
+	CASE_SET_SDRAM_PARAM(emc_clken_override);
+	CASE_SET_SDRAM_PARAM(mc_dis_extra_snap_levels);
+	CASE_SET_SDRAM_PARAM(emc_extra_refresh_num);
+	CASE_SET_SDRAM_PARAM(emc_clken_override_allwarm_boot);
+	CASE_SET_SDRAM_PARAM(mc_clken_override_allwarm_boot);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll_period_warm_boot);
+	CASE_SET_SDRAM_PARAM(pmc_vddp_sel);
+	CASE_SET_SDRAM_PARAM(pmc_vddp_sel_wait);
+	CASE_SET_SDRAM_PARAM(pmc_ddr_cfg);
+	CASE_SET_SDRAM_PARAM(pmc_io_dpd3_req);
+	CASE_SET_SDRAM_PARAM(pmc_io_dpd3_req_wait);
+	CASE_SET_SDRAM_PARAM(pmc_reg_short);
+	CASE_SET_SDRAM_PARAM(pmc_no_io_power);
+	CASE_SET_SDRAM_PARAM(pmc_por_dpd_ctrl_wait);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl4);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl5);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl4);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl5);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl6);
+	CASE_SET_SDRAM_PARAM(emc_xm2dq_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2dq_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2dq_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(emc_xm2clk_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2clk_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2comp_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(emc_acpd_control);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte_cfg);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte0);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte1);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte2);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank0_byte3);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte_cfg);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte0);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte1);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte2);
+	CASE_SET_SDRAM_PARAM(emc_swizzle_rank1_byte3);
+	CASE_SET_SDRAM_PARAM(emc_dsr_vttgen_drv);
+	CASE_SET_SDRAM_PARAM(emc_txdsrvttgen);
+	CASE_SET_SDRAM_PARAM(emc_bgbias_ctl0);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_dev0);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_dev1);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask0);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask1);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_bank_mask2);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_bank_swizzle3);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_outstanding_req);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rcd);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rp);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rc);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_ras);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_faw);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rrd);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rap2pre);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_wap2pre);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_r2r);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_w2w);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_r2w);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_w2r);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_da_turns);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_da_covers);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_misc0);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_misc1);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_ring1_throttle);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_override);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_override1);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_rsv);
+	CASE_SET_SDRAM_PARAM(mc_clken_override);
+	CASE_SET_SDRAM_PARAM(mc_stat_control);
+	CASE_SET_SDRAM_PARAM(mc_display_snap_ring);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_bom);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_bom_adr_hi);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_size_mb);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_vpr_override);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_vpr_override1);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_gpu_override0);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_gpu_override1);
+	CASE_SET_SDRAM_PARAM(mc_sec_carveout_bom);
+	CASE_SET_SDRAM_PARAM(mc_sec_carveout_adr_hi);
+	CASE_SET_SDRAM_PARAM(mc_sec_carveout_size_mb);
+	CASE_SET_SDRAM_PARAM(mc_video_protect_write_access);
+	CASE_SET_SDRAM_PARAM(mc_sec_carveout_protect_write_access);
+	CASE_SET_SDRAM_PARAM(emc_ca_training_enable);
+	CASE_SET_SDRAM_PARAM(emc_ca_training_timing_cntl1);
+	CASE_SET_SDRAM_PARAM(emc_ca_training_timing_cntl2);
+	CASE_SET_SDRAM_PARAM(swizzle_rank_byte_encode);
+	CASE_SET_SDRAM_PARAM(boot_rom_patch_control);
+	CASE_SET_SDRAM_PARAM(boot_rom_patch_data);
+	CASE_SET_SDRAM_PARAM(mc_mts_carveout_bom);
+	CASE_SET_SDRAM_PARAM(mc_mts_carveout_adr_hi);
+	CASE_SET_SDRAM_PARAM(mc_mts_carveout_size_mb);
+	CASE_SET_SDRAM_PARAM(mc_mts_carveout_reg_ctrl);
+
+	DEFAULT();
+	}
+	return 0;
+}
+
+int
+t124_getbl_param(u_int32_t set,
+		parse_token id,
+		u_int32_t *data,
+		u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (set >= NVBOOT_MAX_BOOTLOADERS)
+		return -ENODATA;
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	CASE_GET_BL_PARAM(version);
+	CASE_GET_BL_PARAM(start_blk);
+	CASE_GET_BL_PARAM(start_page);
+	CASE_GET_BL_PARAM(length);
+	CASE_GET_BL_PARAM(load_addr);
+	CASE_GET_BL_PARAM(entry_point);
+	CASE_GET_BL_PARAM(attribute);
+
+	case token_bl_crypto_hash:
+		memcpy(data,
+		&(bct_ptr->bootloader[set].signature.crypto_hash),
+		sizeof(nvboot_hash));
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t124_setbl_param(u_int32_t set,
+		parse_token id,
+		u_int32_t *data,
+		u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (set >= NVBOOT_MAX_BOOTLOADERS)
+		return -ENODATA;
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	CASE_SET_BL_PARAM(version);
+	CASE_SET_BL_PARAM(start_blk);
+	CASE_SET_BL_PARAM(start_page);
+	CASE_SET_BL_PARAM(length);
+	CASE_SET_BL_PARAM(load_addr);
+	CASE_SET_BL_PARAM(entry_point);
+	CASE_SET_BL_PARAM(attribute);
+
+	case token_bl_crypto_hash:
+		memcpy(&(bct_ptr->bootloader[set].signature.crypto_hash),
+		data,
+		sizeof(nvboot_hash));
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t124_bct_get_value(parse_token id, u_int32_t *data, u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+	nvboot_config_table  samplebct; /* Used for computing offsets. */
+
+	/*
+	 * Note: Not all queries require use of the BCT, so testing for a
+	 *       valid BCT is distributed within the code.
+	 */
+	if (data == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	/*
+	 * Simple BCT fields
+	 */
+	CASE_GET_NVU32(boot_data_version);
+	CASE_GET_NVU32(block_size_log2);
+	CASE_GET_NVU32(page_size_log2);
+	CASE_GET_NVU32(partition_size);
+	CASE_GET_NVU32(num_param_sets);
+	CASE_GET_NVU32(num_sdram_sets);
+	CASE_GET_NVU32(bootloader_used);
+	CASE_GET_NVU32(odm_data);
+
+	/*
+	 * Constants.
+	 */
+
+	CASE_GET_CONST(bootloaders_max,   NVBOOT_MAX_BOOTLOADERS);
+	CASE_GET_CONST(reserved_size,     NVBOOT_BCT_RESERVED_SIZE);
+
+	case token_crypto_hash:
+		memcpy(data,
+		&(bct_ptr->signature.crypto_hash),
+		sizeof(nvboot_hash));
+		break;
+
+	case token_reserved_offset:
+		*data = (u_int8_t *)&(samplebct.reserved)
+				- (u_int8_t *)&samplebct;
+		break;
+
+	case token_bct_size:
+		*data = sizeof(nvboot_config_table);
+		break;
+
+	CASE_GET_CONST(hash_size, sizeof(nvboot_hash));
+
+	case token_crypto_offset:
+		/* Offset to region in BCT to encrypt & sign */
+		*data = (u_int8_t *)&(samplebct.random_aes_blk)
+				- (u_int8_t *)&samplebct;
+		break;
+
+	case token_crypto_length:
+		/* size of region in BCT to encrypt & sign */
+		*data = (u_int8_t *)bct_ptr + sizeof(nvboot_config_table)
+				- (u_int8_t *)&(bct_ptr->random_aes_blk);
+		break;
+
+	CASE_GET_CONST(max_bct_search_blks, NVBOOT_MAX_BCT_SEARCH_BLOCKS);
+
+	CASE_GET_CONST_PREFIX(dev_type_sdmmc, nvboot);
+	CASE_GET_CONST_PREFIX(dev_type_spi, nvboot);
+	CASE_GET_CONST_PREFIX(sdmmc_data_width_4bit, nvboot);
+	CASE_GET_CONST_PREFIX(sdmmc_data_width_8bit, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_pllp_out0, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_clockm, nvboot);
+
+	CASE_GET_CONST_PREFIX(memory_type_none, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_lpddr, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr2, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_lpddr2, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr3, nvboot);
+
+	default:
+		return -ENODATA;
+	}
+	return 0;
+}
+
+int
+t124_bct_set_value(parse_token id, u_int32_t data, u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	/*
+	 * Simple BCT fields
+	 */
+	CASE_SET_NVU32(boot_data_version);
+	CASE_SET_NVU32(block_size_log2);
+	CASE_SET_NVU32(page_size_log2);
+	CASE_SET_NVU32(partition_size);
+	CASE_SET_NVU32(num_param_sets);
+	CASE_SET_NVU32(num_sdram_sets);
+	CASE_SET_NVU32(bootloader_used);
+	CASE_SET_NVU32(odm_data);
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t124_bct_set_data(parse_token id,
+	u_int8_t *data,
+	u_int32_t length,
+	u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+
+	case token_crypto_hash:
+		if (length < sizeof(nvboot_hash))
+			return -ENODATA;
+		memcpy(&bct_ptr->signature.crypto_hash, data, sizeof(nvboot_hash));
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+void t124_init_bad_block_table(build_image_context *context)
+{
+	u_int32_t bytes_per_entry;
+	nvboot_badblock_table *table;
+	nvboot_config_table *bct;
+
+	bct = (nvboot_config_table *)(context->bct);
+
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	table = &bct->badblock_table;
+
+	bytes_per_entry = ICEIL(context->partition_size,
+				NVBOOT_BAD_BLOCK_TABLE_SIZE);
+	table->block_size_log2 = context->block_size_log2;
+	table->virtual_blk_size_log2 = NV_MAX(ceil_log2(bytes_per_entry),
+					table->block_size_log2);
+	table->entries_used = iceil_log2(context->partition_size,
+					table->virtual_blk_size_log2);
+}
+
+cbootimage_soc_config tegra124_config = {
+	.init_bad_block_table		= t124_init_bad_block_table,
+	.set_dev_param				= t124_set_dev_param,
+	.get_dev_param				= t124_get_dev_param,
+	.set_sdram_param			= t124_set_sdram_param,
+	.get_sdram_param			= t124_get_sdram_param,
+	.setbl_param				= t124_setbl_param,
+	.getbl_param				= t124_getbl_param,
+	.set_value					= t124_bct_set_value,
+	.get_value					= t124_bct_get_value,
+	.set_data					= t124_bct_set_data,
+
+	.devtype_table				= s_devtype_table_t124,
+	.sdmmc_data_width_table		= s_sdmmc_data_width_table_t124,
+	.spi_clock_source_table		= s_spi_clock_source_table_t124,
+	.nvboot_memory_type_table	= s_nvboot_memory_type_table_t124,
+	.sdram_field_table			= s_sdram_field_table_t124,
+	.nand_table					= 0,
+	.sdmmc_table				= s_sdmmc_table_t124,
+	.spiflash_table				= s_spiflash_table_t124,
+	.device_type_table			= s_device_type_table_t124,
+};
+
+void t124_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config)
+{
+	context->boot_data_version = BOOTDATA_VERSION_T124;
+	*soc_config = &tegra124_config;
+}
+
+int if_bct_is_t124_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config)
+{
+	nvboot_config_table *bct = (nvboot_config_table *) context->bct;
+
+	if (bct->boot_data_version == BOOTDATA_VERSION_T124) {
+		t124_get_soc_config(context, soc_config);
+		return 1;
+	}
+	return 0;
+}
diff --git a/scripts/tegra/t124/nvboot_bct_t124.h b/scripts/tegra/t124/nvboot_bct_t124.h
new file mode 100644
index 000000000000..8f4b966c00d5
--- /dev/null
+++ b/scripts/tegra/t124/nvboot_bct_t124.h
@@ -0,0 +1,359 @@
+/*
+ * Copyright (c) 2013, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#ifndef INCLUDED_NVBOOT_BCT_T124_H
+#define INCLUDED_NVBOOT_BCT_T124_H
+
+#include <sys/types.h>
+#include "nvboot_sdram_param_t124.h"
+
+/**
+ * Defines the number of 32-bit words in the customer_data area of the BCT.
+ */
+#define NVBOOT_BCT_CUSTOMER_DATA_WORDS		162
+
+/**
+ * Defines the number of bytes in the customer_data area of the BCT.
+ */
+#define NVBOOT_BCT_CUSTOMER_DATA_SIZE \
+		(NVBOOT_BCT_CUSTOMER_DATA_WORDS * 4)
+
+/**
+ * Defines the number of bytes in the reserved area of the BCT.
+ */
+#define NVBOOT_BCT_RESERVED_SIZE		2
+
+/**
+ * Defines the maximum number of bootloader descriptions in the BCT.
+ */
+#define NVBOOT_MAX_BOOTLOADERS			4
+
+/**
+ * Defines the maximum number of device parameter sets in the BCT.
+ * The value must be equal to (1 << # of device straps)
+ */
+#define NVBOOT_BCT_MAX_PARAM_SETS		4
+
+/**
+ * Defines the maximum number of SDRAM parameter sets in the BCT.
+ * The value must be equal to (1 << # of SDRAM straps)
+ */
+#define NVBOOT_BCT_MAX_SDRAM_SETS		4
+
+/**
+ * Defines the number of entries (bits) in the bad block table.
+ * The consequences of changing its value are as follows.  Using P as the
+ * # of physical blocks in the boot loader and B as the value of this
+ * constant:
+ *    B > P: There will be unused storage in the bad block table.
+ *    B < P: The virtual block size will be greater than the physical block
+ *           size, so the granularity of the bad block table will be less than
+ *           one bit per physical block.
+ *
+ * 4096 bits is enough to represent an 8MiB partition of 2KiB blocks with one
+ * bit per block (1 virtual block = 1 physical block).  This occupies 512 bytes
+ * of storage.
+ */
+#define NVBOOT_BAD_BLOCK_TABLE_SIZE		4096
+
+/**
+ * Defines the amount of padding needed to pad the bad block table to a
+ * multiple of AES block size.
+ */
+#define NVBOOT_BAD_BLOCK_TABLE_PADDING	10
+
+/**
+ * Defines the maximum number of blocks to search for BCTs.
+ *
+ * This value covers the initial block and a set of journal blocks.
+ *
+ * Ideally, this number will span several erase units for reliable updates
+ * and tolerance for blocks to become bad with use.  Safe updates require
+ * a minimum of 2 erase units in which BCTs can appear.
+ *
+ * To ensure that the BCT search spans a sufficient range of configurations,
+ * the search block count has been set to 64. This allows for redundancy with
+ * a wide range of parts and provides room for greater problems in this
+ * region of the device.
+ */
+#define NVBOOT_MAX_BCT_SEARCH_BLOCKS	64
+
+#define ARSE_RSA_MAX_MODULUS_SIZE		2048
+
+/**
+ * Defines the RSA modulus length in bits and bytes used for PKC secure boot.
+ */
+enum {NVBOOT_SE_RSA_MODULUS_LENGTH_BITS = ARSE_RSA_MAX_MODULUS_SIZE};
+
+/*
+ * Defines the CMAC-AES-128 hash length in 32 bit words. (128 bits = 4 words)
+ */
+enum {NVBOOT_CMAC_AES_HASH_LENGTH = 4};
+
+/**
+ * Defines the storage for a hash value (128 bits).
+ */
+typedef struct nvboot_hash_rec {
+	u_int32_t hash[NVBOOT_CMAC_AES_HASH_LENGTH];
+} nvboot_hash;
+
+/*
+ *  Defines the storage for the RSA public key's modulus
+ *  in the BCT
+ */
+typedef struct nvboot_rsa_key_modulus_rec {
+	/* The modulus size is 2048-bits. */
+	u_int32_t modulus[NVBOOT_SE_RSA_MODULUS_LENGTH_BITS / 8 / 4];
+} nvboot_rsa_key_modulus;
+
+typedef struct nvboot_rsa_pss_sig_rec {
+	/*
+	 * The RSA-PSS signature length is equal to the
+	 * length in octets of the RSA modulus.
+	 * In our case, it's 2048-bits.
+	 */
+	u_int32_t signature[NVBOOT_SE_RSA_MODULUS_LENGTH_BITS / 8 / 4];
+} nvboot_rsa_pss_sig;
+
+typedef struct nvboot_object_signature_rec {
+	/*
+	 * Specifies the AES-CMAC signature for the rest of the BCT structure if symmetric key
+	 * encryption secure boot scheme is used.
+	 */
+	nvboot_hash crypto_hash;
+
+	/*
+	 * Specifies the RSASSA-PSS signature for the rest of the BCT structure if public
+	 * key cryptography secure boot scheme is used.
+	 */
+	nvboot_rsa_pss_sig rsa_pss_sig;
+} nvboot_object_signature;
+
+typedef struct nvboot_ecid_rec {
+	u_int32_t	ecid_0;
+	u_int32_t	ecid_1;
+	u_int32_t	ecid_2;
+	u_int32_t	ecid_3;
+} nvboot_ecid;
+
+/* Defines various data widths supported. */
+typedef enum {
+	/**
+	 * Specifies a 1 bit interface to eMMC.
+	 * Note that 1-bit data width is only for the driver's internal use.
+	 * Fuses doesn't provide option to select 1-bit data width.
+	 * The driver selects 1-bit internally based on need.
+	 * It is used for reading Extended CSD and when the power class
+	 * requirements of a card for 4-bit or 8-bit transfers are not
+	 * supported by the target board.
+	 */
+	nvboot_sdmmc_data_width_1bit = 0,
+
+	/* Specifies a 4 bit interface to eMMC. */
+	nvboot_sdmmc_data_width_4bit = 1,
+
+	/* Specifies a 8 bit interface to eMMC. */
+	nvboot_sdmmc_data_width_8bit = 2,
+	/* Specifies a 4 bit Ddr interface to eMMC. */
+	nvboot_sdmmc_data_width_ddr_4bit = 5,
+	/* Specifies a 8 bit Ddr interface to eMMC. */
+	nvboot_sdmmc_data_width_ddr_8bit = 6,
+
+	nvboot_sdmmc_data_width_num,
+	nvboot_sdmmc_data_width_force32 = 0x7FFFFFFF
+} nvboot_sdmmc_data_width;
+
+/* Defines the parameters that can be changed after BCT is read. */
+typedef struct nvboot_sdmmc_params_rec {
+	/**
+	 * Specifies the clock divider for the SDMMC controller's clock source,
+	 * which is PLLP running at 216MHz.  If it is set to 9, then the SDMMC
+	 * controller runs at 216/9 = 24MHz.
+	 */
+	u_int8_t clock_divider;
+
+	/* Specifies the data bus width. Supported data widths are 4/8 bits. */
+	nvboot_sdmmc_data_width data_width;
+
+	/**
+	 * Max Power class supported by the target board.
+	 * The driver determines the best data width and clock frequency
+	 * supported within the power class range (0 to Max) if the selected
+	 * data width cannot be used at the chosen clock frequency.
+	 */
+	u_int8_t max_power_class_supported;
+
+	/* Specifies the max page size supported by driver */
+	u_int8_t multi_page_support;
+} nvboot_sdmmc_params;
+
+typedef enum {
+	/* Specifies SPI clock source to be PLLP. */
+	nvboot_spi_clock_source_pllp_out0 = 0,
+
+	/* Specifies SPI clock source to be ClockM. */
+	nvboot_spi_clock_source_clockm = 6,
+
+	nvboot_spi_clock_source_num,
+	nvboot_spi_clock_source_force32 = 0x7FFFFFF
+} nvboot_spi_clock_source;
+
+/**
+ * Defines the parameters SPI FLASH devices.
+ */
+typedef struct nvboot_spiflash_params_rec {
+	/**
+	 * Specifies the clock source to use.
+	 */
+	u_int32_t clock_source;
+
+	/**
+	 * Specifes the clock divider to use.
+	 * The value is a 7-bit value based on an input clock of 432Mhz.
+	 * Divider = (432+ DesiredFrequency-1)/DesiredFrequency;
+	 * Typical values:
+	 *     NORMAL_READ at 20MHz: 22
+	 *     FAST_READ   at 33MHz: 14
+	 *     FAST_READ   at 40MHz: 11
+	 *     FAST_READ   at 50MHz:  9
+	 */
+	u_int8_t clock_divider;
+
+	/**
+	 * Specifies the type of command for read operations.
+	 * NV_FALSE specifies a NORMAL_READ Command
+	 * NV_TRUE  specifies a FAST_READ   Command
+	 */
+	u_int8_t read_command_type_fast;
+
+	/* 0 = 2k page size, 1 = 16K page size */
+	u_int8_t page_size_2k_or_16k;
+} nvboot_spiflash_params;
+
+/**
+* Defines the union of the parameters required by each device.
+*/
+typedef union {
+	u_int8_t size[64];
+	/* Specifies optimized parameters for eMMC and eSD */
+	nvboot_sdmmc_params sdmmc_params;
+	/* Specifies optimized parameters for SPI NOR */
+	nvboot_spiflash_params spiflash_params;
+} nvboot_dev_params;
+
+/**
+ * Identifies the types of devices from which the system booted.
+ * Used to identify primary and secondary boot devices.
+ * @note These no longer match the fuse API device values (for
+ * backward compatibility with AP15).
+ */
+typedef enum {
+	/* Specifies a default (unset) value. */
+	nvboot_dev_type_none = 0,
+
+	/* Specifies SPI NOR. */
+	nvboot_dev_type_spi = 3,
+
+	/* Specifies SDMMC (either eMMC or eSD). */
+	nvboot_dev_type_sdmmc = 4,
+
+	nvboot_dev_type_max,
+
+	/* Ignore -- Forces compilers to make 32-bit enums. */
+	nvboot_dev_type_force32 = 0x7FFFFFFF
+} nvboot_dev_type;
+
+/**
+ * Stores information needed to locate and verify a boot loader.
+ *
+ * There is one \c nv_bootloader_info structure for each copy of a BL stored on
+ * the device.
+ */
+typedef struct nv_bootloader_info_rec {
+	u_int32_t version;
+	u_int32_t start_blk;
+	u_int32_t start_page;
+	u_int32_t length;
+	u_int32_t load_addr;
+	u_int32_t entry_point;
+	u_int32_t attribute;
+
+	/* Specifies the AES-CMAC MAC or RSASSA-PSS signature of the BL. */
+	nvboot_object_signature signature;
+} nv_bootloader_info;
+
+/**
+ * Defines the bad block table structure stored in the BCT.
+ */
+typedef struct nvboot_badblock_table_rec {
+	u_int32_t entries_used;
+	u_int8_t virtual_blk_size_log2;
+	u_int8_t block_size_log2;
+	u_int8_t bad_blks[NVBOOT_BAD_BLOCK_TABLE_SIZE / 8];
+	/*
+	 * Add a reserved field as padding to make the bad block table structure
+	 * a multiple of 16 bytes (AES block size).
+	 */
+	u_int8_t reserved[NVBOOT_BAD_BLOCK_TABLE_PADDING];
+} nvboot_badblock_table;
+
+/**
+ * Contains the information needed to load BLs from the secondary boot device.
+ *
+ * - Supplying NumParamSets = 0 indicates not to load any of them.
+ * - Supplying NumDramSets  = 0 indicates not to load any of them.
+ * - The \c random_aes_blk member exists to increase the difficulty of
+ *   key attacks based on knowledge of this structure.
+ */
+typedef struct nvboot_config_table_rec {
+	nvboot_badblock_table badblock_table;
+	nvboot_rsa_key_modulus key;
+	nvboot_object_signature signature;
+	u_int8_t customer_data[NVBOOT_BCT_CUSTOMER_DATA_SIZE];
+	u_int32_t odm_data;
+	u_int32_t reserved1;
+
+	/* START OF SIGNED SECTION OF THE BCT */
+	nvboot_hash random_aes_blk;
+	nvboot_ecid unique_chip_id;
+	u_int32_t boot_data_version;
+	u_int32_t block_size_log2;
+	u_int32_t page_size_log2;
+	u_int32_t partition_size;
+	u_int32_t num_param_sets;
+	nvboot_dev_type dev_type[NVBOOT_BCT_MAX_PARAM_SETS];
+	nvboot_dev_params dev_params[NVBOOT_BCT_MAX_PARAM_SETS];
+	u_int32_t num_sdram_sets;
+	nvboot_sdram_params sdram_params[NVBOOT_BCT_MAX_SDRAM_SETS];
+
+	u_int32_t bootloader_used;
+	nv_bootloader_info bootloader[NVBOOT_MAX_BOOTLOADERS];
+
+	u_int8_t enable_fail_back;
+
+	/*
+	 * Specify whether or not to enable JTAG access when the JTAG disable fuse
+	 * has not been burned.
+	 * SecureJtagControl = NV_FALSE (0) = Disable JTAG access.
+	 * SecureJtagControl = NV_TRUE (1) = Enable JTAG access.
+	 */
+	u_int8_t secure_jtag_control;
+	u_int8_t reserved[NVBOOT_BCT_RESERVED_SIZE];
+} nvboot_config_table;
+#endif /* #ifndef INCLUDED_NVBOOT_BCT_T124_H */
diff --git a/scripts/tegra/t124/nvboot_sdram_param_t124.h b/scripts/tegra/t124/nvboot_sdram_param_t124.h
new file mode 100644
index 000000000000..34f537eb510f
--- /dev/null
+++ b/scripts/tegra/t124/nvboot_sdram_param_t124.h
@@ -0,0 +1,803 @@
+/*
+ * Copyright (c) 2013, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/**
+ * Defines the SDRAM parameter structure.
+ *
+ * Note that PLLM is used by EMC.
+ */
+
+#ifndef INCLUDED_NVBOOT_SDRAM_PARAM_T124_H
+#define INCLUDED_NVBOOT_SDRAM_PARAM_T124_H
+
+#define NVBOOT_BCT_SDRAM_ARB_CONFIG_WORDS 27
+
+typedef enum {
+	/* Specifies the memory type to be undefined */
+	nvboot_memory_type_none = 0,
+
+	/* Specifies the memory type to be DDR SDRAM */
+	nvboot_memory_type_ddr = 0,
+
+	/* Specifies the memory type to be LPDDR SDRAM */
+	nvboot_memory_type_lpddr = 0,
+
+	/* Specifies the memory type to be DDR2 SDRAM */
+	nvboot_memory_type_ddr2 = 0,
+
+	/* Specifies the memory type to be LPDDR2 SDRAM */
+	nvboot_memory_type_lpddr2,
+
+	/* Specifies the memory type to be DDR3 SDRAM */
+	nvboot_memory_type_ddr3,
+
+	nvboot_memory_type_num,
+	nvboot_memory_type_force32 = 0x7FFFFFF
+} nvboot_memory_type;
+
+/**
+ * Defines the SDRAM parameter structure
+ */
+typedef struct nvboot_sdram_params_rec {
+	/* sdram data structure generated by tool warmboot_code_gen */
+
+	/* Specifies the type of memory device */
+	nvboot_memory_type memory_type;
+
+	/* MC/EMC clock source configuration */
+
+	/* Specifies the M value for PllM */
+	u_int32_t pllm_input_divider;
+	/* Specifies the N value for PllM */
+	u_int32_t pllm_feedback_divider;
+	/* Specifies the time to wait for PLLM to lock (in microseconds) */
+	u_int32_t pllm_stable_time;
+	/* Specifies misc. control bits */
+	u_int32_t pllm_setup_control;
+	/* Enables the Div by 2 */
+	u_int32_t pllm_select_div2;
+	/* Powers down VCO output Level shifter */
+	u_int32_t pllm_pdlshift_ph45;
+	/* Powers down VCO output Level shifter */
+	u_int32_t pllm_pdlshift_ph90;
+	/* Powers down VCO output Level shifter */
+	u_int32_t pllm_pdlshift_ph135;
+	/* Specifies value for Charge Pump Gain Control */
+	u_int32_t pllm_kcp;
+	/* Specifies VCO gain */
+	u_int32_t pllm_kvco;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare0;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare1;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare2;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare3;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare4;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare5;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare6;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare7;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare8;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare9;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare10;
+	/* Spare BCT param */
+	u_int32_t emc_bct_spare11;
+	/* Defines EMC_2X_CLK_SRC, EMC_2X_CLK_DIVISOR, EMC_INVERT_DCD */
+	u_int32_t emc_clock_source;
+
+	/* Auto-calibration of EMC pads */
+
+	/* Specifies the value for EMC_AUTO_CAL_INTERVAL */
+	u_int32_t emc_auto_cal_interval;
+	/*
+	 * Specifies the value for EMC_AUTO_CAL_CONFIG
+	 * Note: Trigger bits are set by the SDRAM code.
+	 */
+	u_int32_t emc_auto_cal_config;
+
+	/* Specifies the value for EMC_AUTO_CAL_CONFIG2 */
+	u_int32_t emc_auto_cal_config2;
+
+	/* Specifies the value for EMC_AUTO_CAL_CONFIG3 */
+	u_int32_t emc_auto_cal_config3;
+
+	/*
+	 * Specifies the time for the calibration
+	 * to stabilize (in microseconds)
+	 */
+	u_int32_t emc_auto_cal_wait;
+
+	/*
+	 * DRAM size information
+	 * Specifies the value for EMC_ADR_CFG
+	 */
+	u_int32_t emc_adr_cfg;
+
+	/*
+	 * Specifies the time to wait after asserting pin
+	 * CKE (in microseconds)
+	 */
+	u_int32_t emc_pin_program_wait;
+	/* Specifies the extra delay before/after pin RESET/CKE command */
+	u_int32_t emc_pin_extra_wait;
+	/*
+	 * Specifies the extra delay after the first writing
+	 * of EMC_TIMING_CONTROL
+	 */
+	u_int32_t emc_timing_control_wait;
+
+	/* Timing parameters required for the SDRAM */
+
+	/* Specifies the value for EMC_RC */
+	u_int32_t emc_rc;
+	/* Specifies the value for EMC_RFC */
+	u_int32_t emc_rfc;
+	/* Specifies the value for EMC_RFC_SLR */
+	u_int32_t emc_rfc_slr;
+	/* Specifies the value for EMC_RAS */
+	u_int32_t emc_ras;
+	/* Specifies the value for EMC_RP */
+	u_int32_t emc_rp;
+	/* Specifies the value for EMC_R2R */
+	u_int32_t emc_r2r;
+	/* Specifies the value for EMC_W2W */
+	u_int32_t emc_w2w;
+	/* Specifies the value for EMC_R2W */
+	u_int32_t emc_r2w;
+	/* Specifies the value for EMC_W2R */
+	u_int32_t emc_w2r;
+	/* Specifies the value for EMC_R2P */
+	u_int32_t emc_r2p;
+	/* Specifies the value for EMC_W2P */
+	u_int32_t emc_w2p;
+	/* Specifies the value for EMC_RD_RCD */
+	u_int32_t emc_rd_rcd;
+	/* Specifies the value for EMC_WR_RCD */
+	u_int32_t emc_wr_rcd;
+	/* Specifies the value for EMC_RRD */
+	u_int32_t emc_rrd;
+	/* Specifies the value for EMC_REXT */
+	u_int32_t emc_rext;
+	/* Specifies the value for EMC_WEXT */
+	u_int32_t emc_wext;
+	/* Specifies the value for EMC_WDV */
+	u_int32_t emc_wdv;
+	/* Specifies the value for EMC_WDV_MASK */
+	u_int32_t emc_wdv_mask;
+	/* Specifies the value for EMC_QUSE */
+	u_int32_t emc_quse;
+	/* Specifies the value for EMC_QUSE_WIDTH */
+	u_int32_t emc_quse_width;
+	/* Specifies the value for EMC_IBDLY */
+	u_int32_t emc_ibdly;
+	/* Specifies the value for EMC_EINPUT */
+	u_int32_t emc_einput;
+	/* Specifies the value for EMC_EINPUT_DURATION */
+	u_int32_t emc_einput_duration;
+	/* Specifies the value for EMC_PUTERM_EXTRA */
+	u_int32_t emc_puterm_extra;
+	/* Specifies the value for EMC_PUTERM_WIDTH */
+	u_int32_t emc_puterm_width;
+	/* Specifies the value for EMC_PUTERM_ADJ */
+	u_int32_t emc_puterm_adj;
+	/* Specifies the value for EMC_CDB_CNTL_1 */
+	u_int32_t emc_cdb_cntl1;
+	/* Specifies the value for EMC_CDB_CNTL_2 */
+	u_int32_t emc_cdb_cntl2;
+	/* Specifies the value for EMC_CDB_CNTL_3 */
+	u_int32_t emc_cdb_cntl3;
+	/* Specifies the value for EMC_QRST */
+	u_int32_t emc_qrst;
+	/* Specifies the value for EMC_QSAFE */
+	u_int32_t emc_qsafe;
+	/* Specifies the value for EMC_RDV */
+	u_int32_t emc_rdv;
+	/* Specifies the value for EMC_RDV_MASK */
+	u_int32_t emc_rdv_mask;
+	/* Specifies the value for EMC_QPOP */
+	u_int32_t emc_qpop;
+	/* Specifies the value for EMC_CTT */
+	u_int32_t emc_ctt;
+	/* Specifies the value for EMC_CTT_DURATION */
+	u_int32_t emc_ctt_duration;
+	/* Specifies the value for EMC_REFRESH */
+	u_int32_t emc_refresh;
+	/* Specifies the value for EMC_BURST_REFRESH_NUM */
+	u_int32_t emc_burst_refresh_num;
+	/* Specifies the value for EMC_PRE_REFRESH_REQ_CNT */
+	u_int32_t emc_prerefresh_req_cnt;
+	/* Specifies the value for EMC_PDEX2WR */
+	u_int32_t emc_pdex2wr;
+	/* Specifies the value for EMC_PDEX2RD */
+	u_int32_t emc_pdex2rd;
+	/* Specifies the value for EMC_PCHG2PDEN */
+	u_int32_t emc_pchg2pden;
+	/* Specifies the value for EMC_ACT2PDEN */
+	u_int32_t emc_act2pden;
+	/* Specifies the value for EMC_AR2PDEN */
+	u_int32_t emc_ar2pden;
+	/* Specifies the value for EMC_RW2PDEN */
+	u_int32_t emc_rw2pden;
+	/* Specifies the value for EMC_TXSR */
+	u_int32_t emc_txsr;
+	/* Specifies the value for EMC_TXSRDLL */
+	u_int32_t emc_txsr_dll;
+	/* Specifies the value for EMC_TCKE */
+	u_int32_t emc_tcke;
+	/* Specifies the value for EMC_TCKESR */
+	u_int32_t emc_tckesr;
+	/* Specifies the value for EMC_TPD */
+	u_int32_t emc_tpd;
+	/* Specifies the value for EMC_TFAW */
+	u_int32_t emc_tfaw;
+	/* Specifies the value for EMC_TRPAB */
+	u_int32_t emc_trpab;
+	/* Specifies the value for EMC_TCLKSTABLE */
+	u_int32_t emc_tclkstable;
+	/* Specifies the value for EMC_TCLKSTOP */
+	u_int32_t emc_tclkstop;
+	/* Specifies the value for EMC_TREFBW */
+	u_int32_t emc_trefbw;
+
+	/* FBIO configuration values */
+
+	/* Specifies the value for EMC_FBIO_CFG5 */
+	u_int32_t emc_fbio_cfg5;
+	/* Specifies the value for EMC_FBIO_CFG6 */
+	u_int32_t emc_fbio_cfg6;
+	/* Specifies the value for EMC_FBIO_SPARE */
+	u_int32_t emc_fbio_spare;
+
+	/* Specifies the value for EMC_CFG_RSV */
+	u_int32_t emc_cfg_rsv;
+
+	/* MRS command values */
+
+	/* Specifies the value for EMC_MRS */
+	u_int32_t emc_mrs;
+	/* Specifies the MP0 command to initialize mode registers */
+	u_int32_t emc_emrs;
+	/* Specifies the MP2 command to initialize mode registers */
+	u_int32_t emc_emrs2;
+	/* Specifies the MP3 command to initialize mode registers */
+	u_int32_t emc_emrs3;
+	/* Specifies the programming to LPDDR2 Mode Register 1 at cold boot */
+	u_int32_t emc_mrw1;
+	/* Specifies the programming to LPDDR2 Mode Register 2 at cold boot */
+	u_int32_t emc_mrw2;
+	/* Specifies the programming to LPDDR2 Mode Register 3 at cold boot */
+	u_int32_t emc_mrw3;
+	/* Specifies the programming to LPDDR2 Mode Register 11 at cold boot */
+	u_int32_t emc_mrw4;
+	/*
+	 * Specifies the programming to extra LPDDR2 Mode Register
+	 * at cold boot
+	 */
+	u_int32_t emc_mrw_extra;
+	/*
+	 * Specifies the programming to extra LPDDR2 Mode Register
+	 * at warm boot
+	 */
+	u_int32_t emc_warm_boot_mrw_extra;
+	/*
+	 * Specify the enable of extra Mode Register programming at
+	 * warm boot
+	 */
+	u_int32_t emc_warm_boot_extramode_reg_write_enable;
+	/*
+	 * Specify the enable of extra Mode Register programming at
+	 * cold boot
+	 */
+	u_int32_t emc_extramode_reg_write_enable;
+
+	/* Specifies the EMC_MRW reset command value */
+	u_int32_t emc_mrw_reset_command;
+	/* Specifies the EMC Reset wait time (in microseconds) */
+	u_int32_t emc_mrw_reset_ninit_wait;
+	/* Specifies the value for EMC_MRS_WAIT_CNT */
+	u_int32_t emc_mrs_wait_cnt;
+	/* Specifies the value for EMC_MRS_WAIT_CNT2 */
+	u_int32_t emc_mrs_wait_cnt2;
+
+	/* EMC miscellaneous configurations */
+
+	/* Specifies the value for EMC_CFG */
+	u_int32_t emc_cfg;
+	/* Specifies the value for EMC_CFG_2 */
+	u_int32_t emc_cfg2;
+	/* Specifies the pipe bypass controls */
+	u_int32_t emc_cfg_pipe;
+	/* Specifies the value for EMC_DBG */
+	u_int32_t emc_dbg;
+	/* Specifies the value for EMC_CMDQ */
+	u_int32_t emc_cmd_q;
+	/* Specifies the value for EMC_MC2EMCQ */
+	u_int32_t emc_mc2emc_q;
+	/* Specifies the value for EMC_DYN_SELF_REF_CONTROL */
+	u_int32_t emc_dyn_self_ref_control;
+
+	/* Specifies the value for MEM_INIT_DONE */
+	u_int32_t ahb_arbitration_xbar_ctrl_meminit_done;
+
+	/* Specifies the value for EMC_CFG_DIG_DLL */
+	u_int32_t emc_cfg_dig_dll;
+	/* Specifies the value for EMC_CFG_DIG_DLL_PERIOD */
+	u_int32_t emc_cfg_dig_dll_period;
+	/* Specifies the value of *DEV_SELECTN of various EMC registers */
+	u_int32_t emc_dev_select;
+
+	/* Specifies the value for EMC_SEL_DPD_CTRL */
+	u_int32_t emc_sel_dpd_ctrl;
+
+	/* Pads trimmer delays */
+
+	/* Specifies the value for EMC_DLL_XFORM_DQS0 */
+	u_int32_t emc_dll_xform_dqs0;
+	/* Specifies the value for EMC_DLL_XFORM_DQS1 */
+	u_int32_t emc_dll_xform_dqs1;
+	/* Specifies the value for EMC_DLL_XFORM_DQS2 */
+	u_int32_t emc_dll_xform_dqs2;
+	/* Specifies the value for EMC_DLL_XFORM_DQS3 */
+	u_int32_t emc_dll_xform_dqs3;
+	/* Specifies the value for EMC_DLL_XFORM_DQS4 */
+	u_int32_t emc_dll_xform_dqs4;
+	/* Specifies the value for EMC_DLL_XFORM_DQS5 */
+	u_int32_t emc_dll_xform_dqs5;
+	/* Specifies the value for EMC_DLL_XFORM_DQS6 */
+	u_int32_t emc_dll_xform_dqs6;
+	/* Specifies the value for EMC_DLL_XFORM_DQS7 */
+	u_int32_t emc_dll_xform_dqs7;
+	/* Specifies the value for EMC_DLL_XFORM_DQS8 */
+	u_int32_t emc_dll_xform_dqs8;
+	/* Specifies the value for EMC_DLL_XFORM_DQS9 */
+	u_int32_t emc_dll_xform_dqs9;
+	/* Specifies the value for EMC_DLL_XFORM_DQS10 */
+	u_int32_t emc_dll_xform_dqs10;
+	/* Specifies the value for EMC_DLL_XFORM_DQS11 */
+	u_int32_t emc_dll_xform_dqs11;
+	/* Specifies the value for EMC_DLL_XFORM_DQS12 */
+	u_int32_t emc_dll_xform_dqs12;
+	/* Specifies the value for EMC_DLL_XFORM_DQS13 */
+	u_int32_t emc_dll_xform_dqs13;
+	/* Specifies the value for EMC_DLL_XFORM_DQS14 */
+	u_int32_t emc_dll_xform_dqs14;
+	/* Specifies the value for EMC_DLL_XFORM_DQS15 */
+	u_int32_t emc_dll_xform_dqs15;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE0 */
+	u_int32_t emc_dll_xform_quse0;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE1 */
+	u_int32_t emc_dll_xform_quse1;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE2 */
+	u_int32_t emc_dll_xform_quse2;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE3 */
+	u_int32_t emc_dll_xform_quse3;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE4 */
+	u_int32_t emc_dll_xform_quse4;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE5 */
+	u_int32_t emc_dll_xform_quse5;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE6 */
+	u_int32_t emc_dll_xform_quse6;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE7 */
+	u_int32_t emc_dll_xform_quse7;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR0 */
+	u_int32_t emc_dll_xform_addr0;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR1 */
+	u_int32_t emc_dll_xform_addr1;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR2 */
+	u_int32_t emc_dll_xform_addr2;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR3 */
+	u_int32_t emc_dll_xform_addr3;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR4 */
+	u_int32_t emc_dll_xform_addr4;
+	/* Specifies the value for EMC_DLL_XFORM_ADDR5 */
+	u_int32_t emc_dll_xform_addr5;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE8 */
+	u_int32_t emc_dll_xform_quse8;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE9 */
+	u_int32_t emc_dll_xform_quse9;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE10 */
+	u_int32_t emc_dll_xform_quse10;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE11 */
+	u_int32_t emc_dll_xform_quse11;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE12 */
+	u_int32_t emc_dll_xform_quse12;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE13 */
+	u_int32_t emc_dll_xform_quse13;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE14 */
+	u_int32_t emc_dll_xform_quse14;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE15 */
+	u_int32_t emc_dll_xform_quse15;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS0 */
+	u_int32_t emc_dli_trim_tx_dqs0;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS1 */
+	u_int32_t emc_dli_trim_tx_dqs1;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS2 */
+	u_int32_t emc_dli_trim_tx_dqs2;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS3 */
+	u_int32_t emc_dli_trim_tx_dqs3;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS4 */
+	u_int32_t emc_dli_trim_tx_dqs4;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS5 */
+	u_int32_t emc_dli_trim_tx_dqs5;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS6 */
+	u_int32_t emc_dli_trim_tx_dqs6;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS7 */
+	u_int32_t emc_dli_trim_tx_dqs7;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS8 */
+	u_int32_t emc_dli_trim_tx_dqs8;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS9 */
+	u_int32_t emc_dli_trim_tx_dqs9;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS10 */
+	u_int32_t emc_dli_trim_tx_dqs10;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS11 */
+	u_int32_t emc_dli_trim_tx_dqs11;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS12 */
+	u_int32_t emc_dli_trim_tx_dqs12;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS13 */
+	u_int32_t emc_dli_trim_tx_dqs13;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS14 */
+	u_int32_t emc_dli_trim_tx_dqs14;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS15 */
+	u_int32_t emc_dli_trim_tx_dqs15;
+	/* Specifies the value for EMC_DLL_XFORM_DQ0 */
+	u_int32_t emc_dll_xform_dq0;
+	/* Specifies the value for EMC_DLL_XFORM_DQ1 */
+	u_int32_t emc_dll_xform_dq1;
+	/* Specifies the value for EMC_DLL_XFORM_DQ2 */
+	u_int32_t emc_dll_xform_dq2;
+	/* Specifies the value for EMC_DLL_XFORM_DQ3 */
+	u_int32_t emc_dll_xform_dq3;
+	/* Specifies the value for EMC_DLL_XFORM_DQ4 */
+	u_int32_t emc_dll_xform_dq4;
+	/* Specifies the value for EMC_DLL_XFORM_DQ5 */
+	u_int32_t emc_dll_xform_dq5;
+	/* Specifies the value for EMC_DLL_XFORM_DQ6 */
+	u_int32_t emc_dll_xform_dq6;
+	/* Specifies the value for EMC_DLL_XFORM_DQ7 */
+	u_int32_t emc_dll_xform_dq7;
+
+	/*
+	 * Specifies the delay after asserting CKE pin during a WarmBoot0
+	 * sequence (in microseconds)
+	 */
+	u_int32_t warm_boot_wait;
+
+	/* Specifies the value for EMC_CTT_TERM_CTRL */
+	u_int32_t emc_ctt_term_ctrl;
+
+	/* Specifies the value for EMC_ODT_WRITE */
+	u_int32_t emc_odt_write;
+	/* Specifies the value for EMC_ODT_WRITE */
+	u_int32_t emc_odt_read;
+
+	/* Periodic ZQ calibration */
+
+	/*
+	 * Specifies the value for EMC_ZCAL_INTERVAL
+	 * Value 0 disables ZQ calibration
+	 */
+	u_int32_t emc_zcal_interval;
+	/* Specifies the value for EMC_ZCAL_WAIT_CNT */
+	u_int32_t emc_zcal_wait_cnt;
+	/* Specifies the value for EMC_ZCAL_MRW_CMD */
+	u_int32_t emc_zcal_mrw_cmd;
+
+	/* DRAM initialization sequence flow control */
+
+	/* Specifies the MRS command value for resetting DLL */
+	u_int32_t emc_mrs_reset_dll;
+	/* Specifies the command for ZQ initialization of device 0 */
+	u_int32_t emc_zcal_init_dev0;
+	/* Specifies the command for ZQ initialization of device 1 */
+	u_int32_t emc_zcal_init_dev1;
+	/*
+	 * Specifies the wait time after programming a ZQ initialization
+	 * command (in microseconds)
+	 */
+	u_int32_t emc_zcal_init_wait;
+	/*
+	 * Specifies the enable for ZQ calibration at cold boot [bit 0]
+	 * and warm boot [bit 1]
+	 */
+	u_int32_t emc_zcal_warm_cold_boot_enables;
+
+	/*
+	 * Specifies the MRW command to LPDDR2 for ZQ calibration
+	 * on warmboot
+	 */
+	/* Is issued to both devices separately */
+	u_int32_t emc_mrw_lpddr2zcal_warm_boot;
+	/*
+	 * Specifies the ZQ command to DDR3 for ZQ calibration on warmboot
+	 * Is issued to both devices separately
+	 */
+	u_int32_t emc_zqcal_ddr3_warm_boot;
+	/*
+	 * Specifies the wait time for ZQ calibration on warmboot
+	 * (in microseconds)
+	 */
+	u_int32_t emc_zcal_warm_boot_wait;
+	/*
+	 * Specifies the enable for DRAM Mode Register programming
+	 * at warm boot
+	 */
+	u_int32_t emc_mrs_warm_boot_enable;
+	/*
+	 * Specifies the wait time after sending an MRS DLL reset command
+	 * in microseconds)
+	 */
+	u_int32_t emc_mrs_reset_dll_wait;
+	/* Specifies the extra MRS command to initialize mode registers */
+	u_int32_t emc_mrs_extra;
+	/* Specifies the extra MRS command at warm boot */
+	u_int32_t emc_warm_boot_mrs_extra;
+	/* Specifies the EMRS command to enable the DDR2 DLL */
+	u_int32_t emc_emrs_ddr2_dll_enable;
+	/* Specifies the MRS command to reset the DDR2 DLL */
+	u_int32_t emc_mrs_ddr2_dll_reset;
+	/* Specifies the EMRS command to set OCD calibration */
+	u_int32_t emc_emrs_ddr2_ocd_calib;
+	/*
+	 * Specifies the wait between initializing DDR and setting OCD
+	 * calibration (in microseconds)
+	 */
+	u_int32_t emc_ddr2_wait;
+	/* Specifies the value for EMC_CLKEN_OVERRIDE */
+	u_int32_t emc_clken_override;
+	/* Specifies the value for MC_DIS_EXTRA_SNAP_LEVELS */
+	u_int32_t mc_dis_extra_snap_levels;
+	/*
+	 * Specifies LOG2 of the extra refresh numbers after booting
+	 * Program 0 to disable
+	 */
+	u_int32_t emc_extra_refresh_num;
+	/* Specifies the master override for all EMC clocks */
+	u_int32_t emc_clken_override_allwarm_boot;
+	/* Specifies the master override for all MC clocks */
+	u_int32_t mc_clken_override_allwarm_boot;
+	/* Specifies digital dll period, choosing between 4 to 64 ms */
+	u_int32_t emc_cfg_dig_dll_period_warm_boot;
+
+	/* Pad controls */
+
+	/* Specifies the value for PMC_VDDP_SEL */
+	u_int32_t pmc_vddp_sel;
+	/* Specifies the wait time after programming PMC_VDDP_SEL */
+	u_int32_t pmc_vddp_sel_wait;
+	/* Specifies the value for PMC_DDR_PWR */
+	u_int32_t pmc_ddr_pwr;
+	/* Specifies the value for PMC_DDR_CFG */
+	u_int32_t pmc_ddr_cfg;
+	/* Specifies the value for PMC_IO_DPD3_REQ */
+	u_int32_t pmc_io_dpd3_req;
+	/* Specifies the wait time after programming PMC_IO_DPD3_REQ */
+	u_int32_t pmc_io_dpd3_req_wait;
+	/* Specifies the value for PMC_REG_SHORT */
+	u_int32_t pmc_reg_short;
+	/* Specifies the value for PMC_NO_IOPOWER */
+	u_int32_t pmc_no_io_power;
+	/* Specifies the wait time after programming PMC_POR_DPD_CTRL */
+	u_int32_t pmc_por_dpd_ctrl_wait;
+	/* Specifies the value for EMC_XM2CMDPADCTRL */
+	u_int32_t emc_xm2cmd_pad_ctrl;
+	/* Specifies the value for EMC_XM2CMDPADCTRL2 */
+	u_int32_t emc_xm2cmd_pad_ctrl2;
+	/* Specifies the value for EMC_XM2CMDPADCTRL3 */
+	u_int32_t emc_xm2cmd_pad_ctrl3;
+	/* Specifies the value for EMC_XM2CMDPADCTRL4 */
+	u_int32_t emc_xm2cmd_pad_ctrl4;
+	/* Specifies the value for EMC_XM2CMDPADCTRL5 */
+	u_int32_t emc_xm2cmd_pad_ctrl5;
+	/* Specifies the value for EMC_XM2DQSPADCTRL */
+	u_int32_t emc_xm2dqs_pad_ctrl;
+	/* Specifies the value for EMC_XM2DQSPADCTRL2 */
+	u_int32_t emc_xm2dqs_pad_ctrl2;
+	/* Specifies the value for EMC_XM2DQSPADCTRL3 */
+	u_int32_t emc_xm2dqs_pad_ctrl3;
+	/* Specifies the value for EMC_XM2DQSPADCTRL4 */
+	u_int32_t emc_xm2dqs_pad_ctrl4;
+	/* Specifies the value for EMC_XM2DQSPADCTRL5 */
+	u_int32_t emc_xm2dqs_pad_ctrl5;
+	/* Specifies the value for EMC_XM2DQSPADCTRL6 */
+	u_int32_t emc_xm2dqs_pad_ctrl6;
+	/* Specifies the value for EMC_XM2DQPADCTRL */
+	u_int32_t emc_xm2dq_pad_ctrl;
+	/* Specifies the value for EMC_XM2DQPADCTRL2 */
+	u_int32_t emc_xm2dq_pad_ctrl2;
+	/* Specifies the value for EMC_XM2DQPADCTRL3 */
+	u_int32_t emc_xm2dq_pad_ctrl3;
+	/* Specifies the value for EMC_XM2CLKPADCTRL */
+	u_int32_t emc_xm2clk_pad_ctrl;
+	/* Specifies the value for EMC_XM2CLKPADCTRL2 */
+	u_int32_t emc_xm2clk_pad_ctrl2;
+	/* Specifies the value for EMC_XM2COMPPADCTRL */
+	u_int32_t emc_xm2comp_pad_ctrl;
+	/* Specifies the value for EMC_XM2VTTGENPADCTRL */
+	u_int32_t emc_xm2vttgen_pad_ctrl;
+	/* Specifies the value for EMC_XM2VTTGENPADCTRL2 */
+	u_int32_t emc_xm2vttgen_pad_ctrl2;
+	/* Specifies the value for EMC_XM2VTTGENPADCTRL3 */
+	u_int32_t emc_xm2vttgen_pad_ctrl3;
+	/* Specifies the value for EMC_ACPD_CONTROL */
+	u_int32_t emc_acpd_control;
+
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE_CFG */
+	u_int32_t emc_swizzle_rank0_byte_cfg;
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE0 */
+	u_int32_t emc_swizzle_rank0_byte0;
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE1 */
+	u_int32_t emc_swizzle_rank0_byte1;
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE2 */
+	u_int32_t emc_swizzle_rank0_byte2;
+	/* Specifies the value for EMC_SWIZZLE_RANK0_BYTE3 */
+	u_int32_t emc_swizzle_rank0_byte3;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE_CFG */
+	u_int32_t emc_swizzle_rank1_byte_cfg;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE0 */
+	u_int32_t emc_swizzle_rank1_byte0;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE1 */
+	u_int32_t emc_swizzle_rank1_byte1;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE2 */
+	u_int32_t emc_swizzle_rank1_byte2;
+	/* Specifies the value for EMC_SWIZZLE_RANK1_BYTE3 */
+	u_int32_t emc_swizzle_rank1_byte3;
+
+	/* Specifies the value for EMC_DSR_VTTGEN_DRV */
+	u_int32_t emc_dsr_vttgen_drv;
+
+	/* Specifies the value for EMC_TXDSRVTTGEN */
+	u_int32_t emc_txdsrvttgen;
+	/* Specifies the value for EMC_BGBIAS_CTL */
+	u_int32_t emc_bgbias_ctl0;
+
+	/* DRAM size information */
+
+	/* Specifies the value for MC_EMEM_ADR_CFG */
+	u_int32_t mc_emem_adr_cfg;
+	/* Specifies the value for MC_EMEM_ADR_CFG_DEV0 */
+	u_int32_t mc_emem_adr_cfg_dev0;
+	/* Specifies the value for MC_EMEM_ADR_CFG_DEV1 */
+	u_int32_t mc_emem_adr_cfg_dev1;
+	/* Specifies the value for MC_EMEM_BANK_SWIZZLE_CFG0 */
+	u_int32_t mc_emem_adr_cfg_bank_mask0;
+	/* Specifies the value for MC_EMEM_BANK_SWIZZLE_CFG1 */
+	u_int32_t mc_emem_adr_cfg_bank_mask1;
+	/* Specifies the value for MC_EMEM_BANK_SWIZZLE_CFG2 */
+	u_int32_t mc_emem_adr_cfg_bank_mask2;
+	/* Specifies the value for MC_EMEM_BANK_SWIZZLE_CFG3 */
+	u_int32_t mc_emem_adr_cfg_bank_swizzle3;
+
+	/*
+	 * Specifies the value for MC_EMEM_CFG which holds the external memory
+	 * size (in KBytes)
+	 */
+	u_int32_t mc_emem_cfg;
+
+	/* MC arbitration configuration */
+
+	/* Specifies the value for MC_EMEM_ARB_CFG */
+	u_int32_t mc_emem_arb_cfg;
+	/* Specifies the value for MC_EMEM_ARB_OUTSTANDING_REQ */
+	u_int32_t mc_emem_arb_outstanding_req;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RCD */
+	u_int32_t mc_emem_arb_timing_rcd;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RP */
+	u_int32_t mc_emem_arb_timing_rp;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RC */
+	u_int32_t mc_emem_arb_timing_rc;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RAS */
+	u_int32_t mc_emem_arb_timing_ras;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_FAW */
+	u_int32_t mc_emem_arb_timing_faw;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RRD */
+	u_int32_t mc_emem_arb_timing_rrd;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RAP2PRE */
+	u_int32_t mc_emem_arb_timing_rap2pre;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_WAP2PRE */
+	u_int32_t mc_emem_arb_timing_wap2pre;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_R2R */
+	u_int32_t mc_emem_arb_timing_r2r;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_W2W */
+	u_int32_t mc_emem_arb_timing_w2w;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_R2W */
+	u_int32_t mc_emem_arb_timing_r2w;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_W2R */
+	u_int32_t mc_emem_arb_timing_w2r;
+	/* Specifies the value for MC_EMEM_ARB_DA_TURNS */
+	u_int32_t mc_emem_arb_da_turns;
+	/* Specifies the value for MC_EMEM_ARB_DA_COVERS */
+	u_int32_t mc_emem_arb_da_covers;
+	/* Specifies the value for MC_EMEM_ARB_MISC0 */
+	u_int32_t mc_emem_arb_misc0;
+	/* Specifies the value for MC_EMEM_ARB_MISC1 */
+	u_int32_t mc_emem_arb_misc1;
+	/* Specifies the value for MC_EMEM_ARB_RING1_THROTTLE */
+	u_int32_t mc_emem_arb_ring1_throttle;
+	/* Specifies the value for MC_EMEM_ARB_OVERRIDE */
+	u_int32_t mc_emem_arb_override;
+	/* Specifies the value for MC_EMEM_ARB_OVERRIDE_1 */
+	u_int32_t mc_emem_arb_override1;
+	/* Specifies the value for MC_EMEM_ARB_RSV */
+	u_int32_t mc_emem_arb_rsv;
+
+	/* Specifies the value for MC_CLKEN_OVERRIDE */
+	u_int32_t mc_clken_override;
+
+	/* Specifies the value for MC_STAT_CONTROL */
+	u_int32_t mc_stat_control;
+	/* Specifies the value for MC_DISPLAY_SNAP_RING */
+	u_int32_t mc_display_snap_ring;
+	/* Specifies the value for MC_VIDEO_PROTECT_BOM */
+	u_int32_t mc_video_protect_bom;
+	/* Specifies the value for MC_VIDEO_PROTECT_BOM_ADR_HI */
+	u_int32_t mc_video_protect_bom_adr_hi;
+	/* Specifies the value for MC_VIDEO_PROTECT_SIZE_MB */
+	u_int32_t mc_video_protect_size_mb;
+	/* Specifies the value for MC_VIDEO_PROTECT_VPR_OVERRIDE */
+	u_int32_t mc_video_protect_vpr_override;
+	/* Specifies the value for MC_VIDEO_PROTECT_VPR_OVERRIDE1 */
+	u_int32_t mc_video_protect_vpr_override1;
+	/* Specifies the value for MC_VIDEO_PROTECT_GPU_OVERRIDE_0 */
+	u_int32_t mc_video_protect_gpu_override0;
+	/* Specifies the value for MC_VIDEO_PROTECT_GPU_OVERRIDE_1 */
+	u_int32_t mc_video_protect_gpu_override1;
+	/* Specifies the value for MC_SEC_CARVEOUT_BOM */
+	u_int32_t mc_sec_carveout_bom;
+	/* Specifies the value for MC_SEC_CARVEOUT_ADR_HI */
+	u_int32_t mc_sec_carveout_adr_hi;
+	/* Specifies the value for MC_SEC_CARVEOUT_SIZE_MB */
+	u_int32_t mc_sec_carveout_size_mb;
+	/* Specifies the value for MC_VIDEO_PROTECT_REG_CTRL.VIDEO_PROTECT_WRITE_ACCESS */
+	u_int32_t mc_video_protect_write_access;
+	/* Specifies the value for MC_SEC_CARVEOUT_REG_CTRL.SEC_CARVEOUT_WRITE_ACCESS */
+	u_int32_t mc_sec_carveout_protect_write_access;
+
+	/* Specifies enable for CA training */
+	u_int32_t emc_ca_training_enable;
+	/* Specifies the value for EMC_CA_TRAINING_TIMING_CNTRL1 */
+	u_int32_t emc_ca_training_timing_cntl1;
+	/* Specifies the value for EMC_CA_TRAINING_TIMING_CNTRL2 */
+	u_int32_t emc_ca_training_timing_cntl2;
+	/* Set if bit 6 select is greater than bit 7 select; uses aremc.spec packet SWIZZLE_BIT6_GT_BIT7 */
+	u_int32_t swizzle_rank_byte_encode;
+	/* Specifies enable and offset for patched boot rom write */
+	u_int32_t boot_rom_patch_control;
+	/* Specifies data for patched boot rom write */
+	u_int32_t boot_rom_patch_data;
+	/* Specifies the value for MC_MTS_CARVEOUT_BOM */
+	u_int32_t mc_mts_carveout_bom;
+	/* Specifies the value for MC_MTS_CARVEOUT_ADR_HI */
+	u_int32_t mc_mts_carveout_adr_hi;
+	/* Specifies the value for MC_MTS_CARVEOUT_SIZE_MB */
+	u_int32_t mc_mts_carveout_size_mb;
+	/* Specifies the value for MC_MTS_CARVEOUT_REG_CTRL */
+	u_int32_t mc_mts_carveout_reg_ctrl;
+
+	/* End of generated code by warmboot_code_gen */
+} nvboot_sdram_params;
+#endif /* #ifndef INCLUDED_NVBOOT_SDRAM_PARAM_T124_H */
+
diff --git a/scripts/tegra/t124/parse_t124.c b/scripts/tegra/t124/parse_t124.c
new file mode 100644
index 000000000000..0d80867eea68
--- /dev/null
+++ b/scripts/tegra/t124/parse_t124.c
@@ -0,0 +1,429 @@
+/*
+ * Copyright (c) 2013, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * parse_t124.c - The implementation for parsing dev/sdram parameters
+ */
+
+#include "../parse.h"
+#include "nvboot_bct_t124.h"
+
+enum_item s_devtype_table_t124[] = {
+	{ "NvBootDevType_Sdmmc", nvboot_dev_type_sdmmc },
+	{ "NvBootDevType_Spi", nvboot_dev_type_spi },
+	{ "Sdmmc", nvboot_dev_type_sdmmc },
+	{ "Spi", nvboot_dev_type_spi },
+	{ NULL, 0 }
+};
+
+enum_item s_sdmmc_data_width_table_t124[] = {
+	{
+	  "NvBootSdmmcDataWidth_4Bit",
+	  nvboot_sdmmc_data_width_4bit
+	},
+	{
+	  "NvBootSdmmcDataWidth_8Bit",
+	  nvboot_sdmmc_data_width_8bit
+	},
+	{ "4Bit", nvboot_sdmmc_data_width_4bit },
+	{ "8Bit", nvboot_sdmmc_data_width_8bit },
+	{ NULL, 0 }
+};
+
+enum_item s_spi_clock_source_table_t124[] = {
+	{ "NvBootSpiClockSource_PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "NvBootSpiClockSource_ClockM", nvboot_spi_clock_source_clockm },
+	{ "ClockSource_PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "ClockSource_ClockM", nvboot_spi_clock_source_clockm },
+	{ "PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "ClockM", nvboot_spi_clock_source_clockm },
+	{ NULL, 0 }
+};
+
+enum_item s_nvboot_memory_type_table_t124[] = {
+	{ "NvBootMemoryType_None", nvboot_memory_type_none },
+	{ "NvBootMemoryType_Ddr3", nvboot_memory_type_ddr3 },
+	{ "NvBootMemoryType_Ddr2", nvboot_memory_type_ddr2 },
+	{ "NvBootMemoryType_Ddr", nvboot_memory_type_ddr },
+	{ "NvBootMemoryType_LpDdr2", nvboot_memory_type_lpddr2 },
+	{ "NvBootMemoryType_LpDdr", nvboot_memory_type_lpddr },
+
+	{ "None", nvboot_memory_type_none },
+	{ "Ddr3", nvboot_memory_type_ddr3 },
+	{ "Ddr2", nvboot_memory_type_ddr2 },
+	{ "Ddr", nvboot_memory_type_ddr },
+	{ "LpDdr2", nvboot_memory_type_lpddr2 },
+	{ "LpDdr", nvboot_memory_type_lpddr },
+
+	{ NULL, 0 }
+};
+
+#define TOKEN(name)						\
+	token_##name, field_type_u32, NULL
+
+field_item s_sdram_field_table_t124[] = {
+	{ "MemoryType", token_memory_type,
+	  field_type_enum, s_nvboot_memory_type_table_t124 },
+
+	{ "PllMInputDivider",           TOKEN(pllm_input_divider) },
+	{ "PllMFeedbackDivider",        TOKEN(pllm_feedback_divider) },
+	{ "PllMStableTime",             TOKEN(pllm_stable_time) },
+	{ "PllMSetupControl",           TOKEN(pllm_setup_control) },
+	{ "PllMSelectDiv2",             TOKEN(pllm_select_div2) },
+	{ "PllMPDLshiftPh45",           TOKEN(pllm_pdlshift_ph45) },
+	{ "PllMPDLshiftPh90",           TOKEN(pllm_pdlshift_ph90) },
+	{ "PllMPDLshiftPh135",          TOKEN(pllm_pdlshift_ph135) },
+	{ "PllMKCP",                    TOKEN(pllm_kcp) },
+	{ "PllMKVCO",                   TOKEN(pllm_kvco) },
+	{ "EmcBctSpare0",               TOKEN(emc_bct_spare0) },
+	{ "EmcBctSpare1",               TOKEN(emc_bct_spare1) },
+	{ "EmcBctSpare2",               TOKEN(emc_bct_spare2) },
+	{ "EmcBctSpare3",               TOKEN(emc_bct_spare3) },
+	{ "EmcBctSpare4",               TOKEN(emc_bct_spare4) },
+	{ "EmcBctSpare5",               TOKEN(emc_bct_spare5) },
+	{ "EmcBctSpare6",               TOKEN(emc_bct_spare6) },
+	{ "EmcBctSpare7",               TOKEN(emc_bct_spare7) },
+	{ "EmcBctSpare8",               TOKEN(emc_bct_spare8) },
+	{ "EmcBctSpare9",               TOKEN(emc_bct_spare9) },
+	{ "EmcBctSpare10",              TOKEN(emc_bct_spare10) },
+	{ "EmcBctSpare11",              TOKEN(emc_bct_spare11) },
+	{ "EmcAutoCalInterval",         TOKEN(emc_auto_cal_interval) },
+	{ "EmcAutoCalConfig",           TOKEN(emc_auto_cal_config) },
+	{ "EmcAutoCalConfig2",          TOKEN(emc_auto_cal_config2) },
+	{ "EmcAutoCalConfig3",          TOKEN(emc_auto_cal_config3) },
+	{ "EmcAutoCalWait",             TOKEN(emc_auto_cal_wait) },
+	{ "EmcPinProgramWait",          TOKEN(emc_pin_program_wait) },
+	{ "EmcRc",                      TOKEN(emc_rc) },
+	{ "EmcRfc",                     TOKEN(emc_rfc) },
+	{ "EmcRfcSlr",                  TOKEN(emc_rfc_slr) },
+	{ "EmcRas",                     TOKEN(emc_ras) },
+	{ "EmcRp",                      TOKEN(emc_rp) },
+	{ "EmcR2r",                     TOKEN(emc_r2r) },
+	{ "EmcW2w",                     TOKEN(emc_w2w) },
+	{ "EmcR2w",                     TOKEN(emc_r2w) },
+	{ "EmcW2r",                     TOKEN(emc_w2r) },
+	{ "EmcR2p",                     TOKEN(emc_r2p) },
+	{ "EmcW2p",                     TOKEN(emc_w2p) },
+	{ "EmcRrd",                     TOKEN(emc_rrd) },
+	{ "EmcRdRcd",                   TOKEN(emc_rd_rcd) },
+	{ "EmcWrRcd",                   TOKEN(emc_wr_rcd) },
+	{ "EmcRext",                    TOKEN(emc_rext) },
+	{ "EmcWdv",                     TOKEN(emc_wdv) },
+	{ "EmcWdvMask",                 TOKEN(emc_wdv_mask) },
+	{ "EmcQUse",                    TOKEN(emc_quse) },
+	{ "EmcQuseWidth",               TOKEN(emc_quse_width) },
+	{ "EmcIbdly",                   TOKEN(emc_ibdly) },
+	{ "EmcEInput",                  TOKEN(emc_einput) },
+	{ "EmcEInputDuration",          TOKEN(emc_einput_duration) },
+	{ "EmcPutermExtra",             TOKEN(emc_puterm_extra) },
+	{ "EmcPutermWidth",             TOKEN(emc_puterm_width) },
+	{ "EmcPutermAdj",               TOKEN(emc_puterm_adj) },
+	{ "EmcCdbCntl1",                TOKEN(emc_cdb_cntl1) },
+	{ "EmcCdbCntl2",                TOKEN(emc_cdb_cntl2) },
+	{ "EmcCdbCntl3",                TOKEN(emc_cdb_cntl3) },
+	{ "EmcQRst",                    TOKEN(emc_qrst) },
+	{ "EmcQSafe",                   TOKEN(emc_qsafe) },
+	{ "EmcRdv",                     TOKEN(emc_rdv) },
+	{ "EmcRdvMask",                 TOKEN(emc_rdv_mask) },
+	{ "EmcQpop",                    TOKEN(emc_qpop) },
+	{ "EmcRefresh",                 TOKEN(emc_refresh) },
+	{ "EmcBurstRefreshNum",         TOKEN(emc_burst_refresh_num) },
+	{ "EmcPdEx2Wr",                 TOKEN(emc_pdex2wr) },
+	{ "EmcPdEx2Rd",                 TOKEN(emc_pdex2rd) },
+	{ "EmcPChg2Pden",               TOKEN(emc_pchg2pden) },
+	{ "EmcAct2Pden",                TOKEN(emc_act2pden) },
+	{ "EmcAr2Pden",                 TOKEN(emc_ar2pden) },
+	{ "EmcRw2Pden",                 TOKEN(emc_rw2pden) },
+	{ "EmcTxsr",                    TOKEN(emc_txsr) },
+	{ "EmcTcke",                    TOKEN(emc_tcke) },
+	{ "EmcTckesr",                  TOKEN(emc_tckesr) },
+	{ "EmcTpd",                     TOKEN(emc_tpd) },
+	{ "EmcTfaw",                    TOKEN(emc_tfaw) },
+	{ "EmcTrpab",                   TOKEN(emc_trpab) },
+	{ "EmcTClkStable",              TOKEN(emc_tclkstable) },
+	{ "EmcTClkStop",                TOKEN(emc_tclkstop) },
+	{ "EmcTRefBw",                  TOKEN(emc_trefbw) },
+	{ "EmcFbioCfg5",                TOKEN(emc_fbio_cfg5) },
+	{ "EmcFbioCfg6",                TOKEN(emc_fbio_cfg6) },
+	{ "EmcFbioSpare",               TOKEN(emc_fbio_spare) },
+	{ "EmcMrsResetDllWait",         TOKEN(emc_mrs_reset_dll_wait) },
+	{ "EmcMrsResetDll",             TOKEN(emc_mrs_reset_dll) },
+	{ "EmcMrsDdr2DllReset",         TOKEN(emc_mrs_ddr2_dll_reset) },
+	{ "EmcMrs",                     TOKEN(emc_mrs) },
+	{ "EmcEmrs2",                   TOKEN(emc_emrs2) },
+	{ "EmcEmrs3",                   TOKEN(emc_emrs3) },
+	{ "EmcEmrsDdr2DllEnable",       TOKEN(emc_emrs_ddr2_dll_enable) },
+	{ "EmcEmrsDdr2OcdCalib",        TOKEN(emc_emrs_ddr2_ocd_calib) },
+	{ "EmcEmrs",                    TOKEN(emc_emrs) },
+	{ "EmcMrw1",                    TOKEN(emc_mrw1) },
+	{ "EmcMrw2",                    TOKEN(emc_mrw2) },
+	{ "EmcMrw3",                    TOKEN(emc_mrw3) },
+	{ "EmcMrw4",                    TOKEN(emc_mrw4) },
+	{ "EmcMrwResetCommand",         TOKEN(emc_mrw_reset_command) },
+	{ "EmcMrwResetNInitWait",       TOKEN(emc_mrw_reset_ninit_wait) },
+	{ "EmcAdrCfg",                  TOKEN(emc_adr_cfg) },
+	{ "McEmemCfg",                  TOKEN(mc_emem_cfg) },
+	{ "EmcCfg2",                    TOKEN(emc_cfg2) },
+	{ "EmcCfgPipe",                 TOKEN(emc_cfg_pipe) },
+	{ "EmcCfgDigDll",               TOKEN(emc_cfg_dig_dll) },
+	{ "EmcCfgDigDllPeriod",         TOKEN(emc_cfg_dig_dll_period) },
+	{ "EmcCfg",                     TOKEN(emc_cfg) },
+	{ "EmcDbg",                     TOKEN(emc_dbg) },
+	{ "WarmBootWait",               TOKEN(warm_boot_wait) },
+	{ "EmcCttTermCtrl",             TOKEN(emc_ctt_term_ctrl) },
+	{ "EmcOdtWrite",                TOKEN(emc_odt_write) },
+	{ "EmcOdtRead",                 TOKEN(emc_odt_read) },
+	{ "EmcZcalWaitCnt",             TOKEN(emc_zcal_wait_cnt) },
+	{ "EmcZcalMrwCmd",              TOKEN(emc_zcal_mrw_cmd) },
+	{ "EmcDdr2Wait",                TOKEN(emc_ddr2_wait) },
+	{ "PmcDdrPwr",                  TOKEN(pmc_ddr_pwr) },
+	{ "EmcClockSource",             TOKEN(emc_clock_source) },
+	{ "EmcPinExtraWait",            TOKEN(emc_pin_extra_wait) },
+	{ "EmcTimingControlWait",       TOKEN(emc_timing_control_wait) },
+	{ "EmcWext",                    TOKEN(emc_wext) },
+	{ "EmcCtt",                     TOKEN(emc_ctt) },
+	{ "EmcCttDuration",             TOKEN(emc_ctt_duration) },
+	{ "EmcPreRefreshReqCnt",        TOKEN(emc_prerefresh_req_cnt) },
+	{ "EmcTxsrDll",                 TOKEN(emc_txsr_dll) },
+	{ "EmcCfgRsv",                  TOKEN(emc_cfg_rsv) },
+	{ "EmcMrwExtra",                TOKEN(emc_mrw_extra) },
+	{ "EmcWarmBootMrwExtra",        TOKEN(emc_warm_boot_mrw_extra) },
+	{ "EmcWarmBootExtraModeRegWriteEnable",
+			TOKEN(emc_warm_boot_extramode_reg_write_enable) },
+	{ "EmcExtraModeRegWriteEnable", TOKEN(emc_extramode_reg_write_enable) },
+	{ "EmcMrsWaitCnt",              TOKEN(emc_mrs_wait_cnt) },
+	{ "EmcMrsWaitCnt2",             TOKEN(emc_mrs_wait_cnt2) },
+	{ "EmcCmdQ",                    TOKEN(emc_cmd_q) },
+	{ "EmcMc2EmcQ",                 TOKEN(emc_mc2emc_q) },
+	{ "EmcDynSelfRefControl",       TOKEN(emc_dyn_self_ref_control) },
+	{ "AhbArbitrationXbarCtrlMemInitDone",
+			TOKEN(ahb_arbitration_xbar_ctrl_meminit_done) },
+	{ "EmcDevSelect",               TOKEN(emc_dev_select) },
+	{ "EmcSelDpdCtrl",              TOKEN(emc_sel_dpd_ctrl) },
+	{ "EmcDllXformDqs0",            TOKEN(emc_dll_xform_dqs0) },
+	{ "EmcDllXformDqs1",            TOKEN(emc_dll_xform_dqs1) },
+	{ "EmcDllXformDqs2",            TOKEN(emc_dll_xform_dqs2) },
+	{ "EmcDllXformDqs3",            TOKEN(emc_dll_xform_dqs3) },
+	{ "EmcDllXformDqs4",            TOKEN(emc_dll_xform_dqs4) },
+	{ "EmcDllXformDqs5",            TOKEN(emc_dll_xform_dqs5) },
+	{ "EmcDllXformDqs6",            TOKEN(emc_dll_xform_dqs6) },
+	{ "EmcDllXformDqs7",            TOKEN(emc_dll_xform_dqs7) },
+	{ "EmcDllXformDqs8",            TOKEN(emc_dll_xform_dqs8) },
+	{ "EmcDllXformDqs9",            TOKEN(emc_dll_xform_dqs9) },
+	{ "EmcDllXformDqs10",           TOKEN(emc_dll_xform_dqs10) },
+	{ "EmcDllXformDqs11",           TOKEN(emc_dll_xform_dqs11) },
+	{ "EmcDllXformDqs12",           TOKEN(emc_dll_xform_dqs12) },
+	{ "EmcDllXformDqs13",           TOKEN(emc_dll_xform_dqs13) },
+	{ "EmcDllXformDqs14",           TOKEN(emc_dll_xform_dqs14) },
+	{ "EmcDllXformDqs15",           TOKEN(emc_dll_xform_dqs15) },
+	{ "EmcDllXformQUse0",           TOKEN(emc_dll_xform_quse0) },
+	{ "EmcDllXformQUse1",           TOKEN(emc_dll_xform_quse1) },
+	{ "EmcDllXformQUse2",           TOKEN(emc_dll_xform_quse2) },
+	{ "EmcDllXformQUse3",           TOKEN(emc_dll_xform_quse3) },
+	{ "EmcDllXformQUse4",           TOKEN(emc_dll_xform_quse4) },
+	{ "EmcDllXformQUse5",           TOKEN(emc_dll_xform_quse5) },
+	{ "EmcDllXformQUse6",           TOKEN(emc_dll_xform_quse6) },
+	{ "EmcDllXformQUse7",           TOKEN(emc_dll_xform_quse7) },
+	{ "EmcDllXformAddr0",           TOKEN(emc_dll_xform_addr0) },
+	{ "EmcDllXformAddr1",           TOKEN(emc_dll_xform_addr1) },
+	{ "EmcDllXformAddr2",           TOKEN(emc_dll_xform_addr2) },
+	{ "EmcDllXformAddr3",           TOKEN(emc_dll_xform_addr3) },
+	{ "EmcDllXformAddr4",           TOKEN(emc_dll_xform_addr4) },
+	{ "EmcDllXformAddr5",           TOKEN(emc_dll_xform_addr5) },
+	{ "EmcDllXformQUse8",           TOKEN(emc_dll_xform_quse8) },
+	{ "EmcDllXformQUse9",           TOKEN(emc_dll_xform_quse9) },
+	{ "EmcDllXformQUse10",          TOKEN(emc_dll_xform_quse10) },
+	{ "EmcDllXformQUse11",          TOKEN(emc_dll_xform_quse11) },
+	{ "EmcDllXformQUse12",          TOKEN(emc_dll_xform_quse12) },
+	{ "EmcDllXformQUse13",          TOKEN(emc_dll_xform_quse13) },
+	{ "EmcDllXformQUse14",          TOKEN(emc_dll_xform_quse14) },
+	{ "EmcDllXformQUse15",          TOKEN(emc_dll_xform_quse15) },
+	{ "EmcDliTrimTxDqs0",           TOKEN(emc_dli_trim_tx_dqs0) },
+	{ "EmcDliTrimTxDqs1",           TOKEN(emc_dli_trim_tx_dqs1) },
+	{ "EmcDliTrimTxDqs2",           TOKEN(emc_dli_trim_tx_dqs2) },
+	{ "EmcDliTrimTxDqs3",           TOKEN(emc_dli_trim_tx_dqs3) },
+	{ "EmcDliTrimTxDqs4",           TOKEN(emc_dli_trim_tx_dqs4) },
+	{ "EmcDliTrimTxDqs5",           TOKEN(emc_dli_trim_tx_dqs5) },
+	{ "EmcDliTrimTxDqs6",           TOKEN(emc_dli_trim_tx_dqs6) },
+	{ "EmcDliTrimTxDqs7",           TOKEN(emc_dli_trim_tx_dqs7) },
+	{ "EmcDliTrimTxDqs8",           TOKEN(emc_dli_trim_tx_dqs8) },
+	{ "EmcDliTrimTxDqs9",           TOKEN(emc_dli_trim_tx_dqs9) },
+	{ "EmcDliTrimTxDqs10",          TOKEN(emc_dli_trim_tx_dqs10) },
+	{ "EmcDliTrimTxDqs11",          TOKEN(emc_dli_trim_tx_dqs11) },
+	{ "EmcDliTrimTxDqs12",          TOKEN(emc_dli_trim_tx_dqs12) },
+	{ "EmcDliTrimTxDqs13",          TOKEN(emc_dli_trim_tx_dqs13) },
+	{ "EmcDliTrimTxDqs14",          TOKEN(emc_dli_trim_tx_dqs14) },
+	{ "EmcDliTrimTxDqs15",          TOKEN(emc_dli_trim_tx_dqs15) },
+	{ "EmcDllXformDq0",             TOKEN(emc_dll_xform_dq0) },
+	{ "EmcDllXformDq1",             TOKEN(emc_dll_xform_dq1) },
+	{ "EmcDllXformDq2",             TOKEN(emc_dll_xform_dq2) },
+	{ "EmcDllXformDq3",             TOKEN(emc_dll_xform_dq3) },
+	{ "EmcDllXformDq4",             TOKEN(emc_dll_xform_dq4) },
+	{ "EmcDllXformDq5",             TOKEN(emc_dll_xform_dq5) },
+	{ "EmcDllXformDq6",             TOKEN(emc_dll_xform_dq6) },
+	{ "EmcDllXformDq7",             TOKEN(emc_dll_xform_dq7) },
+	{ "EmcZcalInterval",            TOKEN(emc_zcal_interval) },
+	{ "EmcZcalInitDev0",            TOKEN(emc_zcal_init_dev0) },
+	{ "EmcZcalInitDev1",            TOKEN(emc_zcal_init_dev1) },
+	{ "EmcZcalInitWait",            TOKEN(emc_zcal_init_wait) },
+	{ "EmcZcalWarmColdBootEnables", TOKEN(emc_zcal_warm_cold_boot_enables) },
+	{ "EmcMrwLpddr2ZcalWarmBoot",   TOKEN(emc_mrw_lpddr2zcal_warm_boot) },
+	{ "EmcZqCalDdr3WarmBoot",       TOKEN(emc_zqcal_ddr3_warm_boot) },
+	{ "EmcZcalWarmBootWait",        TOKEN(emc_zcal_warm_boot_wait) },
+	{ "EmcMrsWarmBootEnable",       TOKEN(emc_mrs_warm_boot_enable) },
+	{ "EmcMrsExtra",                TOKEN(emc_mrs_extra) },
+	{ "EmcWarmBootMrsExtra",        TOKEN(emc_warm_boot_mrs_extra) },
+	{ "EmcClkenOverride",           TOKEN(emc_clken_override) },
+	{ "McDisExtraSnapLevels",       TOKEN(mc_dis_extra_snap_levels) },
+	{ "EmcExtraRefreshNum",         TOKEN(emc_extra_refresh_num) },
+	{ "EmcClkenOverrideAllWarmBoot",
+			TOKEN(emc_clken_override_allwarm_boot) },
+	{ "McClkenOverrideAllWarmBoot", TOKEN(mc_clken_override_allwarm_boot) },
+	{ "EmcCfgDigDllPeriodWarmBoot",
+			TOKEN(emc_cfg_dig_dll_period_warm_boot) },
+	{ "PmcVddpSel",                 TOKEN(pmc_vddp_sel) },
+	{ "PmcVddpSelWait",             TOKEN(pmc_vddp_sel_wait) },
+	{ "PmcDdrCfg",                  TOKEN(pmc_ddr_cfg) },
+	{ "PmcIoDpd3Req",               TOKEN(pmc_io_dpd3_req) },
+	{ "PmcIoDpd3ReqWait",           TOKEN(pmc_io_dpd3_req_wait) },
+	{ "PmcRegShort",                TOKEN(pmc_reg_short) },
+	{ "PmcNoIoPower",               TOKEN(pmc_no_io_power) },
+	{ "PmcPorDpdCtrlWait",          TOKEN(pmc_por_dpd_ctrl_wait) },
+	{ "EmcXm2CmdPadCtrl",           TOKEN(emc_xm2cmd_pad_ctrl) },
+	{ "EmcXm2CmdPadCtrl2",          TOKEN(emc_xm2cmd_pad_ctrl2) },
+	{ "EmcXm2CmdPadCtrl3",          TOKEN(emc_xm2cmd_pad_ctrl3) },
+	{ "EmcXm2CmdPadCtrl4",          TOKEN(emc_xm2cmd_pad_ctrl4) },
+	{ "EmcXm2CmdPadCtrl5",          TOKEN(emc_xm2cmd_pad_ctrl5) },
+	{ "EmcXm2DqsPadCtrl",           TOKEN(emc_xm2dqs_pad_ctrl) },
+	{ "EmcXm2DqsPadCtrl2",          TOKEN(emc_xm2dqs_pad_ctrl2) },
+	{ "EmcXm2DqsPadCtrl3",          TOKEN(emc_xm2dqs_pad_ctrl3) },
+	{ "EmcXm2DqsPadCtrl4",          TOKEN(emc_xm2dqs_pad_ctrl4) },
+	{ "EmcXm2DqsPadCtrl5",          TOKEN(emc_xm2dqs_pad_ctrl5) },
+	{ "EmcXm2DqsPadCtrl6",          TOKEN(emc_xm2dqs_pad_ctrl6) },
+	{ "EmcXm2DqPadCtrl",            TOKEN(emc_xm2dq_pad_ctrl) },
+	{ "EmcXm2DqPadCtrl2",           TOKEN(emc_xm2dq_pad_ctrl2) },
+	{ "EmcXm2DqPadCtrl3",           TOKEN(emc_xm2dq_pad_ctrl3) },
+	{ "EmcXm2ClkPadCtrl",           TOKEN(emc_xm2clk_pad_ctrl) },
+	{ "EmcXm2ClkPadCtrl2",          TOKEN(emc_xm2clk_pad_ctrl2) },
+	{ "EmcXm2CompPadCtrl",          TOKEN(emc_xm2comp_pad_ctrl) },
+	{ "EmcXm2VttGenPadCtrl",        TOKEN(emc_xm2vttgen_pad_ctrl) },
+	{ "EmcXm2VttGenPadCtrl2",       TOKEN(emc_xm2vttgen_pad_ctrl2) },
+	{ "EmcXm2VttGenPadCtrl3",       TOKEN(emc_xm2vttgen_pad_ctrl3) },
+	{ "EmcAcpdControl",             TOKEN(emc_acpd_control) },
+	{ "EmcSwizzleRank0ByteCfg",     TOKEN(emc_swizzle_rank0_byte_cfg) },
+	{ "EmcSwizzleRank0Byte0",       TOKEN(emc_swizzle_rank0_byte0) },
+	{ "EmcSwizzleRank0Byte1",       TOKEN(emc_swizzle_rank0_byte1) },
+	{ "EmcSwizzleRank0Byte2",       TOKEN(emc_swizzle_rank0_byte2) },
+	{ "EmcSwizzleRank0Byte3",       TOKEN(emc_swizzle_rank0_byte3) },
+	{ "EmcSwizzleRank1ByteCfg",     TOKEN(emc_swizzle_rank1_byte_cfg) },
+	{ "EmcSwizzleRank1Byte0",       TOKEN(emc_swizzle_rank1_byte0) },
+	{ "EmcSwizzleRank1Byte1",       TOKEN(emc_swizzle_rank1_byte1) },
+	{ "EmcSwizzleRank1Byte2",       TOKEN(emc_swizzle_rank1_byte2) },
+	{ "EmcSwizzleRank1Byte3",       TOKEN(emc_swizzle_rank1_byte3) },
+	{ "EmcDsrVttgenDrv",            TOKEN(emc_dsr_vttgen_drv) },
+	{ "EmcTxdsrvttgen",             TOKEN(emc_txdsrvttgen) },
+	{ "EmcBgbiasCtl0",              TOKEN(emc_bgbias_ctl0) },
+	{ "McEmemAdrCfg",               TOKEN(mc_emem_adr_cfg) },
+	{ "McEmemAdrCfgDev0",           TOKEN(mc_emem_adr_cfg_dev0) },
+	{ "McEmemAdrCfgDev1",           TOKEN(mc_emem_adr_cfg_dev1) },
+	{ "McEmemAdrCfgBankMask0",      TOKEN(mc_emem_adr_cfg_bank_mask0) },
+	{ "McEmemAdrCfgBankMask1",      TOKEN(mc_emem_adr_cfg_bank_mask1) },
+	{ "McEmemAdrCfgBankMask2",      TOKEN(mc_emem_adr_cfg_bank_mask2) },
+	{ "McEmemAdrCfgBankSwizzle3",   TOKEN(mc_emem_adr_cfg_bank_swizzle3) },
+	{ "McEmemArbCfg",               TOKEN(mc_emem_arb_cfg) },
+	{ "McEmemArbOutstandingReq",    TOKEN(mc_emem_arb_outstanding_req) },
+	{ "McEmemArbTimingRcd",         TOKEN(mc_emem_arb_timing_rcd) },
+	{ "McEmemArbTimingRp",          TOKEN(mc_emem_arb_timing_rp) },
+	{ "McEmemArbTimingRc",          TOKEN(mc_emem_arb_timing_rc) },
+	{ "McEmemArbTimingRas",         TOKEN(mc_emem_arb_timing_ras) },
+	{ "McEmemArbTimingFaw",         TOKEN(mc_emem_arb_timing_faw) },
+	{ "McEmemArbTimingRrd",         TOKEN(mc_emem_arb_timing_rrd) },
+	{ "McEmemArbTimingRap2Pre",     TOKEN(mc_emem_arb_timing_rap2pre) },
+	{ "McEmemArbTimingWap2Pre",     TOKEN(mc_emem_arb_timing_wap2pre) },
+	{ "McEmemArbTimingR2R",         TOKEN(mc_emem_arb_timing_r2r) },
+	{ "McEmemArbTimingW2W",         TOKEN(mc_emem_arb_timing_w2w) },
+	{ "McEmemArbTimingR2W",         TOKEN(mc_emem_arb_timing_r2w) },
+	{ "McEmemArbTimingW2R",         TOKEN(mc_emem_arb_timing_w2r) },
+	{ "McEmemArbDaTurns",           TOKEN(mc_emem_arb_da_turns) },
+	{ "McEmemArbDaCovers",          TOKEN(mc_emem_arb_da_covers) },
+	{ "McEmemArbMisc0",             TOKEN(mc_emem_arb_misc0) },
+	{ "McEmemArbMisc1",             TOKEN(mc_emem_arb_misc1) },
+	{ "McEmemArbRing1Throttle",     TOKEN(mc_emem_arb_ring1_throttle) },
+	{ "McEmemArbOverride",          TOKEN(mc_emem_arb_override) },
+	{ "McEmemArbOverride1",         TOKEN(mc_emem_arb_override1) },
+	{ "McEmemArbRsv",               TOKEN(mc_emem_arb_rsv) },
+	{ "McClkenOverride",            TOKEN(mc_clken_override) },
+	{ "McStatControl",              TOKEN(mc_stat_control) },
+	{ "McDisplaySnapRing",          TOKEN(mc_display_snap_ring) },
+	{ "McVideoProtectBom",          TOKEN(mc_video_protect_bom) },
+	{ "McVideoProtectBomAdrHi",
+			TOKEN(mc_video_protect_bom_adr_hi) },
+	{ "McVideoProtectSizeMb",       TOKEN(mc_video_protect_size_mb) },
+	{ "McVideoProtectVprOverride",  TOKEN(mc_video_protect_vpr_override) },
+	{ "McVideoProtectVprOverride1", TOKEN(mc_video_protect_vpr_override1) },
+	{ "McVideoProtectGpuOverride0", TOKEN(mc_video_protect_gpu_override0) },
+	{ "McVideoProtectGpuOverride1", TOKEN(mc_video_protect_gpu_override1) },
+	{ "McSecCarveoutBom",           TOKEN(mc_sec_carveout_bom) },
+	{ "McSecCarveoutAdrHi",         TOKEN(mc_sec_carveout_adr_hi) },
+	{ "McSecCarveoutSizeMb",        TOKEN(mc_sec_carveout_size_mb) },
+	{ "McVideoProtectWriteAccess",  TOKEN(mc_video_protect_write_access) },
+	{ "McSecCarveoutProtectWriteAccess",
+			TOKEN(mc_sec_carveout_protect_write_access) },
+	{ "EmcCaTrainingEnable",        TOKEN(emc_ca_training_enable) },
+	{ "EmcCaTrainingTimingCntl1",   TOKEN(emc_ca_training_timing_cntl1) },
+	{ "EmcCaTrainingTimingCntl2",   TOKEN(emc_ca_training_timing_cntl2) },
+	{ "SwizzleRankByteEncode",      TOKEN(swizzle_rank_byte_encode) },
+	{ "BootRomPatchControl",        TOKEN(boot_rom_patch_control) },
+	{ "BootRomPatchData",           TOKEN(boot_rom_patch_data) },
+	{ "McMtsCarveoutBom",           TOKEN(mc_mts_carveout_bom) },
+	{ "McMtsCarveoutAdrHi",         TOKEN(mc_mts_carveout_adr_hi) },
+	{ "McMtsCarveoutSizeMb",        TOKEN(mc_mts_carveout_size_mb) },
+	{ "McMtsCarveoutRegCtrl",       TOKEN(mc_mts_carveout_reg_ctrl) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_sdmmc_table_t124[] = {
+	{ "ClockDivider",               TOKEN(sdmmc_clock_divider) },
+	{ "DataWidth",
+	  token_sdmmc_data_width,
+	  field_type_enum,
+	  s_sdmmc_data_width_table_t124 },
+	{ "MaxPowerClassSupported",     TOKEN(sdmmc_max_power_class_supported) },
+	{ "MultiPageSupport",           TOKEN(sdmmc_multi_page_support) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_spiflash_table_t124[] = {
+	{ "ReadCommandTypeFast",        TOKEN(spiflash_read_command_type_fast) },
+	{ "PageSize2kor16k",            TOKEN(spiflash_page_size_2k_or_16k) },
+	{ "ClockDivider",               TOKEN(spiflash_clock_divider) },
+	{ "ClockSource",
+	  token_spiflash_clock_source,
+	  field_type_enum,
+	  s_spi_clock_source_table_t124 },
+	{ NULL, 0, 0, NULL }
+};
+
+parse_subfield_item s_device_type_table_t124[] = {
+	{ "SdmmcParams.", token_sdmmc_params,
+		s_sdmmc_table_t124, t124_set_dev_param },
+	{ "SpiFlashParams.", token_spiflash_params,
+		s_spiflash_table_t124, t124_set_dev_param },
+	{ NULL, 0, NULL }
+};
diff --git a/scripts/tegra/t20/nvbctlib_t20.c b/scripts/tegra/t20/nvbctlib_t20.c
new file mode 100644
index 000000000000..c145d6da9512
--- /dev/null
+++ b/scripts/tegra/t20/nvbctlib_t20.c
@@ -0,0 +1,684 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#include "../cbootimage.h"
+#include "../parse.h"
+#include "../crypto.h"
+#include "nvboot_bct_t20.h"
+#include "string.h"
+
+/* nvbctlib_t20.c: The implementation of the nvbctlib API for t20. */
+
+/* Definitions that simplify the code which follows. */
+#define CASE_GET_SDRAM_PARAM(x) \
+case token_##x:\
+	*value = params->x; \
+	break
+
+#define CASE_SET_SDRAM_PARAM(x) \
+case token_##x:\
+	params->x = value; \
+	break
+
+#define CASE_GET_DEV_PARAM(dev, x) \
+case token_##dev##_##x:\
+	*value = bct->dev_params[index].dev##_params.x; \
+	break
+
+#define CASE_SET_DEV_PARAM(dev, x) \
+case token_##dev##_##x:\
+	bct->dev_params[index].dev##_params.x = value; \
+	break
+
+#define CASE_GET_BL_PARAM(x) \
+case token_bl_##x:\
+	*data = bct_ptr->bootloader[set].x; \
+	break
+
+#define CASE_SET_BL_PARAM(x) \
+case token_bl_##x:\
+	bct_ptr->bootloader[set].x = *data; \
+	break
+
+#define CASE_GET_NVU32(id) \
+case token_##id:\
+	if (bct == NULL) return -ENODATA; \
+	*data = bct_ptr->id; \
+	break
+
+#define CASE_GET_CONST(id, val) \
+case token_##id:\
+	*data = val; \
+	break
+
+#define CASE_GET_CONST_PREFIX(id, val_prefix) \
+case token_##id:\
+	*data = val_prefix##_##id; \
+	break
+
+#define CASE_SET_NVU32(id) \
+case token_##id:\
+	bct_ptr->id = data; \
+	break
+
+#define CASE_GET_DATA(id, size) \
+case token_##id:\
+	if (*length < size) return -ENODATA;\
+	memcpy(data, &(bct_ptr->id), size);   \
+	*length = size;\
+	break
+
+#define CASE_SET_DATA(id, size) \
+case token_##id:\
+	if (length < size) return -ENODATA;\
+	memcpy(&(bct_ptr->id), data, size);   \
+	break
+
+#define DEFAULT()                                         \
+default :                                                 \
+	printf("Unexpected token %d at line %d\n",        \
+		token, __LINE__);                         \
+	return 1
+
+int
+t20_set_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value)
+{
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	bct->num_param_sets = NV_MAX(bct->num_param_sets, index + 1);
+
+	switch (token) {
+	CASE_SET_DEV_PARAM(nand, clock_divider);
+	CASE_SET_DEV_PARAM(nand, nand_timing);
+	CASE_SET_DEV_PARAM(nand, nand_timing2);
+	CASE_SET_DEV_PARAM(nand, block_size_log2);
+	CASE_SET_DEV_PARAM(nand, page_size_log2);
+
+	CASE_SET_DEV_PARAM(sdmmc, clock_divider);
+	CASE_SET_DEV_PARAM(sdmmc, data_width);
+	CASE_SET_DEV_PARAM(sdmmc, max_power_class_supported);
+
+	CASE_SET_DEV_PARAM(spiflash, clock_source);
+	CASE_SET_DEV_PARAM(spiflash, clock_divider);
+	CASE_SET_DEV_PARAM(spiflash, read_command_type_fast);
+
+	case token_dev_type:
+		bct->dev_type[index] = value;
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t20_get_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value)
+{
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	switch (token) {
+	CASE_GET_DEV_PARAM(nand, clock_divider);
+	CASE_GET_DEV_PARAM(nand, nand_timing);
+	CASE_GET_DEV_PARAM(nand, nand_timing2);
+	CASE_GET_DEV_PARAM(nand, block_size_log2);
+	CASE_GET_DEV_PARAM(nand, page_size_log2);
+
+	CASE_GET_DEV_PARAM(sdmmc, clock_divider);
+	CASE_GET_DEV_PARAM(sdmmc, data_width);
+	CASE_GET_DEV_PARAM(sdmmc, max_power_class_supported);
+
+	CASE_GET_DEV_PARAM(spiflash, clock_source);
+	CASE_GET_DEV_PARAM(spiflash, clock_divider);
+	CASE_GET_DEV_PARAM(spiflash, read_command_type_fast);
+
+	case token_dev_type:
+		*value = bct->dev_type[index];
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t20_set_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t value)
+{
+	nvboot_sdram_params *params;
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+	params = &(bct->sdram_params[index]);
+	/* Update the number of SDRAM parameter sets. */
+	bct->num_sdram_sets = NV_MAX(bct->num_sdram_sets, index + 1);
+
+	switch (token) {
+	CASE_SET_SDRAM_PARAM(memory_type);
+	CASE_SET_SDRAM_PARAM(pllm_charge_pump_setup_ctrl);
+	CASE_SET_SDRAM_PARAM(pllm_loop_filter_setup_ctrl);
+	CASE_SET_SDRAM_PARAM(pllm_input_divider);
+	CASE_SET_SDRAM_PARAM(pllm_feedback_divider);
+	CASE_SET_SDRAM_PARAM(pllm_post_divider);
+	CASE_SET_SDRAM_PARAM(pllm_stable_time);
+	CASE_SET_SDRAM_PARAM(emc_clock_divider);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_interval);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_config);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_wait);
+	CASE_SET_SDRAM_PARAM(emc_pin_program_wait);
+	CASE_SET_SDRAM_PARAM(emc_rc);
+	CASE_SET_SDRAM_PARAM(emc_rfc);
+	CASE_SET_SDRAM_PARAM(emc_ras);
+	CASE_SET_SDRAM_PARAM(emc_rp);
+	CASE_SET_SDRAM_PARAM(emc_r2w);
+	CASE_SET_SDRAM_PARAM(emc_w2r);
+	CASE_SET_SDRAM_PARAM(emc_r2p);
+	CASE_SET_SDRAM_PARAM(emc_w2p);
+	CASE_SET_SDRAM_PARAM(emc_rd_rcd);
+	CASE_SET_SDRAM_PARAM(emc_wr_rcd);
+	CASE_SET_SDRAM_PARAM(emc_rrd);
+	CASE_SET_SDRAM_PARAM(emc_rext);
+	CASE_SET_SDRAM_PARAM(emc_wdv);
+	CASE_SET_SDRAM_PARAM(emc_quse);
+	CASE_SET_SDRAM_PARAM(emc_qrst);
+	CASE_SET_SDRAM_PARAM(emc_qsafe);
+	CASE_SET_SDRAM_PARAM(emc_rdv);
+	CASE_SET_SDRAM_PARAM(emc_refresh);
+	CASE_SET_SDRAM_PARAM(emc_burst_refresh_num);
+	CASE_SET_SDRAM_PARAM(emc_pdex2wr);
+	CASE_SET_SDRAM_PARAM(emc_pdex2rd);
+	CASE_SET_SDRAM_PARAM(emc_pchg2pden);
+	CASE_SET_SDRAM_PARAM(emc_act2pden);
+	CASE_SET_SDRAM_PARAM(emc_ar2pden);
+	CASE_SET_SDRAM_PARAM(emc_rw2pden);
+	CASE_SET_SDRAM_PARAM(emc_txsr);
+	CASE_SET_SDRAM_PARAM(emc_tcke);
+	CASE_SET_SDRAM_PARAM(emc_tfaw);
+	CASE_SET_SDRAM_PARAM(emc_trpab);
+	CASE_SET_SDRAM_PARAM(emc_tclkstable);
+	CASE_SET_SDRAM_PARAM(emc_tclkstop);
+	CASE_SET_SDRAM_PARAM(emc_trefbw);
+	CASE_SET_SDRAM_PARAM(emc_quse_extra);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg1);
+	CASE_SET_SDRAM_PARAM(emc_fbio_dqsib_dly);
+	CASE_SET_SDRAM_PARAM(emc_fbio_dqsib_dly_msb);
+	CASE_SET_SDRAM_PARAM(emc_fbio_quse_dly);
+	CASE_SET_SDRAM_PARAM(emc_fbio_quse_dly_msb);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg5);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg6);
+	CASE_SET_SDRAM_PARAM(emc_fbio_spare);
+	CASE_SET_SDRAM_PARAM(emc_mrs);
+	CASE_SET_SDRAM_PARAM(emc_emrs);
+	CASE_SET_SDRAM_PARAM(emc_mrw1);
+	CASE_SET_SDRAM_PARAM(emc_mrw2);
+	CASE_SET_SDRAM_PARAM(emc_mrw3);
+	CASE_SET_SDRAM_PARAM(emc_mrw_reset_command);
+	CASE_SET_SDRAM_PARAM(emc_mrw_reset_ninit_wait);
+	CASE_SET_SDRAM_PARAM(emc_adr_cfg);
+	CASE_SET_SDRAM_PARAM(emc_adr_cfg1);
+	CASE_SET_SDRAM_PARAM(mc_emem_cfg);
+	CASE_SET_SDRAM_PARAM(mc_lowlatency_config);
+	CASE_SET_SDRAM_PARAM(emc_cfg);
+	CASE_SET_SDRAM_PARAM(emc_cfg2);
+	CASE_SET_SDRAM_PARAM(emc_dbg);
+	CASE_SET_SDRAM_PARAM(ahb_arbitration_xbar_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse);
+	CASE_SET_SDRAM_PARAM(warm_boot_wait);
+	CASE_SET_SDRAM_PARAM(emc_ctt_term_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_odt_write);
+	CASE_SET_SDRAM_PARAM(emc_odt_read);
+	CASE_SET_SDRAM_PARAM(emc_zcal_ref_cnt);
+	CASE_SET_SDRAM_PARAM(emc_zcal_wait_cnt);
+	CASE_SET_SDRAM_PARAM(emc_zcal_mrw_cmd);
+	CASE_SET_SDRAM_PARAM(emc_mrs_reset_dll);
+	CASE_SET_SDRAM_PARAM(emc_mrw_zq_init_dev0);
+	CASE_SET_SDRAM_PARAM(emc_mrw_zq_init_dev1);
+	CASE_SET_SDRAM_PARAM(emc_mrw_zq_init_wait);
+	CASE_SET_SDRAM_PARAM(emc_mrs_reset_dll_wait);
+	CASE_SET_SDRAM_PARAM(emc_emrs_emr2);
+	CASE_SET_SDRAM_PARAM(emc_emrs_emr3);
+	CASE_SET_SDRAM_PARAM(emc_emrs_ddr2_dll_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_ddr2_dll_reset);
+	CASE_SET_SDRAM_PARAM(emc_emrs_ddr2_ocd_calib);
+	CASE_SET_SDRAM_PARAM(emc_ddr2_wait);
+	CASE_SET_SDRAM_PARAM(emc_cfg_clktrim0);
+	CASE_SET_SDRAM_PARAM(emc_cfg_clktrim1);
+	CASE_SET_SDRAM_PARAM(emc_cfg_clktrim2);
+	CASE_SET_SDRAM_PARAM(pmc_ddr_pwr);
+	CASE_SET_SDRAM_PARAM(apb_misc_gp_xm2cfga_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(apb_misc_gp_xm2cfgc_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(apb_misc_gp_xm2cfgc_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(apb_misc_gp_xm2cfgd_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(apb_misc_gp_xm2cfgd_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(apb_misc_gp_xm2clkcfg_Pad_ctrl);
+	CASE_SET_SDRAM_PARAM(apb_misc_gp_xm2comp_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(apb_misc_gp_xm2vttgen_pad_ctrl);
+
+	DEFAULT();
+	}
+	return 0;
+}
+
+int
+t20_get_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t *value)
+{
+	nvboot_sdram_params *params;
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+	params = &(bct->sdram_params[index]);
+
+	switch (token) {
+	CASE_GET_SDRAM_PARAM(memory_type);
+	CASE_GET_SDRAM_PARAM(pllm_charge_pump_setup_ctrl);
+	CASE_GET_SDRAM_PARAM(pllm_loop_filter_setup_ctrl);
+	CASE_GET_SDRAM_PARAM(pllm_input_divider);
+	CASE_GET_SDRAM_PARAM(pllm_feedback_divider);
+	CASE_GET_SDRAM_PARAM(pllm_post_divider);
+	CASE_GET_SDRAM_PARAM(pllm_stable_time);
+	CASE_GET_SDRAM_PARAM(emc_clock_divider);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_interval);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_config);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_wait);
+	CASE_GET_SDRAM_PARAM(emc_pin_program_wait);
+	CASE_GET_SDRAM_PARAM(emc_rc);
+	CASE_GET_SDRAM_PARAM(emc_rfc);
+	CASE_GET_SDRAM_PARAM(emc_ras);
+	CASE_GET_SDRAM_PARAM(emc_rp);
+	CASE_GET_SDRAM_PARAM(emc_r2w);
+	CASE_GET_SDRAM_PARAM(emc_w2r);
+	CASE_GET_SDRAM_PARAM(emc_r2p);
+	CASE_GET_SDRAM_PARAM(emc_w2p);
+	CASE_GET_SDRAM_PARAM(emc_rd_rcd);
+	CASE_GET_SDRAM_PARAM(emc_wr_rcd);
+	CASE_GET_SDRAM_PARAM(emc_rrd);
+	CASE_GET_SDRAM_PARAM(emc_rext);
+	CASE_GET_SDRAM_PARAM(emc_wdv);
+	CASE_GET_SDRAM_PARAM(emc_quse);
+	CASE_GET_SDRAM_PARAM(emc_qrst);
+	CASE_GET_SDRAM_PARAM(emc_qsafe);
+	CASE_GET_SDRAM_PARAM(emc_rdv);
+	CASE_GET_SDRAM_PARAM(emc_refresh);
+	CASE_GET_SDRAM_PARAM(emc_burst_refresh_num);
+	CASE_GET_SDRAM_PARAM(emc_pdex2wr);
+	CASE_GET_SDRAM_PARAM(emc_pdex2rd);
+	CASE_GET_SDRAM_PARAM(emc_pchg2pden);
+	CASE_GET_SDRAM_PARAM(emc_act2pden);
+	CASE_GET_SDRAM_PARAM(emc_ar2pden);
+	CASE_GET_SDRAM_PARAM(emc_rw2pden);
+	CASE_GET_SDRAM_PARAM(emc_txsr);
+	CASE_GET_SDRAM_PARAM(emc_tcke);
+	CASE_GET_SDRAM_PARAM(emc_tfaw);
+	CASE_GET_SDRAM_PARAM(emc_trpab);
+	CASE_GET_SDRAM_PARAM(emc_tclkstable);
+	CASE_GET_SDRAM_PARAM(emc_tclkstop);
+	CASE_GET_SDRAM_PARAM(emc_trefbw);
+	CASE_GET_SDRAM_PARAM(emc_quse_extra);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg1);
+	CASE_GET_SDRAM_PARAM(emc_fbio_dqsib_dly);
+	CASE_GET_SDRAM_PARAM(emc_fbio_dqsib_dly_msb);
+	CASE_GET_SDRAM_PARAM(emc_fbio_quse_dly);
+	CASE_GET_SDRAM_PARAM(emc_fbio_quse_dly_msb);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg5);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg6);
+	CASE_GET_SDRAM_PARAM(emc_fbio_spare);
+	CASE_GET_SDRAM_PARAM(emc_mrs);
+	CASE_GET_SDRAM_PARAM(emc_emrs);
+	CASE_GET_SDRAM_PARAM(emc_mrw1);
+	CASE_GET_SDRAM_PARAM(emc_mrw2);
+	CASE_GET_SDRAM_PARAM(emc_mrw3);
+	CASE_GET_SDRAM_PARAM(emc_mrw_reset_command);
+	CASE_GET_SDRAM_PARAM(emc_mrw_reset_ninit_wait);
+	CASE_GET_SDRAM_PARAM(emc_adr_cfg);
+	CASE_GET_SDRAM_PARAM(emc_adr_cfg1);
+	CASE_GET_SDRAM_PARAM(mc_emem_cfg);
+	CASE_GET_SDRAM_PARAM(mc_lowlatency_config);
+	CASE_GET_SDRAM_PARAM(emc_cfg);
+	CASE_GET_SDRAM_PARAM(emc_cfg2);
+	CASE_GET_SDRAM_PARAM(emc_dbg);
+	CASE_GET_SDRAM_PARAM(ahb_arbitration_xbar_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse);
+	CASE_GET_SDRAM_PARAM(warm_boot_wait);
+	CASE_GET_SDRAM_PARAM(emc_ctt_term_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_odt_write);
+	CASE_GET_SDRAM_PARAM(emc_odt_read);
+	CASE_GET_SDRAM_PARAM(emc_zcal_ref_cnt);
+	CASE_GET_SDRAM_PARAM(emc_zcal_wait_cnt);
+	CASE_GET_SDRAM_PARAM(emc_zcal_mrw_cmd);
+	CASE_GET_SDRAM_PARAM(emc_mrs_reset_dll);
+	CASE_GET_SDRAM_PARAM(emc_mrw_zq_init_dev0);
+	CASE_GET_SDRAM_PARAM(emc_mrw_zq_init_dev1);
+	CASE_GET_SDRAM_PARAM(emc_mrw_zq_init_wait);
+	CASE_GET_SDRAM_PARAM(emc_mrs_reset_dll_wait);
+	CASE_GET_SDRAM_PARAM(emc_emrs_emr2);
+	CASE_GET_SDRAM_PARAM(emc_emrs_emr3);
+	CASE_GET_SDRAM_PARAM(emc_emrs_ddr2_dll_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_ddr2_dll_reset);
+	CASE_GET_SDRAM_PARAM(emc_emrs_ddr2_ocd_calib);
+	CASE_GET_SDRAM_PARAM(emc_ddr2_wait);
+	CASE_GET_SDRAM_PARAM(emc_cfg_clktrim0);
+	CASE_GET_SDRAM_PARAM(emc_cfg_clktrim1);
+	CASE_GET_SDRAM_PARAM(emc_cfg_clktrim2);
+	CASE_GET_SDRAM_PARAM(pmc_ddr_pwr);
+	CASE_GET_SDRAM_PARAM(apb_misc_gp_xm2cfga_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(apb_misc_gp_xm2cfgc_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(apb_misc_gp_xm2cfgc_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(apb_misc_gp_xm2cfgd_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(apb_misc_gp_xm2cfgd_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(apb_misc_gp_xm2clkcfg_Pad_ctrl);
+	CASE_GET_SDRAM_PARAM(apb_misc_gp_xm2comp_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(apb_misc_gp_xm2vttgen_pad_ctrl);
+	DEFAULT();
+	}
+	return 0;
+}
+
+int
+t20_getbl_param(u_int32_t set,
+		parse_token id,
+		u_int32_t *data,
+		u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (set >= NVBOOT_MAX_BOOTLOADERS)
+		return -ENODATA;
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	CASE_GET_BL_PARAM(version);
+	CASE_GET_BL_PARAM(start_blk);
+	CASE_GET_BL_PARAM(start_page);
+	CASE_GET_BL_PARAM(length);
+	CASE_GET_BL_PARAM(load_addr);
+	CASE_GET_BL_PARAM(entry_point);
+	CASE_GET_BL_PARAM(attribute);
+
+	case token_bl_crypto_hash:
+		memcpy(data,
+		&(bct_ptr->bootloader[set].crypto_hash),
+		sizeof(nvboot_hash));
+	break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t20_setbl_param(u_int32_t set,
+		parse_token id,
+		u_int32_t *data,
+		u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (set >= NVBOOT_MAX_BOOTLOADERS)
+		return -ENODATA;
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	CASE_SET_BL_PARAM(version);
+	CASE_SET_BL_PARAM(start_blk);
+	CASE_SET_BL_PARAM(start_page);
+	CASE_SET_BL_PARAM(length);
+	CASE_SET_BL_PARAM(load_addr);
+	CASE_SET_BL_PARAM(entry_point);
+	CASE_SET_BL_PARAM(attribute);
+
+	case token_bl_crypto_hash:
+		memcpy(&(bct_ptr->bootloader[set].crypto_hash),
+		data,
+		sizeof(nvboot_hash));
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t20_bct_get_value(parse_token id, u_int32_t *data, u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+	nvboot_config_table  samplebct; /* Used for computing offsets. */
+
+	/*
+	 * Note: Not all queries require use of the BCT, so testing for a
+	 *       valid BCT is distributed within the code.
+	 */
+	if (data == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	/*
+	 * Simple BCT fields
+	 */
+	CASE_GET_NVU32(boot_data_version);
+	CASE_GET_NVU32(block_size_log2);
+	CASE_GET_NVU32(page_size_log2);
+	CASE_GET_NVU32(partition_size);
+	CASE_GET_NVU32(num_param_sets);
+	CASE_GET_NVU32(num_sdram_sets);
+	CASE_GET_NVU32(bootloader_used);
+	CASE_GET_NVU32(odm_data);
+
+	/*
+	 * Constants.
+	 */
+
+	CASE_GET_CONST(bootloaders_max,   NVBOOT_MAX_BOOTLOADERS);
+	CASE_GET_CONST(reserved_size,     NVBOOT_BCT_RESERVED_SIZE);
+
+	case token_reserved_offset:
+		*data = (u_int8_t *)&(samplebct.reserved)
+				- (u_int8_t *)&samplebct;
+		break;
+
+	case token_bct_size:
+		*data = sizeof(nvboot_config_table);
+		break;
+
+	CASE_GET_CONST(hash_size, sizeof(nvboot_hash));
+
+	case token_crypto_offset:
+		/* Offset to region in BCT to encrypt & sign */
+		*data = (u_int8_t *)&(samplebct.random_aes_blk)
+				- (u_int8_t *)&samplebct;
+		break;
+
+	case token_crypto_length:
+		/* size   of region in BCT to encrypt & sign */
+		*data = sizeof(nvboot_config_table) - sizeof(nvboot_hash);
+	break;
+
+	CASE_GET_CONST(max_bct_search_blks, NVBOOT_MAX_BCT_SEARCH_BLOCKS);
+
+	CASE_GET_CONST_PREFIX(dev_type_nand, nvboot);
+	CASE_GET_CONST_PREFIX(dev_type_sdmmc, nvboot);
+	CASE_GET_CONST_PREFIX(dev_type_spi, nvboot);
+	CASE_GET_CONST_PREFIX(sdmmc_data_width_4bit, nvboot);
+	CASE_GET_CONST_PREFIX(sdmmc_data_width_8bit, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_pllp_out0, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_pllc_out0, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_pllm_out0, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_clockm, nvboot);
+
+	CASE_GET_CONST_PREFIX(memory_type_none, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_lpddr, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr2, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_lpddr2, nvboot);
+
+	default:
+		return -ENODATA;
+	}
+	return 0;
+}
+
+int
+t20_bct_set_value(parse_token id, u_int32_t  data, u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	/*
+	 * Simple BCT fields
+	 */
+	CASE_SET_NVU32(boot_data_version);
+	CASE_SET_NVU32(block_size_log2);
+	CASE_SET_NVU32(page_size_log2);
+	CASE_SET_NVU32(partition_size);
+	CASE_SET_NVU32(num_param_sets);
+	CASE_SET_NVU32(num_sdram_sets);
+	CASE_SET_NVU32(bootloader_used);
+	CASE_SET_NVU32(odm_data);
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t20_bct_set_data(parse_token id,
+	u_int8_t *data,
+	u_int32_t  length,
+	u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+
+	CASE_SET_DATA(crypto_hash, sizeof(nvboot_hash));
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+void t20_init_bad_block_table(build_image_context *context)
+{
+	u_int32_t bytes_per_entry;
+	nvboot_badblock_table *table;
+	nvboot_config_table *bct;
+
+	bct = (nvboot_config_table *)(context->bct);
+
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	table = &bct->badblock_table;
+
+	bytes_per_entry = ICEIL(context->partition_size,
+				NVBOOT_BAD_BLOCK_TABLE_SIZE);
+	table->block_size_log2 = context->block_size_log2;
+	table->virtual_blk_size_log2 = NV_MAX(ceil_log2(bytes_per_entry),
+					table->block_size_log2);
+	table->entries_used = iceil_log2(context->partition_size,
+					table->virtual_blk_size_log2);
+}
+
+cbootimage_soc_config tegra20_config = {
+	.init_bad_block_table		= t20_init_bad_block_table,
+	.set_dev_param				= t20_set_dev_param,
+	.get_dev_param				= t20_get_dev_param,
+	.set_sdram_param			= t20_set_sdram_param,
+	.get_sdram_param			= t20_get_sdram_param,
+	.setbl_param				= t20_setbl_param,
+	.getbl_param				= t20_getbl_param,
+	.set_value					= t20_bct_set_value,
+	.get_value					= t20_bct_get_value,
+	.set_data					= t20_bct_set_data,
+
+	.devtype_table				= s_devtype_table_t20,
+	.sdmmc_data_width_table		= s_sdmmc_data_width_table_t20,
+	.spi_clock_source_table		= s_spi_clock_source_table_t20,
+	.nvboot_memory_type_table	= s_nvboot_memory_type_table_t20,
+	.sdram_field_table			= s_sdram_field_table_t20,
+	.nand_table					= s_nand_table_t20,
+	.sdmmc_table				= s_sdmmc_table_t20,
+	.spiflash_table				= s_spiflash_table_t20,
+	.device_type_table			= s_device_type_table_t20,
+};
+
+void t20_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config)
+{
+	context->boot_data_version = BOOTDATA_VERSION_T20;
+	*soc_config = &tegra20_config;
+}
+
+int if_bct_is_t20_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config)
+{
+	nvboot_config_table * bct = (nvboot_config_table *) context->bct;
+
+	if (bct->boot_data_version == BOOTDATA_VERSION_T20)
+	{
+		t20_get_soc_config(context, soc_config);
+		return 1;
+	}
+	return 0;
+}
diff --git a/scripts/tegra/t20/nvboot_bct_t20.h b/scripts/tegra/t20/nvboot_bct_t20.h
new file mode 100644
index 000000000000..8585cdb5437f
--- /dev/null
+++ b/scripts/tegra/t20/nvboot_bct_t20.h
@@ -0,0 +1,316 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#ifndef INCLUDED_NVBOOT_BCT_T20_H
+#define INCLUDED_NVBOOT_BCT_T20_H
+
+#include <sys/types.h>
+#include "nvboot_sdram_param_t20.h"
+
+/**
+ * Defines the number of 32-bit words in the customer_data area of the BCT.
+ */
+#define NVBOOT_BCT_CUSTOMER_DATA_WORDS 296
+
+/**
+ * Defines the number of bytes in the customer_data area of the BCT.
+ */
+#define NVBOOT_BCT_CUSTOMER_DATA_SIZE \
+		(NVBOOT_BCT_CUSTOMER_DATA_WORDS * 4)
+
+/**
+ * Defines the number of bytes in the reserved area of the BCT.
+ */
+#define NVBOOT_BCT_RESERVED_SIZE       3
+
+/**
+ * Defines the maximum number of bootloader descriptions in the BCT.
+ */
+#define NVBOOT_MAX_BOOTLOADERS         4
+
+/**
+ * Defines the maximum number of device parameter sets in the BCT.
+ * The value must be equal to (1 << # of device straps)
+ */
+#define NVBOOT_BCT_MAX_PARAM_SETS      4
+
+/**
+ * Defines the maximum number of SDRAM parameter sets in the BCT.
+ * The value must be equal to (1 << # of SDRAM straps)
+ */
+#define NVBOOT_BCT_MAX_SDRAM_SETS      4
+
+/**
+ * Defines the number of entries (bits) in the bad block table.
+ * The consequences of changing its value are as follows.  Using P as the
+ * # of physical blocks in the boot loader and B as the value of this
+ * constant:
+ *    B > P: There will be unused storage in the bad block table.
+ *    B < P: The virtual block size will be greater than the physical block
+ *           size, so the granularity of the bad block table will be less than
+ *           one bit per physical block.
+ *
+ * 4096 bits is enough to represent an 8MiB partition of 2KiB blocks with one
+ * bit per block (1 virtual block = 1 physical block).  This occupies 512 bytes
+ * of storage.
+ */
+#define NVBOOT_BAD_BLOCK_TABLE_SIZE 4096
+
+/**
+ * Defines the maximum number of blocks to search for BCTs.
+ *
+ * This value covers the initial block and a set of journal blocks.
+ *
+ * Ideally, this number will span several erase units for reliable updates
+ * and tolerance for blocks to become bad with use.  Safe updates require
+ * a minimum of 2 erase units in which BCTs can appear.
+ *
+ * To ensure that the BCT search spans a sufficient range of configurations,
+ * the search block count has been set to 64. This allows for redundancy with
+ * a wide range of parts and provides room for greater problems in this
+ * region of the device.
+ */
+#define NVBOOT_MAX_BCT_SEARCH_BLOCKS   64
+
+/*
+ * Defines the CMAC-AES-128 hash length in 32 bit words. (128 bits = 4 words)
+ */
+enum {NVBOOT_CMAC_AES_HASH_LENGTH = 4};
+
+/**
+ * Defines the storage for a hash value (128 bits).
+ */
+typedef struct nvboot_hash_rec {
+	u_int32_t hash[NVBOOT_CMAC_AES_HASH_LENGTH];
+} nvboot_hash;
+
+/* Defines the params that can be configured for NAND devices. */
+typedef struct nvboot_nand_params_rec {
+	/**
+	 * Specifies the clock divider for the PLL_P 432MHz source.
+	 * If it is set to 18, then clock source to Nand controller is
+	 * 432 / 18 = 24MHz.
+	 */
+	u_int8_t clock_divider;
+
+	/* Specifies the value to be programmed to Nand Timing Register 1 */
+	u_int32_t nand_timing;
+
+	/* Specifies the value to be programmed to Nand Timing Register 2 */
+	u_int32_t nand_timing2;
+
+	/* Specifies the block size in log2 bytes */
+	u_int8_t block_size_log2;
+
+	/* Specifies the page size in log2 bytes */
+	u_int8_t page_size_log2;
+} nvboot_nand_params;
+
+/* Defines various data widths supported. */
+typedef enum {
+	/**
+	 * Specifies a 1 bit interface to eMMC.
+	 * Note that 1-bit data width is only for the driver's internal use.
+	 * Fuses doesn't provide option to select 1-bit data width.
+	 * The driver selects 1-bit internally based on need.
+	 * It is used for reading Extended CSD and when the power class
+	 * requirements of a card for 4-bit or 8-bit transfers are not
+	 * supported by the target board.
+	 */
+	nvboot_sdmmc_data_width_1bit = 0,
+
+	/* Specifies a 4 bit interface to eMMC. */
+	nvboot_sdmmc_data_width_4bit = 1,
+
+	/* Specifies a 8 bit interface to eMMC. */
+	nvboot_sdmmc_data_width_8bit = 2,
+
+	nvboot_sdmmc_data_width_num,
+	nvboot_sdmmc_data_width_force32 = 0x7FFFFFFF
+} nvboot_sdmmc_data_width;
+
+/* Defines the parameters that can be changed after BCT is read. */
+typedef struct nvboot_sdmmc_params_rec {
+	/**
+	 * Specifies the clock divider for the SDMMC controller's clock source,
+	 * which is PLLP running at 432MHz.  If it is set to 18, then the SDMMC
+	 * controller runs at 432/18 = 24MHz.
+	 */
+	u_int8_t clock_divider;
+
+	/* Specifies the data bus width. Supported data widths are 4/8 bits. */
+	nvboot_sdmmc_data_width data_width;
+
+	/**
+	 * Max Power class supported by the target board.
+	 * The driver determines the best data width and clock frequency
+	 * supported within the power class range (0 to Max) if the selected
+	 * data width cannot be used at the chosen clock frequency.
+	 */
+	u_int8_t max_power_class_supported;
+} nvboot_sdmmc_params;
+
+typedef enum {
+	/* Specifies SPI clock source to be PLLP. */
+	nvboot_spi_clock_source_pllp_out0 = 0,
+
+	/* Specifies SPI clock source to be PLLC. */
+	nvboot_spi_clock_source_pllc_out0,
+
+	/* Specifies SPI clock source to be PLLM. */
+	nvboot_spi_clock_source_pllm_out0,
+
+	/* Specifies SPI clock source to be ClockM. */
+	nvboot_spi_clock_source_clockm,
+
+	nvboot_spi_clock_source_num,
+	nvboot_spi_clock_source_force32 = 0x7FFFFFF
+} nvboot_spi_clock_source;
+
+
+/**
+ * Defines the parameters SPI FLASH devices.
+ */
+typedef struct nvboot_spiflash_params_rec {
+	/**
+	 * Specifies the clock source to use.
+	 */
+	nvboot_spi_clock_source clock_source;
+
+	/**
+	 * Specifes the clock divider to use.
+	 * The value is a 7-bit value based on an input clock of 432Mhz.
+	 * Divider = (432+ DesiredFrequency-1)/DesiredFrequency;
+	 * Typical values:
+	 *     NORMAL_READ at 20MHz: 22
+	 *     FAST_READ   at 33MHz: 14
+	 *     FAST_READ   at 40MHz: 11
+	 *     FAST_READ   at 50MHz:  9
+	 */
+	u_int8_t clock_divider;
+
+	/**
+	 * Specifies the type of command for read operations.
+	 * NV_FALSE specifies a NORMAL_READ Command
+	 * NV_TRUE  specifies a FAST_READ   Command
+	 */
+	u_int8_t read_command_type_fast;
+} nvboot_spiflash_params;
+
+/**
+* Defines the union of the parameters required by each device.
+*/
+typedef union {
+	/* Specifies optimized parameters for NAND */
+	nvboot_nand_params nand_params;
+	/* Specifies optimized parameters for eMMC and eSD */
+	nvboot_sdmmc_params sdmmc_params;
+	/* Specifies optimized parameters for SPI NOR */
+	nvboot_spiflash_params spiflash_params;
+} nvboot_dev_params;
+
+/**
+ * Identifies the types of devices from which the system booted.
+ * Used to identify primary and secondary boot devices.
+ * @note These no longer match the fuse API device values (for
+ * backward compatibility with AP15).
+ */
+typedef enum {
+	/* Specifies a default (unset) value. */
+	nvboot_dev_type_none = 0,
+
+	/* Specifies NAND. */
+	nvboot_dev_type_nand,
+
+	/* Specifies SPI NOR. */
+	nvboot_dev_type_spi = 3,
+
+	/* Specifies SDMMC (either eMMC or eSD). */
+	nvboot_dev_type_sdmmc,
+
+	nvboot_dev_type_max,
+
+	/* Ignore -- Forces compilers to make 32-bit enums. */
+	nvboot_dev_type_force32 = 0x7FFFFFFF
+} nvboot_dev_type;
+
+/**
+ * Stores information needed to locate and verify a boot loader.
+ *
+ * There is one \c nv_bootloader_info structure for each copy of a BL stored on
+ * the device.
+ */
+typedef struct nv_bootloader_info_rec {
+	u_int32_t version;
+	u_int32_t start_blk;
+	u_int32_t start_page;
+	u_int32_t length;
+	u_int32_t load_addr;
+	u_int32_t entry_point;
+	u_int32_t attribute;
+	nvboot_hash crypto_hash;
+} nv_bootloader_info;
+
+/**
+ * Defines the bad block table structure stored in the BCT.
+ */
+typedef struct nvboot_badblock_table_rec {
+	u_int32_t entries_used;
+	u_int8_t virtual_blk_size_log2;
+	u_int8_t block_size_log2;
+	u_int8_t bad_blks[NVBOOT_BAD_BLOCK_TABLE_SIZE / 8];
+} nvboot_badblock_table;
+
+/**
+ * Contains the information needed to load BLs from the secondary boot device.
+ *
+ * - Supplying NumParamSets = 0 indicates not to load any of them.
+ * - Supplying NumDramSets  = 0 indicates not to load any of them.
+ * - The \c random_aes_blk member exists to increase the difficulty of
+ *   key attacks based on knowledge of this structure.
+ */
+typedef struct nvboot_config_table_rec {
+	nvboot_hash crypto_hash;
+	nvboot_hash random_aes_blk;
+	u_int32_t boot_data_version;
+	u_int32_t block_size_log2;
+	u_int32_t page_size_log2;
+	u_int32_t partition_size;
+	u_int32_t num_param_sets;
+	nvboot_dev_type dev_type[NVBOOT_BCT_MAX_PARAM_SETS];
+	nvboot_dev_params dev_params[NVBOOT_BCT_MAX_PARAM_SETS];
+	u_int32_t num_sdram_sets;
+	nvboot_sdram_params sdram_params[NVBOOT_BCT_MAX_SDRAM_SETS];
+	nvboot_badblock_table badblock_table;
+	u_int32_t bootloader_used;
+	nv_bootloader_info bootloader[NVBOOT_MAX_BOOTLOADERS];
+	u_int8_t customer_data[NVBOOT_BCT_CUSTOMER_DATA_SIZE];
+
+	/*
+	 * ODMDATA is stored in the BCT in IRAM by the BootROM.
+	 * Read the data @ bct_start + (bct_size - 12). This works
+	 * on T20 and T30 BCTs, which are locked down. If this changes
+	 * in new chips, we can revisit this algorithm.
+	 */
+	u_int32_t odm_data;
+	u_int32_t reserved1;
+	u_int8_t enable_fail_back;
+	u_int8_t reserved[NVBOOT_BCT_RESERVED_SIZE];
+} nvboot_config_table;
+#endif /* #ifndef INCLUDED_NVBOOT_BCT_T20_H */
diff --git a/scripts/tegra/t20/nvboot_sdram_param_t20.h b/scripts/tegra/t20/nvboot_sdram_param_t20.h
new file mode 100644
index 000000000000..2c385d5e5e56
--- /dev/null
+++ b/scripts/tegra/t20/nvboot_sdram_param_t20.h
@@ -0,0 +1,363 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/**
+ * Defines the SDRAM parameter structure.
+ *
+ * Note that PLLM is used by EMC.
+ */
+
+#ifndef INCLUDED_NVBOOT_SDRAM_PARAM_T20_H
+#define INCLUDED_NVBOOT_SDRAM_PARAM_T20_H
+
+#define NVBOOT_BCT_SDRAM_ARB_CONFIG_WORDS 27
+
+typedef enum {
+	/* Specifies the memory type to be undefined */
+	nvboot_memory_type_none = 0,
+
+	/* Specifies the memory type to be DDR SDRAM */
+	nvboot_memory_type_ddr,
+
+	/* Specifies the memory type to be LPDDR SDRAM */
+	nvboot_memory_type_lpddr,
+
+	/* Specifies the memory type to be DDR2 SDRAM */
+	nvboot_memory_type_ddr2,
+
+	/* Specifies the memory type to be LPDDR2 SDRAM */
+	nvboot_memory_type_lpddr2,
+
+	nvboot_memory_type_num,
+	nvboot_memory_type_force32 = 0x7FFFFFF
+} nvboot_memory_type;
+
+
+/**
+ * Defines the SDRAM parameter structure
+ */
+typedef struct nvboot_sdram_params_rec {
+	/* Specifies the type of memory device */
+	nvboot_memory_type memory_type;
+
+	/* Specifies the CPCON value for PllM */
+	u_int32_t pllm_charge_pump_setup_ctrl;
+	/* Specifies the LPCON value for PllM */
+	u_int32_t pllm_loop_filter_setup_ctrl;
+	/* Specifies the M value for PllM */
+	u_int32_t pllm_input_divider;
+	/* Specifies the N value for PllM */
+	u_int32_t pllm_feedback_divider;
+	/* Specifies the P value for PllM */
+	u_int32_t pllm_post_divider;
+	/* Specifies the time to wait for PLLM to lock (in microseconds) */
+	u_int32_t pllm_stable_time;
+
+	/* Specifies the divider for the EMC Clock Source */
+	u_int32_t emc_clock_divider;
+
+
+	/* Auto-calibration of EMC pads */
+
+	/* Specifies the value for EMC_AUTO_CAL_INTERVAL */
+	u_int32_t emc_auto_cal_interval;
+	/**
+	 * Specifies the value for EMC_AUTO_CAL_CONFIG
+	 * Note: Trigger bits are set by the SDRAM code.
+	 */
+	u_int32_t emc_auto_cal_config;
+	/**
+	 * Specifies the time for the calibration to
+	 * stabilize (in microseconds)
+	 */
+	u_int32_t emc_auto_cal_wait;
+
+	/**
+	 * Specifies the time to wait after pin programming (in microseconds)
+	 * Dram vendors require at least 200us.
+	 */
+	u_int32_t emc_pin_program_wait;
+
+
+	/* Timing parameters required for the SDRAM */
+
+	/* Specifies the value for EMC_RC */
+	u_int32_t emc_rc;
+	/* Specifies the value for EMC_RFC */
+	u_int32_t emc_rfc;
+	/* Specifies the value for EMC_RAS */
+	u_int32_t emc_ras;
+	/* Specifies the value for EMC_RP */
+	u_int32_t emc_rp;
+	/* Specifies the value for EMC_R2W */
+	u_int32_t emc_r2w;
+	/* Specifies the value for EMC_R2W */
+	u_int32_t emc_w2r;
+	/* Specifies the value for EMC_R2P */
+	u_int32_t emc_r2p;
+	/* Specifies the value for EMC_W2P */
+	u_int32_t emc_w2p;
+	/* Specifies the value for EMC_RD_RCD */
+	u_int32_t emc_rd_rcd;
+	/* Specifies the value for EMC_WR_RCD */
+	u_int32_t emc_wr_rcd;
+	/* Specifies the value for EMC_RRD */
+	u_int32_t emc_rrd;
+	/* Specifies the value for EMC_REXT */
+	u_int32_t emc_rext;
+	/* Specifies the value for EMC_WDV */
+	u_int32_t emc_wdv;
+	/* Specifies the value for EMC_QUSE */
+	u_int32_t emc_quse;
+	/* Specifies the value for EMC_QRST */
+	u_int32_t emc_qrst;
+	/* Specifies the value for EMC_QSAFE */
+	u_int32_t emc_qsafe;
+	/* Specifies the value for EMC_RDV */
+	u_int32_t emc_rdv;
+	/* Specifies the value for EMC_REFRESH */
+	u_int32_t emc_refresh;
+	/* Specifies the value for EMC_BURST_REFRESH_NUM */
+	u_int32_t emc_burst_refresh_num;
+	/* Specifies the value for EMC_PDEX2WR */
+	u_int32_t emc_pdex2wr;
+	/* Specifies the value for EMC_PDEX2RD */
+	u_int32_t emc_pdex2rd;
+	/* Specifies the value for EMC_PCHG2PDEN */
+	u_int32_t emc_pchg2pden;
+	/* Specifies the value for EMC_ACT2PDEN */
+	u_int32_t emc_act2pden;
+	/* Specifies the value for EMC_AR2PDEN */
+	u_int32_t emc_ar2pden;
+	/* Specifies the value for EMC_RW2PDEN */
+	u_int32_t emc_rw2pden;
+	/* Specifies the value for EMC_TXSR */
+	u_int32_t emc_txsr;
+	/* Specifies the value for EMC_TCKE */
+	u_int32_t emc_tcke;
+	/* Specifies the value for EMC_TFAW */
+	u_int32_t emc_tfaw;
+	/* Specifies the value for EMC_TRPAB */
+	u_int32_t emc_trpab;
+	/* Specifies the value for EMC_TCLKSTABLE */
+	u_int32_t emc_tclkstable;
+	/* Specifies the value for EMC_TCLKSTOP */
+	u_int32_t emc_tclkstop;
+	/* Specifies the value for EMC_TREFBW */
+	u_int32_t emc_trefbw;
+	/* Specifies the value for EMC_QUSE_EXTRA */
+	u_int32_t emc_quse_extra;
+
+
+	/* FBIO configuration values */
+
+	/* Specifies the value for EMC_FBIO_CFG1 */
+	u_int32_t emc_fbio_cfg1;
+	/* Specifies the value for EMC_FBIO_DQSIB_DLY */
+	u_int32_t emc_fbio_dqsib_dly;
+	/* Specifies the value for EMC_FBIO_DQSIB_DLY_MSB */
+	u_int32_t emc_fbio_dqsib_dly_msb;
+	/* Specifies the value for EMC_FBIO_QUSE_DLY */
+	u_int32_t emc_fbio_quse_dly;
+	/* Specifies the value for EMC_FBIO_QUSE_DLY_MSB */
+	u_int32_t emc_fbio_quse_dly_msb;
+	/* Specifies the value for EMC_FBIO_CFG5 */
+	u_int32_t emc_fbio_cfg5;
+	/* Specifies the value for EMC_FBIO_CFG6 */
+	u_int32_t emc_fbio_cfg6;
+	/* Specifies the value for EMC_FBIO_SPARE */
+	u_int32_t emc_fbio_spare;
+
+
+	/* MRS command values */
+
+	/* Specifies the value for EMC_MRS */
+	u_int32_t emc_mrs;
+	/* Specifies the value for EMC_EMRS */
+	u_int32_t emc_emrs;
+	/* Specifies the first  of a sequence of three values for EMC_MRW */
+	u_int32_t emc_mrw1;
+	/* Specifies the second of a sequence of three values for EMC_MRW */
+	u_int32_t emc_mrw2;
+	/* Specifies the third  of a sequence of three values for EMC_MRW */
+	u_int32_t emc_mrw3;
+
+	/* Specifies the EMC_MRW reset command value */
+	u_int32_t emc_mrw_reset_command;
+	/* Specifies the EMC Reset wait time (in microseconds) */
+	u_int32_t emc_mrw_reset_ninit_wait;
+
+	/**
+	 * Specifies the value for EMC_ADR_CFG
+	 * The same value is also used for MC_EMC_ADR_CFG
+	 */
+	u_int32_t emc_adr_cfg;
+	/* Specifies the value for EMC_ADR_CFG_1 */
+	u_int32_t emc_adr_cfg1;
+
+	/**
+	 * Specifies the value for MC_EMEM_CFG which holds the external memory
+	 * size (in KBytes)
+	 * EMEM_SIZE_KB must be <= (Device size in KB * Number of Devices)
+	 */
+	u_int32_t mc_emem_cfg;
+
+	/**
+	 * Specifies the value for MC_LOWLATENCY_CONFIG
+	 * Mainly for LL_DRAM_INTERLEAVE: Some DRAMs do not support interleave
+	 * mode. If so, turn off this bit to get the correct low-latency path
+	 * behavior. Reset is ENABLED.
+	 */
+	u_int32_t mc_lowlatency_config;
+	/* Specifies the value for EMC_CFG */
+	u_int32_t emc_cfg;
+	/* Specifies the value for EMC_CFG_2 */
+	u_int32_t emc_cfg2;
+	/* Specifies the value for EMC_DBG */
+	u_int32_t emc_dbg;
+
+	/*
+	 * Specifies the value for AHB_ARBITRATION_XBAR_CTRL.
+	 * This is used to set the Memory Inid done
+	 */
+	u_int32_t ahb_arbitration_xbar_ctrl;
+
+	/*
+	 * Specifies the value for EMC_CFG_DIG_DLL
+	 * Note: Trigger bits are set by the SDRAM code.
+	 */
+	u_int32_t emc_cfg_dig_dll;
+	/* Specifies the value for EMC_DLL_XFORM_DQS */
+	u_int32_t emc_dll_xform_dqs;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE */
+	u_int32_t emc_dll_xform_quse;
+
+	/*
+	 * Specifies the delay after prgramming the PIN/NOP register during a
+	 * WarmBoot0 sequence (in microseconds)
+	 */
+	u_int32_t warm_boot_wait;
+
+	/* Specifies the value for EMC_CTT_TERM_CTRL */
+	u_int32_t emc_ctt_term_ctrl;
+
+	/* Specifies the value for EMC_ODT_WRITE */
+	u_int32_t emc_odt_write;
+	/* Specifies the value for EMC_ODT_WRITE */
+	u_int32_t emc_odt_read;
+
+	/*
+	 * Specifies the value for EMC_ZCAL_REF_CNT
+	 * Only meaningful for LPDDR2. Set to 0 for all other memory types.
+	 */
+	u_int32_t emc_zcal_ref_cnt;
+	/*
+	 * Specifies the value for EMC_ZCAL_WAIT_CNT
+	 * Only meaningful for LPDDR2. Set to 0 for all other memory types.
+	 */
+	u_int32_t emc_zcal_wait_cnt;
+	/*
+	 * Specifies the value for EMC_ZCAL_MRW_CMD
+	 * Only meaningful for LPDDR2. Set to 0 for all other memory types.
+	 */
+	u_int32_t emc_zcal_mrw_cmd;
+
+	/*
+	 * Specifies the MRS command value for initilizing
+	 * the mode register.
+	 */
+	u_int32_t emc_mrs_reset_dll;
+	/* Specifies the MRW command for ZQ initialization of device 0 */
+	u_int32_t emc_mrw_zq_init_dev0;
+	/* Specifies the MRW command for ZQ initialization of device 1 */
+	u_int32_t emc_mrw_zq_init_dev1;
+	/*
+	 * Specifies the wait time after programming a ZQ initialization
+	 * command (in microseconds)
+	 */
+	u_int32_t emc_mrw_zq_init_wait;
+	/*
+	 * Specifies the wait time after sending an MRS DLL reset command
+	 * (in microseconds)
+	 */
+	u_int32_t emc_mrs_reset_dll_wait;
+	/*
+	 * Specifies the first of two EMRS commands to initialize mode
+	 * registers
+	 */
+	u_int32_t emc_emrs_emr2;
+	/*
+	 * Specifies the second of two EMRS commands to initialize mode
+	 * registers
+	 */
+	u_int32_t emc_emrs_emr3;
+	/* Specifies the EMRS command to enable the DDR2 DLL */
+	u_int32_t emc_emrs_ddr2_dll_enable;
+	/* Specifies the MRS command to reset the DDR2 DLL */
+	u_int32_t emc_mrs_ddr2_dll_reset;
+	/* Specifies the EMRS command to set OCD calibration */
+	u_int32_t emc_emrs_ddr2_ocd_calib;
+	/*
+	 * Specifies the wait between initializing DDR and setting OCD
+	 * calibration (in microseconds)
+	 */
+	u_int32_t emc_ddr2_wait;
+
+
+	/* Clock trimmers */
+
+	/* Specifies the value for EMC_CFG_CLKTRIM_0 */
+	u_int32_t emc_cfg_clktrim0;
+	/* Specifies the value for EMC_CFG_CLKTRIM_1 */
+	u_int32_t emc_cfg_clktrim1;
+	/* Specifies the value for EMC_CFG_CLKTRIM_2 */
+	u_int32_t emc_cfg_clktrim2;
+
+
+	/* Pad controls */
+
+	/* Specifies the value for PMC_DDR_PWR */
+	u_int32_t pmc_ddr_pwr;
+	/* Specifies the value for APB_MISC_GP_XM2CFGAPADCTRL */
+	u_int32_t apb_misc_gp_xm2cfga_pad_ctrl;
+	/* Specifies the value for APB_MISC_GP_XM2CFGCPADCTRL */
+	u_int32_t apb_misc_gp_xm2cfgc_pad_ctrl;
+	/* Specifies the value for APB_MISC_GP_XM2CFGCPADCTRL2 */
+	u_int32_t apb_misc_gp_xm2cfgc_pad_ctrl2;
+	/* Specifies the value for APB_MISC_GP_XM2CFGDPADCTRL */
+	u_int32_t apb_misc_gp_xm2cfgd_pad_ctrl;
+	/* Specifies the value for APB_MISC_GP_XM2CFGDPADCTRL2 */
+	u_int32_t apb_misc_gp_xm2cfgd_pad_ctrl2;
+	/* Specifies the value for APB_MISC_GP_XM2CLKCFGPADCTRL */
+	u_int32_t apb_misc_gp_xm2clkcfg_Pad_ctrl;
+	/* Specifies the value for APB_MISC_GP_XM2COMPPADCTRL */
+	u_int32_t apb_misc_gp_xm2comp_pad_ctrl;
+	/* Specifies the value for APB_MISC_GP_XM2VTTGENPADCTRL */
+	u_int32_t apb_misc_gp_xm2vttgen_pad_ctrl;
+
+	/*
+	 * Specifies storage for arbitration configuration registers
+	 * Data passed through to the Bootloader but not used by
+	 * the Boot ROM
+	 */
+	u_int32_t arbitration_config[NVBOOT_BCT_SDRAM_ARB_CONFIG_WORDS];
+} nvboot_sdram_params;
+
+#endif /* #ifndef INCLUDED_NVBOOT_SDRAM_PARAM_T20_H */
+
diff --git a/scripts/tegra/t20/parse_t20.c b/scripts/tegra/t20/parse_t20.c
new file mode 100644
index 000000000000..503257547ba5
--- /dev/null
+++ b/scripts/tegra/t20/parse_t20.c
@@ -0,0 +1,251 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * parse_t20.c - Parsing code for t20
+ */
+
+#include "../parse.h"
+#include "nvboot_bct_t20.h"
+
+enum_item s_devtype_table_t20[] = {
+	{ "NvBootDevType_Sdmmc", nvboot_dev_type_sdmmc },
+	{ "NvBootDevType_Spi", nvboot_dev_type_spi },
+	{ "NvBootDevType_Nand", nvboot_dev_type_nand },
+	{ "Sdmmc", nvboot_dev_type_sdmmc },
+	{ "Spi", nvboot_dev_type_spi },
+	{ "Nand", nvboot_dev_type_nand },
+
+	{ NULL, 0 }
+};
+
+enum_item s_sdmmc_data_width_table_t20[] = {
+	{
+	  "NvBootSdmmcDataWidth_4Bit",
+	  nvboot_sdmmc_data_width_4bit
+	},
+	{
+	  "NvBootSdmmcDataWidth_8Bit",
+	  nvboot_sdmmc_data_width_8bit
+	},
+	{ "4Bit", nvboot_sdmmc_data_width_4bit },
+	{ "8Bit", nvboot_sdmmc_data_width_8bit },
+	{ NULL, 0 }
+};
+
+enum_item s_spi_clock_source_table_t20[] = {
+	{
+	    "NvBootSpiClockSource_PllPOut0",
+	    nvboot_spi_clock_source_pllp_out0
+	},
+	{
+	    "NvBootSpiClockSource_PllCOut0",
+	    nvboot_spi_clock_source_pllc_out0
+	},
+	{
+	    "NvBootSpiClockSource_PllMOut0",
+	    nvboot_spi_clock_source_pllm_out0
+	},
+	{
+	    "NvBootSpiClockSource_ClockM",
+	    nvboot_spi_clock_source_clockm
+	},
+
+	{ "ClockSource_PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "ClockSource_PllCOut0", nvboot_spi_clock_source_pllc_out0 },
+	{ "ClockSource_PllMOut0", nvboot_spi_clock_source_pllm_out0 },
+	{ "ClockSource_ClockM",   nvboot_spi_clock_source_clockm },
+
+
+	{ "PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "PllCOut0", nvboot_spi_clock_source_pllc_out0 },
+	{ "PllMOut0", nvboot_spi_clock_source_pllm_out0 },
+	{ "ClockM",   nvboot_spi_clock_source_clockm },
+
+	{ NULL, 0 }
+};
+
+enum_item s_nvboot_memory_type_table_t20[] = {
+	{ "NvBootMemoryType_None", nvboot_memory_type_none },
+	{ "NvBootMemoryType_Ddr2", nvboot_memory_type_ddr2 },
+	{ "NvBootMemoryType_Ddr", nvboot_memory_type_ddr },
+	{ "NvBootMemoryType_LpDdr2", nvboot_memory_type_lpddr2 },
+	{ "NvBootMemoryType_LpDdr", nvboot_memory_type_lpddr },
+
+	{ "None", nvboot_memory_type_none },
+	{ "Ddr2", nvboot_memory_type_ddr2 },
+	{ "Ddr", nvboot_memory_type_ddr },
+	{ "LpDdr2", nvboot_memory_type_lpddr2 },
+	{ "LpDdr", nvboot_memory_type_lpddr },
+
+	{ NULL, 0 }
+};
+
+#define TOKEN(name)						\
+	token_##name, field_type_u32, NULL
+
+field_item s_sdram_field_table_t20[] = {
+	{ "MemoryType", token_memory_type,
+	  field_type_enum, s_nvboot_memory_type_table_t20 },
+
+	{ "PllMChargePumpSetupControl", TOKEN(pllm_charge_pump_setup_ctrl) },
+	{ "PllMLoopFilterSetupControl", TOKEN(pllm_loop_filter_setup_ctrl) },
+	{ "PllMInputDivider",           TOKEN(pllm_input_divider) },
+	{ "PllMFeedbackDivider",        TOKEN(pllm_feedback_divider) },
+	{ "PllMPostDivider",            TOKEN(pllm_post_divider) },
+	{ "PllMStableTime",             TOKEN(pllm_stable_time) },
+	{ "EmcClockDivider",            TOKEN(emc_clock_divider) },
+	{ "EmcAutoCalInterval",         TOKEN(emc_auto_cal_interval) },
+	{ "EmcAutoCalConfig",           TOKEN(emc_auto_cal_config) },
+	{ "EmcAutoCalWait",             TOKEN(emc_auto_cal_wait) },
+	{ "EmcPinProgramWait",          TOKEN(emc_pin_program_wait) },
+	{ "EmcRc",                      TOKEN(emc_rc) },
+	{ "EmcRfc",                     TOKEN(emc_rfc) },
+	{ "EmcRas",                     TOKEN(emc_ras) },
+	{ "EmcRp",                      TOKEN(emc_rp) },
+	{ "EmcR2w",                     TOKEN(emc_r2w) },
+	{ "EmcW2r",                     TOKEN(emc_w2r) },
+	{ "EmcR2p",                     TOKEN(emc_r2p) },
+	{ "EmcW2p",                     TOKEN(emc_w2p) },
+	{ "EmcRrd",                     TOKEN(emc_rrd) },
+	{ "EmcRdRcd",                   TOKEN(emc_rd_rcd) },
+	{ "EmcWrRcd",                   TOKEN(emc_wr_rcd) },
+	{ "EmcRext",                    TOKEN(emc_rext) },
+	{ "EmcWdv",                     TOKEN(emc_wdv) },
+	{ "EmcQUseExtra",               TOKEN(emc_quse_extra) },
+	{ "EmcQUse",                    TOKEN(emc_quse) },
+	{ "EmcQRst",                    TOKEN(emc_qrst) },
+	{ "EmcQSafe",                   TOKEN(emc_qsafe) },
+	{ "EmcRdv",                     TOKEN(emc_rdv) },
+	{ "EmcRefresh",                 TOKEN(emc_refresh) },
+	{ "EmcBurstRefreshNum",         TOKEN(emc_burst_refresh_num) },
+	{ "EmcPdEx2Wr",                 TOKEN(emc_pdex2wr) },
+	{ "EmcPdEx2Rd",                 TOKEN(emc_pdex2rd) },
+	{ "EmcPChg2Pden",               TOKEN(emc_pchg2pden) },
+	{ "EmcAct2Pden",                TOKEN(emc_act2pden) },
+	{ "EmcAr2Pden",                 TOKEN(emc_ar2pden) },
+	{ "EmcRw2Pden",                 TOKEN(emc_rw2pden) },
+	{ "EmcTxsr",                    TOKEN(emc_txsr) },
+	{ "EmcTcke",                    TOKEN(emc_tcke) },
+	{ "EmcTfaw",                    TOKEN(emc_tfaw) },
+	{ "EmcTrpab",                   TOKEN(emc_trpab) },
+	{ "EmcTClkStable",              TOKEN(emc_tclkstable) },
+	{ "EmcTClkStop",                TOKEN(emc_tclkstop) },
+	{ "EmcTRefBw",                  TOKEN(emc_trefbw) },
+	{ "EmcFbioCfg1",                TOKEN(emc_fbio_cfg1) },
+	{ "EmcFbioDqsibDlyMsb",         TOKEN(emc_fbio_dqsib_dly_msb) },
+	{ "EmcFbioDqsibDly",            TOKEN(emc_fbio_dqsib_dly) },
+	{ "EmcFbioQuseDlyMsb",          TOKEN(emc_fbio_quse_dly_msb) },
+	{ "EmcFbioQuseDly",             TOKEN(emc_fbio_quse_dly) },
+	{ "EmcFbioCfg5",                TOKEN(emc_fbio_cfg5) },
+	{ "EmcFbioCfg6",                TOKEN(emc_fbio_cfg6) },
+	{ "EmcFbioSpare",               TOKEN(emc_fbio_spare) },
+	{ "EmcMrsResetDllWait",         TOKEN(emc_mrs_reset_dll_wait) },
+	{ "EmcMrsResetDll",             TOKEN(emc_mrs_reset_dll) },
+	{ "EmcMrsDdr2DllReset",         TOKEN(emc_mrs_ddr2_dll_reset) },
+	{ "EmcMrs",                     TOKEN(emc_mrs) },
+	{ "EmcEmrsEmr2",                TOKEN(emc_emrs_emr2) },
+	{ "EmcEmrsEmr3",                TOKEN(emc_emrs_emr3) },
+	{ "EmcEmrsDdr2DllEnable",       TOKEN(emc_emrs_ddr2_dll_enable) },
+	{ "EmcEmrsDdr2OcdCalib",        TOKEN(emc_emrs_ddr2_ocd_calib) },
+	{ "EmcEmrs",                    TOKEN(emc_emrs) },
+	{ "EmcMrw1",                    TOKEN(emc_mrw1) },
+	{ "EmcMrw2",                    TOKEN(emc_mrw2) },
+	{ "EmcMrw3",                    TOKEN(emc_mrw3) },
+	{ "EmcMrwResetCommand",         TOKEN(emc_mrw_reset_command) },
+	{ "EmcMrwResetNInitWait",       TOKEN(emc_mrw_reset_ninit_wait) },
+	{ "EmcAdrCfg1",                 TOKEN(emc_adr_cfg1) },
+	{ "EmcAdrCfg",                  TOKEN(emc_adr_cfg) },
+	{ "McEmemCfg",                  TOKEN(mc_emem_cfg) },
+	{ "McLowLatencyConfig",         TOKEN(mc_lowlatency_config) },
+	{ "EmcCfg2",                    TOKEN(emc_cfg2) },
+	{ "EmcCfgDigDll",               TOKEN(emc_cfg_dig_dll) },
+	{ "EmcCfgClktrim0",             TOKEN(emc_cfg_clktrim0) },
+	{ "EmcCfgClktrim1",             TOKEN(emc_cfg_clktrim1) },
+	{ "EmcCfgClktrim2",             TOKEN(emc_cfg_clktrim2) },
+	{ "EmcCfg",                     TOKEN(emc_cfg) },
+	{ "EmcDbg",                     TOKEN(emc_dbg) },
+	{ "AhbArbitrationXbarCtrl",     TOKEN(ahb_arbitration_xbar_ctrl) },
+	{ "EmcDllXformDqs",             TOKEN(emc_dll_xform_dqs) },
+	{ "EmcDllXformQUse",            TOKEN(emc_dll_xform_quse) },
+	{ "WarmBootWait",               TOKEN(warm_boot_wait) },
+	{ "EmcCttTermCtrl",             TOKEN(emc_ctt_term_ctrl) },
+	{ "EmcOdtWrite",                TOKEN(emc_odt_write) },
+	{ "EmcOdtRead",                 TOKEN(emc_odt_read) },
+	{ "EmcZcalRefCnt",              TOKEN(emc_zcal_ref_cnt) },
+	{ "EmcZcalWaitCnt",             TOKEN(emc_zcal_wait_cnt) },
+	{ "EmcZcalMrwCmd",              TOKEN(emc_zcal_mrw_cmd) },
+	{ "EmcMrwZqInitDev0",           TOKEN(emc_mrw_zq_init_dev0) },
+	{ "EmcMrwZqInitDev1",           TOKEN(emc_mrw_zq_init_dev1) },
+	{ "EmcMrwZqInitWait",           TOKEN(emc_mrw_zq_init_wait) },
+	{ "EmcDdr2Wait",                TOKEN(emc_ddr2_wait) },
+	{ "PmcDdrPwr",                  TOKEN(pmc_ddr_pwr) },
+	{ "ApbMiscGpXm2CfgAPadCtrl",    TOKEN(apb_misc_gp_xm2cfga_pad_ctrl) },
+	{ "ApbMiscGpXm2CfgCPadCtrl2",   TOKEN(apb_misc_gp_xm2cfgc_pad_ctrl2) },
+	{ "ApbMiscGpXm2CfgCPadCtrl",    TOKEN(apb_misc_gp_xm2cfgc_pad_ctrl) },
+	{ "ApbMiscGpXm2CfgDPadCtrl2",   TOKEN(apb_misc_gp_xm2cfgd_pad_ctrl2) },
+	{ "ApbMiscGpXm2CfgDPadCtrl",    TOKEN(apb_misc_gp_xm2cfgd_pad_ctrl) },
+	{ "ApbMiscGpXm2ClkCfgPadCtrl",  TOKEN(apb_misc_gp_xm2clkcfg_Pad_ctrl)},
+	{ "ApbMiscGpXm2CompPadCtrl",    TOKEN(apb_misc_gp_xm2comp_pad_ctrl) },
+	{ "ApbMiscGpXm2VttGenPadCtrl",  TOKEN(apb_misc_gp_xm2vttgen_pad_ctrl)},
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_nand_table_t20[] = {
+	{ "ClockDivider",  TOKEN(nand_clock_divider) },
+	/* Note: NandTiming2 must appear before NandTiming, because NandTiming
+	 *       is a prefix of NandTiming2 and would otherwise match first.
+	 */
+	{ "NandTiming2",   TOKEN(nand_nand_timing2) },
+	{ "NandTiming",    TOKEN(nand_nand_timing) },
+	{ "BlockSizeLog2", TOKEN(nand_block_size_log2) },
+	{ "PageSizeLog2",  TOKEN(nand_page_size_log2) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_sdmmc_table_t20[] = {
+	{ "ClockDivider",           TOKEN(sdmmc_clock_divider) },
+	{ "DataWidth",
+	  token_sdmmc_data_width,
+	  field_type_enum,
+	  s_sdmmc_data_width_table_t20 },
+	{ "MaxPowerClassSupported", TOKEN(sdmmc_max_power_class_supported) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_spiflash_table_t20[] = {
+	{ "ReadCommandTypeFast", TOKEN(spiflash_read_command_type_fast) },
+	{ "ClockDivider",        TOKEN(spiflash_clock_divider) },
+	{ "ClockSource",
+	  token_spiflash_clock_source,
+	  field_type_enum,
+	  s_spi_clock_source_table_t20 },
+	{ NULL, 0, 0, NULL }
+};
+
+parse_subfield_item s_device_type_table_t20[] = {
+	{ "NandParams.", token_nand_params,
+		s_nand_table_t20, t20_set_dev_param },
+	{ "SdmmcParams.", token_sdmmc_params,
+		s_sdmmc_table_t20, t20_set_dev_param },
+	{ "SpiFlashParams.", token_spiflash_params,
+		s_spiflash_table_t20, t20_set_dev_param },
+
+	{ NULL, 0, NULL }
+};
diff --git a/scripts/tegra/t30/nvbctlib_t30.c b/scripts/tegra/t30/nvbctlib_t30.c
new file mode 100644
index 000000000000..59b0246fbfba
--- /dev/null
+++ b/scripts/tegra/t30/nvbctlib_t30.c
@@ -0,0 +1,891 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#include "../cbootimage.h"
+#include "../parse.h"
+#include "../crypto.h"
+#include "nvboot_bct_t30.h"
+#include "string.h"
+
+/* nvbctlib_t30.c: The implementation of the nvbctlib API for t30. */
+
+/* Definitions that simplify the code which follows. */
+#define CASE_GET_SDRAM_PARAM(x) \
+case token_##x:\
+	*value = params->x; \
+	break
+
+#define CASE_SET_SDRAM_PARAM(x) \
+case token_##x:\
+	params->x = value; \
+	break
+
+#define CASE_GET_DEV_PARAM(dev, x) \
+case token_##dev##_##x:\
+	*value = bct->dev_params[index].dev##_params.x; \
+	break
+
+#define CASE_SET_DEV_PARAM(dev, x) \
+case token_##dev##_##x:\
+	bct->dev_params[index].dev##_params.x = value; \
+	break
+
+#define CASE_GET_BL_PARAM(x) \
+case token_bl_##x:\
+	*data = bct_ptr->bootloader[set].x; \
+	break
+
+#define CASE_SET_BL_PARAM(x) \
+case token_bl_##x:\
+	bct_ptr->bootloader[set].x = *data; \
+	break
+
+#define CASE_GET_NVU32(id) \
+case token_##id:\
+	if (bct == NULL) return -ENODATA; \
+	*data = bct_ptr->id; \
+	break
+
+#define CASE_GET_CONST(id, val) \
+case token_##id:\
+	*data = val; \
+	break
+
+#define CASE_GET_CONST_PREFIX(id, val_prefix) \
+case token_##id:\
+	*data = val_prefix##_##id; \
+	break
+
+#define CASE_SET_NVU32(id) \
+case token_##id:\
+	bct_ptr->id = data; \
+	break
+
+#define CASE_GET_DATA(id, size) \
+case token_##id:\
+	if (*length < size) return -ENODATA;\
+	memcpy(data, &(bct_ptr->id), size);   \
+	*length = size;\
+	break
+
+#define CASE_SET_DATA(id, size) \
+case token_##id:\
+	if (length < size) return -ENODATA;\
+	memcpy(&(bct_ptr->id), data, size);   \
+	break
+
+#define DEFAULT()                                   \
+default :                                           \
+	printf("Unexpected token %d at line %d\n",  \
+		token, __LINE__);                   \
+	return 1
+
+int
+t30_set_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t value)
+{
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	bct->num_param_sets = NV_MAX(bct->num_param_sets, index + 1);
+
+	switch (token) {
+	CASE_SET_DEV_PARAM(nand, clock_divider);
+	CASE_SET_DEV_PARAM(nand, block_size_log2);
+	CASE_SET_DEV_PARAM(nand, page_size_log2);
+	CASE_SET_DEV_PARAM(nand, async_timing0);
+	CASE_SET_DEV_PARAM(nand, async_timing1);
+	CASE_SET_DEV_PARAM(nand, async_timing2);
+	CASE_SET_DEV_PARAM(nand, async_timing3);
+	CASE_SET_DEV_PARAM(nand, sddr_timing0);
+	CASE_SET_DEV_PARAM(nand, sddr_timing1);
+	CASE_SET_DEV_PARAM(nand, tddr_timing0);
+	CASE_SET_DEV_PARAM(nand, tddr_timing1);
+	CASE_SET_DEV_PARAM(nand, fbio_dqsib_dly_byte);
+	CASE_SET_DEV_PARAM(nand, fbio_quse_dly_byte);
+	CASE_SET_DEV_PARAM(nand, fbio_cfg_quse_late);
+	CASE_SET_DEV_PARAM(nand, disable_sync_ddr);
+
+	CASE_SET_DEV_PARAM(sdmmc, clock_divider);
+	CASE_SET_DEV_PARAM(sdmmc, data_width);
+	CASE_SET_DEV_PARAM(sdmmc, max_power_class_supported);
+	CASE_SET_DEV_PARAM(sdmmc, sd_controller);
+
+	CASE_SET_DEV_PARAM(spiflash, clock_source);
+	CASE_SET_DEV_PARAM(spiflash, clock_divider);
+	CASE_SET_DEV_PARAM(spiflash, read_command_type_fast);
+
+	case token_dev_type:
+		bct->dev_type[index] = value;
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t30_get_dev_param(build_image_context *context,
+	u_int32_t index,
+	parse_token token,
+	u_int32_t *value)
+{
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	switch (token) {
+	CASE_GET_DEV_PARAM(nand, clock_divider);
+	CASE_GET_DEV_PARAM(nand, block_size_log2);
+	CASE_GET_DEV_PARAM(nand, page_size_log2);
+	CASE_GET_DEV_PARAM(nand, async_timing0);
+	CASE_GET_DEV_PARAM(nand, async_timing1);
+	CASE_GET_DEV_PARAM(nand, async_timing2);
+	CASE_GET_DEV_PARAM(nand, async_timing3);
+	CASE_GET_DEV_PARAM(nand, sddr_timing0);
+	CASE_GET_DEV_PARAM(nand, sddr_timing1);
+	CASE_GET_DEV_PARAM(nand, tddr_timing0);
+	CASE_GET_DEV_PARAM(nand, tddr_timing1);
+	CASE_GET_DEV_PARAM(nand, fbio_dqsib_dly_byte);
+	CASE_GET_DEV_PARAM(nand, fbio_quse_dly_byte);
+	CASE_GET_DEV_PARAM(nand, fbio_cfg_quse_late);
+	CASE_GET_DEV_PARAM(nand, disable_sync_ddr);
+
+	CASE_GET_DEV_PARAM(sdmmc, clock_divider);
+	CASE_GET_DEV_PARAM(sdmmc, data_width);
+	CASE_GET_DEV_PARAM(sdmmc, max_power_class_supported);
+	CASE_GET_DEV_PARAM(sdmmc, sd_controller);
+
+	CASE_GET_DEV_PARAM(spiflash, clock_source);
+	CASE_GET_DEV_PARAM(spiflash, clock_divider);
+	CASE_GET_DEV_PARAM(spiflash, read_command_type_fast);
+
+	case token_dev_type:
+		*value = bct->dev_type[index];
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t30_get_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t *value)
+{
+	nvboot_sdram_params *params;
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+	params = &(bct->sdram_params[index]);
+
+	switch (token) {
+	CASE_GET_SDRAM_PARAM(memory_type);
+	CASE_GET_SDRAM_PARAM(pllm_charge_pump_setup_ctrl);
+	CASE_GET_SDRAM_PARAM(pllm_loop_filter_setup_ctrl);
+	CASE_GET_SDRAM_PARAM(pllm_input_divider);
+	CASE_GET_SDRAM_PARAM(pllm_feedback_divider);
+	CASE_GET_SDRAM_PARAM(pllm_post_divider);
+	CASE_GET_SDRAM_PARAM(pllm_stable_time);
+	CASE_GET_SDRAM_PARAM(emc_clock_divider);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_interval);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_config);
+	CASE_GET_SDRAM_PARAM(emc_auto_cal_wait);
+	CASE_GET_SDRAM_PARAM(emc_pin_program_wait);
+	CASE_GET_SDRAM_PARAM(emc_rc);
+	CASE_GET_SDRAM_PARAM(emc_rfc);
+	CASE_GET_SDRAM_PARAM(emc_ras);
+	CASE_GET_SDRAM_PARAM(emc_rp);
+	CASE_GET_SDRAM_PARAM(emc_r2w);
+	CASE_GET_SDRAM_PARAM(emc_w2r);
+	CASE_GET_SDRAM_PARAM(emc_r2p);
+	CASE_GET_SDRAM_PARAM(emc_w2p);
+	CASE_GET_SDRAM_PARAM(emc_rd_rcd);
+	CASE_GET_SDRAM_PARAM(emc_wr_rcd);
+	CASE_GET_SDRAM_PARAM(emc_rrd);
+	CASE_GET_SDRAM_PARAM(emc_rext);
+	CASE_GET_SDRAM_PARAM(emc_wdv);
+	CASE_GET_SDRAM_PARAM(emc_quse);
+	CASE_GET_SDRAM_PARAM(emc_qrst);
+	CASE_GET_SDRAM_PARAM(emc_qsafe);
+	CASE_GET_SDRAM_PARAM(emc_rdv);
+	CASE_GET_SDRAM_PARAM(emc_refresh);
+	CASE_GET_SDRAM_PARAM(emc_burst_refresh_num);
+	CASE_GET_SDRAM_PARAM(emc_pdex2wr);
+	CASE_GET_SDRAM_PARAM(emc_pdex2rd);
+	CASE_GET_SDRAM_PARAM(emc_pchg2pden);
+	CASE_GET_SDRAM_PARAM(emc_act2pden);
+	CASE_GET_SDRAM_PARAM(emc_ar2pden);
+	CASE_GET_SDRAM_PARAM(emc_rw2pden);
+	CASE_GET_SDRAM_PARAM(emc_txsr);
+	CASE_GET_SDRAM_PARAM(emc_tcke);
+	CASE_GET_SDRAM_PARAM(emc_tfaw);
+	CASE_GET_SDRAM_PARAM(emc_trpab);
+	CASE_GET_SDRAM_PARAM(emc_tclkstable);
+	CASE_GET_SDRAM_PARAM(emc_tclkstop);
+	CASE_GET_SDRAM_PARAM(emc_trefbw);
+	CASE_GET_SDRAM_PARAM(emc_quse_extra);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg5);
+	CASE_GET_SDRAM_PARAM(emc_fbio_cfg6);
+	CASE_GET_SDRAM_PARAM(emc_fbio_spare);
+	CASE_GET_SDRAM_PARAM(emc_mrs);
+	CASE_GET_SDRAM_PARAM(emc_emrs);
+	CASE_GET_SDRAM_PARAM(emc_mrw1);
+	CASE_GET_SDRAM_PARAM(emc_mrw2);
+	CASE_GET_SDRAM_PARAM(emc_mrw3);
+	CASE_GET_SDRAM_PARAM(emc_mrw_reset_command);
+	CASE_GET_SDRAM_PARAM(emc_mrw_reset_ninit_wait);
+	CASE_GET_SDRAM_PARAM(emc_adr_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_cfg);
+	CASE_GET_SDRAM_PARAM(emc_cfg);
+	CASE_GET_SDRAM_PARAM(emc_cfg2);
+	CASE_GET_SDRAM_PARAM(emc_dbg);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll_period);
+	CASE_GET_SDRAM_PARAM(warm_boot_wait);
+	CASE_GET_SDRAM_PARAM(emc_ctt_term_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_odt_write);
+	CASE_GET_SDRAM_PARAM(emc_odt_read);
+	CASE_GET_SDRAM_PARAM(emc_zcal_wait_cnt);
+	CASE_GET_SDRAM_PARAM(emc_zcal_mrw_cmd);
+	CASE_GET_SDRAM_PARAM(emc_mrs_reset_dll);
+	CASE_GET_SDRAM_PARAM(emc_mrs_reset_dll_wait);
+	CASE_GET_SDRAM_PARAM(emc_emrs_emr2);
+	CASE_GET_SDRAM_PARAM(emc_emrs_emr3);
+	CASE_GET_SDRAM_PARAM(emc_emrs_ddr2_dll_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_ddr2_dll_reset);
+	CASE_GET_SDRAM_PARAM(emc_emrs_ddr2_ocd_calib);
+	CASE_GET_SDRAM_PARAM(emc_ddr2_wait);
+	CASE_GET_SDRAM_PARAM(pmc_ddr_pwr);
+
+	CASE_GET_SDRAM_PARAM(emc_clock_source);
+	CASE_GET_SDRAM_PARAM(emc_clock_use_pll_mud);
+	CASE_GET_SDRAM_PARAM(emc_pin_extra_wait);
+	CASE_GET_SDRAM_PARAM(emc_timing_control_wait);
+	CASE_GET_SDRAM_PARAM(emc_wext);
+	CASE_GET_SDRAM_PARAM(emc_ctt);
+	CASE_GET_SDRAM_PARAM(emc_ctt_duration);
+	CASE_GET_SDRAM_PARAM(emc_prerefresh_req_cnt);
+	CASE_GET_SDRAM_PARAM(emc_txsr_dll);
+	CASE_GET_SDRAM_PARAM(emc_cfg_rsv);
+	CASE_GET_SDRAM_PARAM(emc_mrw_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrw1);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrw2);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrw3);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrw_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_extramode_reg_write_enable);
+	CASE_GET_SDRAM_PARAM(emc_extramode_reg_write_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_wait_cnt);
+	CASE_GET_SDRAM_PARAM(emc_cmd_q);
+	CASE_GET_SDRAM_PARAM(emc_mc2emc_q);
+	CASE_GET_SDRAM_PARAM(emc_dyn_self_ref_control);
+	CASE_GET_SDRAM_PARAM(ahb_arbitration_xbar_ctrl_meminit_done);
+	CASE_GET_SDRAM_PARAM(emc_dev_select);
+	CASE_GET_SDRAM_PARAM(emc_sel_dpd_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs3);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs4);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs5);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs6);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dqs7);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse3);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse4);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse5);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse6);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_quse7);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs0);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs1);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs2);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs3);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs4);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs5);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs6);
+	CASE_GET_SDRAM_PARAM(emc_dli_trim_tx_dqs7);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq0);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq1);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq2);
+	CASE_GET_SDRAM_PARAM(emc_dll_xform_dq3);
+	CASE_GET_SDRAM_PARAM(emc_zcal_interval);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_dev0);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_dev1);
+	CASE_GET_SDRAM_PARAM(emc_zcal_init_wait);
+	CASE_GET_SDRAM_PARAM(emc_zcal_cold_boot_enable);
+	CASE_GET_SDRAM_PARAM(emc_zcal_warm_boot_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrw_lpddr2zcal_warm_boot);
+	CASE_GET_SDRAM_PARAM(emc_zqcal_ddr3_warm_boot);
+	CASE_GET_SDRAM_PARAM(emc_zcal_warm_boot_wait);
+	CASE_GET_SDRAM_PARAM(emc_mrs_warm_boot_enable);
+	CASE_GET_SDRAM_PARAM(emc_mrs_extra);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrs);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_emrs);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_emr2);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_emr3);
+	CASE_GET_SDRAM_PARAM(emc_warm_boot_mrs_extra);
+	CASE_GET_SDRAM_PARAM(emc_clken_override);
+	CASE_GET_SDRAM_PARAM(emc_extra_refresh_num);
+	CASE_GET_SDRAM_PARAM(emc_clken_override_allwarm_boot);
+	CASE_GET_SDRAM_PARAM(mc_clken_override_allwarm_boot);
+	CASE_GET_SDRAM_PARAM(emc_cfg_dig_dll_period_warm_boot);
+	CASE_GET_SDRAM_PARAM(pmc_vddp_sel);
+	CASE_GET_SDRAM_PARAM(pmc_ddr_cfg);
+	CASE_GET_SDRAM_PARAM(pmc_io_dpd_req);
+	CASE_GET_SDRAM_PARAM(pmc_eno_vtt_gen);
+	CASE_GET_SDRAM_PARAM(pmc_no_io_power);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl3);
+	CASE_GET_SDRAM_PARAM(emc_xm2dq_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2dq_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2clk_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2comp_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl2);
+	CASE_GET_SDRAM_PARAM(emc_xm2quse_pad_ctrl);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_dev0);
+	CASE_GET_SDRAM_PARAM(mc_emem_adr_cfg_dev1);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_cfg);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_outstanding_req);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rcd);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rp);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rc);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_ras);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_faw);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rrd);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_rap2pre);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_wap2pre);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_r2r);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_w2w);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_r2w);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_timing_w2r);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_da_turns);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_da_covers);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_misc0);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_misc1);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_ring1_throttle);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_override);
+	CASE_GET_SDRAM_PARAM(mc_emem_arb_rsv);
+	CASE_GET_SDRAM_PARAM(mc_clken_override);
+
+	DEFAULT();
+	}
+	return 0;
+}
+
+int
+t30_set_sdram_param(build_image_context *context,
+		u_int32_t index,
+		parse_token token,
+		u_int32_t value)
+{
+	nvboot_sdram_params *params;
+	nvboot_config_table *bct = NULL;
+
+	bct = (nvboot_config_table *)(context->bct);
+	assert(context != NULL);
+	assert(bct != NULL);
+	params = &(bct->sdram_params[index]);
+	/* Update the number of SDRAM parameter sets. */
+	bct->num_sdram_sets = NV_MAX(bct->num_sdram_sets, index + 1);
+
+	switch (token) {
+	CASE_SET_SDRAM_PARAM(memory_type);
+	CASE_SET_SDRAM_PARAM(pllm_charge_pump_setup_ctrl);
+	CASE_SET_SDRAM_PARAM(pllm_loop_filter_setup_ctrl);
+	CASE_SET_SDRAM_PARAM(pllm_input_divider);
+	CASE_SET_SDRAM_PARAM(pllm_feedback_divider);
+	CASE_SET_SDRAM_PARAM(pllm_post_divider);
+	CASE_SET_SDRAM_PARAM(pllm_stable_time);
+	CASE_SET_SDRAM_PARAM(emc_clock_divider);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_interval);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_config);
+	CASE_SET_SDRAM_PARAM(emc_auto_cal_wait);
+	CASE_SET_SDRAM_PARAM(emc_pin_program_wait);
+	CASE_SET_SDRAM_PARAM(emc_rc);
+	CASE_SET_SDRAM_PARAM(emc_rfc);
+	CASE_SET_SDRAM_PARAM(emc_ras);
+	CASE_SET_SDRAM_PARAM(emc_rp);
+	CASE_SET_SDRAM_PARAM(emc_r2w);
+	CASE_SET_SDRAM_PARAM(emc_w2r);
+	CASE_SET_SDRAM_PARAM(emc_r2p);
+	CASE_SET_SDRAM_PARAM(emc_w2p);
+	CASE_SET_SDRAM_PARAM(emc_rd_rcd);
+	CASE_SET_SDRAM_PARAM(emc_wr_rcd);
+	CASE_SET_SDRAM_PARAM(emc_rrd);
+	CASE_SET_SDRAM_PARAM(emc_rext);
+	CASE_SET_SDRAM_PARAM(emc_wdv);
+	CASE_SET_SDRAM_PARAM(emc_quse);
+	CASE_SET_SDRAM_PARAM(emc_qrst);
+	CASE_SET_SDRAM_PARAM(emc_qsafe);
+	CASE_SET_SDRAM_PARAM(emc_rdv);
+	CASE_SET_SDRAM_PARAM(emc_refresh);
+	CASE_SET_SDRAM_PARAM(emc_burst_refresh_num);
+	CASE_SET_SDRAM_PARAM(emc_pdex2wr);
+	CASE_SET_SDRAM_PARAM(emc_pdex2rd);
+	CASE_SET_SDRAM_PARAM(emc_pchg2pden);
+	CASE_SET_SDRAM_PARAM(emc_act2pden);
+	CASE_SET_SDRAM_PARAM(emc_ar2pden);
+	CASE_SET_SDRAM_PARAM(emc_rw2pden);
+	CASE_SET_SDRAM_PARAM(emc_txsr);
+	CASE_SET_SDRAM_PARAM(emc_tcke);
+	CASE_SET_SDRAM_PARAM(emc_tfaw);
+	CASE_SET_SDRAM_PARAM(emc_trpab);
+	CASE_SET_SDRAM_PARAM(emc_tclkstable);
+	CASE_SET_SDRAM_PARAM(emc_tclkstop);
+	CASE_SET_SDRAM_PARAM(emc_trefbw);
+	CASE_SET_SDRAM_PARAM(emc_quse_extra);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg5);
+	CASE_SET_SDRAM_PARAM(emc_fbio_cfg6);
+	CASE_SET_SDRAM_PARAM(emc_fbio_spare);
+	CASE_SET_SDRAM_PARAM(emc_mrs);
+	CASE_SET_SDRAM_PARAM(emc_emrs);
+	CASE_SET_SDRAM_PARAM(emc_mrw1);
+	CASE_SET_SDRAM_PARAM(emc_mrw2);
+	CASE_SET_SDRAM_PARAM(emc_mrw3);
+	CASE_SET_SDRAM_PARAM(emc_mrw_reset_command);
+	CASE_SET_SDRAM_PARAM(emc_mrw_reset_ninit_wait);
+	CASE_SET_SDRAM_PARAM(emc_adr_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_cfg);
+	CASE_SET_SDRAM_PARAM(emc_cfg);
+	CASE_SET_SDRAM_PARAM(emc_cfg2);
+	CASE_SET_SDRAM_PARAM(emc_dbg);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll_period);
+	CASE_SET_SDRAM_PARAM(warm_boot_wait);
+	CASE_SET_SDRAM_PARAM(emc_ctt_term_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_odt_write);
+	CASE_SET_SDRAM_PARAM(emc_odt_read);
+	CASE_SET_SDRAM_PARAM(emc_zcal_wait_cnt);
+	CASE_SET_SDRAM_PARAM(emc_zcal_mrw_cmd);
+	CASE_SET_SDRAM_PARAM(emc_mrs_reset_dll);
+	CASE_SET_SDRAM_PARAM(emc_mrs_reset_dll_wait);
+	CASE_SET_SDRAM_PARAM(emc_emrs_emr2);
+	CASE_SET_SDRAM_PARAM(emc_emrs_emr3);
+	CASE_SET_SDRAM_PARAM(emc_emrs_ddr2_dll_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_ddr2_dll_reset);
+	CASE_SET_SDRAM_PARAM(emc_emrs_ddr2_ocd_calib);
+	CASE_SET_SDRAM_PARAM(emc_ddr2_wait);
+	CASE_SET_SDRAM_PARAM(pmc_ddr_pwr);
+
+	CASE_SET_SDRAM_PARAM(emc_clock_source);
+	CASE_SET_SDRAM_PARAM(emc_clock_use_pll_mud);
+	CASE_SET_SDRAM_PARAM(emc_pin_extra_wait);
+	CASE_SET_SDRAM_PARAM(emc_timing_control_wait);
+	CASE_SET_SDRAM_PARAM(emc_wext);
+	CASE_SET_SDRAM_PARAM(emc_ctt);
+	CASE_SET_SDRAM_PARAM(emc_ctt_duration);
+	CASE_SET_SDRAM_PARAM(emc_prerefresh_req_cnt);
+	CASE_SET_SDRAM_PARAM(emc_txsr_dll);
+	CASE_SET_SDRAM_PARAM(emc_cfg_rsv);
+	CASE_SET_SDRAM_PARAM(emc_mrw_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrw1);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrw2);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrw3);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrw_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_extramode_reg_write_enable);
+	CASE_SET_SDRAM_PARAM(emc_extramode_reg_write_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_wait_cnt);
+	CASE_SET_SDRAM_PARAM(emc_cmd_q);
+	CASE_SET_SDRAM_PARAM(emc_mc2emc_q);
+	CASE_SET_SDRAM_PARAM(emc_dyn_self_ref_control);
+	CASE_SET_SDRAM_PARAM(ahb_arbitration_xbar_ctrl_meminit_done);
+	CASE_SET_SDRAM_PARAM(emc_dev_select);
+	CASE_SET_SDRAM_PARAM(emc_sel_dpd_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs3);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs4);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs5);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs6);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dqs7);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse3);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse4);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse5);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse6);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_quse7);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs0);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs1);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs2);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs3);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs4);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs5);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs6);
+	CASE_SET_SDRAM_PARAM(emc_dli_trim_tx_dqs7);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq0);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq1);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq2);
+	CASE_SET_SDRAM_PARAM(emc_dll_xform_dq3);
+	CASE_SET_SDRAM_PARAM(emc_zcal_interval);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_dev0);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_dev1);
+	CASE_SET_SDRAM_PARAM(emc_zcal_init_wait);
+	CASE_SET_SDRAM_PARAM(emc_zcal_cold_boot_enable);
+	CASE_SET_SDRAM_PARAM(emc_zcal_warm_boot_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrw_lpddr2zcal_warm_boot);
+	CASE_SET_SDRAM_PARAM(emc_zqcal_ddr3_warm_boot);
+	CASE_SET_SDRAM_PARAM(emc_zcal_warm_boot_wait);
+	CASE_SET_SDRAM_PARAM(emc_mrs_warm_boot_enable);
+	CASE_SET_SDRAM_PARAM(emc_mrs_extra);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrs);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_emrs);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_emr2);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_emr3);
+	CASE_SET_SDRAM_PARAM(emc_warm_boot_mrs_extra);
+	CASE_SET_SDRAM_PARAM(emc_clken_override);
+	CASE_SET_SDRAM_PARAM(emc_extra_refresh_num);
+	CASE_SET_SDRAM_PARAM(emc_clken_override_allwarm_boot);
+	CASE_SET_SDRAM_PARAM(mc_clken_override_allwarm_boot);
+	CASE_SET_SDRAM_PARAM(emc_cfg_dig_dll_period_warm_boot);
+	CASE_SET_SDRAM_PARAM(pmc_vddp_sel);
+	CASE_SET_SDRAM_PARAM(pmc_ddr_cfg);
+	CASE_SET_SDRAM_PARAM(pmc_io_dpd_req);
+	CASE_SET_SDRAM_PARAM(pmc_eno_vtt_gen);
+	CASE_SET_SDRAM_PARAM(pmc_no_io_power);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2cmd_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2dqs_pad_ctrl3);
+	CASE_SET_SDRAM_PARAM(emc_xm2dq_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2dq_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2clk_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2comp_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(emc_xm2vttgen_pad_ctrl2);
+	CASE_SET_SDRAM_PARAM(emc_xm2quse_pad_ctrl);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_dev0);
+	CASE_SET_SDRAM_PARAM(mc_emem_adr_cfg_dev1);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_cfg);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_outstanding_req);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rcd);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rp);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rc);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_ras);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_faw);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rrd);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_rap2pre);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_wap2pre);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_r2r);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_w2w);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_r2w);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_timing_w2r);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_da_turns);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_da_covers);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_misc0);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_misc1);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_ring1_throttle);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_override);
+	CASE_SET_SDRAM_PARAM(mc_emem_arb_rsv);
+	CASE_SET_SDRAM_PARAM(mc_clken_override);
+
+	DEFAULT();
+	}
+	return 0;
+}
+
+int
+t30_getbl_param(u_int32_t set,
+		parse_token id,
+		u_int32_t *data,
+		u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (set >= NVBOOT_MAX_BOOTLOADERS)
+		return -ENODATA;
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	CASE_GET_BL_PARAM(version);
+	CASE_GET_BL_PARAM(start_blk);
+	CASE_GET_BL_PARAM(start_page);
+	CASE_GET_BL_PARAM(length);
+	CASE_GET_BL_PARAM(load_addr);
+	CASE_GET_BL_PARAM(entry_point);
+	CASE_GET_BL_PARAM(attribute);
+
+	case token_bl_crypto_hash:
+		memcpy(data,
+		&(bct_ptr->bootloader[set].crypto_hash),
+		sizeof(nvboot_hash));
+	break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t30_setbl_param(u_int32_t set,
+		parse_token id,
+		u_int32_t *data,
+		u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (set >= NVBOOT_MAX_BOOTLOADERS)
+		return -ENODATA;
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	CASE_SET_BL_PARAM(version);
+	CASE_SET_BL_PARAM(start_blk);
+	CASE_SET_BL_PARAM(start_page);
+	CASE_SET_BL_PARAM(length);
+	CASE_SET_BL_PARAM(load_addr);
+	CASE_SET_BL_PARAM(entry_point);
+	CASE_SET_BL_PARAM(attribute);
+
+	case token_bl_crypto_hash:
+		memcpy(&(bct_ptr->bootloader[set].crypto_hash),
+		data,
+		sizeof(nvboot_hash));
+		break;
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t30_bct_get_value(parse_token id, u_int32_t *data, u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+	nvboot_config_table  samplebct; /* Used for computing offsets. */
+
+	/*
+	 * Note: Not all queries require use of the BCT, so testing for a
+	 *       valid BCT is distributed within the code.
+	 */
+	if (data == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	/*
+	 * Simple BCT fields
+	 */
+	CASE_GET_NVU32(boot_data_version);
+	CASE_GET_NVU32(block_size_log2);
+	CASE_GET_NVU32(page_size_log2);
+	CASE_GET_NVU32(partition_size);
+	CASE_GET_NVU32(num_param_sets);
+	CASE_GET_NVU32(num_sdram_sets);
+	CASE_GET_NVU32(bootloader_used);
+	CASE_GET_NVU32(odm_data);
+
+	/*
+	 * Constants.
+	 */
+
+	CASE_GET_CONST(bootloaders_max,   NVBOOT_MAX_BOOTLOADERS);
+	CASE_GET_CONST(reserved_size,     NVBOOT_BCT_RESERVED_SIZE);
+
+	case token_reserved_offset:
+		*data = (u_int8_t *)&(samplebct.reserved)
+				- (u_int8_t *)&samplebct;
+		break;
+
+	case token_bct_size:
+		*data = sizeof(nvboot_config_table);
+		break;
+
+	CASE_GET_CONST(hash_size, sizeof(nvboot_hash));
+
+	case token_crypto_offset:
+		/* Offset to region in BCT to encrypt & sign */
+		*data = (u_int8_t *)&(samplebct.random_aes_blk)
+				- (u_int8_t *)&samplebct;
+		break;
+
+	case token_crypto_length:
+		/* size   of region in BCT to encrypt & sign */
+		*data = sizeof(nvboot_config_table) - sizeof(nvboot_hash);
+	break;
+
+	CASE_GET_CONST(max_bct_search_blks, NVBOOT_MAX_BCT_SEARCH_BLOCKS);
+
+	CASE_GET_CONST_PREFIX(dev_type_nand, nvboot);
+	CASE_GET_CONST_PREFIX(dev_type_sdmmc, nvboot);
+	CASE_GET_CONST_PREFIX(dev_type_spi, nvboot);
+	CASE_GET_CONST_PREFIX(sdmmc_data_width_4bit, nvboot);
+	CASE_GET_CONST_PREFIX(sdmmc_data_width_8bit, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_pllp_out0, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_pllc_out0, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_pllm_out0, nvboot);
+	CASE_GET_CONST_PREFIX(spi_clock_source_clockm, nvboot);
+
+	CASE_GET_CONST_PREFIX(memory_type_none, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_lpddr, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_ddr2, nvboot);
+	CASE_GET_CONST_PREFIX(memory_type_lpddr2, nvboot);
+
+	default:
+		return -ENODATA;
+	}
+	return 0;
+}
+
+int
+t30_bct_set_value(parse_token id, u_int32_t  data, u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+	/*
+	 * Simple BCT fields
+	 */
+	CASE_SET_NVU32(boot_data_version);
+	CASE_SET_NVU32(block_size_log2);
+	CASE_SET_NVU32(page_size_log2);
+	CASE_SET_NVU32(partition_size);
+	CASE_SET_NVU32(num_param_sets);
+	CASE_SET_NVU32(num_sdram_sets);
+	CASE_SET_NVU32(bootloader_used);
+	CASE_SET_NVU32(odm_data);
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+int
+t30_bct_set_data(parse_token id,
+	u_int8_t *data,
+	u_int32_t  length,
+	u_int8_t *bct)
+{
+	nvboot_config_table *bct_ptr = (nvboot_config_table *)bct;
+
+	if (data == NULL || bct == NULL)
+		return -ENODATA;
+
+	switch (id) {
+
+	CASE_SET_DATA(crypto_hash, sizeof(nvboot_hash));
+
+	default:
+		return -ENODATA;
+	}
+
+	return 0;
+}
+
+void t30_init_bad_block_table(build_image_context *context)
+{
+	u_int32_t bytes_per_entry;
+	nvboot_badblock_table *table;
+	nvboot_config_table *bct;
+
+	bct = (nvboot_config_table *)(context->bct);
+
+	assert(context != NULL);
+	assert(bct != NULL);
+
+	table = &bct->badblock_table;
+
+	bytes_per_entry = ICEIL(context->partition_size,
+				NVBOOT_BAD_BLOCK_TABLE_SIZE);
+	table->block_size_log2 = context->block_size_log2;
+	table->virtual_blk_size_log2 = NV_MAX(ceil_log2(bytes_per_entry),
+					table->block_size_log2);
+	table->entries_used = iceil_log2(context->partition_size,
+					table->virtual_blk_size_log2);
+}
+
+cbootimage_soc_config tegra30_config = {
+	.init_bad_block_table		= t30_init_bad_block_table,
+	.set_dev_param				= t30_set_dev_param,
+	.get_dev_param				= t30_get_dev_param,
+	.set_sdram_param			= t30_set_sdram_param,
+	.get_sdram_param			= t30_get_sdram_param,
+	.setbl_param				= t30_setbl_param,
+	.getbl_param				= t30_getbl_param,
+	.set_value					= t30_bct_set_value,
+	.get_value					= t30_bct_get_value,
+	.set_data					= t30_bct_set_data,
+
+	.devtype_table				= s_devtype_table_t30,
+	.sdmmc_data_width_table		= s_sdmmc_data_width_table_t30,
+	.spi_clock_source_table		= s_spi_clock_source_table_t30,
+	.nvboot_memory_type_table	= s_nvboot_memory_type_table_t30,
+	.sdram_field_table			= s_sdram_field_table_t30,
+	.nand_table					= s_nand_table_t30,
+	.sdmmc_table				= s_sdmmc_table_t30,
+	.spiflash_table				= s_spiflash_table_t30,
+	.device_type_table			= s_device_type_table_t30,
+};
+
+void t30_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config)
+{
+	context->boot_data_version = BOOTDATA_VERSION_T30;
+	*soc_config = &tegra30_config;
+}
+
+int if_bct_is_t30_get_soc_config(build_image_context *context,
+	cbootimage_soc_config **soc_config)
+{
+	nvboot_config_table * bct = (nvboot_config_table *) context->bct;
+
+	if (bct->boot_data_version == BOOTDATA_VERSION_T30)
+	{
+		t30_get_soc_config(context, soc_config);
+		return 1;
+	}
+	return 0;
+}
diff --git a/scripts/tegra/t30/nvboot_bct_t30.h b/scripts/tegra/t30/nvboot_bct_t30.h
new file mode 100644
index 000000000000..39c998e20206
--- /dev/null
+++ b/scripts/tegra/t30/nvboot_bct_t30.h
@@ -0,0 +1,379 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+#ifndef INCLUDED_NVBOOT_BCT_T30_H
+#define INCLUDED_NVBOOT_BCT_T30_H
+
+#include <sys/types.h>
+#include "nvboot_sdram_param_t30.h"
+
+/**
+ * Defines the number of 32-bit words in the customer_data area of the BCT.
+ */
+#define NVBOOT_BCT_CUSTOMER_DATA_WORDS 504
+
+/**
+ * Defines the number of bytes in the customer_data area of the BCT.
+ */
+#define NVBOOT_BCT_CUSTOMER_DATA_SIZE \
+		(NVBOOT_BCT_CUSTOMER_DATA_WORDS * 4)
+
+/**
+ * Defines the number of bytes in the reserved area of the BCT.
+ */
+#define NVBOOT_BCT_RESERVED_SIZE       3
+
+/**
+ * Defines the maximum number of bootloader descriptions in the BCT.
+ */
+#define NVBOOT_MAX_BOOTLOADERS         4
+
+/**
+ * Defines the maximum number of device parameter sets in the BCT.
+ * The value must be equal to (1 << # of device straps)
+ */
+#define NVBOOT_BCT_MAX_PARAM_SETS      4
+
+/**
+ * Defines the maximum number of SDRAM parameter sets in the BCT.
+ * The value must be equal to (1 << # of SDRAM straps)
+ */
+#define NVBOOT_BCT_MAX_SDRAM_SETS      4
+
+/**
+ * Defines the number of entries (bits) in the bad block table.
+ * The consequences of changing its value are as follows.  Using P as the
+ * # of physical blocks in the boot loader and B as the value of this
+ * constant:
+ *    B > P: There will be unused storage in the bad block table.
+ *    B < P: The virtual block size will be greater than the physical block
+ *           size, so the granularity of the bad block table will be less than
+ *           one bit per physical block.
+ *
+ * 4096 bits is enough to represent an 8MiB partition of 2KiB blocks with one
+ * bit per block (1 virtual block = 1 physical block).  This occupies 512 bytes
+ * of storage.
+ */
+#define NVBOOT_BAD_BLOCK_TABLE_SIZE 4096
+
+/**
+ * Defines the maximum number of blocks to search for BCTs.
+ *
+ * This value covers the initial block and a set of journal blocks.
+ *
+ * Ideally, this number will span several erase units for reliable updates
+ * and tolerance for blocks to become bad with use.  Safe updates require
+ * a minimum of 2 erase units in which BCTs can appear.
+ *
+ * To ensure that the BCT search spans a sufficient range of configurations,
+ * the search block count has been set to 64. This allows for redundancy with
+ * a wide range of parts and provides room for greater problems in this
+ * region of the device.
+ */
+#define NVBOOT_MAX_BCT_SEARCH_BLOCKS   64
+
+/*
+ * Defines the CMAC-AES-128 hash length in 32 bit words. (128 bits = 4 words)
+ */
+enum {NVBOOT_CMAC_AES_HASH_LENGTH = 4};
+
+/**
+ * Defines the storage for a hash value (128 bits).
+ */
+typedef struct nvboot_hash_rec {
+	u_int32_t hash[NVBOOT_CMAC_AES_HASH_LENGTH];
+} nvboot_hash;
+
+/**
+ * Defines the params that can be configured for NAND devices.
+ */
+typedef struct nvboot_nand_params_rec {
+	/**
+	 * Specifies the clock divider for the PLL_P 432MHz source.
+	 * If it is set to 18, then clock source to Nand controller is
+	 * 432 / 18 = 24MHz.
+	 */
+	u_int8_t clock_divider;
+
+	/**
+	 * Specifies the value to be programmed to Nand Async Timing
+	 * Register 0
+	 */
+	u_int32_t async_timing0;
+	/**
+	 * Specifies the value to be programmed to Nand Async Timing
+	 * Register 1
+	 */
+	u_int32_t async_timing1;
+	/**
+	 * Specifies the value to be programmed to Nand Async Timing
+	 * Register 2
+	 */
+	u_int32_t async_timing2;
+	/**
+	 * Specifies the value to be programmed to Nand Async Timing
+	 * Register 3
+	 */
+	u_int32_t async_timing3;
+	/**
+	 * Specifies the value to be programmed to Nand Sync DDR Timing
+	 * Register 0
+	 */
+	u_int32_t sddr_timing0;
+	/**
+	 * Specifies the value to be programmed to Nand Sync DDR Timing
+	 * Register 1
+	 */
+	u_int32_t sddr_timing1;
+	/**
+	 * Specifies the value to be programmed to Nand Toggle DDR Timing
+	 * Register 0
+	 */
+	u_int32_t tddr_timing0;
+	/**
+	 * Specifies the value to be programmed to Nand Toggle DDR Timing
+	 * Register 1
+	 */
+	u_int32_t tddr_timing1;
+	/* Specifies the value to be programmed to FBIO_DQSIB_DELAY register */
+	u_int8_t fbio_dqsib_dly_byte;
+	/* Specifies the value to be programmed to FBIO_DQUSE_DELAY register */
+	u_int8_t fbio_quse_dly_byte;
+	/* Specifies the CFG_QUSE_LATE value to be programmed to FBIO
+	 * configuration register */
+	u_int8_t fbio_cfg_quse_late;
+	/* Specifies whether to enable sync DDR more or not */
+	u_int8_t disable_sync_ddr;
+
+	/* Specifies the block size in log2 bytes */
+	u_int8_t block_size_log2;
+
+	/* Specifies the page size in log2 bytes */
+	u_int8_t page_size_log2;
+} nvboot_nand_params;
+
+/* Defines various data widths supported. */
+typedef enum {
+	/**
+	 * Specifies a 1 bit interface to eMMC.
+	 * Note that 1-bit data width is only for the driver's internal use.
+	 * Fuses doesn't provide option to select 1-bit data width.
+	 * The driver selects 1-bit internally based on need.
+	 * It is used for reading Extended CSD and when the power class
+	 * requirements of a card for 4-bit or 8-bit transfers are not
+	 * supported by the target board.
+	 */
+	nvboot_sdmmc_data_width_1bit = 0,
+
+	/* Specifies a 4 bit interface to eMMC. */
+	nvboot_sdmmc_data_width_4bit = 1,
+
+	/* Specifies a 8 bit interface to eMMC. */
+	nvboot_sdmmc_data_width_8bit = 2,
+	/* Specifies a 4 bit Ddr interface to eMMC. */
+	nvboot_sdmmc_data_width_ddr_4bit = 5,
+	/* Specifies a 8 bit Ddr interface to eMMC. */
+	nvboot_sdmmc_data_width_ddr_8bit = 6,
+
+	nvboot_sdmmc_data_width_num,
+	nvboot_sdmmc_data_width_force32 = 0x7FFFFFFF
+} nvboot_sdmmc_data_width;
+
+/* Defines various sd controllers supported. */
+typedef enum {
+	/* Specifies Sdmmc 4 controller interface */
+	nvboot_sdmmc_cntrl_4 = 0,
+	/* Specifies Sdmmc 3 controller interface */
+	nvboot_sdmmc_cntrl_3 = 1,
+	nvboot_sdmmc_cntrl_num,
+	nvboot_sdmmc_cntrl_force32 = 0x7FFFFFFF
+} nvboot_sdmmc_cntrl;
+
+/* Defines the parameters that can be changed after BCT is read. */
+typedef struct nvboot_sdmmc_params_rec {
+	/**
+	 * Specifies the clock divider for the SDMMC controller's clock source,
+	 * which is PLLP running at 432MHz.  If it is set to 18, then the SDMMC
+	 * controller runs at 432/18 = 24MHz.
+	 */
+	u_int8_t clock_divider;
+
+	/* Specifies the data bus width. Supported data widths are 4/8 bits. */
+	nvboot_sdmmc_data_width data_width;
+
+	/**
+	 * Max Power class supported by the target board.
+	 * The driver determines the best data width and clock frequency
+	 * supported within the power class range (0 to Max) if the selected
+	 * data width cannot be used at the chosen clock frequency.
+	 */
+	u_int8_t max_power_class_supported;
+
+	/* Specifies the SD controller to be selected */
+	nvboot_sdmmc_cntrl sd_controller;
+} nvboot_sdmmc_params;
+
+typedef enum {
+	/* Specifies SPI clock source to be PLLP. */
+	nvboot_spi_clock_source_pllp_out0 = 0,
+
+	/* Specifies SPI clock source to be PLLC. */
+	nvboot_spi_clock_source_pllc_out0,
+
+	/* Specifies SPI clock source to be PLLM. */
+	nvboot_spi_clock_source_pllm_out0,
+
+	/* Specifies SPI clock source to be ClockM. */
+	nvboot_spi_clock_source_clockm,
+
+	nvboot_spi_clock_source_num,
+	nvboot_spi_clock_source_force32 = 0x7FFFFFF
+} nvboot_spi_clock_source;
+
+
+/**
+ * Defines the parameters SPI FLASH devices.
+ */
+typedef struct nvboot_spiflash_params_rec {
+	/**
+	 * Specifies the clock source to use.
+	 */
+	nvboot_spi_clock_source clock_source;
+
+	/**
+	 * Specifes the clock divider to use.
+	 * The value is a 7-bit value based on an input clock of 432Mhz.
+	 * Divider = (432+ DesiredFrequency-1)/DesiredFrequency;
+	 * Typical values:
+	 *     NORMAL_READ at 20MHz: 22
+	 *     FAST_READ   at 33MHz: 14
+	 *     FAST_READ   at 40MHz: 11
+	 *     FAST_READ   at 50MHz:  9
+	 */
+	u_int8_t clock_divider;
+
+	/**
+	 * Specifies the type of command for read operations.
+	 * NV_FALSE specifies a NORMAL_READ Command
+	 * NV_TRUE  specifies a FAST_READ   Command
+	 */
+	u_int8_t read_command_type_fast;
+} nvboot_spiflash_params;
+
+/**
+* Defines the union of the parameters required by each device.
+*/
+typedef union {
+	u_int8_t size[64];
+	/* Specifies optimized parameters for NAND */
+	nvboot_nand_params nand_params;
+	/* Specifies optimized parameters for eMMC and eSD */
+	nvboot_sdmmc_params sdmmc_params;
+	/* Specifies optimized parameters for SPI NOR */
+	nvboot_spiflash_params spiflash_params;
+} nvboot_dev_params;
+
+/**
+ * Identifies the types of devices from which the system booted.
+ * Used to identify primary and secondary boot devices.
+ * @note These no longer match the fuse API device values (for
+ * backward compatibility with AP15).
+ */
+typedef enum {
+	/* Specifies a default (unset) value. */
+	nvboot_dev_type_none = 0,
+
+	/* Specifies NAND. */
+	nvboot_dev_type_nand,
+
+	/* Specifies SPI NOR. */
+	nvboot_dev_type_spi = 3,
+
+	/* Specifies SDMMC (either eMMC or eSD). */
+	nvboot_dev_type_sdmmc,
+
+	nvboot_dev_type_max,
+
+	/* Ignore -- Forces compilers to make 32-bit enums. */
+	nvboot_dev_type_force32 = 0x7FFFFFFF
+} nvboot_dev_type;
+
+/**
+ * Stores information needed to locate and verify a boot loader.
+ *
+ * There is one \c nv_bootloader_info structure for each copy of a BL stored on
+ * the device.
+ */
+typedef struct nv_bootloader_info_rec {
+	u_int32_t version;
+	u_int32_t start_blk;
+	u_int32_t start_page;
+	u_int32_t length;
+	u_int32_t load_addr;
+	u_int32_t entry_point;
+	u_int32_t attribute;
+	nvboot_hash crypto_hash;
+} nv_bootloader_info;
+
+/**
+ * Defines the bad block table structure stored in the BCT.
+ */
+typedef struct nvboot_badblock_table_rec {
+	u_int32_t entries_used;
+	u_int8_t virtual_blk_size_log2;
+	u_int8_t block_size_log2;
+	u_int8_t bad_blks[NVBOOT_BAD_BLOCK_TABLE_SIZE / 8];
+} nvboot_badblock_table;
+
+/**
+ * Contains the information needed to load BLs from the secondary boot device.
+ *
+ * - Supplying NumParamSets = 0 indicates not to load any of them.
+ * - Supplying NumDramSets  = 0 indicates not to load any of them.
+ * - The \c random_aes_blk member exists to increase the difficulty of
+ *   key attacks based on knowledge of this structure.
+ */
+typedef struct nvboot_config_table_rec {
+	nvboot_hash crypto_hash;
+	nvboot_hash random_aes_blk;
+	u_int32_t boot_data_version;
+	u_int32_t block_size_log2;
+	u_int32_t page_size_log2;
+	u_int32_t partition_size;
+	u_int32_t num_param_sets;
+	nvboot_dev_type dev_type[NVBOOT_BCT_MAX_PARAM_SETS];
+	nvboot_dev_params dev_params[NVBOOT_BCT_MAX_PARAM_SETS];
+	u_int32_t num_sdram_sets;
+	nvboot_sdram_params sdram_params[NVBOOT_BCT_MAX_SDRAM_SETS];
+	nvboot_badblock_table badblock_table;
+	u_int32_t bootloader_used;
+	nv_bootloader_info bootloader[NVBOOT_MAX_BOOTLOADERS];
+	u_int8_t customer_data[NVBOOT_BCT_CUSTOMER_DATA_SIZE];
+	/*
+	 * ODMDATA is stored in the BCT in IRAM by the BootROM.
+	 * Read the data @ bct_start + (bct_size - 12). This works
+	 * on T20 and T30 BCTs, which are locked down. If this changes
+	 * in new chips, we can revisit this algorithm.
+	 */
+	u_int32_t odm_data;
+	u_int32_t reserved1;
+	u_int8_t enable_fail_back;
+	u_int8_t reserved[NVBOOT_BCT_RESERVED_SIZE];
+} nvboot_config_table;
+#endif /* #ifndef INCLUDED_NVBOOT_BCT_T30_H */
diff --git a/scripts/tegra/t30/nvboot_sdram_param_t30.h b/scripts/tegra/t30/nvboot_sdram_param_t30.h
new file mode 100644
index 000000000000..18d77d713945
--- /dev/null
+++ b/scripts/tegra/t30/nvboot_sdram_param_t30.h
@@ -0,0 +1,568 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/**
+ * Defines the SDRAM parameter structure.
+ *
+ * Note that PLLM is used by EMC.
+ */
+
+#ifndef INCLUDED_NVBOOT_SDRAM_PARAM_T30_H
+#define INCLUDED_NVBOOT_SDRAM_PARAM_T30_H
+
+#define NVBOOT_BCT_SDRAM_ARB_CONFIG_WORDS 27
+
+typedef enum {
+	/* Specifies the memory type to be undefined */
+	nvboot_memory_type_none = 0,
+
+	/* Specifies the memory type to be DDR SDRAM */
+	nvboot_memory_type_ddr,
+
+	/* Specifies the memory type to be LPDDR SDRAM */
+	nvboot_memory_type_lpddr,
+
+	/* Specifies the memory type to be DDR2 SDRAM */
+	nvboot_memory_type_ddr2,
+
+	/* Specifies the memory type to be LPDDR2 SDRAM */
+	nvboot_memory_type_lpddr2,
+
+	/* Specifies the memory type to be DDR3 SDRAM */
+	nvboot_memory_type_ddr3,
+
+	nvboot_memory_type_num,
+	nvboot_memory_type_force32 = 0x7FFFFFF
+} nvboot_memory_type;
+
+/**
+ * Defines the SDRAM parameter structure
+ */
+typedef struct nvboot_sdram_params_rec {
+	/* sdram data structure generated by tool warmboot_code_gen */
+
+	/* Specifies the type of memory device */
+	nvboot_memory_type memory_type;
+
+	/* MC/EMC clock source configuration */
+
+	/* Specifies the CPCON value for PllM */
+	u_int32_t pllm_charge_pump_setup_ctrl;
+	/* Specifies the LPCON value for PllM */
+	u_int32_t pllm_loop_filter_setup_ctrl;
+	/* Specifies the M value for PllM */
+	u_int32_t pllm_input_divider;
+	/* Specifies the N value for PllM */
+	u_int32_t pllm_feedback_divider;
+	/* Specifies the P value for PllM */
+	u_int32_t pllm_post_divider;
+	/* Specifies the time to wait for PLLM to lock (in microseconds) */
+	u_int32_t pllm_stable_time;
+
+	/* Specifies the divider for the EMC Clock Source */
+	u_int32_t emc_clock_divider;
+	/* Specifies the PLL source for the EMC Clock Source */
+	u_int32_t emc_clock_source;
+	/*
+	 * Specifies the enable for using low jitter clock for
+	 * the EMC Clock Source
+	 */
+	u_int32_t emc_clock_use_pll_mud;
+
+	/* Auto-calibration of EMC pads */
+
+	/* Specifies the value for EMC_AUTO_CAL_INTERVAL */
+	u_int32_t emc_auto_cal_interval;
+	/*
+	 * Specifies the value for EMC_AUTO_CAL_CONFIG
+	 * Note: Trigger bits are set by the SDRAM code.
+	 */
+	u_int32_t emc_auto_cal_config;
+	/*
+	 * Specifies the time for the calibration
+	 * to stabilize (in microseconds)
+	 */
+	u_int32_t emc_auto_cal_wait;
+
+	/*
+	 * DRAM size information
+	 * Specifies the value for EMC_ADR_CFG
+	 */
+	u_int32_t emc_adr_cfg;
+
+	/*
+	 * Specifies the time to wait after asserting pin
+	 * CKE (in microseconds)
+	 */
+	u_int32_t emc_pin_program_wait;
+	/* Specifies the extra delay before/after pin RESET/CKE command */
+	u_int32_t emc_pin_extra_wait;
+	/*
+	 * Specifies the extra delay after the first writing
+	 * of EMC_TIMING_CONTROL
+	 */
+	u_int32_t emc_timing_control_wait;
+
+	/* Timing parameters required for the SDRAM */
+
+	/* Specifies the value for EMC_RC */
+	u_int32_t emc_rc;
+	/* Specifies the value for EMC_RFC */
+	u_int32_t emc_rfc;
+	/* Specifies the value for EMC_RAS */
+	u_int32_t emc_ras;
+	/* Specifies the value for EMC_RP */
+	u_int32_t emc_rp;
+	/* Specifies the value for EMC_R2W */
+	u_int32_t emc_r2w;
+	/* Specifies the value for EMC_R2W */
+	u_int32_t emc_w2r;
+	/* Specifies the value for EMC_R2P */
+	u_int32_t emc_r2p;
+	/* Specifies the value for EMC_W2P */
+	u_int32_t emc_w2p;
+	/* Specifies the value for EMC_RD_RCD */
+	u_int32_t emc_rd_rcd;
+	/* Specifies the value for EMC_WR_RCD */
+	u_int32_t emc_wr_rcd;
+	/* Specifies the value for EMC_RRD */
+	u_int32_t emc_rrd;
+	/* Specifies the value for EMC_REXT */
+	u_int32_t emc_rext;
+	/* Specifies the value for EMC_WEXT */
+	u_int32_t emc_wext;
+	/* Specifies the value for EMC_WDV */
+	u_int32_t emc_wdv;
+	/* Specifies the value for EMC_QUSE */
+	u_int32_t emc_quse;
+	/* Specifies the value for EMC_QRST */
+	u_int32_t emc_qrst;
+	/* Specifies the value for EMC_QSAFE */
+	u_int32_t emc_qsafe;
+	/* Specifies the value for EMC_RDV */
+	u_int32_t emc_rdv;
+	/* Specifies the value for EMC_CTT */
+	u_int32_t emc_ctt;
+	/* Specifies the value for EMC_CTT_DURATION */
+	u_int32_t emc_ctt_duration;
+	/* Specifies the value for EMC_REFRESH */
+	u_int32_t emc_refresh;
+	/* Specifies the value for EMC_BURST_REFRESH_NUM */
+	u_int32_t emc_burst_refresh_num;
+	/* Specifies the value for EMC_PRE_REFRESH_REQ_CNT */
+	u_int32_t emc_prerefresh_req_cnt;
+	/* Specifies the value for EMC_PDEX2WR */
+	u_int32_t emc_pdex2wr;
+	/* Specifies the value for EMC_PDEX2RD */
+	u_int32_t emc_pdex2rd;
+	/* Specifies the value for EMC_PCHG2PDEN */
+	u_int32_t emc_pchg2pden;
+	/* Specifies the value for EMC_ACT2PDEN */
+	u_int32_t emc_act2pden;
+	/* Specifies the value for EMC_AR2PDEN */
+	u_int32_t emc_ar2pden;
+	/* Specifies the value for EMC_RW2PDEN */
+	u_int32_t emc_rw2pden;
+	/* Specifies the value for EMC_TXSR */
+	u_int32_t emc_txsr;
+	/* Specifies the value for EMC_TXSRDLL */
+	u_int32_t emc_txsr_dll;
+	/* Specifies the value for EMC_TCKE */
+	u_int32_t emc_tcke;
+	/* Specifies the value for EMC_TFAW */
+	u_int32_t emc_tfaw;
+	/* Specifies the value for EMC_TRPAB */
+	u_int32_t emc_trpab;
+	/* Specifies the value for EMC_TCLKSTABLE */
+	u_int32_t emc_tclkstable;
+	/* Specifies the value for EMC_TCLKSTOP */
+	u_int32_t emc_tclkstop;
+	/* Specifies the value for EMC_TREFBW */
+	u_int32_t emc_trefbw;
+	/* Specifies the value for EMC_QUSE_EXTRA */
+	u_int32_t emc_quse_extra;
+
+	/* FBIO configuration values */
+
+	/* Specifies the value for EMC_FBIO_CFG5 */
+	u_int32_t emc_fbio_cfg5;
+	/* Specifies the value for EMC_FBIO_CFG6 */
+	u_int32_t emc_fbio_cfg6;
+	/* Specifies the value for EMC_FBIO_SPARE */
+	u_int32_t emc_fbio_spare;
+
+	/* Specifies the value for EMC_CFG_RSV */
+	u_int32_t emc_cfg_rsv;
+
+	/* MRS command values */
+
+	/* Specifies the value for EMC_MRS */
+	u_int32_t emc_mrs;
+	/* Specifies the value for EMC_EMRS */
+	u_int32_t emc_emrs;
+	/* Specifies the programming to LPDDR2 Mode Register 1 at cold boot */
+	u_int32_t emc_mrw1;
+	/* Specifies the programming to LPDDR2 Mode Register 2 at cold boot */
+	u_int32_t emc_mrw2;
+	/* Specifies the programming to LPDDR2 Mode Register 3 at cold boot */
+	u_int32_t emc_mrw3;
+	/*
+	 * Specifies the programming to extra LPDDR2 Mode Register
+	 * at cold boot
+	 */
+	u_int32_t emc_mrw_extra;
+	/* Specifies the programming to LPDDR2 Mode Register 1 at warm boot */
+	u_int32_t emc_warm_boot_mrw1;
+	/* Specifies the programming to LPDDR2 Mode Register 2 at warm boot */
+	u_int32_t emc_warm_boot_mrw2;
+	/* Specifies the programming to LPDDR2 Mode Register 3 at warm boot */
+	u_int32_t emc_warm_boot_mrw3;
+	/*
+	 * Specifies the programming to extra LPDDR2 Mode Register
+	 * at warm boot
+	 */
+	u_int32_t emc_warm_boot_mrw_extra;
+	/*
+	 * Specify the enable of extra Mode Register programming at
+	 * warm boot
+	 */
+	u_int32_t emc_warm_boot_extramode_reg_write_enable;
+	/*
+	 * Specify the enable of extra Mode Register programming at
+	 * cold boot
+	 */
+	u_int32_t emc_extramode_reg_write_enable;
+
+	/* Specifies the EMC_MRW reset command value */
+	u_int32_t emc_mrw_reset_command;
+	/* Specifies the EMC Reset wait time (in microseconds) */
+	u_int32_t emc_mrw_reset_ninit_wait;
+	/* Specifies the value for EMC_MRS_WAIT_CNT */
+	u_int32_t emc_mrs_wait_cnt;
+
+	/* EMC miscellaneous configurations */
+
+	/* Specifies the value for EMC_CFG */
+	u_int32_t emc_cfg;
+	/* Specifies the value for EMC_CFG_2 */
+	u_int32_t emc_cfg2;
+	/* Specifies the value for EMC_DBG */
+	u_int32_t emc_dbg;
+	/* Specifies the value for EMC_CMDQ */
+	u_int32_t emc_cmd_q;
+	/* Specifies the value for EMC_MC2EMCQ */
+	u_int32_t emc_mc2emc_q;
+	/* Specifies the value for EMC_DYN_SELF_REF_CONTROL */
+	u_int32_t emc_dyn_self_ref_control;
+
+	/* Specifies the value for MEM_INIT_DONE */
+	u_int32_t ahb_arbitration_xbar_ctrl_meminit_done;
+
+	/* Specifies the value for EMC_CFG_DIG_DLL */
+	u_int32_t emc_cfg_dig_dll;
+	/* Specifies the value for EMC_CFG_DIG_DLL_PERIOD */
+	u_int32_t emc_cfg_dig_dll_period;
+	/* Specifies the vlaue of *DEV_SELECTN of various EMC registers */
+	u_int32_t emc_dev_select;
+
+	/* Specifies the value for EMC_SEL_DPD_CTRL */
+	u_int32_t emc_sel_dpd_ctrl;
+
+	/* Pads trimmer delays */
+
+	/* Specifies the value for EMC_DLL_XFORM_DQS0 */
+	u_int32_t emc_dll_xform_dqs0;
+	/* Specifies the value for EMC_DLL_XFORM_DQS1 */
+	u_int32_t emc_dll_xform_dqs1;
+	/* Specifies the value for EMC_DLL_XFORM_DQS2 */
+	u_int32_t emc_dll_xform_dqs2;
+	/* Specifies the value for EMC_DLL_XFORM_DQS3 */
+	u_int32_t emc_dll_xform_dqs3;
+	/* Specifies the value for EMC_DLL_XFORM_DQS4 */
+	u_int32_t emc_dll_xform_dqs4;
+	/* Specifies the value for EMC_DLL_XFORM_DQS5 */
+	u_int32_t emc_dll_xform_dqs5;
+	/* Specifies the value for EMC_DLL_XFORM_DQS6 */
+	u_int32_t emc_dll_xform_dqs6;
+	/* Specifies the value for EMC_DLL_XFORM_DQS7 */
+	u_int32_t emc_dll_xform_dqs7;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE0 */
+	u_int32_t emc_dll_xform_quse0;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE1 */
+	u_int32_t emc_dll_xform_quse1;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE2 */
+	u_int32_t emc_dll_xform_quse2;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE3 */
+	u_int32_t emc_dll_xform_quse3;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE4 */
+	u_int32_t emc_dll_xform_quse4;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE5 */
+	u_int32_t emc_dll_xform_quse5;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE6 */
+	u_int32_t emc_dll_xform_quse6;
+	/* Specifies the value for EMC_DLL_XFORM_QUSE7 */
+	u_int32_t emc_dll_xform_quse7;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS0 */
+	u_int32_t emc_dli_trim_tx_dqs0;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS1 */
+	u_int32_t emc_dli_trim_tx_dqs1;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS2 */
+	u_int32_t emc_dli_trim_tx_dqs2;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS3 */
+	u_int32_t emc_dli_trim_tx_dqs3;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS4 */
+	u_int32_t emc_dli_trim_tx_dqs4;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS5 */
+	u_int32_t emc_dli_trim_tx_dqs5;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS6 */
+	u_int32_t emc_dli_trim_tx_dqs6;
+	/* Specifies the value for EMC_DLI_TRIM_TXDQS7 */
+	u_int32_t emc_dli_trim_tx_dqs7;
+	/* Specifies the value for EMC_DLL_XFORM_DQ0 */
+	u_int32_t emc_dll_xform_dq0;
+	/* Specifies the value for EMC_DLL_XFORM_DQ1 */
+	u_int32_t emc_dll_xform_dq1;
+	/* Specifies the value for EMC_DLL_XFORM_DQ2 */
+	u_int32_t emc_dll_xform_dq2;
+	/* Specifies the value for EMC_DLL_XFORM_DQ3 */
+	u_int32_t emc_dll_xform_dq3;
+
+	/*
+	 * Specifies the delay after asserting CKE pin during a WarmBoot0
+	 * sequence (in microseconds)
+	 */
+	u_int32_t warm_boot_wait;
+
+	/* Specifies the value for EMC_CTT_TERM_CTRL */
+	u_int32_t emc_ctt_term_ctrl;
+
+	/* Specifies the value for EMC_ODT_WRITE */
+	u_int32_t emc_odt_write;
+	/* Specifies the value for EMC_ODT_WRITE */
+	u_int32_t emc_odt_read;
+
+	/* Periodic ZQ calibration */
+
+	/*
+	 * Specifies the value for EMC_ZCAL_INTERVAL
+	 * Value 0 disables ZQ calibration
+	 */
+	u_int32_t emc_zcal_interval;
+	/* Specifies the value for EMC_ZCAL_WAIT_CNT */
+	u_int32_t emc_zcal_wait_cnt;
+	/* Specifies the value for EMC_ZCAL_MRW_CMD */
+	u_int32_t emc_zcal_mrw_cmd;
+
+	/* DRAM initialization sequence flow control */
+
+	/* Specifies the MRS command value for resetting DLL */
+	u_int32_t emc_mrs_reset_dll;
+	/* Specifies the command for ZQ initialization of device 0 */
+	u_int32_t emc_zcal_init_dev0;
+	/* Specifies the command for ZQ initialization of device 1 */
+	u_int32_t emc_zcal_init_dev1;
+	/*
+	 * Specifies the wait time after programming a ZQ initialization
+	 * command (in microseconds)
+	 */
+	u_int32_t emc_zcal_init_wait;
+	/* Specifies the enable for ZQ calibration at cold boot */
+	u_int32_t emc_zcal_cold_boot_enable;
+	/* Specifies the enable for ZQ calibration at warm boot */
+	u_int32_t emc_zcal_warm_boot_enable;
+
+	/*
+	 * Specifies the MRW command to LPDDR2 for ZQ calibration
+	 *on warmboot
+	 */
+	/* Is issued to both devices separately */
+	u_int32_t emc_mrw_lpddr2zcal_warm_boot;
+	/*
+	 * Specifies the ZQ command to DDR3 for ZQ calibration on warmboot
+	 * Is issued to both devices separately
+	 */
+	u_int32_t emc_zqcal_ddr3_warm_boot;
+	/*
+	 * Specifies the wait time for ZQ calibration on warmboot
+	 * (in microseconds)
+	 */
+	u_int32_t emc_zcal_warm_boot_wait;
+	/*
+	 * Specifies the enable for DRAM Mode Register programming
+	 * at warm boot
+	 */
+	u_int32_t emc_mrs_warm_boot_enable;
+	/*
+	 * Specifies the wait time after sending an MRS DLL reset command
+	 * in microseconds)
+	 */
+	u_int32_t emc_mrs_reset_dll_wait;
+	/*
+	 * Specifies the first of two EMRS commands to initialize mode
+	 * registers
+	 */
+	u_int32_t emc_emrs_emr2;
+	/*
+	 * Specifies the second of two EMRS commands to initialize mode
+	 * registers
+	 */
+	u_int32_t emc_emrs_emr3;
+	/* Specifies the extra MRS command to initialize mode registers */
+	u_int32_t emc_mrs_extra;
+	/* Specifies the programming to DDR3 Mode Register 0 at warm boot */
+	u_int32_t emc_warm_boot_mrs;
+	/* Specifies the programming to DDR3 Mode Register 1 at warm boot */
+	u_int32_t emc_warm_boot_emrs;
+	/* Specifies the programming to DDR3 Mode Register 2 at warm boot */
+	u_int32_t emc_warm_boot_emr2;
+	/* Specifies the programming to DDR3 Mode Register 3 at warm boot */
+	u_int32_t emc_warm_boot_emr3;
+	/* Specifies the extra MRS command at warm boot */
+	u_int32_t emc_warm_boot_mrs_extra;
+	/* Specifies the EMRS command to enable the DDR2 DLL */
+	u_int32_t emc_emrs_ddr2_dll_enable;
+	/* Specifies the MRS command to reset the DDR2 DLL */
+	u_int32_t emc_mrs_ddr2_dll_reset;
+	/* Specifies the EMRS command to set OCD calibration */
+	u_int32_t emc_emrs_ddr2_ocd_calib;
+	/*
+	 * Specifies the wait between initializing DDR and setting OCD
+	 * calibration (in microseconds)
+	 */
+	u_int32_t emc_ddr2_wait;
+	/* Specifies the value for EMC_CLKEN_OVERRIDE */
+	u_int32_t emc_clken_override;
+	/*
+	 * Specifies LOG2 of the extra refresh numbers after booting
+	 * Program 0 to disable
+	 */
+	u_int32_t emc_extra_refresh_num;
+	/* Specifies the master override for all EMC clocks */
+	u_int32_t emc_clken_override_allwarm_boot;
+	/* Specifies the master override for all MC clocks */
+	u_int32_t mc_clken_override_allwarm_boot;
+	/* Specifies digital dll period, choosing between 4 to 64 ms */
+	u_int32_t emc_cfg_dig_dll_period_warm_boot;
+
+	/* Pad controls */
+
+	/* Specifies the value for PMC_VDDP_SEL */
+	u_int32_t pmc_vddp_sel;
+	/* Specifies the value for PMC_DDR_PWR */
+	u_int32_t pmc_ddr_pwr;
+	/* Specifies the value for PMC_DDR_CFG */
+	u_int32_t pmc_ddr_cfg;
+	/* Specifies the value for PMC_IO_DPD_REQ */
+	u_int32_t pmc_io_dpd_req;
+	/* Specifies the value for PMC_E_NO_VTTGEN */
+	u_int32_t pmc_eno_vtt_gen;
+	/* Specifies the value for PMC_NO_IOPOWER */
+	u_int32_t pmc_no_io_power;
+	/* Specifies the value for EMC_XM2CMDPADCTRL */
+	u_int32_t emc_xm2cmd_pad_ctrl;
+	/* Specifies the value for EMC_XM2CMDPADCTRL2 */
+	u_int32_t emc_xm2cmd_pad_ctrl2;
+	/* Specifies the value for EMC_XM2DQSPADCTRL */
+	u_int32_t emc_xm2dqs_pad_ctrl;
+	/* Specifies the value for EMC_XM2DQSPADCTRL2 */
+	u_int32_t emc_xm2dqs_pad_ctrl2;
+	/* Specifies the value for EMC_XM2DQSPADCTRL3 */
+	u_int32_t emc_xm2dqs_pad_ctrl3;
+	/* Specifies the value for EMC_XM2DQPADCTRL */
+	u_int32_t emc_xm2dq_pad_ctrl;
+	/* Specifies the value for EMC_XM2DQPADCTRL2 */
+	u_int32_t emc_xm2dq_pad_ctrl2;
+	/* Specifies the value for EMC_XM2CLKPADCTRL */
+	u_int32_t emc_xm2clk_pad_ctrl;
+	/* Specifies the value for EMC_XM2COMPPADCTRL */
+	u_int32_t emc_xm2comp_pad_ctrl;
+	/* Specifies the value for EMC_XM2VTTGENPADCTRL */
+	u_int32_t emc_xm2vttgen_pad_ctrl;
+	/* Specifies the value for EMC_XM2VTTGENPADCTRL2 */
+	u_int32_t emc_xm2vttgen_pad_ctrl2;
+	/* Specifies the value for EMC_XM2QUSEPADCTRL */
+	u_int32_t emc_xm2quse_pad_ctrl;
+
+	/* DRAM size information */
+
+	/* Specifies the value for MC_EMEM_ADR_CFG */
+	u_int32_t mc_emem_adr_cfg;
+	/* Specifies the value for MC_EMEM_ADR_CFG_DEV0 */
+	u_int32_t mc_emem_adr_cfg_dev0;
+	/* Specifies the value for MC_EMEM_ADR_CFG_DEV1 */
+	u_int32_t mc_emem_adr_cfg_dev1;
+
+	/*
+	 * Specifies the value for MC_EMEM_CFG which holds the external memory
+	 * size (in KBytes)
+	 */
+	u_int32_t mc_emem_cfg;
+
+	/* MC arbitration configuration */
+
+	/* Specifies the value for MC_EMEM_ARB_CFG */
+	u_int32_t mc_emem_arb_cfg;
+	/* Specifies the value for MC_EMEM_ARB_OUTSTANDING_REQ */
+	u_int32_t mc_emem_arb_outstanding_req;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RCD */
+	u_int32_t mc_emem_arb_timing_rcd;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RP */
+	u_int32_t mc_emem_arb_timing_rp;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RC */
+	u_int32_t mc_emem_arb_timing_rc;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RAS */
+	u_int32_t mc_emem_arb_timing_ras;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_FAW */
+	u_int32_t mc_emem_arb_timing_faw;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RRD */
+	u_int32_t mc_emem_arb_timing_rrd;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_RAP2PRE */
+	u_int32_t mc_emem_arb_timing_rap2pre;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_WAP2PRE */
+	u_int32_t mc_emem_arb_timing_wap2pre;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_R2R */
+	u_int32_t mc_emem_arb_timing_r2r;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_W2W */
+	u_int32_t mc_emem_arb_timing_w2w;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_R2W */
+	u_int32_t mc_emem_arb_timing_r2w;
+	/* Specifies the value for MC_EMEM_ARB_TIMING_W2R */
+	u_int32_t mc_emem_arb_timing_w2r;
+	/* Specifies the value for MC_EMEM_ARB_DA_TURNS */
+	u_int32_t mc_emem_arb_da_turns;
+	/* Specifies the value for MC_EMEM_ARB_DA_COVERS */
+	u_int32_t mc_emem_arb_da_covers;
+	/* Specifies the value for MC_EMEM_ARB_MISC0 */
+	u_int32_t mc_emem_arb_misc0;
+	/* Specifies the value for MC_EMEM_ARB_MISC1 */
+	u_int32_t mc_emem_arb_misc1;
+	/* Specifies the value for MC_EMEM_ARB_RING1_THROTTLE */
+	u_int32_t mc_emem_arb_ring1_throttle;
+	/* Specifies the value for MC_EMEM_ARB_OVERRIDE */
+	u_int32_t mc_emem_arb_override;
+	/* Specifies the value for MC_EMEM_ARB_RSV */
+	u_int32_t mc_emem_arb_rsv;
+
+	/* Specifies the value for MC_CLKEN_OVERRIDE */
+	u_int32_t mc_clken_override;
+
+	/* End of generated code by warmboot_code_gen */
+} nvboot_sdram_params;
+#endif /* #ifndef INCLUDED_NVBOOT_SDRAM_PARAM_T30_H */
+
diff --git a/scripts/tegra/t30/parse_t30.c b/scripts/tegra/t30/parse_t30.c
new file mode 100644
index 000000000000..4715f39f57af
--- /dev/null
+++ b/scripts/tegra/t30/parse_t30.c
@@ -0,0 +1,360 @@
+/*
+ * Copyright (c) 2012, NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ */
+
+/*
+ * parse_t30.h - Definitions for the dev/sdram parameters
+ */
+
+#include "../parse.h"
+#include "nvboot_bct_t30.h"
+
+enum_item s_devtype_table_t30[] = {
+	{ "NvBootDevType_Sdmmc", nvboot_dev_type_sdmmc },
+	{ "NvBootDevType_Spi", nvboot_dev_type_spi },
+	{ "NvBootDevType_Nand", nvboot_dev_type_nand },
+	{ "Sdmmc", nvboot_dev_type_sdmmc },
+	{ "Spi", nvboot_dev_type_spi },
+	{ "Nand", nvboot_dev_type_nand },
+
+	{ NULL, 0 }
+};
+
+enum_item s_sdmmc_data_width_table_t30[] = {
+	{
+	  "NvBootSdmmcDataWidth_4Bit",
+	  nvboot_sdmmc_data_width_4bit
+	},
+	{
+	  "NvBootSdmmcDataWidth_8Bit",
+	  nvboot_sdmmc_data_width_8bit
+	},
+	{ "4Bit", nvboot_sdmmc_data_width_4bit },
+	{ "8Bit", nvboot_sdmmc_data_width_8bit },
+	{ NULL, 0 }
+};
+
+enum_item s_spi_clock_source_table_t30[] = {
+	{
+	    "NvBootSpiClockSource_PllPOut0",
+	    nvboot_spi_clock_source_pllp_out0
+	},
+	{
+	    "NvBootSpiClockSource_PllCOut0",
+	    nvboot_spi_clock_source_pllc_out0
+	},
+	{
+	    "NvBootSpiClockSource_PllMOut0",
+	    nvboot_spi_clock_source_pllm_out0
+	},
+	{
+	    "NvBootSpiClockSource_ClockM",
+	    nvboot_spi_clock_source_clockm
+	},
+
+	{ "ClockSource_PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "ClockSource_PllCOut0", nvboot_spi_clock_source_pllc_out0 },
+	{ "ClockSource_PllMOut0", nvboot_spi_clock_source_pllm_out0 },
+	{ "ClockSource_ClockM",   nvboot_spi_clock_source_clockm },
+
+
+	{ "PllPOut0", nvboot_spi_clock_source_pllp_out0 },
+	{ "PllCOut0", nvboot_spi_clock_source_pllc_out0 },
+	{ "PllMOut0", nvboot_spi_clock_source_pllm_out0 },
+	{ "ClockM",   nvboot_spi_clock_source_clockm },
+
+	{ NULL, 0 }
+};
+
+enum_item s_nvboot_memory_type_table_t30[] = {
+	{ "NvBootMemoryType_None", nvboot_memory_type_none },
+	{ "NvBootMemoryType_Ddr3", nvboot_memory_type_ddr3 },
+	{ "NvBootMemoryType_Ddr2", nvboot_memory_type_ddr2 },
+	{ "NvBootMemoryType_Ddr", nvboot_memory_type_ddr },
+	{ "NvBootMemoryType_LpDdr2", nvboot_memory_type_lpddr2 },
+	{ "NvBootMemoryType_LpDdr", nvboot_memory_type_lpddr },
+
+	{ "None", nvboot_memory_type_none },
+	{ "Ddr3", nvboot_memory_type_ddr3 },
+	{ "Ddr2", nvboot_memory_type_ddr2 },
+	{ "Ddr", nvboot_memory_type_ddr },
+	{ "LpDdr2", nvboot_memory_type_lpddr2 },
+	{ "LpDdr", nvboot_memory_type_lpddr },
+
+	{ NULL, 0 }
+};
+
+#define TOKEN(name)						\
+	token_##name, field_type_u32, NULL
+
+field_item s_sdram_field_table_t30[] = {
+	{ "MemoryType", token_memory_type,
+	  field_type_enum, s_nvboot_memory_type_table_t30 },
+
+	{ "PllMChargePumpSetupControl", TOKEN(pllm_charge_pump_setup_ctrl) },
+	{ "PllMLoopFilterSetupControl", TOKEN(pllm_loop_filter_setup_ctrl) },
+	{ "PllMInputDivider",           TOKEN(pllm_input_divider) },
+	{ "PllMFeedbackDivider",        TOKEN(pllm_feedback_divider) },
+	{ "PllMPostDivider",            TOKEN(pllm_post_divider) },
+	{ "PllMStableTime",             TOKEN(pllm_stable_time) },
+	{ "EmcClockDivider",            TOKEN(emc_clock_divider) },
+	{ "EmcAutoCalInterval",         TOKEN(emc_auto_cal_interval) },
+	{ "EmcAutoCalConfig",           TOKEN(emc_auto_cal_config) },
+	{ "EmcAutoCalWait",             TOKEN(emc_auto_cal_wait) },
+	{ "EmcPinProgramWait",          TOKEN(emc_pin_program_wait) },
+	{ "EmcRc",                      TOKEN(emc_rc) },
+	{ "EmcRfc",                     TOKEN(emc_rfc) },
+	{ "EmcRas",                     TOKEN(emc_ras) },
+	{ "EmcRp",                      TOKEN(emc_rp) },
+	{ "EmcR2w",                     TOKEN(emc_r2w) },
+	{ "EmcW2r",                     TOKEN(emc_w2r) },
+	{ "EmcR2p",                     TOKEN(emc_r2p) },
+	{ "EmcW2p",                     TOKEN(emc_w2p) },
+	{ "EmcRrd",                     TOKEN(emc_rrd) },
+	{ "EmcRdRcd",                   TOKEN(emc_rd_rcd) },
+	{ "EmcWrRcd",                   TOKEN(emc_wr_rcd) },
+	{ "EmcRext",                    TOKEN(emc_rext) },
+	{ "EmcWdv",                     TOKEN(emc_wdv) },
+	{ "EmcQUseExtra",               TOKEN(emc_quse_extra) },
+	{ "EmcQUse",                    TOKEN(emc_quse) },
+	{ "EmcQRst",                    TOKEN(emc_qrst) },
+	{ "EmcQSafe",                   TOKEN(emc_qsafe) },
+	{ "EmcRdv",                     TOKEN(emc_rdv) },
+	{ "EmcRefresh",                 TOKEN(emc_refresh) },
+	{ "EmcBurstRefreshNum",         TOKEN(emc_burst_refresh_num) },
+	{ "EmcPdEx2Wr",                 TOKEN(emc_pdex2wr) },
+	{ "EmcPdEx2Rd",                 TOKEN(emc_pdex2rd) },
+	{ "EmcPChg2Pden",               TOKEN(emc_pchg2pden) },
+	{ "EmcAct2Pden",                TOKEN(emc_act2pden) },
+	{ "EmcAr2Pden",                 TOKEN(emc_ar2pden) },
+	{ "EmcRw2Pden",                 TOKEN(emc_rw2pden) },
+	{ "EmcTxsr",                    TOKEN(emc_txsr) },
+	{ "EmcTcke",                    TOKEN(emc_tcke) },
+	{ "EmcTfaw",                    TOKEN(emc_tfaw) },
+	{ "EmcTrpab",                   TOKEN(emc_trpab) },
+	{ "EmcTClkStable",              TOKEN(emc_tclkstable) },
+	{ "EmcTClkStop",                TOKEN(emc_tclkstop) },
+	{ "EmcTRefBw",                  TOKEN(emc_trefbw) },
+	{ "EmcFbioCfg5",                TOKEN(emc_fbio_cfg5) },
+	{ "EmcFbioCfg6",                TOKEN(emc_fbio_cfg6) },
+	{ "EmcFbioSpare",               TOKEN(emc_fbio_spare) },
+	{ "EmcMrsResetDllWait",         TOKEN(emc_mrs_reset_dll_wait) },
+	{ "EmcMrsResetDll",             TOKEN(emc_mrs_reset_dll) },
+	{ "EmcMrsDdr2DllReset",         TOKEN(emc_mrs_ddr2_dll_reset) },
+	{ "EmcMrs",                     TOKEN(emc_mrs) },
+	{ "EmcEmrsEmr2",                TOKEN(emc_emrs_emr2) },
+	{ "EmcEmrsEmr3",                TOKEN(emc_emrs_emr3) },
+	{ "EmcEmrsDdr2DllEnable",       TOKEN(emc_emrs_ddr2_dll_enable) },
+	{ "EmcEmrsDdr2OcdCalib",        TOKEN(emc_emrs_ddr2_ocd_calib) },
+	{ "EmcEmrs",                    TOKEN(emc_emrs) },
+	{ "EmcMrw1",                    TOKEN(emc_mrw1) },
+	{ "EmcMrw2",                    TOKEN(emc_mrw2) },
+	{ "EmcMrw3",                    TOKEN(emc_mrw3) },
+	{ "EmcMrwResetCommand",         TOKEN(emc_mrw_reset_command) },
+	{ "EmcMrwResetNInitWait",       TOKEN(emc_mrw_reset_ninit_wait) },
+	{ "EmcAdrCfg",                  TOKEN(emc_adr_cfg) },
+	{ "McEmemCfg",                  TOKEN(mc_emem_cfg) },
+	{ "EmcCfg2",                    TOKEN(emc_cfg2) },
+	{ "EmcCfgDigDll",               TOKEN(emc_cfg_dig_dll) },
+	{ "EmcCfgDigDllPeriod",         TOKEN(emc_cfg_dig_dll_period) },
+	{ "EmcCfg",                     TOKEN(emc_cfg) },
+	{ "EmcDbg",                     TOKEN(emc_dbg) },
+	{ "WarmBootWait",               TOKEN(warm_boot_wait) },
+	{ "EmcCttTermCtrl",             TOKEN(emc_ctt_term_ctrl) },
+	{ "EmcOdtWrite",                TOKEN(emc_odt_write) },
+	{ "EmcOdtRead",                 TOKEN(emc_odt_read) },
+	{ "EmcZcalWaitCnt",             TOKEN(emc_zcal_wait_cnt) },
+	{ "EmcZcalMrwCmd",              TOKEN(emc_zcal_mrw_cmd) },
+	{ "EmcDdr2Wait",                TOKEN(emc_ddr2_wait) },
+	{ "PmcDdrPwr",                  TOKEN(pmc_ddr_pwr) },
+	{ "EmcClockSource",             TOKEN(emc_clock_source) },
+	{ "EmcClockUsePllMUD",          TOKEN(emc_clock_use_pll_mud) },
+	{ "EmcPinExtraWait",            TOKEN(emc_pin_extra_wait) },
+	{ "EmcTimingControlWait",       TOKEN(emc_timing_control_wait) },
+	{ "EmcWext",                    TOKEN(emc_wext) },
+	{ "EmcCtt",                     TOKEN(emc_ctt) },
+	{ "EmcCttDuration",             TOKEN(emc_ctt_duration) },
+	{ "EmcPreRefreshReqCnt",        TOKEN(emc_prerefresh_req_cnt) },
+	{ "EmcTxsrDll",                 TOKEN(emc_txsr_dll) },
+	{ "EmcCfgRsv",                  TOKEN(emc_cfg_rsv) },
+	{ "EmcMrwExtra",                TOKEN(emc_mrw_extra) },
+	{ "EmcWarmBootMrw1",            TOKEN(emc_warm_boot_mrw1) },
+	{ "EmcWarmBootMrw2",            TOKEN(emc_warm_boot_mrw2) },
+	{ "EmcWarmBootMrw3",            TOKEN(emc_warm_boot_mrw3) },
+	{ "EmcWarmBootMrwExtra",        TOKEN(emc_warm_boot_mrw_extra) },
+	{ "EmcWarmBootExtraModeRegWriteEnable",
+			TOKEN(emc_warm_boot_extramode_reg_write_enable) },
+	{ "EmcExtraModeRegWriteEnable", TOKEN(emc_extramode_reg_write_enable) },
+	{ "EmcMrsWaitCnt",              TOKEN(emc_mrs_wait_cnt) },
+	{ "EmcCmdQ",                    TOKEN(emc_cmd_q) },
+	{ "EmcMc2EmcQ",                 TOKEN(emc_mc2emc_q) },
+	{ "EmcDynSelfRefControl",       TOKEN(emc_dyn_self_ref_control) },
+	{ "AhbArbitrationXbarCtrlMemInitDone",
+			TOKEN(ahb_arbitration_xbar_ctrl_meminit_done) },
+	{ "EmcDevSelect",               TOKEN(emc_dev_select) },
+	{ "EmcSelDpdCtrl",              TOKEN(emc_sel_dpd_ctrl) },
+	{ "EmcDllXformDqs0",            TOKEN(emc_dll_xform_dqs0) },
+	{ "EmcDllXformDqs1",            TOKEN(emc_dll_xform_dqs1) },
+	{ "EmcDllXformDqs2",            TOKEN(emc_dll_xform_dqs2) },
+	{ "EmcDllXformDqs3",            TOKEN(emc_dll_xform_dqs3) },
+	{ "EmcDllXformDqs4",            TOKEN(emc_dll_xform_dqs4) },
+	{ "EmcDllXformDqs5",            TOKEN(emc_dll_xform_dqs5) },
+	{ "EmcDllXformDqs6",            TOKEN(emc_dll_xform_dqs6) },
+	{ "EmcDllXformDqs7",            TOKEN(emc_dll_xform_dqs7) },
+	{ "EmcDllXformQUse0",           TOKEN(emc_dll_xform_quse0) },
+	{ "EmcDllXformQUse1",           TOKEN(emc_dll_xform_quse1) },
+	{ "EmcDllXformQUse2",           TOKEN(emc_dll_xform_quse2) },
+	{ "EmcDllXformQUse3",           TOKEN(emc_dll_xform_quse3) },
+	{ "EmcDllXformQUse4",           TOKEN(emc_dll_xform_quse4) },
+	{ "EmcDllXformQUse5",           TOKEN(emc_dll_xform_quse5) },
+	{ "EmcDllXformQUse6",           TOKEN(emc_dll_xform_quse6) },
+	{ "EmcDllXformQUse7",           TOKEN(emc_dll_xform_quse7) },
+	{ "EmcDliTrimTxDqs0",           TOKEN(emc_dli_trim_tx_dqs0) },
+	{ "EmcDliTrimTxDqs1",           TOKEN(emc_dli_trim_tx_dqs1) },
+	{ "EmcDliTrimTxDqs2",           TOKEN(emc_dli_trim_tx_dqs2) },
+	{ "EmcDliTrimTxDqs3",           TOKEN(emc_dli_trim_tx_dqs3) },
+	{ "EmcDliTrimTxDqs4",           TOKEN(emc_dli_trim_tx_dqs4) },
+	{ "EmcDliTrimTxDqs5",           TOKEN(emc_dli_trim_tx_dqs5) },
+	{ "EmcDliTrimTxDqs6",           TOKEN(emc_dli_trim_tx_dqs6) },
+	{ "EmcDliTrimTxDqs7",           TOKEN(emc_dli_trim_tx_dqs7) },
+	{ "EmcDllXformDq0",             TOKEN(emc_dll_xform_dq0) },
+	{ "EmcDllXformDq1",             TOKEN(emc_dll_xform_dq1) },
+	{ "EmcDllXformDq2",             TOKEN(emc_dll_xform_dq2) },
+	{ "EmcDllXformDq3",             TOKEN(emc_dll_xform_dq3) },
+	{ "EmcZcalInterval",            TOKEN(emc_zcal_interval) },
+	{ "EmcZcalInitDev0",            TOKEN(emc_zcal_init_dev0) },
+	{ "EmcZcalInitDev1",            TOKEN(emc_zcal_init_dev1) },
+	{ "EmcZcalInitWait",            TOKEN(emc_zcal_init_wait) },
+	{ "EmcZcalColdBootEnable",      TOKEN(emc_zcal_cold_boot_enable) },
+	{ "EmcZcalWarmBootEnable",      TOKEN(emc_zcal_warm_boot_enable) },
+	{ "EmcMrwLpddr2ZcalWarmBoot",   TOKEN(emc_mrw_lpddr2zcal_warm_boot) },
+	{ "EmcZqCalDdr3WarmBoot",       TOKEN(emc_zqcal_ddr3_warm_boot) },
+	{ "EmcZcalWarmBootWait",        TOKEN(emc_zcal_warm_boot_wait) },
+	{ "EmcMrsWarmBootEnable",       TOKEN(emc_mrs_warm_boot_enable) },
+	{ "EmcMrsExtra",                TOKEN(emc_mrs_extra) },
+	{ "EmcWarmBootMrs",             TOKEN(emc_warm_boot_mrs) },
+	{ "EmcWarmBootEmrs",            TOKEN(emc_warm_boot_emrs) },
+	{ "EmcWarmBootEmr2",            TOKEN(emc_warm_boot_emr2) },
+	{ "EmcWarmBootEmr3",            TOKEN(emc_warm_boot_emr3) },
+	{ "EmcWarmBootMrsExtra",        TOKEN(emc_warm_boot_mrs_extra) },
+	{ "EmcClkenOverride",           TOKEN(emc_clken_override) },
+	{ "EmcExtraRefreshNum",         TOKEN(emc_extra_refresh_num) },
+	{ "EmcClkenOverrideAllWarmBoot",
+			TOKEN(emc_clken_override_allwarm_boot) },
+	{ "McClkenOverrideAllWarmBoot", TOKEN(mc_clken_override_allwarm_boot) },
+	{ "EmcCfgDigDllPeriodWarmBoot",
+			TOKEN(emc_cfg_dig_dll_period_warm_boot) },
+	{ "PmcVddpSel",                 TOKEN(pmc_vddp_sel) },
+	{ "PmcDdrCfg",                  TOKEN(pmc_ddr_cfg) },
+	{ "PmcIoDpdReq",                TOKEN(pmc_io_dpd_req) },
+	{ "PmcENoVttGen",               TOKEN(pmc_eno_vtt_gen) },
+	{ "PmcNoIoPower",               TOKEN(pmc_no_io_power) },
+	{ "EmcXm2CmdPadCtrl",           TOKEN(emc_xm2cmd_pad_ctrl) },
+	{ "EmcXm2CmdPadCtrl2",          TOKEN(emc_xm2cmd_pad_ctrl2) },
+	{ "EmcXm2DqsPadCtrl",           TOKEN(emc_xm2dqs_pad_ctrl) },
+	{ "EmcXm2DqsPadCtrl2",          TOKEN(emc_xm2dqs_pad_ctrl2) },
+	{ "EmcXm2DqsPadCtrl3",          TOKEN(emc_xm2dqs_pad_ctrl3) },
+	{ "EmcXm2DqPadCtrl",            TOKEN(emc_xm2dq_pad_ctrl) },
+	{ "EmcXm2DqPadCtrl2",           TOKEN(emc_xm2dq_pad_ctrl2) },
+	{ "EmcXm2ClkPadCtrl",           TOKEN(emc_xm2clk_pad_ctrl) },
+	{ "EmcXm2CompPadCtrl",          TOKEN(emc_xm2comp_pad_ctrl) },
+	{ "EmcXm2VttGenPadCtrl",        TOKEN(emc_xm2vttgen_pad_ctrl) },
+	{ "EmcXm2VttGenPadCtrl2",       TOKEN(emc_xm2vttgen_pad_ctrl2) },
+	{ "EmcXm2QUsePadCtrl",          TOKEN(emc_xm2quse_pad_ctrl) },
+	{ "McEmemAdrCfg",               TOKEN(mc_emem_adr_cfg) },
+	{ "McEmemAdrCfgDev0",           TOKEN(mc_emem_adr_cfg_dev0) },
+	{ "McEmemAdrCfgDev1",           TOKEN(mc_emem_adr_cfg_dev1) },
+	{ "McEmemArbCfg",               TOKEN(mc_emem_arb_cfg) },
+	{ "McEmemArbOutstandingReq",    TOKEN(mc_emem_arb_outstanding_req) },
+	{ "McEmemArbTimingRcd",         TOKEN(mc_emem_arb_timing_rcd) },
+	{ "McEmemArbTimingRp",          TOKEN(mc_emem_arb_timing_rp) },
+	{ "McEmemArbTimingRc",          TOKEN(mc_emem_arb_timing_rc) },
+	{ "McEmemArbTimingRas",         TOKEN(mc_emem_arb_timing_ras) },
+	{ "McEmemArbTimingFaw",         TOKEN(mc_emem_arb_timing_faw) },
+	{ "McEmemArbTimingRrd",         TOKEN(mc_emem_arb_timing_rrd) },
+	{ "McEmemArbTimingRap2Pre",     TOKEN(mc_emem_arb_timing_rap2pre) },
+	{ "McEmemArbTimingWap2Pre",     TOKEN(mc_emem_arb_timing_wap2pre) },
+	{ "McEmemArbTimingR2R",         TOKEN(mc_emem_arb_timing_r2r) },
+	{ "McEmemArbTimingW2W",         TOKEN(mc_emem_arb_timing_w2w) },
+	{ "McEmemArbTimingR2W",         TOKEN(mc_emem_arb_timing_r2w) },
+	{ "McEmemArbTimingW2R",         TOKEN(mc_emem_arb_timing_w2r) },
+	{ "McEmemArbDaTurns",           TOKEN(mc_emem_arb_da_turns) },
+	{ "McEmemArbDaCovers",          TOKEN(mc_emem_arb_da_covers) },
+	{ "McEmemArbMisc0",             TOKEN(mc_emem_arb_misc0) },
+	{ "McEmemArbMisc1",             TOKEN(mc_emem_arb_misc1) },
+	{ "McEmemArbRing1Throttle",     TOKEN(mc_emem_arb_ring1_throttle) },
+	{ "McEmemArbOverride",          TOKEN(mc_emem_arb_override) },
+	{ "McEmemArbRsv",               TOKEN(mc_emem_arb_rsv) },
+	{ "McClkenOverride",            TOKEN(mc_clken_override) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_nand_table_t30[] = {
+
+	/* Note: NandTiming2 must appear before NandTiming, because NandTiming
+	 *       is a prefix of NandTiming2 and would otherwise match first.
+	 */
+	{ "ClockDivider",          TOKEN(nand_clock_divider) },
+	{ "BlockSizeLog2",          TOKEN(nand_block_size_log2) },
+	{ "PageSizeLog2",          TOKEN(nand_page_size_log2) },
+	{ "NandAsyncTiming3",          TOKEN(nand_async_timing3) },
+	{ "NandAsyncTiming2",          TOKEN(nand_async_timing2) },
+	{ "NandAsyncTiming1",          TOKEN(nand_async_timing1) },
+	{ "NandAsyncTiming0",          TOKEN(nand_async_timing0) },
+	{ "DisableSyncDDR",          TOKEN(nand_disable_sync_ddr) },
+	{ "NandSDDRTiming1",          TOKEN(nand_sddr_timing1) },
+	{ "NandSDDRTiming0",          TOKEN(nand_sddr_timing0) },
+	{ "NandTDDRTiming1",          TOKEN(nand_tddr_timing1) },
+	{ "NandTDDRTiming0",          TOKEN(nand_tddr_timing0) },
+	{ "NandFbioDqsibDlyByte",          TOKEN(nand_fbio_dqsib_dly_byte) },
+	{ "NandFbioQuseDlyByte",          TOKEN(nand_fbio_quse_dly_byte) },
+	{ "NandFbioCfgQuseLate",          TOKEN(nand_fbio_cfg_quse_late) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_sdmmc_table_t30[] = {
+	{ "ClockDivider",           TOKEN(sdmmc_clock_divider) },
+	{ "DataWidth",
+	  token_sdmmc_data_width,
+	  field_type_enum,
+	  s_sdmmc_data_width_table_t30 },
+	{ "MaxPowerClassSupported", TOKEN(sdmmc_max_power_class_supported) },
+	{ "SdController", TOKEN(sdmmc_sd_controller) },
+	{ NULL, 0, 0, NULL }
+};
+
+field_item s_spiflash_table_t30[] = {
+	{ "ReadCommandTypeFast", TOKEN(spiflash_read_command_type_fast) },
+	{ "ClockDivider",        TOKEN(spiflash_clock_divider) },
+	{ "ClockSource",
+	  token_spiflash_clock_source,
+	  field_type_enum,
+	  s_spi_clock_source_table_t30 },
+	{ NULL, 0, 0, NULL }
+};
+
+parse_subfield_item s_device_type_table_t30[] = {
+	{ "NandParams.", token_nand_params,
+		s_nand_table_t30, t30_set_dev_param },
+	{ "SdmmcParams.", token_sdmmc_params,
+		s_sdmmc_table_t30, t30_set_dev_param },
+	{ "SpiFlashParams.", token_spiflash_params,
+		s_spiflash_table_t30, t30_set_dev_param },
+
+	{ NULL, 0, NULL }
+};
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
