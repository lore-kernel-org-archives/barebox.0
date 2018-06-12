Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLF-0008R1-1T
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:48 +0000
Received: by mail-pg0-x243.google.com with SMTP id w12-v6so11879948pgc.6
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:55 -0700
Message-Id: <20180612184800.4940-10-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184800.4940-1-andrew.smirnov@gmail.com>
References: <20180612184800.4940-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/14] VFxxx: Initialize IOMUXC_DUMMY_DDRBYTE1/2 in default
 DDR DCD
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Although upstream U-Boot does not initialize this register in
vf610-twr code (it does so in code for Phytec's PCM052) multiple
revisions of VFxxx Controller Reference Manual state:

    5.2.6.1 DUMMY PADS (DDR/QuadSPI)

    There are two dummy pads that are useful for timing calibration of
    DDR. These pads are internal only, but there corresponding IOMUX
    register need to be programmed for correct operation of DDR. These
    registers are:

              * IOMUXC_DUMMY_DDRBYTE1 (0x400482DC)
              * IOMUXC_DUMMY_DDRBYTE2 (0x400482E0)

    DDR: Dummy pads for DDR must be configured before any DDR I/O
    transactions are done. These pads simulate the input delay of the
    I/O buffers from the DRAM devices and DDR configures the delays
    accordingly.

Although current DCD works as is, add writes for those registers for
the sake of completness.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../include/mach/flash-header/vf610-iomux-ddr-default.imxcfg | 3 +++
 arch/arm/mach-imx/include/mach/vf610-iomux-regs.h            | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
index e2ad818c6..64f97aacd 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
@@ -58,3 +58,6 @@ wm 32 VF610_PAD_DDR_WE__DDR_WE_B	VF610_DDR_PAD_CTRL
 wm 32 VF610_PAD_DDR_ODT1__DDR_ODT_0	VF610_DDR_PAD_CTRL
 wm 32 VF610_PAD_DDR_ODT0__DDR_ODT_1	VF610_DDR_PAD_CTRL
 wm 32 VF610_PAD_DDR_RESETB		VF610_DDR_PAD_CTRL
+
+wm 32 VF610_PAD_DDR_DDRBYTE1__DDR_DDRBYTE1 VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_DDRBYTE0__DDR_DDRBYTE0 VF610_DDR_PAD_CTRL
\ No newline at end of file
diff --git a/arch/arm/mach-imx/include/mach/vf610-iomux-regs.h b/arch/arm/mach-imx/include/mach/vf610-iomux-regs.h
index 38b3bc7da..c85f0b74b 100644
--- a/arch/arm/mach-imx/include/mach/vf610-iomux-regs.h
+++ b/arch/arm/mach-imx/include/mach/vf610-iomux-regs.h
@@ -52,4 +52,7 @@
 #define VF610_PAD_DDR_RAS__DDR_RAS_B	0x400482cc
 #define VF610_PAD_DDR_WE__DDR_WE_B	0x400482d0
 #define VF610_PAD_DDR_ODT1__DDR_ODT_0	0x400482d4
-#define VF610_PAD_DDR_ODT0__DDR_ODT_1	0x400482d8
\ No newline at end of file
+#define VF610_PAD_DDR_ODT0__DDR_ODT_1	0x400482d8
+
+#define VF610_PAD_DDR_DDRBYTE1__DDR_DDRBYTE1	0x400482dc
+#define VF610_PAD_DDR_DDRBYTE0__DDR_DDRBYTE0	0x400482e0
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
