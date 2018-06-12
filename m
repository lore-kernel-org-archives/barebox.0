Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLG-0008RO-63
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:52 +0000
Received: by mail-pl0-x241.google.com with SMTP id t12-v6so14855560plo.7
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:56 -0700
Message-Id: <20180612184800.4940-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/14] VFxxx: Reconcile shared DDR IOMUX DCD with schematic
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The only differential signals coming out of DDRMC to the memory chip
are CLK, DQS0 and DQS1. There rest of the pins are not, so there
should be no reason to configure them as such.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../vf610-iomux-ddr-default.imxcfg            | 38 +++++++++----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
index 64f97aacd..742275b92 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-iomux-ddr-default.imxcfg
@@ -31,26 +31,26 @@ wm 32 VF610_PAD_DDR_BA1__DDR_BA_1	VF610_DDR_PAD_CTRL
 wm 32 VF610_PAD_DDR_BA0__DDR_BA_0	VF610_DDR_PAD_CTRL
 wm 32 VF610_PAD_DDR_CAS__DDR_CAS_B	VF610_DDR_PAD_CTRL
 wm 32 VF610_PAD_DDR_CKE__DDR_CKE_0	VF610_DDR_PAD_CTRL
-wm 32 VF610_PAD_DDR_CLK__DDR_CLK_0	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_CLK__DDR_CLK_0	VF610_DDR_PAD_CTRL_1
 wm 32 VF610_PAD_DDR_CS__DDR_CS_B_0	VF610_DDR_PAD_CTRL
-wm 32 VF610_PAD_DDR_D15__DDR_D_15	VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D14__DDR_D_14	VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D13__DDR_D_13	VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D12__DDR_D_12	VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D11__DDR_D_11	VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D10__DDR_D_10	VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D9__DDR_D_9		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D8__DDR_D_8		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D7__DDR_D_7		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D6__DDR_D_6		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D5__DDR_D_5		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D4__DDR_D_4		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D3__DDR_D_3		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D2__DDR_D_2		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D1__DDR_D_1		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_D0__DDR_D_0		VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_DQM1__DDR_DQM_1	VF610_DDR_PAD_CTRL_1
-wm 32 VF610_PAD_DDR_DQM0__DDR_DQM_0	VF610_DDR_PAD_CTRL_1
+wm 32 VF610_PAD_DDR_D15__DDR_D_15	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D14__DDR_D_14	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D13__DDR_D_13	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D12__DDR_D_12	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D11__DDR_D_11	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D10__DDR_D_10	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D9__DDR_D_9		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D8__DDR_D_8		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D7__DDR_D_7		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D6__DDR_D_6		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D5__DDR_D_5		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D4__DDR_D_4		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D3__DDR_D_3		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D2__DDR_D_2		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D1__DDR_D_1		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_D0__DDR_D_0		VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_DQM1__DDR_DQM_1	VF610_DDR_PAD_CTRL
+wm 32 VF610_PAD_DDR_DQM0__DDR_DQM_0	VF610_DDR_PAD_CTRL
 wm 32 VF610_PAD_DDR_DQS1__DDR_DQS_1	VF610_DDR_PAD_CTRL_1
 wm 32 VF610_PAD_DDR_DQS0__DDR_DQS_0	VF610_DDR_PAD_CTRL_1
 wm 32 VF610_PAD_DDR_RAS__DDR_RAS_B	VF610_DDR_PAD_CTRL
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
