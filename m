Delivery-date: Thu, 27 May 2021 21:39:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmLqx-0000Ug-Jd
	for lore@lore.pengutronix.de; Thu, 27 May 2021 21:39:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmLqt-0003qp-45
	for lore@pengutronix.de; Thu, 27 May 2021 21:39:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KB36N8VoWux4eWm9Hg5U6lL+VS2Pzz3TAXLAl9qsdxo=; b=ekzBXdydkc4PWX
	u7nKgX8Aah5RbrqxvxKg6wh7pQKcVWhx+WReG5vPThAlmQCLPPNWAieXXySo/awOCBPpZJz3Wc4yj
	La71unpWURPEjp1UZP925xm6/vHCequOnWsCOZHePcN+vN/g0AYgYGH1wPb/PdErs7/sseRsvMBS7
	Oqd8l+ZstVnfHTfBxZLZafsUHSGS6Hcy7NmDzzY4Gb1WgEnpZUFqZabnPuvNPuVEU2Vaz8p5taTKQ
	kBBeRgiybRL41yTrf6+jNNR/O9ko7Fi+LOKJBozlnlzjJwsnUTc1ik97SkS6pI+cbjcYCJ7mOPn9r
	15+pSYgXWJUlqNYP2oMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmLoo-0091oE-Hh; Thu, 27 May 2021 19:37:22 +0000
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmLob-0091j0-Jl
 for barebox@lists.infradead.org; Thu, 27 May 2021 19:37:15 +0000
Received: from x230.trabucayre.com (unknown
 [IPv6:2a01:e34:efc8:1080:3e97:eff:fe89:644f])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 6F3DD2003C8;
 Thu, 27 May 2021 21:37:03 +0200 (CEST)
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
To: barebox@lists.infradead.org
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
Date: Thu, 27 May 2021 21:36:00 +0200
Message-Id: <20210527193600.20879-1-gwenj@trabucayre.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_123710_168356_35519EB5 
X-CRM114-Status: GOOD (  20.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: SoCFPGA: add Terasic DE10-Nano board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

The Terasic DE10-Nano board is based on CycloneV SoCFPGA (5CSEBA6) with

What has been tested to work:
- SD card
- Gigabit network

Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/terasic-de10-nano/Makefile    |   2 +
 arch/arm/boards/terasic-de10-nano/board.c     |  35 +
 .../terasic-de10-nano/iocsr_config_cyclone5.c | 678 ++++++++++++++++++
 arch/arm/boards/terasic-de10-nano/lowlevel.c  |  13 +
 .../boards/terasic-de10-nano/pinmux_config.c  | 241 +++++++
 .../arm/boards/terasic-de10-nano/pll_config.h | 107 +++
 .../boards/terasic-de10-nano/sdram_config.h   | 112 +++
 .../boards/terasic-de10-nano/sequencer_auto.h | 225 ++++++
 .../sequencer_auto_ac_init.c                  |  67 ++
 .../sequencer_auto_inst_init.c                | 158 ++++
 .../terasic-de10-nano/sequencer_defines.h     | 165 +++++
 arch/arm/configs/socfpga-xload-2_defconfig    |   1 +
 arch/arm/configs/socfpga_defconfig            |   1 +
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/socfpga_cyclone5_de10_nano.dts   |  34 +
 arch/arm/mach-socfpga/Kconfig                 |   4 +
 dts/src/arm/socfpga_cyclone5_de10_nano.dts    | 117 +++
 images/Makefile.socfpga                       |   8 +
 19 files changed, 1970 insertions(+)
 create mode 100644 arch/arm/boards/terasic-de10-nano/Makefile
 create mode 100644 arch/arm/boards/terasic-de10-nano/board.c
 create mode 100644 arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
 create mode 100644 arch/arm/boards/terasic-de10-nano/lowlevel.c
 create mode 100644 arch/arm/boards/terasic-de10-nano/pinmux_config.c
 create mode 100644 arch/arm/boards/terasic-de10-nano/pll_config.h
 create mode 100644 arch/arm/boards/terasic-de10-nano/sdram_config.h
 create mode 100644 arch/arm/boards/terasic-de10-nano/sequencer_auto.h
 create mode 100644 arch/arm/boards/terasic-de10-nano/sequencer_auto_ac_init.c
 create mode 100644 arch/arm/boards/terasic-de10-nano/sequencer_auto_inst_init.c
 create mode 100644 arch/arm/boards/terasic-de10-nano/sequencer_defines.h
 create mode 100644 arch/arm/dts/socfpga_cyclone5_de10_nano.dts
 create mode 100644 dts/src/arm/socfpga_cyclone5_de10_nano.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 40b0af8d3..b02a4a4b8 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -129,6 +129,7 @@ obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
+obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)	+= terasic-de10-nano/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
 obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
diff --git a/arch/arm/boards/terasic-de10-nano/Makefile b/arch/arm/boards/terasic-de10-nano/Makefile
new file mode 100644
index 000000000..8c927fe29
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/Makefile
@@ -0,0 +1,2 @@
+obj-y += lowlevel.o board.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/terasic-de10-nano/board.c b/arch/arm/boards/terasic-de10-nano/board.c
new file mode 100644
index 000000000..dc0e8967d
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/board.c
@@ -0,0 +1,35 @@
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <linux/micrel_phy.h>
+#include <linux/phy.h>
+#include <linux/sizes.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <mach/cyclone5-regs.h>
+
+static int phy_fixup(struct phy_device *dev)
+{
+	/*
+	 * min rx data delay, max rx/tx clock delay,
+	 * min rx/tx control delay
+	 */
+	phy_write_mmd_indirect(dev, 4, 2, 0);
+	phy_write_mmd_indirect(dev, 5, 2, 0);
+	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
+	return 0;
+}
+
+static int socfpga_init(void)
+{
+	if (!of_machine_is_compatible("terasic,de10-nano"))
+		return 0;
+
+	if (IS_ENABLED(CONFIG_PHYLIB))
+		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK, phy_fixup);
+
+	return 0;
+}
+console_initcall(socfpga_init);
diff --git a/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
new file mode 100644
index 000000000..c1291dea4
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/iocsr_config_cyclone5.c
@@ -0,0 +1,678 @@
+/* GENERATED FILE - DO NOT EDIT */
+/*
+ * Copyright Altera Corporation (C) 2012-2014. All rights reserved
+ *
+ * SPDX-License-Identifier:    BSD-3-Clause
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *    * Redistributions of source code must retain the above copyright
+ *      notice, this list of conditions and the following disclaimer.
+ *    * Redistributions in binary form must reproduce the above copyright
+ *      notice, this list of conditions and the following disclaimer in the
+ *      documentation and/or other materials provided with the distribution.
+ *    * Neither the name of Altera Corporation nor the
+ *      names of its contributors may be used to endorse or promote products
+ *      derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+ * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ * DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+ * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+ * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+ * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#include <mach/cyclone5-scan-manager.h>
+
+static const unsigned long iocsr_scan_chain0_table[((CONFIG_HPS_IOCSR_SCANCHAIN0_LENGTH / 32) + 1)]
+    = {
+	0x00000000,
+	0x00000000,
+	0x0FF00000,
+	0xC0000000,
+	0x0000003F,
+	0x00008000,
+	0x00060180,
+	0x18060000,
+	0x18000000,
+	0x00018060,
+	0x00000000,
+	0x00004000,
+	0x000300C0,
+	0x0C030000,
+	0x0C000000,
+	0x00000030,
+	0x0000C030,
+	0x00002000,
+	0x00020000,
+	0x06018000,
+	0x06000000,
+	0x00000018,
+	0x00006018,
+	0x00001000,
+};
+
+static const unsigned long iocsr_scan_chain1_table[((CONFIG_HPS_IOCSR_SCANCHAIN1_LENGTH / 32) + 1)]
+    = {
+	0x00100000,
+	0x300C0000,
+	0x300000C0,
+	0x000000C0,
+	0x000300C0,
+	0x00008000,
+	0x00060180,
+	0x20000000,
+	0x00000000,
+	0x00000080,
+	0x00020000,
+	0x00004000,
+	0x000300C0,
+	0x10000000,
+	0x0C000000,
+	0x00000030,
+	0x0000C030,
+	0x00002000,
+	0x00020000,
+	0x06018000,
+	0x01FE0000,
+	0xF8000000,
+	0x00000007,
+	0x00001000,
+	0x00010000,
+	0x04000000,
+	0x00000000,
+	0x00000010,
+	0x00004000,
+	0x00000800,
+	0x00000000,
+	0x00000000,
+	0x00000000,
+	0x00000008,
+	0x00002000,
+	0x00000400,
+	0x00000000,
+	0x00C03000,
+	0x00000003,
+	0x00000000,
+	0x00000000,
+	0x00000200,
+	0x00601806,
+	0x00000000,
+	0x80600000,
+	0x80000601,
+	0x00000601,
+	0x00000100,
+	0x00300C03,
+	0xC0300C00,
+	0xC0300000,
+	0xC0000300,
+	0x000C0300,
+	0x00000080,
+};
+
+static const unsigned long iocsr_scan_chain2_table[((CONFIG_HPS_IOCSR_SCANCHAIN2_LENGTH / 32) + 1)]
+    = {
+	0x300C0300,
+	0x00000000,
+	0x0FF00000,
+	0x00000000,
+	0x000300C0,
+	0x00008000,
+	0x00080000,
+	0x18060000,
+	0x18000000,
+	0x00018060,
+	0x00020000,
+	0x00004000,
+	0x200300C0,
+	0x10000000,
+	0x00000000,
+	0x00000040,
+	0x00010000,
+	0x00002000,
+	0x10018060,
+	0x06018000,
+	0x06000000,
+	0x00010018,
+	0x00006018,
+	0x00001000,
+	0x00010000,
+	0x00000000,
+	0x03000000,
+	0x0000800C,
+	0x00C0300C,
+	0x00000800,
+};
+
+static const unsigned long iocsr_scan_chain3_table[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)]
+    = {
+	0x0C420D80,
+	0x082000FF,
+	0x0A804001,
+	0x07900000,
+	0x08020000,
+	0x00100000,
+	0x0A800000,
+	0x07900000,
+	0x08020000,
+	0x00100000,
+	0xC8800000,
+	0x00003001,
+	0x00C00722,
+	0x00000000,
+	0x00000021,
+	0x82000004,
+	0x05400000,
+	0x03C80000,
+	0x04010000,
+	0x00080000,
+	0x05400000,
+	0x03C80000,
+	0x05400000,
+	0x03C80000,
+	0xE4400000,
+	0x00001800,
+	0x00600391,
+	0x800E4400,
+	0x00000001,
+	0x40000002,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x72200000,
+	0x80000C00,
+	0x003001C8,
+	0xC0072200,
+	0x1C880000,
+	0x20000300,
+	0x00040000,
+	0x50670000,
+	0x00000010,
+	0x24590000,
+	0x00001000,
+	0xA0000034,
+	0x0D000001,
+	0xC0680618,
+	0x45034071,
+	0x0A281A01,
+	0x806180D0,
+	0x34071C06,
+	0x01A034D0,
+	0x180D0000,
+	0x71C06806,
+	0x01450340,
+	0xD000001A,
+	0x0680E380,
+	0x10040000,
+	0x00200000,
+	0x10040000,
+	0x00200000,
+	0x15000000,
+	0x0F200000,
+	0x15000000,
+	0x0F200000,
+	0x01FE0000,
+	0x00000000,
+	0x01800E44,
+	0x00391000,
+	0x007F8006,
+	0x00000000,
+	0x0A800001,
+	0x07900000,
+	0x0A800000,
+	0x07900000,
+	0x0A800000,
+	0x07900000,
+	0x08020000,
+	0x00100000,
+	0xC8800000,
+	0x00003001,
+	0x00C00722,
+	0x00000FF0,
+	0x72200000,
+	0x80000C00,
+	0x05400000,
+	0x02480000,
+	0x04000000,
+	0x00080000,
+	0x05400000,
+	0x03C80000,
+	0x05400000,
+	0x03C80000,
+	0x6A1C0000,
+	0x00001800,
+	0x00600391,
+	0x800E4400,
+	0x1A870001,
+	0x40000600,
+	0x02A00040,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x02A00000,
+	0x01E40000,
+	0x72200000,
+	0x80000C00,
+	0x003001C8,
+	0xC0072200,
+	0x1C880000,
+	0x20000300,
+	0x00040000,
+	0x50670000,
+	0x00000010,
+	0x24590000,
+	0x00001000,
+	0xA0000034,
+	0x0D000001,
+	0xC0680618,
+	0x45034071,
+	0x0A281A01,
+	0x806180D0,
+	0x34071C06,
+	0x01A00040,
+	0x180D0002,
+	0x71C06806,
+	0x01450340,
+	0xD00A281A,
+	0x06806180,
+	0x10040000,
+	0x00200000,
+	0x10040000,
+	0x00200000,
+	0x15000000,
+	0x0F200000,
+	0x15000000,
+	0x0F200000,
+	0x01FE0000,
+	0x00000000,
+	0x01800E44,
+	0x00391000,
+	0x007F8006,
+	0x00000000,
+	0x99300001,
+	0x34343400,
+	0xAA0D4000,
+	0x01C3A800,
+	0xAA0D4000,
+	0x01C3A800,
+	0xAA0D4000,
+	0x01C3A800,
+	0x00040100,
+	0x00000800,
+	0x00000000,
+	0x00001208,
+	0x00482000,
+	0x01000000,
+	0x00000000,
+	0x00410482,
+	0x0006A000,
+	0x0001B400,
+	0x00020000,
+	0x00000400,
+	0x0002A000,
+	0x0001E400,
+	0x5506A000,
+	0x00E1D400,
+	0x00000000,
+	0xC880090C,
+	0x00003001,
+	0x90400000,
+	0x00000000,
+	0x2020C243,
+	0x2A835000,
+	0x0070EA00,
+	0x2A835000,
+	0x0070EA00,
+	0x2A835000,
+	0x0070EA00,
+	0x00010040,
+	0x00000200,
+	0x00000000,
+	0x00000482,
+	0x00120800,
+	0x00002000,
+	0x80000000,
+	0x00104120,
+	0x00000200,
+	0xAC0D5F80,
+	0xFFFFFFFF,
+	0x14F3690D,
+	0x1A041414,
+	0x00D00000,
+	0x0C864000,
+	0x79E47A03,
+	0xCAAAA3DD,
+	0xF6D5551E,
+	0x0352D348,
+	0x821A0000,
+	0x0000D000,
+	0x030C0680,
+	0xD559647A,
+	0x1ECAAAA3,
+	0xC8F6D965,
+	0x00034AB2,
+	0x00080200,
+	0x00001000,
+	0x00080200,
+	0x00001000,
+	0x000A8000,
+	0x00075000,
+	0x541A8000,
+	0x03875001,
+	0x10000000,
+	0x00000000,
+	0x0080C000,
+	0x41000000,
+	0x00003FC2,
+	0x00820000,
+	0xAA0D4000,
+	0x01C3A800,
+	0xAA0D4000,
+	0x01C3A800,
+	0xAA0D4000,
+	0x01C3A800,
+	0x00040100,
+	0x00000800,
+	0x00000000,
+	0x00001208,
+	0x00482000,
+	0x00008000,
+	0x00000000,
+	0x00410482,
+	0x0006A000,
+	0x0001B400,
+	0x00020000,
+	0x00000400,
+	0x00020080,
+	0x00000400,
+	0x5506A000,
+	0x00E1D400,
+	0x00000000,
+	0x0000090C,
+	0x00000010,
+	0x90400000,
+	0x00000000,
+	0x2020C243,
+	0x2A835000,
+	0x0070EA00,
+	0x2A835000,
+	0x0070EA00,
+	0x2A835000,
+	0x0070EA00,
+	0x00015000,
+	0x0000F200,
+	0x00000000,
+	0x00000482,
+	0x00120800,
+	0x00600391,
+	0x80000000,
+	0x00104120,
+	0x00000200,
+	0xAC0D5F80,
+	0xFFFFFFFF,
+	0x14F3690D,
+	0x1A041414,
+	0x00D00000,
+	0x0C864000,
+	0x79E47A03,
+	0x8B2CA3DD,
+	0xF6D9651E,
+	0x034AB2C8,
+	0x821A0041,
+	0x0000D000,
+	0x00000680,
+	0xD559647A,
+	0x1E8B2CA3,
+	0xC8F6D965,
+	0x00034AB2,
+	0x00080200,
+	0x00001000,
+	0x00080200,
+	0x00001000,
+	0x000A8000,
+	0x00075000,
+	0x541A8000,
+	0x03875001,
+	0x10000000,
+	0x00000000,
+	0x0080C000,
+	0x41000000,
+	0x04000002,
+	0x00820000,
+	0xAA0D4000,
+	0x01C3A800,
+	0xAA0D4000,
+	0x01C3A800,
+	0xAA0D4000,
+	0x01C3A800,
+	0x00040100,
+	0x00000800,
+	0x00000000,
+	0x00001208,
+	0x00482000,
+	0x00008000,
+	0x00000000,
+	0x00410482,
+	0x0006A000,
+	0x0001B400,
+	0x00020000,
+	0x00000400,
+	0x0002A000,
+	0x0001E400,
+	0x5506A000,
+	0x00E1D400,
+	0x00000000,
+	0xC880090C,
+	0x00003001,
+	0x90400000,
+	0x00000000,
+	0x2020C243,
+	0x2A835000,
+	0x0070EA00,
+	0x2A835000,
+	0x0070EA00,
+	0x2A835000,
+	0x0070EA00,
+	0x00010040,
+	0x00000200,
+	0x00000000,
+	0x00000482,
+	0x00120800,
+	0x00002000,
+	0x80000000,
+	0x00104120,
+	0x00000200,
+	0xAC0D5F80,
+	0xFFFFFFFF,
+	0x14F3690D,
+	0x1A041414,
+	0x00D00000,
+	0x14864000,
+	0x59647A05,
+	0x8AAAA3D5,
+	0xF6D9651E,
+	0x034AB2C8,
+	0x821A0000,
+	0x0000D000,
+	0x00000680,
+	0xD559647A,
+	0x1E8B2CA3,
+	0xC8F6D965,
+	0x00034AB2,
+	0x00080200,
+	0x00001000,
+	0x00080200,
+	0x00001000,
+	0x000A8000,
+	0x00075000,
+	0x541A8000,
+	0x03875001,
+	0x10000000,
+	0x00000000,
+	0x0080C000,
+	0x41000000,
+	0x04000002,
+	0x00820000,
+	0xAA0D4000,
+	0x01C3A800,
+	0xAA0D4000,
+	0x01C3A800,
+	0xAA0D4000,
+	0x01C3A800,
+	0x00040100,
+	0x00000800,
+	0x00000000,
+	0x00001208,
+	0x00482000,
+	0x00008000,
+	0x00000000,
+	0x00410482,
+	0x0006A000,
+	0x0001B400,
+	0x00020000,
+	0x00000400,
+	0x00020080,
+	0x00000400,
+	0x5506A000,
+	0x00E1D400,
+	0x00000000,
+	0x0000090C,
+	0x00000010,
+	0x90400000,
+	0x00000000,
+	0x2020C243,
+	0x2A835000,
+	0x0070EA00,
+	0x2A835000,
+	0x0070EA00,
+	0x2A835000,
+	0x0070EA00,
+	0x00010040,
+	0x00000200,
+	0x00000000,
+	0x00000482,
+	0x00120800,
+	0x00400000,
+	0x80000000,
+	0x00104120,
+	0x00000200,
+	0xAC0D5F80,
+	0xFFFFFFFF,
+	0x14F1690D,
+	0x1A041414,
+	0x00D00000,
+	0x14864000,
+	0x59647A05,
+	0x8B2CA3D5,
+	0xF6D9651E,
+	0x0352D348,
+	0x821A0000,
+	0x0000D000,
+	0x00000680,
+	0xD559647A,
+	0x1E8B2CA3,
+	0x48F6D965,
+	0x000352D3,
+	0x00080200,
+	0x00001000,
+	0x00080200,
+	0x00001000,
+	0x000A8000,
+	0x00075000,
+	0x541A8000,
+	0x03875001,
+	0x10000000,
+	0x00000000,
+	0x0080C000,
+	0x41000000,
+	0x04000002,
+	0x00820000,
+	0x00489800,
+	0x801A1A1A,
+	0x00000200,
+	0x80000004,
+	0x00000200,
+	0x80000004,
+	0x00000200,
+	0x80000004,
+	0x00000200,
+	0x00000004,
+	0x00040000,
+	0x10000000,
+	0x00000000,
+	0x00000040,
+	0x00010000,
+	0x40002000,
+	0x00000100,
+	0x40000002,
+	0x00000100,
+	0x40000002,
+	0x00000100,
+	0x40000002,
+	0x00000100,
+	0x00000002,
+	0x00020000,
+	0x08000000,
+	0x00000000,
+	0x00000020,
+	0x00008000,
+	0x20001000,
+	0x00000080,
+	0x20000001,
+	0x00000080,
+	0x20000001,
+	0x00000080,
+	0x20000001,
+	0x00000080,
+	0x00000001,
+	0x00010000,
+	0x04000000,
+	0x00FF0000,
+	0x00000000,
+	0x00004000,
+	0x00000800,
+	0xC0000001,
+	0x00041419,
+	0x40000000,
+	0x04000816,
+	0x000D0000,
+	0x00006800,
+	0x00000340,
+	0xD000001A,
+	0x06800000,
+	0x00340000,
+	0x0001A000,
+	0x00000D00,
+	0x40000068,
+	0x1A000003,
+	0x00D00000,
+	0x00068000,
+	0x00003400,
+	0x000001A0,
+	0x00000401,
+	0x00000008,
+	0x00000401,
+	0x00000008,
+	0x00000401,
+	0x00000008,
+	0x00000401,
+	0x80000008,
+	0x0000007F,
+	0x20000000,
+	0x00000000,
+	0xE0000080,
+	0x0000001F,
+	0x00004000,
+};
diff --git a/arch/arm/boards/terasic-de10-nano/lowlevel.c b/arch/arm/boards/terasic-de10-nano/lowlevel.c
new file mode 100644
index 000000000..d80cea6f2
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/lowlevel.c
@@ -0,0 +1,13 @@
+#include "sdram_config.h"
+#include "pinmux_config.c"
+#include "pll_config.h"
+#include "sequencer_defines.h"
+#include "sequencer_auto.h"
+#include "sequencer_auto_inst_init.c"
+#include "sequencer_auto_ac_init.c"
+#include "iocsr_config_cyclone5.c"
+
+#include <mach/lowlevel.h>
+
+SOCFPGA_C5_ENTRY(start_socfpga_de10_nano, socfpga_cyclone5_de10_nano, SZ_1G);
+SOCFPGA_C5_XLOAD_ENTRY(start_socfpga_de10_nano_xload, SZ_1G);
diff --git a/arch/arm/boards/terasic-de10-nano/pinmux_config.c b/arch/arm/boards/terasic-de10-nano/pinmux_config.c
new file mode 100644
index 000000000..7dbe1c1d1
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/pinmux_config.c
@@ -0,0 +1,241 @@
+/* GENERATED FILE - DO NOT EDIT */
+/*
+ * Copyright Altera Corporation (C) 2012-2014. All rights reserved
+ *
+ * SPDX-License-Identifier:    BSD-3-Clause
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *    * Redistributions of source code must retain the above copyright
+ *      notice, this list of conditions and the following disclaimer.
+ *    * Redistributions in binary form must reproduce the above copyright
+ *      notice, this list of conditions and the following disclaimer in the
+ *      documentation and/or other materials provided with the distribution.
+ *    * Neither the name of Altera Corporation nor the
+ *      names of its contributors may be used to endorse or promote products
+ *      derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+ * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ * DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+ * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+ * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+ * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#include <common.h>
+
+/* pin MUX configuration data */
+static unsigned long sys_mgr_init_table[] = {
+	0,			/* EMACIO0 */
+	2,			/* EMACIO1 */
+	2,			/* EMACIO2 */
+	2,			/* EMACIO3 */
+	2,			/* EMACIO4 */
+	2,			/* EMACIO5 */
+	2,			/* EMACIO6 */
+	2,			/* EMACIO7 */
+	2,			/* EMACIO8 */
+	0,			/* EMACIO9 */
+	2,			/* EMACIO10 */
+	2,			/* EMACIO11 */
+	2,			/* EMACIO12 */
+	2,			/* EMACIO13 */
+	0,			/* EMACIO14 */
+	0,			/* EMACIO15 */
+	0,			/* EMACIO16 */
+	0,			/* EMACIO17 */
+	0,			/* EMACIO18 */
+	0,			/* EMACIO19 */
+	3,			/* FLASHIO0 */
+	0,			/* FLASHIO1 */
+	3,			/* FLASHIO2 */
+	3,			/* FLASHIO3 */
+	0,			/* FLASHIO4 */
+	0,			/* FLASHIO5 */
+	0,			/* FLASHIO6 */
+	0,			/* FLASHIO7 */
+	0,			/* FLASHIO8 */
+	3,			/* FLASHIO9 */
+	3,			/* FLASHIO10 */
+	3,			/* FLASHIO11 */
+	0,			/* GENERALIO0 */
+	1,			/* GENERALIO1 */
+	1,			/* GENERALIO2 */
+	1,			/* GENERALIO3 */
+	1,			/* GENERALIO4 */
+	0,			/* GENERALIO5 */
+	0,			/* GENERALIO6 */
+	1,			/* GENERALIO7 */
+	1,			/* GENERALIO8 */
+	0,			/* GENERALIO9 */
+	0,			/* GENERALIO10 */
+	0,			/* GENERALIO11 */
+	0,			/* GENERALIO12 */
+	0,			/* GENERALIO13 */
+	0,			/* GENERALIO14 */
+	1,			/* GENERALIO15 */
+	1,			/* GENERALIO16 */
+	1,			/* GENERALIO17 */
+	1,			/* GENERALIO18 */
+	0,			/* GENERALIO19 */
+	0,			/* GENERALIO20 */
+	0,			/* GENERALIO21 */
+	0,			/* GENERALIO22 */
+	0,			/* GENERALIO23 */
+	0,			/* GENERALIO24 */
+	0,			/* GENERALIO25 */
+	0,			/* GENERALIO26 */
+	0,			/* GENERALIO27 */
+	0,			/* GENERALIO28 */
+	0,			/* GENERALIO29 */
+	0,			/* GENERALIO30 */
+	0,			/* GENERALIO31 */
+	2,			/* MIXED1IO0 */
+	2,			/* MIXED1IO1 */
+	2,			/* MIXED1IO2 */
+	2,			/* MIXED1IO3 */
+	2,			/* MIXED1IO4 */
+	2,			/* MIXED1IO5 */
+	2,			/* MIXED1IO6 */
+	2,			/* MIXED1IO7 */
+	2,			/* MIXED1IO8 */
+	2,			/* MIXED1IO9 */
+	2,			/* MIXED1IO10 */
+	2,			/* MIXED1IO11 */
+	2,			/* MIXED1IO12 */
+	2,			/* MIXED1IO13 */
+	0,			/* MIXED1IO14 */
+	0,			/* MIXED1IO15 */
+	0,			/* MIXED1IO16 */
+	0,			/* MIXED1IO17 */
+	0,			/* MIXED1IO18 */
+	0,			/* MIXED1IO19 */
+	0,			/* MIXED1IO20 */
+	0,			/* MIXED1IO21 */
+	0,			/* MIXED2IO0 */
+	0,			/* MIXED2IO1 */
+	0,			/* MIXED2IO2 */
+	0,			/* MIXED2IO3 */
+	0,			/* MIXED2IO4 */
+	0,			/* MIXED2IO5 */
+	0,			/* MIXED2IO6 */
+	0,			/* MIXED2IO7 */
+	0,			/* GPLINMUX48 */
+	0,			/* GPLINMUX49 */
+	0,			/* GPLINMUX50 */
+	0,			/* GPLINMUX51 */
+	0,			/* GPLINMUX52 */
+	0,			/* GPLINMUX53 */
+	0,			/* GPLINMUX54 */
+	0,			/* GPLINMUX55 */
+	0,			/* GPLINMUX56 */
+	0,			/* GPLINMUX57 */
+	0,			/* GPLINMUX58 */
+	0,			/* GPLINMUX59 */
+	0,			/* GPLINMUX60 */
+	0,			/* GPLINMUX61 */
+	0,			/* GPLINMUX62 */
+	0,			/* GPLINMUX63 */
+	0,			/* GPLINMUX64 */
+	0,			/* GPLINMUX65 */
+	0,			/* GPLINMUX66 */
+	0,			/* GPLINMUX67 */
+	0,			/* GPLINMUX68 */
+	0,			/* GPLINMUX69 */
+	0,			/* GPLINMUX70 */
+	1,			/* GPLMUX0 */
+	1,			/* GPLMUX1 */
+	1,			/* GPLMUX2 */
+	1,			/* GPLMUX3 */
+	1,			/* GPLMUX4 */
+	1,			/* GPLMUX5 */
+	1,			/* GPLMUX6 */
+	1,			/* GPLMUX7 */
+	1,			/* GPLMUX8 */
+	1,			/* GPLMUX9 */
+	1,			/* GPLMUX10 */
+	1,			/* GPLMUX11 */
+	1,			/* GPLMUX12 */
+	1,			/* GPLMUX13 */
+	1,			/* GPLMUX14 */
+	1,			/* GPLMUX15 */
+	1,			/* GPLMUX16 */
+	1,			/* GPLMUX17 */
+	1,			/* GPLMUX18 */
+	1,			/* GPLMUX19 */
+	1,			/* GPLMUX20 */
+	1,			/* GPLMUX21 */
+	1,			/* GPLMUX22 */
+	1,			/* GPLMUX23 */
+	1,			/* GPLMUX24 */
+	1,			/* GPLMUX25 */
+	1,			/* GPLMUX26 */
+	1,			/* GPLMUX27 */
+	1,			/* GPLMUX28 */
+	1,			/* GPLMUX29 */
+	1,			/* GPLMUX30 */
+	1,			/* GPLMUX31 */
+	1,			/* GPLMUX32 */
+	1,			/* GPLMUX33 */
+	1,			/* GPLMUX34 */
+	1,			/* GPLMUX35 */
+	1,			/* GPLMUX36 */
+	1,			/* GPLMUX37 */
+	1,			/* GPLMUX38 */
+	1,			/* GPLMUX39 */
+	1,			/* GPLMUX40 */
+	1,			/* GPLMUX41 */
+	1,			/* GPLMUX42 */
+	1,			/* GPLMUX43 */
+	1,			/* GPLMUX44 */
+	1,			/* GPLMUX45 */
+	1,			/* GPLMUX46 */
+	1,			/* GPLMUX47 */
+	1,			/* GPLMUX48 */
+	1,			/* GPLMUX49 */
+	1,			/* GPLMUX50 */
+	1,			/* GPLMUX51 */
+	1,			/* GPLMUX52 */
+	1,			/* GPLMUX53 */
+	1,			/* GPLMUX54 */
+	1,			/* GPLMUX55 */
+	1,			/* GPLMUX56 */
+	1,			/* GPLMUX57 */
+	1,			/* GPLMUX58 */
+	1,			/* GPLMUX59 */
+	1,			/* GPLMUX60 */
+	1,			/* GPLMUX61 */
+	1,			/* GPLMUX62 */
+	1,			/* GPLMUX63 */
+	1,			/* GPLMUX64 */
+	1,			/* GPLMUX65 */
+	1,			/* GPLMUX66 */
+	1,			/* GPLMUX67 */
+	1,			/* GPLMUX68 */
+	1,			/* GPLMUX69 */
+	1,			/* GPLMUX70 */
+	0,			/* NANDUSEFPGA */
+	0,			/* UART0USEFPGA */
+	0,			/* RGMII1USEFPGA */
+	0,			/* SPIS0USEFPGA */
+	0,			/* CAN0USEFPGA */
+	0,			/* I2C0USEFPGA */
+	0,			/* SDMMCUSEFPGA */
+	0,			/* QSPIUSEFPGA */
+	0,			/* SPIS1USEFPGA */
+	0,			/* RGMII0USEFPGA */
+	0,			/* UART1USEFPGA */
+	0,			/* CAN1USEFPGA */
+	0,			/* USB1USEFPGA */
+	0,			/* I2C3USEFPGA */
+	0,			/* I2C2USEFPGA */
+	0,			/* I2C1USEFPGA */
+	0,			/* SPIM1USEFPGA */
+	0,			/* USB0USEFPGA */
+	0			/* SPIM0USEFPGA */
+};
diff --git a/arch/arm/boards/terasic-de10-nano/pll_config.h b/arch/arm/boards/terasic-de10-nano/pll_config.h
new file mode 100644
index 000000000..d78eaae98
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/pll_config.h
@@ -0,0 +1,107 @@
+/* GENERATED FILE - DO NOT EDIT */
+/*
+ * Copyright Altera Corporation (C) 2012-2014. All rights reserved
+ *
+ * SPDX-License-Identifier:    BSD-3-Clause
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *    * Redistributions of source code must retain the above copyright
+ *      notice, this list of conditions and the following disclaimer.
+ *    * Redistributions in binary form must reproduce the above copyright
+ *      notice, this list of conditions and the following disclaimer in the
+ *      documentation and/or other materials provided with the distribution.
+ *    * Neither the name of Altera Corporation nor the
+ *      names of its contributors may be used to endorse or promote products
+ *      derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+ * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ * DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+ * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+ * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+ * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#ifndef _PRELOADER_PLL_CONFIG_H_
+#define _PRELOADER_PLL_CONFIG_H_
+
+#define CONFIG_HPS_DBCTRL_STAYOSC1 (1)
+
+#define CONFIG_HPS_MAINPLLGRP_VCO_DENOM (0)
+#define CONFIG_HPS_MAINPLLGRP_VCO_NUMER (63)
+#define CONFIG_HPS_MAINPLLGRP_MPUCLK_CNT (0)
+#define CONFIG_HPS_MAINPLLGRP_MAINCLK_CNT (0)
+#define CONFIG_HPS_MAINPLLGRP_DBGATCLK_CNT (0)
+#define CONFIG_HPS_MAINPLLGRP_MAINQSPICLK_CNT (511)
+#define CONFIG_HPS_MAINPLLGRP_MAINNANDSDMMCCLK_CNT (511)
+#define CONFIG_HPS_MAINPLLGRP_CFGS2FUSER0CLK_CNT (15)
+#define CONFIG_HPS_MAINPLLGRP_MAINDIV_L3MPCLK (1)
+#define CONFIG_HPS_MAINPLLGRP_MAINDIV_L3SPCLK (1)
+#define CONFIG_HPS_MAINPLLGRP_MAINDIV_L4MPCLK (1)
+#define CONFIG_HPS_MAINPLLGRP_MAINDIV_L4SPCLK (1)
+#define CONFIG_HPS_MAINPLLGRP_DBGDIV_DBGATCLK (0)
+#define CONFIG_HPS_MAINPLLGRP_DBGDIV_DBGCLK (1)
+#define CONFIG_HPS_MAINPLLGRP_TRACEDIV_TRACECLK (0)
+#define CONFIG_HPS_MAINPLLGRP_L4SRC_L4MP (1)
+#define CONFIG_HPS_MAINPLLGRP_L4SRC_L4SP (1)
+
+#define CONFIG_HPS_PERPLLGRP_VCO_DENOM (0)
+#define CONFIG_HPS_PERPLLGRP_VCO_NUMER (39)
+#define CONFIG_HPS_PERPLLGRP_VCO_PSRC (0)
+#define CONFIG_HPS_PERPLLGRP_EMAC0CLK_CNT (511)
+#define CONFIG_HPS_PERPLLGRP_EMAC1CLK_CNT (3)
+#define CONFIG_HPS_PERPLLGRP_PERQSPICLK_CNT (511)
+#define CONFIG_HPS_PERPLLGRP_PERNANDSDMMCCLK_CNT (4)
+#define CONFIG_HPS_PERPLLGRP_PERBASECLK_CNT (4)
+#define CONFIG_HPS_PERPLLGRP_S2FUSER1CLK_CNT (511)
+#define CONFIG_HPS_PERPLLGRP_DIV_USBCLK (0)
+#define CONFIG_HPS_PERPLLGRP_DIV_SPIMCLK (0)
+#define CONFIG_HPS_PERPLLGRP_DIV_CAN0CLK (4)
+#define CONFIG_HPS_PERPLLGRP_DIV_CAN1CLK (4)
+#define CONFIG_HPS_PERPLLGRP_GPIODIV_GPIODBCLK (6249)
+#define CONFIG_HPS_PERPLLGRP_SRC_SDMMC (2)
+#define CONFIG_HPS_PERPLLGRP_SRC_NAND (2)
+#define CONFIG_HPS_PERPLLGRP_SRC_QSPI (1)
+
+#define CONFIG_HPS_SDRPLLGRP_VCO_DENOM (0)
+#define CONFIG_HPS_SDRPLLGRP_VCO_NUMER (31)
+#define CONFIG_HPS_SDRPLLGRP_VCO_SSRC (0)
+#define CONFIG_HPS_SDRPLLGRP_DDRDQSCLK_CNT (1)
+#define CONFIG_HPS_SDRPLLGRP_DDRDQSCLK_PHASE (0)
+#define CONFIG_HPS_SDRPLLGRP_DDR2XDQSCLK_CNT (0)
+#define CONFIG_HPS_SDRPLLGRP_DDR2XDQSCLK_PHASE (0)
+#define CONFIG_HPS_SDRPLLGRP_DDRDQCLK_CNT (1)
+#define CONFIG_HPS_SDRPLLGRP_DDRDQCLK_PHASE (4)
+#define CONFIG_HPS_SDRPLLGRP_S2FUSER2CLK_CNT (4)
+#define CONFIG_HPS_SDRPLLGRP_S2FUSER2CLK_PHASE (0)
+
+#define CONFIG_HPS_CLK_OSC1_HZ (25000000)
+#define CONFIG_HPS_CLK_OSC2_HZ (25000000)
+#define CONFIG_HPS_CLK_F2S_SDR_REF_HZ (0)
+#define CONFIG_HPS_CLK_F2S_PER_REF_HZ (0)
+#define CONFIG_HPS_CLK_MAINVCO_HZ (1600000000)
+#define CONFIG_HPS_CLK_PERVCO_HZ (1000000000)
+#define CONFIG_HPS_CLK_SDRVCO_HZ (800000000)
+#define CONFIG_HPS_CLK_EMAC0_HZ (1953125)
+#define CONFIG_HPS_CLK_EMAC1_HZ (250000000)
+#define CONFIG_HPS_CLK_USBCLK_HZ (200000000)
+#define CONFIG_HPS_CLK_NAND_HZ (50000000)
+#define CONFIG_HPS_CLK_SDMMC_HZ (200000000)
+#define CONFIG_HPS_CLK_QSPI_HZ (3125000)
+#define CONFIG_HPS_CLK_SPIM_HZ (200000000)
+#define CONFIG_HPS_CLK_CAN0_HZ (12500000)
+#define CONFIG_HPS_CLK_CAN1_HZ (12500000)
+#define CONFIG_HPS_CLK_GPIODB_HZ (32000)
+#define CONFIG_HPS_CLK_L4_MP_HZ (100000000)
+#define CONFIG_HPS_CLK_L4_SP_HZ (100000000)
+
+#define CONFIG_HPS_ALTERAGRP_MPUCLK (1)
+#define CONFIG_HPS_ALTERAGRP_MAINCLK (3)
+#define CONFIG_HPS_ALTERAGRP_DBGATCLK (3)
+
+#endif /* _PRELOADER_PLL_CONFIG_H_ */
diff --git a/arch/arm/boards/terasic-de10-nano/sdram_config.h b/arch/arm/boards/terasic-de10-nano/sdram_config.h
new file mode 100644
index 000000000..8f084021d
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/sdram_config.h
@@ -0,0 +1,112 @@
+/* GENERATED FILE - DO NOT EDIT */
+/*
+ * Copyright Altera Corporation (C) 2012-2014. All rights reserved
+ *
+ * SPDX-License-Identifier:    BSD-3-Clause
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *    * Redistributions of source code must retain the above copyright
+ *      notice, this list of conditions and the following disclaimer.
+ *    * Redistributions in binary form must reproduce the above copyright
+ *      notice, this list of conditions and the following disclaimer in the
+ *      documentation and/or other materials provided with the distribution.
+ *    * Neither the name of Altera Corporation nor the
+ *      names of its contributors may be used to endorse or promote products
+ *      derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+ * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ * DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+ * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+ * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+ * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#ifndef __SDRAM_CONFIG_H
+#define __SDRAM_CONFIG_H
+
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_MEMTYPE			(2)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_MEMBL			(8)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ADDRORDER		(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ECCEN			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_ECCCORREN		(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_REORDEREN		(1)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_STARVELIMIT		(10)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_DQSTRKEN			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLCFG_NODMPINS			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TCWL			(7)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_AL			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TCL			(7)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TRRD			(3)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TFAW			(15)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING1_TRFC			(120)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TREFI		(3120)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TRCD		(6)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TRP		(6)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TWR		(6)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING2_IF_TWTR		(4)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRTP			(3)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRAS			(14)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TRC			(20)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TMRD			(4)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING3_TCCD			(4)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING4_SELFRFSHEXIT		(512)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMTIMING4_PWRDOWNEXIT		(3)
+#define CONFIG_HPS_SDR_CTRLCFG_LOWPWRTIMING_AUTOPDCYCLES	(0)
+#define CONFIG_HPS_SDR_CTRLCFG_LOWPWRTIMING_CLKDISABLECYCLES	(8)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_COLBITS		(10)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_ROWBITS		(15)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_BANKBITS		(3)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMADDRW_CSBITS			(1)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMIFWIDTH_IFWIDTH		(32)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMDEVWIDTH_DEVWIDTH		(8)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMINTR_INTREN			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_LOWPWREQ_SELFRFSHMASK		(3)
+#define CONFIG_HPS_SDR_CTRLCFG_STATICCFG_MEMBL			(2)
+#define CONFIG_HPS_SDR_CTRLCFG_STATICCFG_USEECCASDATA		(0)
+#define CONFIG_HPS_SDR_CTRLCFG_CTRLWIDTH_CTRLWIDTH		(2)
+#define CONFIG_HPS_SDR_CTRLCFG_PORTCFG_AUTOPCHEN		(0)
+#define CONFIG_HPS_SDR_CTRLCFG_FIFOCFG_SYNCMODE			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_FIFOCFG_INCSYNC			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPRIORITY_USERPRIORITY		(0x0)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_0_STATICWEIGHT_31_0	(0x21084210)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_STATICWEIGHT_49_32	(0x10441)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_1_SUMOFWEIGHT_13_0	(0x78)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_2_SUMOFWEIGHT_45_14	(0x0)
+#define CONFIG_HPS_SDR_CTRLCFG_MPWIEIGHT_3_SUMOFWEIGHT_63_46	(0x0)
+#define CONFIG_HPS_SDR_CTRLCFG_PHYCTRL_PHYCTRL_0		(0x200)
+
+#define CONFIG_HPS_SDR_CTRLCFG_CPORTWIDTH_CPORTWIDTH		(0x44555)
+#define CONFIG_HPS_SDR_CTRLCFG_CPORTWMAP_CPORTWMAP		(0x2C011000)
+#define CONFIG_HPS_SDR_CTRLCFG_CPORTRMAP_CPORTRMAP		(0xB00088)
+#define CONFIG_HPS_SDR_CTRLCFG_RFIFOCMAP_RFIFOCMAP		(0x760210)
+#define CONFIG_HPS_SDR_CTRLCFG_WFIFOCMAP_WFIFOCMAP		(0x980543)
+#define CONFIG_HPS_SDR_CTRLCFG_CPORTRDWR_CPORTRDWR		(0x5A56A)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_0_THRESHOLD1_31_0	(0x20820820)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_1_THRESHOLD1_59_32	(0x8208208)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_1_THRESHOLD2_3_0	(0)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_2_THRESHOLD2_35_4	(0x41041041)
+#define CONFIG_HPS_SDR_CTRLCFG_MPPACING_3_THRESHOLD2_59_36	(0x410410)
+#define CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_0_THRESHOLDRSTCYCLES_31_0 \
+(0x01010101)
+#define CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_1_THRESHOLDRSTCYCLES_63_32 \
+(0x01010101)
+#define CONFIG_HPS_SDR_CTRLCFG_MPTHRESHOLDRST_2_THRESHOLDRSTCYCLES_79_64 \
+(0x0101)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMODT_READ			(0)
+#define CONFIG_HPS_SDR_CTRLCFG_DRAMODT_WRITE			(1)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_READ_PORT_USED	(0xF)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_WRITE_PORT_USED	(0xF)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST_COMMAND_PORT_USED	(0x1)
+#define CONFIG_HPS_SDR_CTRLCFG_FPGAPORTRST			(0x1FF)
+
+#define CONFIG_HPS_SDR_CTRLCFG_EXTRATIME1_CFG_EXTRA_CTL_CLK_RD_TO_WR (2)
+#define CONFIG_HPS_SDR_CTRLCFG_EXTRATIME1_CFG_EXTRA_CTL_CLK_RD_TO_WR_BC (2)
+#define CONFIG_HPS_SDR_CTRLCFG_EXTRATIME1_CFG_EXTRA_CTL_CLK_RD_TO_WR_DIFF_CHIP (2)
+
+#endif /*#ifndef__SDRAM_CONFIG_H */
diff --git a/arch/arm/boards/terasic-de10-nano/sequencer_auto.h b/arch/arm/boards/terasic-de10-nano/sequencer_auto.h
new file mode 100644
index 000000000..34dc3108a
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/sequencer_auto.h
@@ -0,0 +1,225 @@
+/*
+Copyright (C) 2020  Intel Corporation. All rights reserved.
+
+SPDX-License-Identifier:    BSD-3-Clause
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of Intel Corporation nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+*/
+#define __RW_MGR_ac_mrs1 0x04
+#define __RW_MGR_ac_mrs3 0x06
+#define __RW_MGR_ac_write_bank_0_col_0_nodata_wl_1 0x1C
+#define __RW_MGR_ac_act_1 0x11
+#define __RW_MGR_ac_write_postdata 0x1A
+#define __RW_MGR_ac_act_0 0x10
+#define __RW_MGR_ac_des 0x0D
+#define __RW_MGR_ac_init_reset_1_cke_0 0x01
+#define __RW_MGR_ac_write_data 0x19
+#define __RW_MGR_ac_init_reset_0_cke_0 0x00
+#define __RW_MGR_ac_read_bank_0_1_norden 0x22
+#define __RW_MGR_ac_pre_all 0x12
+#define __RW_MGR_ac_mrs0_user 0x02
+#define __RW_MGR_ac_mrs0_dll_reset 0x03
+#define __RW_MGR_ac_read_bank_0_0 0x1D
+#define __RW_MGR_ac_write_bank_0_col_1 0x16
+#define __RW_MGR_ac_read_bank_0_1 0x1F
+#define __RW_MGR_ac_write_bank_1_col_0 0x15
+#define __RW_MGR_ac_write_bank_1_col_1 0x17
+#define __RW_MGR_ac_write_bank_0_col_0 0x14
+#define __RW_MGR_ac_read_bank_1_0 0x1E
+#define __RW_MGR_ac_mrs1_mirr 0x0A
+#define __RW_MGR_ac_read_bank_1_1 0x20
+#define __RW_MGR_ac_des_odt_1 0x0E
+#define __RW_MGR_ac_mrs0_dll_reset_mirr 0x09
+#define __RW_MGR_ac_zqcl 0x07
+#define __RW_MGR_ac_write_predata 0x18
+#define __RW_MGR_ac_mrs0_user_mirr 0x08
+#define __RW_MGR_ac_ref 0x13
+#define __RW_MGR_ac_nop 0x0F
+#define __RW_MGR_ac_rdimm 0x23
+#define __RW_MGR_ac_mrs2_mirr 0x0B
+#define __RW_MGR_ac_write_bank_0_col_0_nodata 0x1B
+#define __RW_MGR_ac_read_en 0x21
+#define __RW_MGR_ac_mrs3_mirr 0x0C
+#define __RW_MGR_ac_mrs2 0x05
+#define __RW_MGR_CONTENT_ac_mrs1 0x10090044
+#define __RW_MGR_CONTENT_ac_mrs3 0x100B0000
+#define __RW_MGR_CONTENT_ac_write_bank_0_col_0_nodata_wl_1 0x18980000
+#define __RW_MGR_CONTENT_ac_act_1 0x106B0000
+#define __RW_MGR_CONTENT_ac_write_postdata 0x38780000
+#define __RW_MGR_CONTENT_ac_act_0 0x10680000
+#define __RW_MGR_CONTENT_ac_des 0x30780000
+#define __RW_MGR_CONTENT_ac_init_reset_1_cke_0 0x20780000
+#define __RW_MGR_CONTENT_ac_write_data 0x3CF80000
+#define __RW_MGR_CONTENT_ac_init_reset_0_cke_0 0x20700000
+#define __RW_MGR_CONTENT_ac_read_bank_0_1_norden 0x10580008
+#define __RW_MGR_CONTENT_ac_pre_all 0x10280400
+#define __RW_MGR_CONTENT_ac_mrs0_user 0x10080431
+#define __RW_MGR_CONTENT_ac_mrs0_dll_reset 0x10080530
+#define __RW_MGR_CONTENT_ac_read_bank_0_0 0x13580000
+#define __RW_MGR_CONTENT_ac_write_bank_0_col_1 0x1C980008
+#define __RW_MGR_CONTENT_ac_read_bank_0_1 0x13580008
+#define __RW_MGR_CONTENT_ac_write_bank_1_col_0 0x1C9B0000
+#define __RW_MGR_CONTENT_ac_write_bank_1_col_1 0x1C9B0008
+#define __RW_MGR_CONTENT_ac_write_bank_0_col_0 0x1C980000
+#define __RW_MGR_CONTENT_ac_read_bank_1_0 0x135B0000
+#define __RW_MGR_CONTENT_ac_mrs1_mirr 0x100A0024
+#define __RW_MGR_CONTENT_ac_read_bank_1_1 0x135B0008
+#define __RW_MGR_CONTENT_ac_des_odt_1 0x38780000
+#define __RW_MGR_CONTENT_ac_mrs0_dll_reset_mirr 0x100804C8
+#define __RW_MGR_CONTENT_ac_zqcl 0x10380400
+#define __RW_MGR_CONTENT_ac_write_predata 0x38F80000
+#define __RW_MGR_CONTENT_ac_mrs0_user_mirr 0x10080449
+#define __RW_MGR_CONTENT_ac_ref 0x10480000
+#define __RW_MGR_CONTENT_ac_nop 0x30780000
+#define __RW_MGR_CONTENT_ac_rdimm 0x10780000
+#define __RW_MGR_CONTENT_ac_mrs2_mirr 0x10090008
+#define __RW_MGR_CONTENT_ac_write_bank_0_col_0_nodata 0x18180000
+#define __RW_MGR_CONTENT_ac_read_en 0x33780000
+#define __RW_MGR_CONTENT_ac_mrs3_mirr 0x100B0000
+#define __RW_MGR_CONTENT_ac_mrs2 0x100A0010
+
+/*
+Copyright (C) 2020  Intel Corporation. All rights reserved.
+
+SPDX-License-Identifier:    BSD-3-Clause
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of Intel Corporation nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+*/
+#define __RW_MGR_READ_B2B_WAIT2 0x6B
+#define __RW_MGR_LFSR_WR_RD_BANK_0_WAIT 0x32
+#define __RW_MGR_REFRESH_ALL 0x14
+#define __RW_MGR_ZQCL 0x06
+#define __RW_MGR_LFSR_WR_RD_BANK_0_NOP 0x23
+#define __RW_MGR_LFSR_WR_RD_BANK_0_DQS 0x24
+#define __RW_MGR_ACTIVATE_0_AND_1 0x0D
+#define __RW_MGR_MRS2_MIRR 0x0A
+#define __RW_MGR_INIT_RESET_0_CKE_0 0x6F
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_WAIT 0x46
+#define __RW_MGR_ACTIVATE_1 0x0F
+#define __RW_MGR_MRS2 0x04
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_WL_1 0x35
+#define __RW_MGR_MRS1 0x03
+#define __RW_MGR_IDLE_LOOP1 0x7B
+#define __RW_MGR_GUARANTEED_WRITE_WAIT2 0x19
+#define __RW_MGR_MRS3 0x05
+#define __RW_MGR_IDLE_LOOP2 0x7A
+#define __RW_MGR_GUARANTEED_WRITE_WAIT1 0x1F
+#define __RW_MGR_LFSR_WR_RD_BANK_0_DATA 0x25
+#define __RW_MGR_GUARANTEED_WRITE_WAIT3 0x1D
+#define __RW_MGR_RDIMM_CMD 0x79
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_NOP 0x37
+#define __RW_MGR_GUARANTEED_WRITE_WAIT0 0x1B
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_DATA 0x39
+#define __RW_MGR_GUARANTEED_READ_CONT 0x54
+#define __RW_MGR_REFRESH_DELAY 0x15
+#define __RW_MGR_MRS3_MIRR 0x0B
+#define __RW_MGR_IDLE 0x00
+#define __RW_MGR_READ_B2B 0x59
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0_DQS 0x38
+#define __RW_MGR_GUARANTEED_WRITE 0x18
+#define __RW_MGR_PRECHARGE_ALL 0x12
+#define __RW_MGR_SGLE_READ 0x7D
+#define __RW_MGR_MRS0_USER_MIRR 0x0C
+#define __RW_MGR_RETURN 0x01
+#define __RW_MGR_LFSR_WR_RD_DM_BANK_0 0x36
+#define __RW_MGR_MRS0_USER 0x07
+#define __RW_MGR_GUARANTEED_READ 0x4C
+#define __RW_MGR_MRS0_DLL_RESET_MIRR 0x08
+#define __RW_MGR_INIT_RESET_1_CKE_0 0x74
+#define __RW_MGR_ACTIVATE_0_AND_1_WAIT2 0x10
+#define __RW_MGR_LFSR_WR_RD_BANK_0_WL_1 0x21
+#define __RW_MGR_MRS0_DLL_RESET 0x02
+#define __RW_MGR_ACTIVATE_0_AND_1_WAIT1 0x0E
+#define __RW_MGR_LFSR_WR_RD_BANK_0 0x22
+#define __RW_MGR_CLEAR_DQS_ENABLE 0x49
+#define __RW_MGR_MRS1_MIRR 0x09
+#define __RW_MGR_READ_B2B_WAIT1 0x61
+#define __RW_MGR_CONTENT_READ_B2B_WAIT2 0x00C680
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_WAIT 0x00A680
+#define __RW_MGR_CONTENT_REFRESH_ALL 0x000980
+#define __RW_MGR_CONTENT_ZQCL 0x008380
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_NOP 0x00E700
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_DQS 0x000C00
+#define __RW_MGR_CONTENT_ACTIVATE_0_AND_1 0x000800
+#define __RW_MGR_CONTENT_MRS2_MIRR 0x008580
+#define __RW_MGR_CONTENT_INIT_RESET_0_CKE_0 0x000000
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_WAIT 0x00A680
+#define __RW_MGR_CONTENT_ACTIVATE_1 0x000880
+#define __RW_MGR_CONTENT_MRS2 0x008280
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_WL_1 0x00CE00
+#define __RW_MGR_CONTENT_MRS1 0x008200
+#define __RW_MGR_CONTENT_IDLE_LOOP1 0x00A680
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE_WAIT2 0x00CCE8
+#define __RW_MGR_CONTENT_MRS3 0x008300
+#define __RW_MGR_CONTENT_IDLE_LOOP2 0x008680
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE_WAIT1 0x00AC88
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_DATA 0x020CE0
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE_WAIT3 0x00EC88
+#define __RW_MGR_CONTENT_RDIMM_CMD 0x009180
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_NOP 0x00E700
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE_WAIT0 0x008CE8
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_DATA 0x030CE0
+#define __RW_MGR_CONTENT_GUARANTEED_READ_CONT 0x001168
+#define __RW_MGR_CONTENT_REFRESH_DELAY 0x00A680
+#define __RW_MGR_CONTENT_MRS3_MIRR 0x008600
+#define __RW_MGR_CONTENT_IDLE 0x080000
+#define __RW_MGR_CONTENT_READ_B2B 0x040E88
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0_DQS 0x000C00
+#define __RW_MGR_CONTENT_GUARANTEED_WRITE 0x000B68
+#define __RW_MGR_CONTENT_PRECHARGE_ALL 0x000900
+#define __RW_MGR_CONTENT_SGLE_READ 0x040F08
+#define __RW_MGR_CONTENT_MRS0_USER_MIRR 0x008400
+#define __RW_MGR_CONTENT_RETURN 0x080680
+#define __RW_MGR_CONTENT_LFSR_WR_RD_DM_BANK_0 0x00CD80
+#define __RW_MGR_CONTENT_MRS0_USER 0x008100
+#define __RW_MGR_CONTENT_GUARANTEED_READ 0x001168
+#define __RW_MGR_CONTENT_MRS0_DLL_RESET_MIRR 0x008480
+#define __RW_MGR_CONTENT_INIT_RESET_1_CKE_0 0x000080
+#define __RW_MGR_CONTENT_ACTIVATE_0_AND_1_WAIT2 0x00A680
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0_WL_1 0x00CE00
+#define __RW_MGR_CONTENT_MRS0_DLL_RESET 0x008180
+#define __RW_MGR_CONTENT_ACTIVATE_0_AND_1_WAIT1 0x008680
+#define __RW_MGR_CONTENT_LFSR_WR_RD_BANK_0 0x00CD80
+#define __RW_MGR_CONTENT_CLEAR_DQS_ENABLE 0x001158
+#define __RW_MGR_CONTENT_MRS1_MIRR 0x008500
+#define __RW_MGR_CONTENT_READ_B2B_WAIT1 0x00A680
diff --git a/arch/arm/boards/terasic-de10-nano/sequencer_auto_ac_init.c b/arch/arm/boards/terasic-de10-nano/sequencer_auto_ac_init.c
new file mode 100644
index 000000000..05f160967
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/sequencer_auto_ac_init.c
@@ -0,0 +1,67 @@
+/*
+Copyright (C) 2020  Intel Corporation. All rights reserved.
+
+SPDX-License-Identifier:    BSD-3-Clause
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of Intel Corporation nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+*/
+
+static const uint32_t ac_rom_init_size = 36;
+static const uint32_t ac_rom_init[36] = {
+	0x20700000,
+	0x20780000,
+	0x10080431,
+	0x10080530,
+	0x10090044,
+	0x100a0010,
+	0x100b0000,
+	0x10380400,
+	0x10080449,
+	0x100804c8,
+	0x100a0024,
+	0x10090008,
+	0x100b0000,
+	0x30780000,
+	0x38780000,
+	0x30780000,
+	0x10680000,
+	0x106b0000,
+	0x10280400,
+	0x10480000,
+	0x1c980000,
+	0x1c9b0000,
+	0x1c980008,
+	0x1c9b0008,
+	0x38f80000,
+	0x3cf80000,
+	0x38780000,
+	0x18180000,
+	0x18980000,
+	0x13580000,
+	0x135b0000,
+	0x13580008,
+	0x135b0008,
+	0x33780000,
+	0x10580008,
+	0x10780000
+};
diff --git a/arch/arm/boards/terasic-de10-nano/sequencer_auto_inst_init.c b/arch/arm/boards/terasic-de10-nano/sequencer_auto_inst_init.c
new file mode 100644
index 000000000..2ca79c65a
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/sequencer_auto_inst_init.c
@@ -0,0 +1,158 @@
+/*
+Copyright (C) 2020  Intel Corporation. All rights reserved.
+
+SPDX-License-Identifier:    BSD-3-Clause
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of Intel Corporation nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+*/
+
+static const uint32_t inst_rom_init_size = 127;
+static const uint32_t inst_rom_init[127] = {
+	0x80000,
+	0x80680,
+	0x8180,
+	0x8200,
+	0x8280,
+	0x8300,
+	0x8380,
+	0x8100,
+	0x8480,
+	0x8500,
+	0x8580,
+	0x8600,
+	0x8400,
+	0x800,
+	0x8680,
+	0x880,
+	0xa680,
+	0x80680,
+	0x900,
+	0x80680,
+	0x980,
+	0xa680,
+	0x8680,
+	0x80680,
+	0xb68,
+	0xcce8,
+	0xae8,
+	0x8ce8,
+	0xb88,
+	0xec88,
+	0xa08,
+	0xac88,
+	0x80680,
+	0xce00,
+	0xcd80,
+	0xe700,
+	0xc00,
+	0x20ce0,
+	0x20ce0,
+	0x20ce0,
+	0x20ce0,
+	0xd00,
+	0x680,
+	0x680,
+	0x680,
+	0x680,
+	0x60e80,
+	0x61080,
+	0x61080,
+	0x61080,
+	0xa680,
+	0x8680,
+	0x80680,
+	0xce00,
+	0xcd80,
+	0xe700,
+	0xc00,
+	0x30ce0,
+	0x30ce0,
+	0x30ce0,
+	0x30ce0,
+	0xd00,
+	0x680,
+	0x680,
+	0x680,
+	0x680,
+	0x70e80,
+	0x71080,
+	0x71080,
+	0x71080,
+	0xa680,
+	0x8680,
+	0x80680,
+	0x1158,
+	0x6d8,
+	0x80680,
+	0x1168,
+	0x7e8,
+	0x7e8,
+	0x87e8,
+	0x40fe8,
+	0x410e8,
+	0x410e8,
+	0x410e8,
+	0x1168,
+	0x7e8,
+	0x7e8,
+	0xa7e8,
+	0x80680,
+	0x40e88,
+	0x41088,
+	0x41088,
+	0x41088,
+	0x40f68,
+	0x410e8,
+	0x410e8,
+	0x410e8,
+	0xa680,
+	0x40fe8,
+	0x410e8,
+	0x410e8,
+	0x410e8,
+	0x41008,
+	0x41088,
+	0x41088,
+	0x41088,
+	0x1100,
+	0xc680,
+	0x8680,
+	0xe680,
+	0x80680,
+	0x0,
+	0x8000,
+	0xa000,
+	0xc000,
+	0x80000,
+	0x80,
+	0x8080,
+	0xa080,
+	0xc080,
+	0x80080,
+	0x9180,
+	0x8680,
+	0xa680,
+	0x80680,
+	0x40f08,
+	0x80680
+};
diff --git a/arch/arm/boards/terasic-de10-nano/sequencer_defines.h b/arch/arm/boards/terasic-de10-nano/sequencer_defines.h
new file mode 100644
index 000000000..98d0475cb
--- /dev/null
+++ b/arch/arm/boards/terasic-de10-nano/sequencer_defines.h
@@ -0,0 +1,165 @@
+/*
+Copyright (C) 2016 Intel Corporation
+All rights reserved.
+
+SPDX-License-Identifier:    BSD-3-Clause
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of Altera Corporation nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL ALTERA CORPORATION BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+*/
+#ifndef _SEQUENCER_DEFINES_H_
+#define _SEQUENCER_DEFINES_H_
+
+#define AC_ROM_MR1_MIRR 0000000100100
+#define AC_ROM_MR1_OCD_ENABLE
+#define AC_ROM_MR2_MIRR 0000000001000
+#define AC_ROM_MR3_MIRR 0000000000000
+#define AC_ROM_MR0_CALIB
+#define AC_ROM_MR0_DLL_RESET_MIRR 0010011001000
+#define AC_ROM_MR0_DLL_RESET 0010100110000
+#define AC_ROM_MR0_MIRR 0010001001001
+#define AC_ROM_MR0 0010000110001
+#define AC_ROM_MR1 0000001000100
+#define AC_ROM_MR2 0000000010000
+#define AC_ROM_MR3 0000000000000
+#define AC_ROM_USER_ADD_0 0_0000_0000_0000
+#define AC_ROM_USER_ADD_1 0_0000_0000_1000
+#define AFI_CLK_FREQ 401
+#define AFI_RATE_RATIO 1
+#define AP_MODE 0
+#define ARRIAVGZ 0
+#define ARRIAV 0
+#define AVL_CLK_FREQ 67
+#define BFM_MODE 0
+#define BURST2 0
+#define CALIBRATE_BIT_SLIPS 0
+#define CALIB_LFIFO_OFFSET 8
+#define CALIB_VFIFO_OFFSET 6
+#define CYCLONEV 1
+#define DDR2 0
+#define DDR3 1
+#define DDRX 1
+#define DM_PINS_ENABLED 1
+#define ENABLE_ASSERT 0
+#define ENABLE_BRINGUP_DEBUGGING 0
+#define ENABLE_DELAY_CHAIN_WRITE 0
+#define ENABLE_DQS_IN_CENTERING 1
+#define ENABLE_DQS_OUT_CENTERING 0
+#define ENABLE_EXPORT_SEQ_DEBUG_BRIDGE 0
+#define ENABLE_INST_ROM_WRITE 1
+#define ENABLE_MARGIN_REPORT_GEN 0
+#define ENABLE_NON_DESTRUCTIVE_CALIB 0
+#define ENABLE_NON_DES_CAL_TEST 0
+#define ENABLE_NON_DES_CAL 0
+#define ENABLE_SUPER_QUICK_CALIBRATION 0
+#define ENABLE_TCL_DEBUG 0
+#define FAKE_CAL_FAIL 0
+#define FIX_READ_LATENCY 8
+#define FULL_RATE 1
+#define GUARANTEED_READ_BRINGUP_TEST 0
+#define HALF_RATE 0
+#define HARD_PHY 1
+#define HARD_VFIFO 1
+#define HCX_COMPAT_MODE 0
+#define HHP_HPS_SIMULATION 0
+#define HHP_HPS_VERIFICATION 0
+#define HHP_HPS 1
+#define HPS_HW 1
+#define HR_DDIO_OUT_HAS_THREE_REGS 0
+#define IO_DELAY_PER_DCHAIN_TAP 25
+#define IO_DELAY_PER_DQS_EN_DCHAIN_TAP 25
+#define IO_DELAY_PER_OPA_TAP 312
+#define IO_DLL_CHAIN_LENGTH 8
+#define IO_DM_OUT_RESERVE 0
+#define IO_DQDQS_OUT_PHASE_MAX 0
+#define IO_DQS_EN_DELAY_MAX 31
+#define IO_DQS_EN_DELAY_OFFSET 0
+#define IO_DQS_EN_PHASE_MAX 7
+#define IO_DQS_IN_DELAY_MAX 31
+#define IO_DQS_IN_RESERVE 4
+#define IO_DQS_OUT_RESERVE 4
+#define IO_DQ_OUT_RESERVE 0
+#define IO_IO_IN_DELAY_MAX 31
+#define IO_IO_OUT1_DELAY_MAX 31
+#define IO_IO_OUT2_DELAY_MAX 0
+#define IO_SHIFT_DQS_EN_WHEN_SHIFT_DQS 0
+#define LPDDR1 0
+#define LPDDR2 0
+#define LRDIMM 0
+#define MARGIN_VARIATION_TEST 0
+#define MAX_LATENCY_COUNT_WIDTH 5
+#define MEM_ADDR_WIDTH 13
+#define MRS_MIRROR_PING_PONG_ATSO 0
+#define MULTIPLE_AFI_WLAT 0
+#define NON_DES_CAL 0
+#define NUM_SHADOW_REGS 1
+#define QDRII 0
+#define QUARTER_RATE 0
+#define RDIMM 0
+#define READ_AFTER_WRITE_CALIBRATION 1
+#define READ_VALID_FIFO_SIZE 16
+#define REG_FILE_INIT_SEQ_SIGNATURE 0x555504c9
+#define RLDRAM3 0
+#define RLDRAMII 0
+#define RLDRAMX 0
+#define RUNTIME_CAL_REPORT 0
+#define RW_MGR_MEM_ADDRESS_MIRRORING 0
+#define RW_MGR_MEM_ADDRESS_WIDTH 15
+#define RW_MGR_MEM_BANK_WIDTH 3
+#define RW_MGR_MEM_CHIP_SELECT_WIDTH 1
+#define RW_MGR_MEM_CLK_EN_WIDTH 1
+#define RW_MGR_MEM_CONTROL_WIDTH 1
+#define RW_MGR_MEM_DATA_MASK_WIDTH 4
+#define RW_MGR_MEM_DATA_WIDTH 32
+#define RW_MGR_MEM_DQ_PER_READ_DQS 8
+#define RW_MGR_MEM_DQ_PER_WRITE_DQS 8
+#define RW_MGR_MEM_IF_READ_DQS_WIDTH 4
+#define RW_MGR_MEM_IF_WRITE_DQS_WIDTH 4
+#define RW_MGR_MEM_NUMBER_OF_CS_PER_DIMM 1
+#define RW_MGR_MEM_NUMBER_OF_RANKS 1
+#define RW_MGR_MEM_ODT_WIDTH 1
+#define RW_MGR_MEM_VIRTUAL_GROUPS_PER_READ_DQS 1
+#define RW_MGR_MEM_VIRTUAL_GROUPS_PER_WRITE_DQS 1
+#define RW_MGR_MR0_BL 1
+#define RW_MGR_MR0_CAS_LATENCY 3
+#define RW_MGR_TRUE_MEM_DATA_MASK_WIDTH 4
+#define RW_MGR_WRITE_TO_DEBUG_READ 1.0
+#define SET_FIX_READ_LATENCY_ENABLE 0
+#define SKEW_CALIBRATION 0
+#define SKIP_PTAP_0_DQS_EN_CAL 1
+#define STATIC_FULL_CALIBRATION 1
+#define STATIC_SIM_FILESET 0
+#define STATIC_SKIP_MEM_INIT 0
+#define STRATIXV 0
+#define TINIT_CNTR1_VAL 32
+#define TINIT_CNTR2_VAL 32
+#define TINIT_CNTR0_VAL 99
+#define TRACKING_ERROR_TEST 0
+#define TRACKING_WATCH_TEST 0
+#define TRESET_CNTR1_VAL 99
+#define TRESET_CNTR2_VAL 10
+#define TRESET_CNTR0_VAL 99
+#define USE_DQS_TRACKING 1
+#define USE_SHADOW_REGS 0
+#define USE_USER_RDIMM_VALUE 0
+
+#endif /* _SEQUENCER_DEFINES_H_ */
diff --git a/arch/arm/configs/socfpga-xload-2_defconfig b/arch/arm/configs/socfpga-xload-2_defconfig
index 66cc777a7..78b07aae5 100644
--- a/arch/arm/configs/socfpga-xload-2_defconfig
+++ b/arch/arm/configs/socfpga-xload-2_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_SOCFPGA=y
 CONFIG_ARCH_SOCFPGA_XLOAD=y
 CONFIG_MACH_SOCFPGA_ALTERA_SOCDK=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
+CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_ARM_EXCEPTIONS is not set
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 2509ad0b4..9f39285a9 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_SOCFPGA=y
 CONFIG_MACH_SOCFPGA_EBV_SOCRATES=y
 CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC=y
+CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO=y
 CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a637869fb..e5c7fa629 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -106,6 +106,7 @@ lwl-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
+lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += socfpga_cyclone5_de10_nano.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o \
diff --git a/arch/arm/dts/socfpga_cyclone5_de10_nano.dts b/arch/arm/dts/socfpga_cyclone5_de10_nano.dts
new file mode 100644
index 000000000..6965e3820
--- /dev/null
+++ b/arch/arm/dts/socfpga_cyclone5_de10_nano.dts
@@ -0,0 +1,34 @@
+/*
+ *  Copyright (C) 2021 Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <arm/socfpga_cyclone5_de10_nano.dts>
+#include "socfpga.dtsi"
+
+/ {
+	model = "Terasic DE10-Nano";
+	compatible = "terasic,de10-nano","altr,socfpga-cyclone5", "altr,socfpga";
+
+	chosen {
+		stdout-path = &uart0;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &mmc, "partname:1";
+			file-path = "barebox.env";
+		};
+	};
+};
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 2da875cef..ea2abebaa 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -42,6 +42,10 @@ config MACH_SOCFPGA_TERASIC_DE0_NANO_SOC
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Terasic DE0-NANO-SoC aka Atlas"
 
+config MACH_SOCFPGA_TERASIC_DE10_NANO
+	select ARCH_SOCFPGA_CYCLONE5
+	bool "Terasic DE10-NANO"
+
 config MACH_SOCFPGA_TERASIC_SOCKIT
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Terasic SoCKit"
diff --git a/dts/src/arm/socfpga_cyclone5_de10_nano.dts b/dts/src/arm/socfpga_cyclone5_de10_nano.dts
new file mode 100644
index 000000000..7d8df9b6d
--- /dev/null
+++ b/dts/src/arm/socfpga_cyclone5_de10_nano.dts
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright Altera Corporation (C) 2015. All rights reserved.
+ */
+
+#include "socfpga_cyclone5.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Terasic DE10-Nano";
+	compatible = "terasic,de10-nano", "altr,socfpga-cyclone5", "altr,socfpga";
+
+	chosen {
+		bootargs = "earlyprintk";
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		name = "memory";
+		device_type = "memory";
+		reg = <0x0 0x40000000>; /* 1GB */
+	};
+
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
+	regulator_3_3v: 3-3-v-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		hps_hkey0 {
+			label = "HPS_KEY";
+			gpios = <&portb 25 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		hps0 {
+			label = "hps_led0";
+			gpios = <&portb 24 0>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&gmac1 {
+	status = "okay";
+	phy-mode = "rgmii";
+
+	txd0-skew-ps = <0>; /* -420ps */
+	txd1-skew-ps = <0>; /* -420ps */
+	txd2-skew-ps = <0>; /* -420ps */
+	txd3-skew-ps = <0>; /* -420ps */
+	rxd0-skew-ps = <420>; /* 0ps */
+	rxd1-skew-ps = <420>; /* 0ps */
+	rxd2-skew-ps = <420>; /* 0ps */
+	rxd3-skew-ps = <420>; /* 0ps */
+	txen-skew-ps = <0>; /* -420ps */
+	txc-skew-ps = <1860>; /* 960ps */
+	rxdv-skew-ps = <420>; /* 0ps */
+	rxc-skew-ps = <1680>; /* 780ps */
+
+	max-frame-size = <3800>;
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gpio2 {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+	clock-frequency = <100000>;
+
+	adxl345: adxl345@53 {
+		compatible = "adi,adxl345";
+		reg = <0x53>;
+
+		interrupt-parent = <&portc>;
+		interrupts = <3 2>;
+	};
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&mmc0 {
+	vmmc-supply = <&regulator_3_3v>;
+	vqmmc-supply = <&regulator_3_3v>;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index b36e2a503..26220178a 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -30,6 +30,14 @@ pblb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += start_socfpga_de0_nano_soc
 FILE_barebox-socfpga-de0_nano_soc.img = start_socfpga_de0_nano_soc.pblb
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += barebox-socfpga-de0_nano_soc.img
 
+pblb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += start_socfpga_de10_nano_xload
+FILE_barebox-socfpga-de10_nano-xload.img = start_socfpga_de10_nano_xload.pblb.socfpgaimg
+socfpga-xload-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += barebox-socfpga-de10_nano-xload.img
+
+pblb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += start_socfpga_de10_nano
+FILE_barebox-socfpga-de10_nano.img = start_socfpga_de10_nano.pblb
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO) += barebox-socfpga-de10_nano.img
+
 pblb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles_xload
 FILE_barebox-socfpga-achilles-xload.img = start_socfpga_achilles_xload.pblb.socfpgaimg
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += barebox-socfpga-achilles-xload.img
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

