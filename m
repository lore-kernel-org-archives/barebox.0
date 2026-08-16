Delivery-date: Sun, 16 Aug 2026 20:02:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBt-003pm8-0H
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 310F7201DE4
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=k5bolZeO;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RVhdnhnr2ZquarU5mJVPy6m2l+hbVHcBUB4GU/Bj1Bs=; b=k5bolZeOnMmsfE1ndID5R5p3Fp
	dQby2n3b+alV5rmYxSTLk6VyTO4QxoVNFiujyXGrtNTqhZHuPl9JGPz5p21FcLGivX7l03MujUPwa
	6fyVLCLce0geSApwrZ+FXk+fN9riSVa46+hyfP9Z8AYfSFWhFWpIOxN5Ahy0dlguNu64FhCL6jpDH
	KoczVIbD6rg4v0MV9dBFYvuCGf1Yj8VPw2bje/gEQ3k8M5iPGnAVUFvZZhGyjY/OyXmSIZR8ckItH
	Jw5cAB+wADDeyUiRPah4MkOCey+bIynLpqn1Pt7V/XxZIkxxm39so8ZCdlMjruLXv/a6W70khVTqj
	3dccR4Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBW-00000004xh1-13RY;
	Sun, 16 Aug 2026 18:02:14 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBO-00000004xQU-4BmF
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CCC872021E4;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001osF-2Q;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-1CtS;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:46 +0200
Subject: [PATCH 26/27] ARM: pxa: add Raumfeld Speaker board support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-26-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=26790;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=u3vDLvwXmyxrZggkSakFeZs0BPVWz5XXI+dLlDP43xY=;
 b=IUqCE6lZEsKCl6FComrMlquQ826iedrV86vq1egMToD2ueErKp9ajvEzoEzGcmzhTIqfxNdDL
 IMryu0vc+qDBkPxRoa2JLKudV8kPszFqiKthzZHHDHQGTDwxhUkHcii
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110207_546151_06CBD813 
X-CRM114-Status: GOOD (  44.01  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The Raumfeld speakers are PXA303 based WLAN speakers. The
   Boot ROM reads the NTIM header from the start of NAND, loads the OBM into
   internal SRAM and jumps to it, so barebox has to be the whole boot c [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: yj8h94ge4ztc9g4aqiza5wymdi7x3p5z
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[2.145.167.96:email,0.0.0.0:email,0.3.13.64:email,0.106.207.192:email,0.4.147.224:email];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US]
X-Rspamd-Queue-Id: 310F7201DE4

The Raumfeld speakers are PXA303 based WLAN speakers. The Boot ROM reads
the NTIM header from the start of NAND, loads the OBM into internal SRAM
and jumps to it, so barebox has to be the whole boot chain: a first stage
entry point brings up the hardware and loads the ordinary second stage
image into DRAM.

Nothing here is specific to one model: they differ in enclosure and
speaker assembly, while the CPU board, the NAND layout, the ethernet and
the leds are the same. The device tree therefore includes the common
device tree include rather than any single model's, and carries the
compatible of every model, because barebox boots whichever kernel device
tree sits next to it and blspec_have_entry() refuses an entry whose
device tree is not compatible with the running board.

The first stage replays the register values the vendor OBM and the U-Boot
it loaded use, recovered from the copy in the device's NAND: the pin
multiplexing, the clock configuration written twice, and the DRAM
sequence including the delays on the OS timer and the readbacks that
flush the writes. They have not been decoded against the documentation,
which only matters if the memory or clock configuration is ever to be
changed. The FFUART pins are muxed there too - the vendor OBM is silent
and never needed to, and pxa_debug_ll_init() only programs the UART
registers - and so is the static memory controller, without which the
SMSC ethernet on nCS2 does not answer.

The core comes out of reset at 104MHz. ACCR asks for XL=24 and XN=2, but
the PLL only picks the ratio up once software writes XCLKCFG, and nothing
in the original boot chain ever did. The first stage does the frequency
change, straight to 624MHz and without touching the rails: that operating
point wants 1.375V on VCC_CORE and 1.4V on VCC_SRAM, and the MAX8660 that
supplies both powers up at 1.4V. It is write-only over I2C, so this cannot
be checked - but it does not have to be, because Linux has never done
anything else. pxa3xx-cpufreq carries those voltages and applies none of
them, and with the performance governor it takes this board to 624MHz at
boot, which is what the vendor firmware did too. Programming the rails
properly would drop them to 1.0V at the low operating points; that needs
the PMIC on the power I2C and therefore the driver model, and it buys
power rather than anything this board notices.

The NAND layout is barebox's own, not the one the vendor U-Boot used:
2M for the bootloader - the image is 713K, the old partition was 640K -
1M for the environment in a partition of its own rather than the splash
screen partition it used to squat in, 16M at the end for everything the
box remembers, and the rest UBI. Keeping the settings in a partition
rather than a volume inside the UBI leaves updating the root filesystem
what it is, a write to a whole MTD partition with nothing inside it that
has to survive; the size is driven by wear rather than by the data, which
is well under 100KiB, since a read-only root filesystem never erases a
block and UBI only levels within its own partition. barebox rewrites the
partition nodes in the kernel device tree from these, so this is the
layout on both sides.

The bootloader partition is not marked read-only: barebox lives there and
replaces itself with barebox_update, for which the PXA NAND handler is
registered on it.

Two device tree properties are barebox specific: the environment
partition, which the kernel has no use for, and the heartbeat trigger on
the first led so it is visible that barebox is alive.

The console is driven by the ns16550 driver rather than the PXA one,
which is what the UARTs are. The defconfig enables UBI and UBIFS so the
rootfs in NAND can be read,
the update infrastructure and command, and the MMC driver, which finds
the SD8686 SDIO wifi. Its vmmc-supply is dropped from the device tree: it
points into a PMIC barebox has no driver for, and a declared supply is
mandatory, so pxamci would wait for a regulator that never arrives.

Documentation/boards/pxa/raumfeld.rst describes the two images, the
internal connectors and the partitioning, along with the warning that
comes with the latter.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/pxa/raumfeld.rst           |  78 +++++++++
 arch/arm/boards/Makefile                        |   1 +
 arch/arm/boards/raumfeld-speaker/Makefile       |   5 +
 arch/arm/boards/raumfeld-speaker/board.c        |  37 +++++
 arch/arm/boards/raumfeld-speaker/lowlevel-obm.c | 206 ++++++++++++++++++++++++
 arch/arm/boards/raumfeld-speaker/lowlevel.c     | 106 ++++++++++++
 arch/arm/dts/Makefile                           |   1 +
 arch/arm/dts/pxa300-raumfeld-speaker.dts        | 108 +++++++++++++
 arch/arm/mach-pxa/Kconfig                       |  10 ++
 images/Makefile.pxa                             |  14 ++
 10 files changed, 566 insertions(+)

diff --git a/Documentation/boards/pxa/raumfeld.rst b/Documentation/boards/pxa/raumfeld.rst
new file mode 100644
index 0000000000..ed9aaccde4
--- /dev/null
+++ b/Documentation/boards/pxa/raumfeld.rst
@@ -0,0 +1,78 @@
+Raumfeld Speaker
+================
+
+The Raumfeld speakers are PXA303 based WLAN speakers, sold by Teufel as the
+Speaker M, L, S and One: https://teufel.de/raumfeld-speaker-m-102181000
+
+They differ in enclosure and speaker assembly only, so ``raumfeld_speaker_defconfig``
+and one device tree cover all of them.
+
+Images
+------
+
+``barebox-raumfeld-speaker.img``
+  barebox proper, entered at 0xa0008000 with the hardware already up. This is
+  what the first stage loads, and what to chainload with ``go`` when testing a
+  new build over TFTP.
+
+``barebox-raumfeld-speaker-nand.img``
+  The image the Boot ROM boots: an NTIM header, the OBM that brings up
+  pinmuxing, clocks and DRAM, and a copy of the image above for it to load.
+  Write it to the ``barebox`` partition with ``barebox_update -t nand``.
+
+Internal connectors
+-------------------
+
+CON2, serial console, 3.3V:
+
+===  ==============
+Pin  Signal
+===  ==============
+1    not identified
+2    UART RXD
+3    UART TXD
+4    GPIO79
+5    GPIO84
+6    GPIO81
+7    GPIO83
+8    GND
+===  ==============
+
+CON3, JTAG:
+
+===  ==========
+Pin  Signal
+===  ==========
+1    GND
+2    nSRST
+3    TDO
+4    TCK
+5    TMS
+6    TDI
+7    nTRST
+8    reset status
+===  ==========
+
+Pin 8 is an output and cannot be used to reset the board; nSRST is pin 2.
+
+NAND partitioning
+-----------------
+
+.. warning:: barebox does not use the vendor partitioning and overwrites it.
+
+The vendor bootloader lives in 640KiB at the start of NAND, followed by its
+environment and a splash screen partition, with the rest UBI. barebox does not
+fit in 640KiB, so it takes 2MiB, 1MiB for an environment of its own, and 16MiB
+at the end of the device for everything the running system writes:
+
+=========  ======  ===================
+Offset     Size    Name
+=========  ======  ===================
+0x0000000  2MiB    barebox
+0x0200000  1MiB    barebox-environment
+0x0300000  109MiB  UBI
+0x7000000  16MiB   Data
+=========  ======  ===================
+
+barebox fixes these into the kernel device tree, so the partitioning in the
+kernel's own device tree does not take effect.
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index fbcf14748a..1057413e52 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -202,3 +202,4 @@ obj-$(CONFIG_MACH_RADXA_CM3)			+= radxa-cm3/
 obj-$(CONFIG_MACH_TQMA93XX)			+= tqma93xx/
 obj-$(CONFIG_MACH_WOLFVISION_PF5)		+= wolfvision-pf5/
 obj-$(CONFIG_MACH_XUNLONG_ORANGEPI_5_PLUS)	+= xunlong-orangepi-5-plus/
+obj-$(CONFIG_MACH_RAUMFELD_SPEAKER)		+= raumfeld-speaker/
diff --git a/arch/arm/boards/raumfeld-speaker/Makefile b/arch/arm/boards/raumfeld-speaker/Makefile
new file mode 100644
index 0000000000..55fd2822a0
--- /dev/null
+++ b/arch/arm/boards/raumfeld-speaker/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
+lwl-y += lowlevel-obm.o
diff --git a/arch/arm/boards/raumfeld-speaker/board.c b/arch/arm/boards/raumfeld-speaker/board.c
new file mode 100644
index 0000000000..3682af3232
--- /dev/null
+++ b/arch/arm/boards/raumfeld-speaker/board.c
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <of.h>
+#include <mach/pxa/bbu.h>
+
+static int raumfeld_speaker_probe(struct device *dev)
+{
+	barebox_set_model("Raumfeld Speaker");
+	barebox_set_hostname("speaker");
+
+	/*
+	 * The Boot ROM boots from the start of NAND, so this is the partition
+	 * holding the NTIM header, the OBM and barebox itself.
+	 */
+	pxa_bbu_nand_register_handler("nand", "/dev/nand0.barebox");
+
+	return 0;
+}
+
+static const struct of_device_id raumfeld_speaker_of_match[] = {
+	{ .compatible = "raumfeld,raumfeld-speaker-m-pxa303" },
+	{ .compatible = "raumfeld,raumfeld-speaker-l-pxa303" },
+	{ .compatible = "raumfeld,raumfeld-speaker-s-pxa303" },
+	{ .compatible = "raumfeld,raumfeld-speaker-one-pxa303" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, raumfeld_speaker_of_match);
+
+static struct driver raumfeld_speaker_driver = {
+	.name = "board-raumfeld-speaker",
+	.probe = raumfeld_speaker_probe,
+	.of_compatible = raumfeld_speaker_of_match,
+};
+coredevice_platform_driver(raumfeld_speaker_driver);
diff --git a/arch/arm/boards/raumfeld-speaker/lowlevel-obm.c b/arch/arm/boards/raumfeld-speaker/lowlevel-obm.c
new file mode 100644
index 0000000000..8e25670352
--- /dev/null
+++ b/arch/arm/boards/raumfeld-speaker/lowlevel-obm.c
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * First stage entry for the Raumfeld speakers.
+ *
+ * Unlike the second stage entry in lowlevel.c, nothing has run before this:
+ * the Boot ROM has copied us from NAND into internal SRAM and jumped here, so
+ * pinmuxing, clocks, the UART and DRAM all have to be set up before barebox
+ * can be loaded into DRAM and started.
+ *
+ * The register values are the ones the vendor OBM in the device's NAND uses.
+ */
+
+#include <common.h>
+#include <debug_ll.h>
+#include <mach/pxa/debug_ll.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/io.h>
+#include <mach/pxa/xload.h>
+
+/*
+ * We run from internal SRAM, which ends at 0x5c040000 on this part. The Boot
+ * ROM's own scratch area is well below the OBM load address of 0x5c020000.
+ */
+#define RAUMFELD_OBM_STACK_TOP	0x5c040000
+
+/* OS timer, used as the time base for the delays during DRAM setup */
+#define OSCR			0x40a00010
+
+/* Application subsystem clock configuration */
+#define ACCR			0x41340000
+#define ACCR_INIT		0x028cf298
+
+/* Dynamic memory controller */
+#define DMC_MDCNFG		0x48100000
+#define DMC_MDREFR		0x48100004
+#define DMC_DDR_HCAL		0x48100060
+#define DMC_DDR_SCAL		0x48100040
+#define DMC_DDR_WCAL		0x48100100
+
+#define MDCNFG_INIT		0x8000044d
+#define MDCNFG_DMCEN		0x40000000
+#define MDREFR_INIT		0x00000006
+
+struct reg_value {
+	u32 reg;
+	u32 val;
+};
+
+/*
+ * Pin multiplexing. The 0x1c01 block is the DDR address and data bus, the
+ * rest is the static memory controller and the NAND interface.
+ */
+static const struct reg_value mfp_init[] = {
+	{ 0x40e1020c, 0x00001501 }, { 0x40e10240, 0x00001500 },
+	{ 0x40e100cc, 0x0000d481 }, { 0x40e10200, 0x0000d481 },
+	{ 0x40e10248, 0x00000001 }, { 0x40e100c8, 0x0000d5c0 },
+	{ 0x40e10220, 0x00001c01 }, { 0x40e10228, 0x00001c01 },
+	{ 0x40e10230, 0x00001c01 }, { 0x40e10238, 0x00001c01 },
+	{ 0x40e10258, 0x00001c01 }, { 0x40e10260, 0x00001c01 },
+	{ 0x40e10268, 0x00001c01 }, { 0x40e10270, 0x00001c01 },
+	{ 0x40e10224, 0x00001c01 }, { 0x40e1022c, 0x00001c01 },
+	{ 0x40e10234, 0x00001c01 }, { 0x40e1023c, 0x00001c01 },
+	{ 0x40e1025c, 0x00001c01 }, { 0x40e10264, 0x00001c01 },
+	{ 0x40e1026c, 0x00001c01 }, { 0x40e10274, 0x00001c01 },
+	{ 0x40e100b8, 0x00001401 },
+};
+
+/*
+ * FFUART, the console: GPIO77 RXD, 78 TXD, 79 CTS, 81 DSR, 83 DTR, 84 RTS,
+ * all alternate function 1.
+ *
+ * This is not part of the vendor OBM's table. It did not need it - the U-Boot
+ * it loaded muxed these pins before using them, and the OBM itself is silent.
+ * Nothing does it in this boot path: pxa_debug_ll_init() only programs the
+ * UART registers, and no pinctrl driver binds to the pinconf-single node
+ * further along either. Without this everything from here to the barebox
+ * shell runs correctly and says nothing at all.
+ *
+ * Values as written by that U-Boot.
+ */
+static const struct reg_value uart_mfp_init[] = {
+	{ 0x40e104c8, 0x0000c801 }, { 0x40e104cc, 0x00000801 },
+	{ 0x40e104d0, 0x0000a801 }, { 0x40e104d8, 0x00000801 },
+	{ 0x40e104e0, 0x00000801 }, { 0x40e104e4, 0x00000801 },
+};
+
+/*
+ * Static memory controller. The SMSC ethernet sits on nCS2, and nothing has
+ * configured the controller for it: the vendor OBM does not touch it either,
+ * because the U-Boot it loaded did so itself before probing the chip. Without
+ * this the chip select is dead and the driver gives up with "Device not READY
+ * in 100ms aborting".
+ *
+ * Values read out of that U-Boot (mtd0, literal pool at 0x40744).
+ */
+static const struct reg_value smc_init[] = {
+	{ 0x4a000088, 0x00320809 },	/* CSADRCFG2, the ethernet chip select */
+	{ 0x4a000008, 0x00000779 },	/* MSC0 */
+	{ 0x4a00000c, 0x7ff07ff0 },	/* MSC1 */
+	{ 0x4a00001c, 0x00880008 },	/* SXCNFG */
+};
+
+/* Pins and GPIO state the vendor OBM sets up after DRAM is running. */
+static const struct reg_value late_init[] = {
+	{ 0x40e10524, 0x00000000 }, { 0x40e10528, 0x00000000 },
+	{ 0x40e0010c, 0x00000006 }, { 0x40e00118, 0x00000004 },
+	{ 0x40e00124, 0x00000004 }, { 0x40e10000, 0x00001901 },
+};
+
+static void write_regs(const struct reg_value *r, unsigned int n)
+{
+	unsigned int i;
+
+	for (i = 0; i < n; i++)
+		writel(r[i].val, IOMEM(r[i].reg));
+}
+
+/* Busy wait on the OS timer, which is running out of reset. */
+static void obm_delay(u32 ticks)
+{
+	writel(0, IOMEM(OSCR));
+
+	while (readl(IOMEM(OSCR)) <= ticks)
+		;
+}
+
+/*
+ * DRAM setup. The readbacks after the stores are the vendor's write flushes,
+ * the delays are what the DDR device needs between the steps; both are kept
+ * as they are.
+ */
+static void obm_ddr_init(void)
+{
+	writel(MDCNFG_INIT, IOMEM(DMC_MDCNFG));
+	readl(IOMEM(DMC_MDCNFG));
+	obm_delay(300);
+
+	writel(0x80000000, IOMEM(DMC_DDR_WCAL));
+	readl(IOMEM(DMC_DDR_WCAL));
+
+	writel(0x88000000, IOMEM(DMC_DDR_HCAL));
+	obm_delay(5);
+	readl(IOMEM(DMC_DDR_HCAL));
+
+	writel(0x60000033, IOMEM(DMC_DDR_SCAL));
+	obm_delay(300);
+
+	writel(0x60010000, IOMEM(DMC_DDR_SCAL));
+	obm_delay(300);
+
+	writel(MDREFR_INIT, IOMEM(DMC_MDREFR));
+	readl(IOMEM(DMC_MDREFR));
+
+	writel(readl(IOMEM(DMC_MDCNFG)) | MDCNFG_DMCEN, IOMEM(DMC_MDCNFG));
+}
+
+static noinline void __noreturn raumfeld_obm_start(void)
+{
+	void *barebox;
+
+	write_regs(mfp_init, ARRAY_SIZE(mfp_init));
+	write_regs(uart_mfp_init, ARRAY_SIZE(uart_mfp_init));
+
+	/* Written twice, as the vendor OBM does. */
+	writel(ACCR_INIT, IOMEM(ACCR));
+	writel(ACCR_INIT, IOMEM(ACCR));
+
+	pxa_debug_ll_init();
+	putc_ll('>');
+
+	obm_ddr_init();
+	write_regs(late_init, ARRAY_SIZE(late_init));
+	write_regs(smc_init, ARRAY_SIZE(smc_init));
+
+	/*
+	 * The NTIM in NAND says where barebox lives and how big it is, so
+	 * unlike the vendor OBM this does not copy a fixed amount.
+	 */
+	barebox = pxa_nand_load_image(NTIM_ID_BOOT);
+	if (!barebox) {
+		putc_ll('!');
+		while (1)
+			;
+	}
+
+	putc_ll('>');
+
+	/*
+	 * barebox is a separate image with its own entry point, loaded to the
+	 * address its NTIM entry gives, so enter it rather than continuing
+	 * into a barebox linked into this one.
+	 */
+	((void (*)(void))barebox)();
+
+	while (1)
+		;
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_raumfeld_speaker_obm, RAUMFELD_OBM_STACK_TOP,
+			 r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	raumfeld_obm_start();
+}
diff --git a/arch/arm/boards/raumfeld-speaker/lowlevel.c b/arch/arm/boards/raumfeld-speaker/lowlevel.c
new file mode 100644
index 0000000000..50243efc37
--- /dev/null
+++ b/arch/arm/boards/raumfeld-speaker/lowlevel.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <debug_ll.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/io.h>
+#include <mach/pxa/debug_ll.h>
+
+#define RAUMFELD_SDRAM_BASE	0xa0000000
+#define RAUMFELD_SDRAM_SIZE	SZ_128M
+
+/* Application subsystem clock configuration and its status counterpart */
+#define ACCR			0x41340000
+#define ACSR			0x41340004
+
+#define ACCR_XSPCLK(x)		(((x) & 0x3) << 16)	/* core clock during the change */
+#define ACCR_XSPCLK_MASK	ACCR_XSPCLK(~0)
+#define ACCR_XN(x)		(((x) & 0x7) << 8)	/* turbo-mode-to-run-mode ratio */
+#define ACCR_XN_MASK		ACCR_XN(~0)
+#define ACCR_XL(x)		((x) & 0x1f)		/* run-mode-to-oscillator ratio */
+#define ACCR_XL_MASK		ACCR_XL(~0)
+
+#define XSPCLK_NONE		3	/* no core clock while the PLL relocks */
+#define XCLKCFG_F		(1 << 1)	/* start a frequency change */
+#define XCLKCFG_T		(1 << 0)	/* turbo mode */
+
+extern char __dtb_pxa300_raumfeld_speaker_start[];
+
+/*
+ * Switch the core to the 624MHz operating point.
+ *
+ * The vendor OBM writes ACCR asking for XL=24 and XN=2, i.e. 312MHz run and
+ * 624MHz turbo, but writing ACCR does not change the core PLL by itself: the
+ * ratio only takes effect once software starts a frequency change by writing
+ * XCLKCFG. Nothing in the original boot chain ever did - the U-Boot in NAND
+ * contains no such write either - so the core has always run at its 104MHz
+ * reset default. Everything else in that ACCR value does apply immediately,
+ * which is why ACSR reads back the OBM's HSS, SMCFS, SFLFS and DMCFS next to
+ * XL=8 and XN=1.
+ *
+ * This is done blind, without touching the rails. 624MHz wants 1.375V on
+ * VCC_CORE and 1.4V on VCC_SRAM (pxa300_freqs[] in Linux'
+ * drivers/cpufreq/pxa3xx-cpufreq.c), and both come from a MAX8660 that is
+ * write-only over I2C, so what it supplies cannot be read back. It does not
+ * have to be: V3 and V4 power up at 1.4V, which covers every operating point
+ * the part has. Linux has always relied on the same thing - pxa3xx-cpufreq
+ * carries those voltages and applies none of them, and with the performance
+ * governor it takes this board to 624MHz at boot - so this is what the
+ * hardware has been doing since the factory, not a new assumption.
+ *
+ * The cost is that the rails stay at 1.4V at every frequency instead of
+ * dropping to 1.0V at the low ones. That needs the PMIC driver and the driver
+ * model, which is a long way past lowlevel, and it buys power rather than
+ * anything this board notices.
+ *
+ * FFUART is clocked from the system PLL rather than from the core, so the
+ * console baud rate is unaffected.
+ */
+static void raumfeld_speaker_core_624mhz(void)
+{
+	u32 want = ACCR_XN(2) | ACCR_XL(24);
+	int timeout = 100000;
+	u32 accr;
+
+	accr = readl(IOMEM(ACCR));
+	accr &= ~(ACCR_XN_MASK | ACCR_XL_MASK | ACCR_XSPCLK_MASK);
+	accr |= want | ACCR_XSPCLK(XSPCLK_NONE);
+	writel(accr, IOMEM(ACCR));
+
+	/*
+	 * XN > 1 is the turbo-mode-to-run-mode ratio, so the turbo bit has to
+	 * go out with the frequency change or the core stops at the 312MHz
+	 * run frequency.
+	 */
+	asm volatile("mcr p14, 0, %0, c6, c0, 0"
+		     : : "r" (XCLKCFG_F | XCLKCFG_T));
+
+	/* ACSR follows ACCR once the PLL has relocked */
+	while (--timeout &&
+	       (readl(IOMEM(ACSR)) & (ACCR_XN_MASK | ACCR_XL_MASK)) != want)
+		;
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_raumfeld_speaker, 0, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	/*
+	 * We are the second stage: SDRAM, clocks and pinmuxing are already
+	 * set up by the OBM. The stack the previous stage left us is used
+	 * until barebox_arm_entry() installs its own.
+	 */
+	pxa_debug_ll_init();
+
+	putc_ll('>');
+
+	raumfeld_speaker_core_624mhz();
+
+	fdt = __dtb_pxa300_raumfeld_speaker_start + get_runtime_offset();
+
+	barebox_arm_entry(RAUMFELD_SDRAM_BASE, RAUMFELD_SDRAM_SIZE, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b82f6c96fc..b418ac2dec 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -267,3 +267,4 @@ obj-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5-io-expander.dtbo.o \
 				     rk3568-wolfvision-pf5-display-vz.dtbo.o
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
+lwl-$(CONFIG_MACH_RAUMFELD_SPEAKER) += pxa300-raumfeld-speaker.dtb.o
diff --git a/arch/arm/dts/pxa300-raumfeld-speaker.dts b/arch/arm/dts/pxa300-raumfeld-speaker.dts
new file mode 100644
index 0000000000..fbb93f9694
--- /dev/null
+++ b/arch/arm/dts/pxa300-raumfeld-speaker.dts
@@ -0,0 +1,108 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/dts-v1/;
+
+#include <arm/intel/pxa/pxa300-raumfeld-common.dtsi>
+
+/ {
+	/*
+	 * The Raumfeld speakers differ in their enclosure and speaker
+	 * assembly, not in anything barebox cares about, so one image
+	 * covers all of them. Only the parts shared by all models are
+	 * included here; the audio clock generator is left to the kernel.
+	 */
+	model = "Raumfeld Speaker";
+	/*
+	 * All models are listed, because barebox boots whichever kernel
+	 * device tree sits next to it: the bootloader spec code refuses an
+	 * entry whose device tree is not compatible with the running board,
+	 * and upstream has one compatible per model.
+	 */
+	compatible = "raumfeld,raumfeld-speaker-m-pxa303",
+		     "raumfeld,raumfeld-speaker-l-pxa303",
+		     "raumfeld,raumfeld-speaker-s-pxa303",
+		     "raumfeld,raumfeld-speaker-one-pxa303",
+		     "marvell,pxa300",
+		     "marvell,pxa3xx";
+
+	barebox,deep-probe;
+
+	leds {
+		left {
+			barebox,default-trigger = "heartbeat";
+		};
+	};
+
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &{/pxabus/nand-controller@43100000/nand@0},
+				      "partname:barebox-environment";
+		};
+	};
+};
+
+/*
+ * vmmc-supply points at V6 of the MAX8660, for which there is no driver here.
+ * A supply that a node declares is mandatory, so pxamci would be left waiting
+ * for a regulator that is never going to appear. Nothing in barebox uses the
+ * SDIO wifi behind it anyway, and V6 comes up disabled, so it is Linux' PMIC
+ * driver that has to turn it on either way.
+ */
+&mmc0 {
+	/delete-property/ vmmc-supply;
+};
+
+/*
+ * The Raumfeld layout was built around the U-Boot in NAND: 640K for it, an
+ * environment and a splash screen partition, then UBI. barebox replaces that
+ * U-Boot, does not fit in 640K and keeps its environment in flash of its own,
+ * so lay the device out for barebox instead.
+ *
+ * This is what the kernel sees as well. barebox rewrites the partition nodes
+ * in the kernel device tree from the ones it uses itself, so these are the
+ * only ones there are.
+ */
+&{/pxabus/nand-controller@43100000/nand@0} {
+	/delete-node/ partitions;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x200000>;
+		};
+
+		partition@200000 {
+			label = "barebox-environment";
+			reg = <0x200000 0x100000>;
+		};
+
+		partition@300000 {
+			label = "UBI";
+			reg = <0x300000 0x6d00000>;
+		};
+
+		/*
+		 * Everything the running system writes: WLAN credentials, radio
+		 * stations, the mixer state. A partition rather than a second
+		 * volume in the UBI above, so that updating the root filesystem
+		 * is a write to a whole MTD partition and cannot take the
+		 * settings with it.
+		 *
+		 * The size is not driven by the data, which is well under
+		 * 100KiB. A read-only root never erases a block, so all of the
+		 * wear lands here, and UBI only levels within its own
+		 * partition; 128 erase blocks are also what keeps UBI's fixed
+		 * overhead - layout volume, wear levelling and bad block
+		 * reserve, then UBIFS' own - from dominating the partition.
+		 */
+		partition@7000000 {
+			label = "Data";
+			reg = <0x7000000 0x1000000>;
+		};
+	};
+};
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index b159cee0cc..74a5e39df9 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -28,4 +28,14 @@ config BAREBOX_UPDATE_PXA_NAND
 	  scripts/pxa-image - the NTIM header, the OBM and barebox - to the
 	  mtd partition the Boot ROM boots from.
 
+comment "Intel/Marvell PXA boards"
+
+config MACH_RAUMFELD_SPEAKER
+	bool "Raumfeld Speaker"
+	select ARCH_PXA300
+	help
+	  Say Y here if you are using the Raumfeld Speaker, a PXA303
+	  based WLAN speaker. The Boot ROM loads barebox from NAND, so
+	  it does the pinmuxing, clock and DRAM setup itself.
+
 endif
diff --git a/images/Makefile.pxa b/images/Makefile.pxa
index 023aec428d..1f369223a2 100644
--- a/images/Makefile.pxa
+++ b/images/Makefile.pxa
@@ -3,6 +3,20 @@
 # barebox image generation Makefile for PXA images
 #
 
+pblb-$(CONFIG_MACH_RAUMFELD_SPEAKER) += start_raumfeld_speaker
+FILE_barebox-raumfeld-speaker.img = start_raumfeld_speaker.pblb
+image-$(CONFIG_MACH_RAUMFELD_SPEAKER) += barebox-raumfeld-speaker.img
+
+# First stage: runs from internal SRAM, so keep it well inside the 128K the
+# Boot ROM leaves us above the OBM load address.
+pblb-$(CONFIG_MACH_RAUMFELD_SPEAKER) += start_raumfeld_speaker_obm
+MAX_PBL_MEMORY_SIZE_start_raumfeld_speaker_obm = 0x10000
+# the OBM loads the ordinary second stage image into DRAM and enters it
+PXA_PAYLOAD_start_raumfeld_speaker_obm.pblb.pxaimg = start_raumfeld_speaker.pblb
+PXA_BOOT_LOAD_start_raumfeld_speaker_obm.pblb.pxaimg = 0xa0008000
+FILE_barebox-raumfeld-speaker-nand.img = start_raumfeld_speaker_obm.pblb.pxaimg
+image-$(CONFIG_MACH_RAUMFELD_SPEAKER) += barebox-raumfeld-speaker-nand.img
+
 # A first stage image: the NTIM header the Boot ROM reads from NAND, the OBM
 # it loads into internal SRAM, and barebox for the OBM to load into DRAM.
 quiet_cmd_pxa_image = PXAIMG  $@

-- 
2.47.3



