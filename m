Delivery-date: Wed, 31 Aug 2022 14:54:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNF5-002der-Qw
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 14:54:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTNF3-00075e-Te
	for lore@pengutronix.de; Wed, 31 Aug 2022 14:54:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ju6R0b3Q8K7gfZIU/hLE/20seDJOMyCmmmPwRFHR7FU=; b=FpIA1EPutTrGCt
	4O3y5GmQ79gN2CkZ8j+WquwsG4ZnZaO0vrUiAto4nqXg1+IaJUOyyDFXAxSSWWYTGgkzirpFUSxeV
	5KOZlBpFhwffIIbTHoPPoxxOdADDuzMUT+W6UMqVUeMs3niqasx5XJ4sASE2KQiZJsOA83axzwxla
	Y16t7l+dRJlcnTMhNg4+vhTMTdTila2F58GRUOFqe1OsMgDO5GvNpw6RfAzev2ZJkYnmc15s3czF2
	hMzorcqrDkRwMm0b5Y8qwi4tnQV/8fLEQY+TLB/WWk70oWW0xYaEV6dNbLFIs/NkSq7g5Md0FUV9B
	VhyeEDKUuiw7ueKQJHcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDX-00696J-Bw; Wed, 31 Aug 2022 12:53:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTNDE-0068yC-L4
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 12:53:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND9-0006U3-Et; Wed, 31 Aug 2022 14:52:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND8-0034Oy-P1; Wed, 31 Aug 2022 14:52:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oTND7-0091V5-GX; Wed, 31 Aug 2022 14:52:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 31 Aug 2022 14:52:46 +0200
Message-Id: <20220831125248.2105893-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220831125248.2105893-1-s.hauer@pengutronix.de>
References: <20220831125248.2105893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_055257_080386_8310EDFB 
X-CRM114-Status: GOOD (  22.92  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/6] soc: imx: gpcv2: extend for i.MX8M Mini/Nano/Plus support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Add suppport for i.MX8MM, i.MX8MN and i.MX8MP, taken directly from the
kernel driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/imx/gpcv2.c | 954 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 864 insertions(+), 90 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 3b1c715e5b..304f6d81eb 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -11,6 +11,8 @@
 #include <of_device.h>
 #include <common.h>
 #include <regmap.h>
+#include <linux/clk.h>
+#include <linux/reset.h>
 #include <clock.h>
 #include <abort.h>
 #include <malloc.h>
@@ -22,18 +24,21 @@
 #include <pm_domain.h>
 #include <regulator.h>
 #include <dt-bindings/power/imx7-power.h>
-
 #include <dt-bindings/power/imx8mq-power.h>
+#include <dt-bindings/power/imx8mm-power.h>
+#include <dt-bindings/power/imx8mn-power.h>
+#include <dt-bindings/power/imx8mp-power.h>
 
-#define GPC_LPCR_A_BSC			0x000
+#define GPC_LPCR_A_CORE_BSC		0x000
 
 #define GPC_PGC_CPU_MAPPING		0x0ec
+#define IMX8MP_GPC_PGC_CPU_MAPPING	0x1cc
 
-#define IMX7_USB_HSIC_PHY_A_DOMAIN	BIT(6)
-#define IMX7_USB_OTG2_PHY_A_DOMAIN	BIT(5)
-#define IMX7_USB_OTG1_PHY_A_DOMAIN	BIT(4)
-#define IMX7_PCIE_PHY_A_DOMAIN		BIT(3)
-#define IMX7_MIPI_PHY_A_DOMAIN		BIT(2)
+#define IMX7_USB_HSIC_PHY_A_CORE_DOMAIN		BIT(6)
+#define IMX7_USB_OTG2_PHY_A_CORE_DOMAIN		BIT(5)
+#define IMX7_USB_OTG1_PHY_A_CORE_DOMAIN		BIT(4)
+#define IMX7_PCIE_PHY_A_CORE_DOMAIN		BIT(3)
+#define IMX7_MIPI_PHY_A_CORE_DOMAIN		BIT(2)
 
 #define IMX8M_PCIE2_A53_DOMAIN		BIT(15)
 #define IMX8M_MIPI_CSI2_A53_DOMAIN	BIT(14)
@@ -49,6 +54,48 @@
 #define IMX8M_PCIE1_A53_DOMAIN		BIT(3)
 #define IMX8M_MIPI_A53_DOMAIN		BIT(2)
 
+#define IMX8MM_VPUH1_A53_DOMAIN		BIT(15)
+#define IMX8MM_VPUG2_A53_DOMAIN		BIT(14)
+#define IMX8MM_VPUG1_A53_DOMAIN		BIT(13)
+#define IMX8MM_DISPMIX_A53_DOMAIN	BIT(12)
+#define IMX8MM_VPUMIX_A53_DOMAIN	BIT(10)
+#define IMX8MM_GPUMIX_A53_DOMAIN	BIT(9)
+#define IMX8MM_GPU_A53_DOMAIN		(BIT(8) | BIT(11))
+#define IMX8MM_DDR1_A53_DOMAIN		BIT(7)
+#define IMX8MM_OTG2_A53_DOMAIN		BIT(5)
+#define IMX8MM_OTG1_A53_DOMAIN		BIT(4)
+#define IMX8MM_PCIE_A53_DOMAIN		BIT(3)
+#define IMX8MM_MIPI_A53_DOMAIN		BIT(2)
+
+#define IMX8MN_DISPMIX_A53_DOMAIN	BIT(12)
+#define IMX8MN_GPUMIX_A53_DOMAIN	BIT(9)
+#define IMX8MN_DDR1_A53_DOMAIN		BIT(7)
+#define IMX8MN_OTG1_A53_DOMAIN		BIT(4)
+#define IMX8MN_MIPI_A53_DOMAIN		BIT(2)
+
+#define IMX8MP_MEDIA_ISPDWP_A53_DOMAIN	BIT(20)
+#define IMX8MP_HSIOMIX_A53_DOMAIN		BIT(19)
+#define IMX8MP_MIPI_PHY2_A53_DOMAIN		BIT(18)
+#define IMX8MP_HDMI_PHY_A53_DOMAIN		BIT(17)
+#define IMX8MP_HDMIMIX_A53_DOMAIN		BIT(16)
+#define IMX8MP_VPU_VC8000E_A53_DOMAIN		BIT(15)
+#define IMX8MP_VPU_G2_A53_DOMAIN		BIT(14)
+#define IMX8MP_VPU_G1_A53_DOMAIN		BIT(13)
+#define IMX8MP_MEDIAMIX_A53_DOMAIN		BIT(12)
+#define IMX8MP_GPU3D_A53_DOMAIN			BIT(11)
+#define IMX8MP_VPUMIX_A53_DOMAIN		BIT(10)
+#define IMX8MP_GPUMIX_A53_DOMAIN		BIT(9)
+#define IMX8MP_GPU2D_A53_DOMAIN			BIT(8)
+#define IMX8MP_AUDIOMIX_A53_DOMAIN		BIT(7)
+#define IMX8MP_MLMIX_A53_DOMAIN			BIT(6)
+#define IMX8MP_USB2_PHY_A53_DOMAIN		BIT(5)
+#define IMX8MP_USB1_PHY_A53_DOMAIN		BIT(4)
+#define IMX8MP_PCIE_PHY_A53_DOMAIN		BIT(3)
+#define IMX8MP_MIPI_PHY1_A53_DOMAIN		BIT(2)
+
+#define IMX8MP_GPC_PU_PGC_SW_PUP_REQ	0x0d8
+#define IMX8MP_GPC_PU_PGC_SW_PDN_REQ	0x0e4
+
 #define GPC_PU_PGC_SW_PUP_REQ		0x0f8
 #define GPC_PU_PGC_SW_PDN_REQ		0x104
 
@@ -72,8 +119,92 @@
 #define IMX8M_PCIE1_SW_Pxx_REQ		BIT(1)
 #define IMX8M_MIPI_SW_Pxx_REQ		BIT(0)
 
+#define IMX8MM_VPUH1_SW_Pxx_REQ		BIT(13)
+#define IMX8MM_VPUG2_SW_Pxx_REQ		BIT(12)
+#define IMX8MM_VPUG1_SW_Pxx_REQ		BIT(11)
+#define IMX8MM_DISPMIX_SW_Pxx_REQ	BIT(10)
+#define IMX8MM_VPUMIX_SW_Pxx_REQ	BIT(8)
+#define IMX8MM_GPUMIX_SW_Pxx_REQ	BIT(7)
+#define IMX8MM_GPU_SW_Pxx_REQ		(BIT(6) | BIT(9))
+#define IMX8MM_DDR1_SW_Pxx_REQ		BIT(5)
+#define IMX8MM_OTG2_SW_Pxx_REQ		BIT(3)
+#define IMX8MM_OTG1_SW_Pxx_REQ		BIT(2)
+#define IMX8MM_PCIE_SW_Pxx_REQ		BIT(1)
+#define IMX8MM_MIPI_SW_Pxx_REQ		BIT(0)
+
+#define IMX8MN_DISPMIX_SW_Pxx_REQ		BIT(10)
+#define IMX8MN_GPUMIX_SW_Pxx_REQ		BIT(7)
+#define IMX8MN_DDR1_SW_Pxx_REQ		BIT(5)
+#define IMX8MN_OTG1_SW_Pxx_REQ		BIT(2)
+#define IMX8MN_MIPI_SW_Pxx_REQ		BIT(0)
+
+#define IMX8MP_DDRMIX_Pxx_REQ			BIT(19)
+#define IMX8MP_MEDIA_ISP_DWP_Pxx_REQ		BIT(18)
+#define IMX8MP_HSIOMIX_Pxx_REQ			BIT(17)
+#define IMX8MP_MIPI_PHY2_Pxx_REQ		BIT(16)
+#define IMX8MP_HDMI_PHY_Pxx_REQ			BIT(15)
+#define IMX8MP_HDMIMIX_Pxx_REQ			BIT(14)
+#define IMX8MP_VPU_VC8K_Pxx_REQ			BIT(13)
+#define IMX8MP_VPU_G2_Pxx_REQ			BIT(12)
+#define IMX8MP_VPU_G1_Pxx_REQ			BIT(11)
+#define IMX8MP_MEDIMIX_Pxx_REQ			BIT(10)
+#define IMX8MP_GPU_3D_Pxx_REQ			BIT(9)
+#define IMX8MP_VPU_MIX_SHARE_LOGIC_Pxx_REQ	BIT(8)
+#define IMX8MP_GPU_SHARE_LOGIC_Pxx_REQ		BIT(7)
+#define IMX8MP_GPU_2D_Pxx_REQ			BIT(6)
+#define IMX8MP_AUDIOMIX_Pxx_REQ			BIT(5)
+#define IMX8MP_MLMIX_Pxx_REQ			BIT(4)
+#define IMX8MP_USB2_PHY_Pxx_REQ			BIT(3)
+#define IMX8MP_USB1_PHY_Pxx_REQ			BIT(2)
+#define IMX8MP_PCIE_PHY_SW_Pxx_REQ		BIT(1)
+#define IMX8MP_MIPI_PHY1_SW_Pxx_REQ		BIT(0)
+
 #define GPC_M4_PU_PDN_FLG		0x1bc
 
+#define IMX8MP_GPC_PU_PWRHSK		0x190
+#define GPC_PU_PWRHSK			0x1fc
+
+#define IMX8M_GPU_HSK_PWRDNACKN			BIT(26)
+#define IMX8M_VPU_HSK_PWRDNACKN			BIT(25)
+#define IMX8M_DISP_HSK_PWRDNACKN		BIT(24)
+#define IMX8M_GPU_HSK_PWRDNREQN			BIT(6)
+#define IMX8M_VPU_HSK_PWRDNREQN			BIT(5)
+#define IMX8M_DISP_HSK_PWRDNREQN		BIT(4)
+
+
+#define IMX8MM_GPUMIX_HSK_PWRDNACKN		BIT(29)
+#define IMX8MM_GPU_HSK_PWRDNACKN		(BIT(27) | BIT(28))
+#define IMX8MM_VPUMIX_HSK_PWRDNACKN		BIT(26)
+#define IMX8MM_DISPMIX_HSK_PWRDNACKN		BIT(25)
+#define IMX8MM_HSIO_HSK_PWRDNACKN		(BIT(23) | BIT(24))
+#define IMX8MM_GPUMIX_HSK_PWRDNREQN		BIT(11)
+#define IMX8MM_GPU_HSK_PWRDNREQN		(BIT(9) | BIT(10))
+#define IMX8MM_VPUMIX_HSK_PWRDNREQN		BIT(8)
+#define IMX8MM_DISPMIX_HSK_PWRDNREQN		BIT(7)
+#define IMX8MM_HSIO_HSK_PWRDNREQN		(BIT(5) | BIT(6))
+
+#define IMX8MN_GPUMIX_HSK_PWRDNACKN		(BIT(29) | BIT(27))
+#define IMX8MN_DISPMIX_HSK_PWRDNACKN		BIT(25)
+#define IMX8MN_HSIO_HSK_PWRDNACKN		BIT(23)
+#define IMX8MN_GPUMIX_HSK_PWRDNREQN		(BIT(11) | BIT(9))
+#define IMX8MN_DISPMIX_HSK_PWRDNREQN		BIT(7)
+#define IMX8MN_HSIO_HSK_PWRDNREQN		BIT(5)
+
+#define IMX8MP_MEDIAMIX_PWRDNACKN		BIT(30)
+#define IMX8MP_HDMIMIX_PWRDNACKN		BIT(29)
+#define IMX8MP_HSIOMIX_PWRDNACKN		BIT(28)
+#define IMX8MP_VPUMIX_PWRDNACKN			BIT(26)
+#define IMX8MP_GPUMIX_PWRDNACKN			BIT(25)
+#define IMX8MP_MLMIX_PWRDNACKN			(BIT(23) | BIT(24))
+#define IMX8MP_AUDIOMIX_PWRDNACKN		(BIT(20) | BIT(31))
+#define IMX8MP_MEDIAMIX_PWRDNREQN		BIT(14)
+#define IMX8MP_HDMIMIX_PWRDNREQN		BIT(13)
+#define IMX8MP_HSIOMIX_PWRDNREQN		BIT(12)
+#define IMX8MP_VPUMIX_PWRDNREQN			BIT(10)
+#define IMX8MP_GPUMIX_PWRDNREQN			BIT(9)
+#define IMX8MP_MLMIX_PWRDNREQN			(BIT(7) | BIT(8))
+#define IMX8MP_AUDIOMIX_PWRDNREQN		(BIT(4) | BIT(15))
+
 /*
  * The PGC offset values in Reference Manual
  * (Rev. 1, 01/2018 and the older ones) GPC chapter's
@@ -97,30 +228,90 @@
 #define IMX8M_PGC_MIPI_CSI2		28
 #define IMX8M_PGC_PCIE2		29
 
+#define IMX8MM_PGC_MIPI			16
+#define IMX8MM_PGC_PCIE			17
+#define IMX8MM_PGC_OTG1			18
+#define IMX8MM_PGC_OTG2			19
+#define IMX8MM_PGC_DDR1			21
+#define IMX8MM_PGC_GPU2D		22
+#define IMX8MM_PGC_GPUMIX		23
+#define IMX8MM_PGC_VPUMIX		24
+#define IMX8MM_PGC_GPU3D		25
+#define IMX8MM_PGC_DISPMIX		26
+#define IMX8MM_PGC_VPUG1		27
+#define IMX8MM_PGC_VPUG2		28
+#define IMX8MM_PGC_VPUH1		29
+
+#define IMX8MN_PGC_MIPI		16
+#define IMX8MN_PGC_OTG1		18
+#define IMX8MN_PGC_DDR1		21
+#define IMX8MN_PGC_GPUMIX		23
+#define IMX8MN_PGC_DISPMIX		26
+
+#define IMX8MP_PGC_NOC			9
+#define IMX8MP_PGC_MIPI1		12
+#define IMX8MP_PGC_PCIE			13
+#define IMX8MP_PGC_USB1			14
+#define IMX8MP_PGC_USB2			15
+#define IMX8MP_PGC_MLMIX		16
+#define IMX8MP_PGC_AUDIOMIX		17
+#define IMX8MP_PGC_GPU2D		18
+#define IMX8MP_PGC_GPUMIX		19
+#define IMX8MP_PGC_VPUMIX		20
+#define IMX8MP_PGC_GPU3D		21
+#define IMX8MP_PGC_MEDIAMIX		22
+#define IMX8MP_PGC_VPU_G1		23
+#define IMX8MP_PGC_VPU_G2		24
+#define IMX8MP_PGC_VPU_VC8000E		25
+#define IMX8MP_PGC_HDMIMIX		26
+#define IMX8MP_PGC_HDMI			27
+#define IMX8MP_PGC_MIPI2		28
+#define IMX8MP_PGC_HSIOMIX		29
+#define IMX8MP_PGC_MEDIA_ISP_DWP	30
+#define IMX8MP_PGC_DDRMIX		31
+
 #define GPC_PGC_CTRL(n)			(0x800 + (n) * 0x40)
 #define GPC_PGC_SR(n)			(GPC_PGC_CTRL(n) + 0xc)
 
 #define GPC_PGC_CTRL_PCR		BIT(0)
 
+struct imx_pgc_regs {
+	u16 map;
+	u16 pup;
+	u16 pdn;
+	u16 hsk;
+};
+
 struct imx_pgc_domain {
 	struct generic_pm_domain genpd;
 	struct regmap *regmap;
+	const struct imx_pgc_regs *regs;
 	struct regulator *regulator;
+	struct reset_control *reset;
+	struct clk_bulk_data *clks;
+	int num_clks;
 
-	unsigned int pgc;
+	unsigned long pgc;
 
 	const struct {
 		u32 pxx;
 		u32 map;
+		u32 hskreq;
+		u32 hskack;
 	} bits;
 
 	const int voltage;
+	const bool keep_clocks;
 	struct device_d *dev;
+
+	unsigned int pgc_sw_pup_reg;
+	unsigned int pgc_sw_pdn_reg;
 };
 
 struct imx_pgc_domain_data {
-       const struct imx_pgc_domain *domains;
-       size_t domains_num;
+	const struct imx_pgc_domain *domains;
+	size_t domains_num;
+	const struct imx_pgc_regs *pgc_regs;
 };
 
 static inline struct imx_pgc_domain *
@@ -132,92 +323,159 @@ to_imx_pgc_domain(struct generic_pm_domain *genpd)
 static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 {
 	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
-	u32 reg_val;
+	u32 reg_val, pgc;
 	int ret;
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, domain->bits.map);
-
 	if (!IS_ERR(domain->regulator)) {
 		ret = regulator_enable(domain->regulator);
 		if (ret) {
 			dev_err(domain->dev, "failed to enable regulator\n");
-			goto out_unmap;
+			return ret;
 		}
 	}
 
-	regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
-			   domain->bits.pxx, domain->bits.pxx);
-
-	/*
-	 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
-	 * for PUP_REQ/PDN_REQ bit to be cleared
-	 */
-	ret = regmap_read_poll_timeout(domain->regmap,
-				       GPC_PU_PGC_SW_PUP_REQ, reg_val,
-				       !(reg_val & domain->bits.pxx),
-				       MSECOND);
-	if (ret < 0) {
-		dev_err(domain->dev, "falied to command PGC\n");
+	/* Enable reset clocks for all devices in the domain */
+	ret = clk_bulk_enable(domain->num_clks, domain->clks);
+	if (ret) {
+		dev_err(domain->dev, "failed to enable reset clocks\n");
 		goto out_regulator_disable;
 	}
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, 0);
+	reset_control_assert(domain->reset);
+
+	if (domain->bits.pxx) {
+		/* request the domain to power up */
+		regmap_update_bits(domain->regmap, domain->regs->pup,
+				   domain->bits.pxx, domain->bits.pxx);
+		/*
+		 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
+		 * for PUP_REQ/PDN_REQ bit to be cleared
+		 */
+		ret = regmap_read_poll_timeout(domain->regmap,
+					       domain->regs->pup, reg_val,
+					       !(reg_val & domain->bits.pxx),
+					       USEC_PER_MSEC);
+		if (ret) {
+			dev_err(domain->dev, "failed to command PGC\n");
+			goto out_clk_disable;
+		}
+
+		/* disable power control */
+		for_each_set_bit(pgc, &domain->pgc, 32) {
+			regmap_clear_bits(domain->regmap, GPC_PGC_CTRL(pgc),
+					  GPC_PGC_CTRL_PCR);
+		}
+	}
+
+	/* delay for reset to propagate */
+	udelay(5);
+
+	reset_control_deassert(domain->reset);
+
+	/* request the ADB400 to power up */
+	if (domain->bits.hskreq) {
+		regmap_update_bits(domain->regmap, domain->regs->hsk,
+				   domain->bits.hskreq, domain->bits.hskreq);
+
+		/*
+		 * ret = regmap_read_poll_timeout(domain->regmap, domain->regs->hsk, reg_val,
+		 *				  (reg_val & domain->bits.hskack),
+		 *				  USEC_PER_MSEC);
+		 * Technically we need the commented code to wait handshake. But that needs
+		 * the BLK-CTL module BUS clk-en bit being set.
+		 *
+		 * There is a separate BLK-CTL module and we will have such a driver for it,
+		 * that driver will set the BUS clk-en bit and handshake will be triggered
+		 * automatically there. Just add a delay and suppose the handshake finish
+		 * after that.
+		 */
+	}
+
+	/* Disable reset clocks for all devices in the domain */
+	if (!domain->keep_clocks)
+		clk_bulk_disable(domain->num_clks, domain->clks);
 
 	return 0;
 
+out_clk_disable:
+	clk_bulk_disable(domain->num_clks, domain->clks);
 out_regulator_disable:
 	if (!IS_ERR(domain->regulator))
 		regulator_disable(domain->regulator);
-out_unmap:
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, 0);
+
 	return ret;
 }
 
 static int imx_pgc_power_down(struct generic_pm_domain *genpd)
 {
 	struct imx_pgc_domain *domain = to_imx_pgc_domain(genpd);
-	u32 reg_val;
+	u32 reg_val, pgc;
 	int ret;
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, domain->bits.map);
+	/* Enable reset clocks for all devices in the domain */
+	if (!domain->keep_clocks) {
+		ret = clk_bulk_enable(domain->num_clks, domain->clks);
+		if (ret) {
+			dev_err(domain->dev, "failed to enable reset clocks\n");
+			return ret;
+		}
+	}
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-			   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+	/* request the ADB400 to power down */
+	if (domain->bits.hskreq) {
+		regmap_clear_bits(domain->regmap, domain->regs->hsk,
+				  domain->bits.hskreq);
 
-	regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PDN_REQ,
-			   domain->bits.pxx, domain->bits.pxx);
+		ret = regmap_read_poll_timeout(domain->regmap, domain->regs->hsk,
+					       reg_val,
+					       !(reg_val & domain->bits.hskack),
+					       USEC_PER_MSEC);
+		if (ret) {
+			dev_err(domain->dev, "failed to power down ADB400\n");
+			goto out_clk_disable;
+		}
+	}
 
-	/*
-	 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
-	 * for PUP_REQ/PDN_REQ bit to be cleared
-	 */
-	ret = regmap_read_poll_timeout(domain->regmap,
-				       GPC_PU_PGC_SW_PDN_REQ, reg_val,
-				       !(reg_val & domain->bits.pxx),
-				       MSECOND);
-	if (ret < 0) {
-		dev_err(domain->dev, "falied to command PGC\n");
-		goto out_regulator_disable;
+	if (domain->bits.pxx) {
+		/* enable power control */
+		for_each_set_bit(pgc, &domain->pgc, 32) {
+			regmap_update_bits(domain->regmap, GPC_PGC_CTRL(pgc),
+					   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+		}
+
+		/* request the domain to power down */
+		regmap_update_bits(domain->regmap, domain->regs->pdn,
+				   domain->bits.pxx, domain->bits.pxx);
+		/*
+		 * As per "5.5.9.4 Example Code 4" in IMX7DRM.pdf wait
+		 * for PUP_REQ/PDN_REQ bit to be cleared
+		 */
+		ret = regmap_read_poll_timeout(domain->regmap,
+					       domain->regs->pdn, reg_val,
+					       !(reg_val & domain->bits.pxx),
+					       USEC_PER_MSEC);
+		if (ret) {
+			dev_err(domain->dev, "failed to command PGC\n");
+			goto out_clk_disable;
+		}
 	}
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CTRL(domain->pgc),
-			   GPC_PGC_CTRL_PCR, GPC_PGC_CTRL_PCR);
+	/* Disable reset clocks for all devices in the domain */
+	clk_bulk_disable(domain->num_clks, domain->clks);
 
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, 0);
+	if (!IS_ERR(domain->regulator)) {
+		ret = regulator_disable(domain->regulator);
+		if (ret) {
+			dev_err(domain->dev, "failed to disable regulator\n");
+			return ret;
+		}
+	}
 
 	return 0;
 
-out_regulator_disable:
-	if (!IS_ERR(domain->regulator))
-		regulator_disable(domain->regulator);
-
-	regmap_update_bits(domain->regmap, GPC_PGC_CPU_MAPPING,
-			   domain->bits.map, 0);
+out_clk_disable:
+	if (!domain->keep_clocks)
+		clk_bulk_disable(domain->num_clks, domain->clks);
 
 	return ret;
 }
@@ -229,10 +487,10 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 		},
 		.bits  = {
 			.pxx = IMX7_MIPI_PHY_SW_Pxx_REQ,
-			.map = IMX7_MIPI_PHY_A_DOMAIN,
+			.map = IMX7_MIPI_PHY_A_CORE_DOMAIN,
 		},
 		.voltage   = 1000000,
-		.pgc	   = IMX7_PGC_MIPI,
+		.pgc	   = BIT(IMX7_PGC_MIPI),
 	},
 
 	[IMX7_POWER_DOMAIN_PCIE_PHY] = {
@@ -241,10 +499,10 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 		},
 		.bits  = {
 			.pxx = IMX7_PCIE_PHY_SW_Pxx_REQ,
-			.map = IMX7_PCIE_PHY_A_DOMAIN,
+			.map = IMX7_PCIE_PHY_A_CORE_DOMAIN,
 		},
 		.voltage   = 1000000,
-		.pgc	   = IMX7_PGC_PCIE,
+		.pgc	   = BIT(IMX7_PGC_PCIE),
 	},
 
 	[IMX7_POWER_DOMAIN_USB_HSIC_PHY] = {
@@ -253,16 +511,24 @@ static const struct imx_pgc_domain imx7_pgc_domains[] = {
 		},
 		.bits  = {
 			.pxx = IMX7_USB_HSIC_PHY_SW_Pxx_REQ,
-			.map = IMX7_USB_HSIC_PHY_A_DOMAIN,
-	},
+			.map = IMX7_USB_HSIC_PHY_A_CORE_DOMAIN,
+		},
 		.voltage   = 1200000,
-		.pgc	   = IMX7_PGC_USB_HSIC,
+		.pgc	   = BIT(IMX7_PGC_USB_HSIC),
 	},
 };
 
+static const struct imx_pgc_regs imx7_pgc_regs = {
+	.map = GPC_PGC_CPU_MAPPING,
+	.pup = GPC_PU_PGC_SW_PUP_REQ,
+	.pdn = GPC_PU_PGC_SW_PDN_REQ,
+	.hsk = GPC_PU_PWRHSK,
+};
+
 static const struct imx_pgc_domain_data imx7_pgc_domain_data = {
-       .domains = imx7_pgc_domains,
-       .domains_num = ARRAY_SIZE(imx7_pgc_domains),
+	.domains = imx7_pgc_domains,
+	.domains_num = ARRAY_SIZE(imx7_pgc_domains),
+	.pgc_regs = &imx7_pgc_regs,
 };
 
 static const struct imx_pgc_domain imx8m_pgc_domains[] = {
@@ -274,7 +540,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_MIPI_SW_Pxx_REQ,
 			.map = IMX8M_MIPI_A53_DOMAIN,
 		},
-		.pgc	   = IMX8M_PGC_MIPI,
+		.pgc	   = BIT(IMX8M_PGC_MIPI),
 	},
 
 	[IMX8M_POWER_DOMAIN_PCIE1] = {
@@ -285,7 +551,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_PCIE1_SW_Pxx_REQ,
 			.map = IMX8M_PCIE1_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_PCIE1,
+		.pgc   = BIT(IMX8M_PGC_PCIE1),
 	},
 
 	[IMX8M_POWER_DOMAIN_USB_OTG1] = {
@@ -296,7 +562,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_OTG1_SW_Pxx_REQ,
 			.map = IMX8M_OTG1_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_OTG1,
+		.pgc   = BIT(IMX8M_PGC_OTG1),
 	},
 
 	[IMX8M_POWER_DOMAIN_USB_OTG2] = {
@@ -307,7 +573,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_OTG2_SW_Pxx_REQ,
 			.map = IMX8M_OTG2_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_OTG2,
+		.pgc   = BIT(IMX8M_PGC_OTG2),
 	},
 
 	[IMX8M_POWER_DOMAIN_DDR1] = {
@@ -318,7 +584,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_DDR1_SW_Pxx_REQ,
 			.map = IMX8M_DDR2_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_DDR1,
+		.pgc   = BIT(IMX8M_PGC_DDR1),
 	},
 
 	[IMX8M_POWER_DOMAIN_GPU] = {
@@ -328,8 +594,10 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 		.bits  = {
 			.pxx = IMX8M_GPU_SW_Pxx_REQ,
 			.map = IMX8M_GPU_A53_DOMAIN,
+			.hskreq = IMX8M_GPU_HSK_PWRDNREQN,
+			.hskack = IMX8M_GPU_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8M_PGC_GPU,
+		.pgc   = BIT(IMX8M_PGC_GPU),
 	},
 
 	[IMX8M_POWER_DOMAIN_VPU] = {
@@ -339,8 +607,11 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 		.bits  = {
 			.pxx = IMX8M_VPU_SW_Pxx_REQ,
 			.map = IMX8M_VPU_A53_DOMAIN,
+			.hskreq = IMX8M_VPU_HSK_PWRDNREQN,
+			.hskack = IMX8M_VPU_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8M_PGC_VPU,
+		.pgc   = BIT(IMX8M_PGC_VPU),
+		.keep_clocks = true,
 	},
 
 	[IMX8M_POWER_DOMAIN_DISP] = {
@@ -350,8 +621,10 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 		.bits  = {
 			.pxx = IMX8M_DISP_SW_Pxx_REQ,
 			.map = IMX8M_DISP_A53_DOMAIN,
+			.hskreq = IMX8M_DISP_HSK_PWRDNREQN,
+			.hskack = IMX8M_DISP_HSK_PWRDNACKN,
 		},
-		.pgc   = IMX8M_PGC_DISP,
+		.pgc   = BIT(IMX8M_PGC_DISP),
 	},
 
 	[IMX8M_POWER_DOMAIN_MIPI_CSI1] = {
@@ -362,7 +635,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_MIPI_CSI1_SW_Pxx_REQ,
 			.map = IMX8M_MIPI_CSI1_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_MIPI_CSI1,
+		.pgc   = BIT(IMX8M_PGC_MIPI_CSI1),
 	},
 
 	[IMX8M_POWER_DOMAIN_MIPI_CSI2] = {
@@ -373,7 +646,7 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_MIPI_CSI2_SW_Pxx_REQ,
 			.map = IMX8M_MIPI_CSI2_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_MIPI_CSI2,
+		.pgc   = BIT(IMX8M_PGC_MIPI_CSI2),
 	},
 
 	[IMX8M_POWER_DOMAIN_PCIE2] = {
@@ -384,13 +657,483 @@ static const struct imx_pgc_domain imx8m_pgc_domains[] = {
 			.pxx = IMX8M_PCIE2_SW_Pxx_REQ,
 			.map = IMX8M_PCIE2_A53_DOMAIN,
 		},
-		.pgc   = IMX8M_PGC_PCIE2,
+		.pgc   = BIT(IMX8M_PGC_PCIE2),
 	},
 };
 
 static const struct imx_pgc_domain_data imx8m_pgc_domain_data = {
 	.domains = imx8m_pgc_domains,
 	.domains_num = ARRAY_SIZE(imx8m_pgc_domains),
+	.pgc_regs = &imx7_pgc_regs,
+};
+
+static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
+	[IMX8MM_POWER_DOMAIN_HSIOMIX] = {
+		.genpd = {
+			.name = "hsiomix",
+		},
+		.bits  = {
+			.pxx = 0, /* no power sequence control */
+			.map = 0, /* no power sequence control */
+			.hskreq = IMX8MM_HSIO_HSK_PWRDNREQN,
+			.hskack = IMX8MM_HSIO_HSK_PWRDNACKN,
+		},
+		.keep_clocks = true,
+	},
+
+	[IMX8MM_POWER_DOMAIN_PCIE] = {
+		.genpd = {
+			.name = "pcie",
+		},
+		.bits  = {
+			.pxx = IMX8MM_PCIE_SW_Pxx_REQ,
+			.map = IMX8MM_PCIE_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_PCIE),
+	},
+
+	[IMX8MM_POWER_DOMAIN_OTG1] = {
+		.genpd = {
+			.name = "usb-otg1",
+		},
+		.bits  = {
+			.pxx = IMX8MM_OTG1_SW_Pxx_REQ,
+			.map = IMX8MM_OTG1_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_OTG1),
+	},
+
+	[IMX8MM_POWER_DOMAIN_OTG2] = {
+		.genpd = {
+			.name = "usb-otg2",
+		},
+		.bits  = {
+			.pxx = IMX8MM_OTG2_SW_Pxx_REQ,
+			.map = IMX8MM_OTG2_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_OTG2),
+	},
+
+	[IMX8MM_POWER_DOMAIN_GPUMIX] = {
+		.genpd = {
+			.name = "gpumix",
+		},
+		.bits  = {
+			.pxx = IMX8MM_GPUMIX_SW_Pxx_REQ,
+			.map = IMX8MM_GPUMIX_A53_DOMAIN,
+			.hskreq = IMX8MM_GPUMIX_HSK_PWRDNREQN,
+			.hskack = IMX8MM_GPUMIX_HSK_PWRDNACKN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_GPUMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MM_POWER_DOMAIN_GPU] = {
+		.genpd = {
+			.name = "gpu",
+		},
+		.bits  = {
+			.pxx = IMX8MM_GPU_SW_Pxx_REQ,
+			.map = IMX8MM_GPU_A53_DOMAIN,
+			.hskreq = IMX8MM_GPU_HSK_PWRDNREQN,
+			.hskack = IMX8MM_GPU_HSK_PWRDNACKN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_GPU2D) | BIT(IMX8MM_PGC_GPU3D),
+	},
+
+	[IMX8MM_POWER_DOMAIN_VPUMIX] = {
+		.genpd = {
+			.name = "vpumix",
+		},
+		.bits  = {
+			.pxx = IMX8MM_VPUMIX_SW_Pxx_REQ,
+			.map = IMX8MM_VPUMIX_A53_DOMAIN,
+			.hskreq = IMX8MM_VPUMIX_HSK_PWRDNREQN,
+			.hskack = IMX8MM_VPUMIX_HSK_PWRDNACKN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_VPUMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MM_POWER_DOMAIN_VPUG1] = {
+		.genpd = {
+			.name = "vpu-g1",
+		},
+		.bits  = {
+			.pxx = IMX8MM_VPUG1_SW_Pxx_REQ,
+			.map = IMX8MM_VPUG1_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_VPUG1),
+	},
+
+	[IMX8MM_POWER_DOMAIN_VPUG2] = {
+		.genpd = {
+			.name = "vpu-g2",
+		},
+		.bits  = {
+			.pxx = IMX8MM_VPUG2_SW_Pxx_REQ,
+			.map = IMX8MM_VPUG2_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_VPUG2),
+	},
+
+	[IMX8MM_POWER_DOMAIN_VPUH1] = {
+		.genpd = {
+			.name = "vpu-h1",
+		},
+		.bits  = {
+			.pxx = IMX8MM_VPUH1_SW_Pxx_REQ,
+			.map = IMX8MM_VPUH1_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_VPUH1),
+		.keep_clocks = true,
+	},
+
+	[IMX8MM_POWER_DOMAIN_DISPMIX] = {
+		.genpd = {
+			.name = "dispmix",
+		},
+		.bits  = {
+			.pxx = IMX8MM_DISPMIX_SW_Pxx_REQ,
+			.map = IMX8MM_DISPMIX_A53_DOMAIN,
+			.hskreq = IMX8MM_DISPMIX_HSK_PWRDNREQN,
+			.hskack = IMX8MM_DISPMIX_HSK_PWRDNACKN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_DISPMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MM_POWER_DOMAIN_MIPI] = {
+		.genpd = {
+			.name = "mipi",
+		},
+		.bits  = {
+			.pxx = IMX8MM_MIPI_SW_Pxx_REQ,
+			.map = IMX8MM_MIPI_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MM_PGC_MIPI),
+	},
+};
+
+static const struct imx_pgc_domain_data imx8mm_pgc_domain_data = {
+	.domains = imx8mm_pgc_domains,
+	.domains_num = ARRAY_SIZE(imx8mm_pgc_domains),
+	.pgc_regs = &imx7_pgc_regs,
+};
+
+static const struct imx_pgc_domain imx8mp_pgc_domains[] = {
+	[IMX8MP_POWER_DOMAIN_MIPI_PHY1] = {
+		.genpd = {
+			.name = "mipi-phy1",
+		},
+		.bits = {
+			.pxx = IMX8MP_MIPI_PHY1_SW_Pxx_REQ,
+			.map = IMX8MP_MIPI_PHY1_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MIPI1),
+	},
+
+	[IMX8MP_POWER_DOMAIN_PCIE_PHY] = {
+		.genpd = {
+			.name = "pcie-phy1",
+		},
+		.bits = {
+			.pxx = IMX8MP_PCIE_PHY_SW_Pxx_REQ,
+			.map = IMX8MP_PCIE_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_PCIE),
+	},
+
+	[IMX8MP_POWER_DOMAIN_USB1_PHY] = {
+		.genpd = {
+			.name = "usb-otg1",
+		},
+		.bits = {
+			.pxx = IMX8MP_USB1_PHY_Pxx_REQ,
+			.map = IMX8MP_USB1_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_USB1),
+	},
+
+	[IMX8MP_POWER_DOMAIN_USB2_PHY] = {
+		.genpd = {
+			.name = "usb-otg2",
+		},
+		.bits = {
+			.pxx = IMX8MP_USB2_PHY_Pxx_REQ,
+			.map = IMX8MP_USB2_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_USB2),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MLMIX] = {
+		.genpd = {
+			.name = "mlmix",
+		},
+		.bits = {
+			.pxx = IMX8MP_MLMIX_Pxx_REQ,
+			.map = IMX8MP_MLMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_MLMIX_PWRDNREQN,
+			.hskack = IMX8MP_MLMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MLMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_AUDIOMIX] = {
+		.genpd = {
+			.name = "audiomix",
+		},
+		.bits = {
+			.pxx = IMX8MP_AUDIOMIX_Pxx_REQ,
+			.map = IMX8MP_AUDIOMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_AUDIOMIX_PWRDNREQN,
+			.hskack = IMX8MP_AUDIOMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_AUDIOMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPU2D] = {
+		.genpd = {
+			.name = "gpu2d",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_2D_Pxx_REQ,
+			.map = IMX8MP_GPU2D_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPU2D),
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPUMIX] = {
+		.genpd = {
+			.name = "gpumix",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_SHARE_LOGIC_Pxx_REQ,
+			.map = IMX8MP_GPUMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_GPUMIX_PWRDNREQN,
+			.hskack = IMX8MP_GPUMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPUMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_VPUMIX] = {
+		.genpd = {
+			.name = "vpumix",
+		},
+		.bits = {
+			.pxx = IMX8MP_VPU_MIX_SHARE_LOGIC_Pxx_REQ,
+			.map = IMX8MP_VPUMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_VPUMIX_PWRDNREQN,
+			.hskack = IMX8MP_VPUMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_VPUMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_GPU3D] = {
+		.genpd = {
+			.name = "gpu3d",
+		},
+		.bits = {
+			.pxx = IMX8MP_GPU_3D_Pxx_REQ,
+			.map = IMX8MP_GPU3D_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_GPU3D),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MEDIAMIX] = {
+		.genpd = {
+			.name = "mediamix",
+		},
+		.bits = {
+			.pxx = IMX8MP_MEDIMIX_Pxx_REQ,
+			.map = IMX8MP_MEDIAMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_MEDIAMIX_PWRDNREQN,
+			.hskack = IMX8MP_MEDIAMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MEDIAMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_VPU_G1] = {
+		.genpd = {
+			.name = "vpu-g1",
+		},
+		.bits = {
+			.pxx = IMX8MP_VPU_G1_Pxx_REQ,
+			.map = IMX8MP_VPU_G1_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_VPU_G1),
+	},
+
+	[IMX8MP_POWER_DOMAIN_VPU_G2] = {
+		.genpd = {
+			.name = "vpu-g2",
+		},
+		.bits = {
+			.pxx = IMX8MP_VPU_G2_Pxx_REQ,
+			.map = IMX8MP_VPU_G2_A53_DOMAIN
+		},
+		.pgc = BIT(IMX8MP_PGC_VPU_G2),
+	},
+
+	[IMX8MP_POWER_DOMAIN_VPU_VC8000E] = {
+		.genpd = {
+			.name = "vpu-h1",
+		},
+		.bits = {
+			.pxx = IMX8MP_VPU_VC8K_Pxx_REQ,
+			.map = IMX8MP_VPU_VC8000E_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_VPU_VC8000E),
+	},
+
+	[IMX8MP_POWER_DOMAIN_HDMIMIX] = {
+		.genpd = {
+			.name = "hdmimix",
+		},
+		.bits = {
+			.pxx = IMX8MP_HDMIMIX_Pxx_REQ,
+			.map = IMX8MP_HDMIMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_HDMIMIX_PWRDNREQN,
+			.hskack = IMX8MP_HDMIMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HDMIMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_HDMI_PHY] = {
+		.genpd = {
+			.name = "hdmi-phy",
+		},
+		.bits = {
+			.pxx = IMX8MP_HDMI_PHY_Pxx_REQ,
+			.map = IMX8MP_HDMI_PHY_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HDMI),
+	},
+
+	[IMX8MP_POWER_DOMAIN_MIPI_PHY2] = {
+		.genpd = {
+			.name = "mipi-phy2",
+		},
+		.bits = {
+			.pxx = IMX8MP_MIPI_PHY2_Pxx_REQ,
+			.map = IMX8MP_MIPI_PHY2_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MIPI2),
+	},
+
+	[IMX8MP_POWER_DOMAIN_HSIOMIX] = {
+		.genpd = {
+			.name = "hsiomix",
+		},
+		.bits = {
+			.pxx = IMX8MP_HSIOMIX_Pxx_REQ,
+			.map = IMX8MP_HSIOMIX_A53_DOMAIN,
+			.hskreq = IMX8MP_HSIOMIX_PWRDNREQN,
+			.hskack = IMX8MP_HSIOMIX_PWRDNACKN,
+		},
+		.pgc = BIT(IMX8MP_PGC_HSIOMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MP_POWER_DOMAIN_MEDIAMIX_ISPDWP] = {
+		.genpd = {
+			.name = "mediamix-isp-dwp",
+		},
+		.bits = {
+			.pxx = IMX8MP_MEDIA_ISP_DWP_Pxx_REQ,
+			.map = IMX8MP_MEDIA_ISPDWP_A53_DOMAIN,
+		},
+		.pgc = BIT(IMX8MP_PGC_MEDIA_ISP_DWP),
+	},
+};
+
+static const struct imx_pgc_regs imx8mp_pgc_regs = {
+	.map = IMX8MP_GPC_PGC_CPU_MAPPING,
+	.pup = IMX8MP_GPC_PU_PGC_SW_PUP_REQ,
+	.pdn = IMX8MP_GPC_PU_PGC_SW_PDN_REQ,
+	.hsk = IMX8MP_GPC_PU_PWRHSK,
+};
+static const struct imx_pgc_domain_data imx8mp_pgc_domain_data = {
+	.domains = imx8mp_pgc_domains,
+	.domains_num = ARRAY_SIZE(imx8mp_pgc_domains),
+	.pgc_regs = &imx8mp_pgc_regs,
+};
+
+static const struct imx_pgc_domain imx8mn_pgc_domains[] = {
+	[IMX8MN_POWER_DOMAIN_HSIOMIX] = {
+		.genpd = {
+			.name = "hsiomix",
+		},
+		.bits  = {
+			.pxx = 0, /* no power sequence control */
+			.map = 0, /* no power sequence control */
+			.hskreq = IMX8MN_HSIO_HSK_PWRDNREQN,
+			.hskack = IMX8MN_HSIO_HSK_PWRDNACKN,
+		},
+		.keep_clocks = true,
+	},
+
+	[IMX8MN_POWER_DOMAIN_OTG1] = {
+		.genpd = {
+			.name = "usb-otg1",
+		},
+		.bits  = {
+			.pxx = IMX8MN_OTG1_SW_Pxx_REQ,
+			.map = IMX8MN_OTG1_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MN_PGC_OTG1),
+	},
+
+	[IMX8MN_POWER_DOMAIN_GPUMIX] = {
+		.genpd = {
+			.name = "gpumix",
+		},
+		.bits  = {
+			.pxx = IMX8MN_GPUMIX_SW_Pxx_REQ,
+			.map = IMX8MN_GPUMIX_A53_DOMAIN,
+			.hskreq = IMX8MN_GPUMIX_HSK_PWRDNREQN,
+			.hskack = IMX8MN_GPUMIX_HSK_PWRDNACKN,
+		},
+		.pgc   = BIT(IMX8MN_PGC_GPUMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MN_POWER_DOMAIN_DISPMIX] = {
+		.genpd = {
+			.name = "dispmix",
+		},
+			.bits  = {
+			.pxx = IMX8MN_DISPMIX_SW_Pxx_REQ,
+			.map = IMX8MN_DISPMIX_A53_DOMAIN,
+			.hskreq = IMX8MN_DISPMIX_HSK_PWRDNREQN,
+			.hskack = IMX8MN_DISPMIX_HSK_PWRDNACKN,
+		},
+		.pgc   = BIT(IMX8MN_PGC_DISPMIX),
+		.keep_clocks = true,
+	},
+
+	[IMX8MN_POWER_DOMAIN_MIPI] = {
+		.genpd = {
+			.name = "mipi",
+		},
+			.bits  = {
+			.pxx = IMX8MN_MIPI_SW_Pxx_REQ,
+			.map = IMX8MN_MIPI_A53_DOMAIN,
+		},
+		.pgc   = BIT(IMX8MN_PGC_MIPI),
+	},
+};
+
+static const struct imx_pgc_domain_data imx8mn_pgc_domain_data = {
+	.domains = imx8mn_pgc_domains,
+	.domains_num = ARRAY_SIZE(imx8mn_pgc_domains),
+	.pgc_regs = &imx7_pgc_regs,
 };
 
 static int imx_pgc_domain_probe(struct device_d *dev)
@@ -402,28 +1145,52 @@ static int imx_pgc_domain_probe(struct device_d *dev)
 
 	domain->regulator = regulator_get(domain->dev, "power");
 	if (IS_ERR(domain->regulator)) {
-		if (PTR_ERR(domain->regulator) != -ENODEV) {
-			if (PTR_ERR(domain->regulator) != -EPROBE_DEFER)
-				dev_err(domain->dev, "Failed to get domain's regulator\n");
-			return PTR_ERR(domain->regulator);
-		}
-	} else {
+		if (PTR_ERR(domain->regulator) != -ENODEV)
+			return dev_err_probe(domain->dev, PTR_ERR(domain->regulator),
+					     "Failed to get domain's regulator\n");
+	} else if (domain->voltage) {
 		regulator_set_voltage(domain->regulator,
 				      domain->voltage, domain->voltage);
 	}
 
+	domain->num_clks = clk_bulk_get_all(domain->dev, &domain->clks);
+	if (domain->num_clks < 0)
+		return dev_err_probe(domain->dev, domain->num_clks,
+				     "Failed to get domain's clocks\n");
+
+	/* There are no power domains yet with multiple resets */
+	if (reset_control_get_count(domain->dev) > 1)
+		return dev_err_probe(domain->dev, -ENOSYS,
+				     "driver can't handle multiple resets yet\n");
+
+	domain->reset = reset_control_get_optional(domain->dev, NULL);
+	if (IS_ERR(domain->reset))
+		return dev_err_probe(domain->dev, PTR_ERR(domain->reset),
+				     "Failed to get domain's resets\n");
+
+	if (domain->bits.map)
+		regmap_update_bits(domain->regmap, domain->regs->map,
+				   domain->bits.map, domain->bits.map);
+
 	ret = pm_genpd_init(&domain->genpd, NULL, true);
 	if (ret) {
 		dev_err(domain->dev, "Failed to init power domain\n");
-		return ret;
+		goto out_domain_unmap;
 	}
 
 	ret = of_genpd_add_provider_simple(domain->dev->device_node,
 					   &domain->genpd);
 	if (ret) {
 		dev_err(domain->dev, "Failed to add genpd provider\n");
+		goto out_domain_unmap;
 	}
 
+	return 0;
+
+out_domain_unmap:
+	if (domain->bits.map)
+		regmap_update_bits(domain->regmap, domain->regs->map,
+				   domain->bits.map, 0);
 	return ret;
 }
 
@@ -486,6 +1253,9 @@ again:
 		if ((pass == 0 && child_domain) || (pass == 1 && !child_domain))
 			continue;
 
+		if (!of_device_is_available(np))
+			continue;
+
 		ret = of_property_read_u32(np, "reg", &domain_index);
 		if (ret) {
 			dev_err(dev, "Failed to read 'reg' property\n");
@@ -503,6 +1273,7 @@ again:
 				 sizeof(domain_data->domains[domain_index]));
 		domain->regmap = regmap;
 		domain->genpd.power_on = imx_pgc_power_up;
+		domain->regs = domain_data->pgc_regs;
 		domain->genpd.power_off = imx_pgc_power_down;
 
 		pd_dev = xzalloc(sizeof(*pd_dev));
@@ -527,13 +1298,16 @@ again:
 }
 
 static const struct of_device_id imx_gpcv2_dt_ids[] = {
-	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data },
+	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
+	{ .compatible = "fsl,imx8mm-gpc", .data = &imx8mm_pgc_domain_data, },
+	{ .compatible = "fsl,imx8mn-gpc", .data = &imx8mn_pgc_domain_data, },
+	{ .compatible = "fsl,imx8mp-gpc", .data = &imx8mp_pgc_domain_data, },
 	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
 	{ }
 };
 
 static struct driver_d imx_gpcv2_driver = {
-	.name = "imx7d-gpc",
+	.name = "imx-gpcv2",
 	.probe = imx_gpcv2_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_gpcv2_dt_ids),
 };
-- 
2.30.2



