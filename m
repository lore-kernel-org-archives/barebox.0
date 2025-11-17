Delivery-date: Mon, 17 Nov 2025 22:40:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6y2-0026js-04
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 22:40:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6y1-0002vA-B5
	for lore@pengutronix.de; Mon, 17 Nov 2025 22:40:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8cyZO2fO94r1+jNNEklx78CRgWJCepSFfjyXo1pNX7g=; b=hfxsvzMUsGejRolYmmbuZr2WYn
	FFWfEppGadmKRxgJ06icOzK/nGYJKoTGLaM0ispSyPtjgzBMrzv0LgpHSpPemWlMUT3M6Oyk+3hj2
	bXDFjScYh5PSlmN7aczdywoEinB0mKTo96/9w8Ik4kYsXdlHzZXXGSgMIZgVe5OZ5j9w4ldErQnTU
	9NE/SFrp15ICID1Du7C1bpJElYRifODjbMkqcBd4VbkTXYH/8PbCJ+49CxK99Wm9tR0qP8sjtZP2p
	1Rggej+en5uBjVwJ3Kp1M2vV74U72WlFN1kDEF7QjFM+/AkPAAzxTA52F/bbnH8Tg0PkTnMhwYaV8
	pwp9MjZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6xX-0000000GtHF-1VTj;
	Mon, 17 Nov 2025 21:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6xV-0000000GtGl-0KYN
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 21:40:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6xT-0002pV-H0; Mon, 17 Nov 2025 22:40:23 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6xT-000yh5-14;
	Mon, 17 Nov 2025 22:40:23 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6xT-00000000ker-181w;
	Mon, 17 Nov 2025 22:40:23 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Nov 2025 22:40:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-imx93-power-mix-v1-1-102acc18ee20@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAEWWG2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQ0Nz3czcCktj3YL88tQi3dzMCl0zI2OLFLMkU7MkMyMloK6CotS0zAq
 widGxtbUAWVUgxWEAAAA=
X-Change-ID: 20251117-imx93-power-mix-6238d6b56b62
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4962;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=p/8+0HDwxYxEV1PuoHotXk/YbM/pYrSfPtDnsnrYTZs=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpG5ZGlQ/zcgwO/Dx4CaGPkWt0NHOTkEZ2NVW5s
 kMQvjIJpS+JAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaRuWRgAKCRC/aVhE+XH0
 q0ZCEACgDHbPrdTcNhLoxocV7pzuvEK0rmGBtrZ1WJwpniJvX3WAs/EUz0RVtCeWUuZOgPpgcY9
 PqF9+Tt8hVJnmQMd2/+RUY1HbAZRx+K7weARr1xHmXwIFIyvfkwxgX2UXLsKszhJH2g3SBFeu50
 +jUtyBjw0zWJsHr8K+yVJ9Qa++UBYEcan1KI6HYnFksxKCkHyScx8isjmWOLbNyiF7KiDjy1M8n
 IGhwBT3bzx/37A8YMQbfIG5qOq5ZCpD9FFsKqL6Rf+6RVIq9jHl7CNySdHW0KqouLugavjVHLue
 iyfbRytCRNB4XK87Q4sH9Wdo6hrsJjN/w6W38lOf/rS/H8niw1dV3aiugHUOcoX4Oc6zZcpCavC
 hu7j2z5mA8N2qp2wpqDTI8/pCz2/6KeFYIOIGQT5yX68IGyhDM6HyRtb6gyYCU7pbNLtjjc5kY0
 MnJfOCriB9POKmSE+I4c9guKY0xfBMR9is0gLATOr++nEVsR6DPUVO0JtkBwtCEEvZ7pZ/DyMbB
 zOVUPmVG8p8kglr3T7rYD4LkUKPD4zIWhxgbyeuViIv0jO9OIT2jd+82sIzr8y+tMxwD11yAM5M
 o52XUQ2oZoJa+kbWM2vdaamvEKm1jatjY0+b2nxGl0ZU4ziOwj3RewK06swSl/9LdURfUvyPRu7
 ZrcBLNnYTABZfIA==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_134025_152813_FCC02732 
X-CRM114-Status: GOOD (  16.47  )
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
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX93: cpu_init: enable media+mlmix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The MEDIAMIX domain contains control and status registers for the media
peripherals, i.e. MIPI, LCDIF, etc.

The code is an adaptation of the u-boot code in
    arm/arm/mach-imx/imx9/soc.c

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-imx/cpu_init.c | 94 ++++++++++++++++++++++++++++++++++++++++++++
 include/mach/imx/imx9-regs.h |  1 +
 2 files changed, 95 insertions(+)

diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index bd464e9f09e9ad7e539fc783b8d2cf96fadbde0d..e0fa459fe7a4539f706a9ce31e0178733958395d 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -112,6 +112,97 @@ void imx8mq_cpu_lowlevel_init(void)
 
 #define SRC_SP_ISO_CTRL			0x10c
 
+#define MIX_PD_MEDIAMIX				1
+#define MIX_PD_MLMIX				2
+#define ANOMIX_LP_HANDSHAKE			0x110
+#define SRC_MIX_MEDIA				8
+#define SRC_MEM_MEDIA				8
+#define SRC_MIX_ML				5
+#define SRC_MEM_ML				4
+#define SRC_MIX_SLICE_FUNC_STAT_PSW_STAT	BIT(0)
+#define SRC_MIX_SLICE_FUNC_STAT_RST_STAT	BIT(2)
+#define SRC_MIX_SLICE_FUNC_STAT_ISO_STAT	BIT(4)
+#define SRC_MIX_SLICE_FUNC_STAT_MEM_STAT	BIT(12)
+#define SRC_AUTHEN_CTRL				0x4
+#define SRC_MEM_CTRL				0x4
+#define SRC_PSW_ACK_CTRL0			0x80
+#define SRC_GLOBAL_SCR				0x10
+#define SRC_SLICE_SW_CTRL			0x20
+#define SRC_FUNC_STAT				0xb4
+
+static void imx93_mix_power_init(int pd)
+{
+	void __iomem *anomix = IOMEM(MX9_ANOMIX_BASE_ADDR);
+	void __iomem *global_regs = IOMEM(MX9_SRC_BASE_ADDR);
+	void __iomem *mix_regs, *mem_regs;
+	u32 scr, val, mix_id, mem_id;
+
+	scr = 0;
+	mix_id = 0;
+	mem_id = 0;
+
+	switch (pd) {
+	case MIX_PD_MEDIAMIX:
+		mix_id = SRC_MIX_MEDIA;
+		mem_id = SRC_MEM_MEDIA;
+		scr = BIT(5);
+
+		/* Enable ELE handshake */
+		setbits_le32(anomix + ANOMIX_LP_HANDSHAKE, BIT(13));
+		break;
+	case MIX_PD_MLMIX:
+		mix_id = SRC_MIX_ML;
+		mem_id = SRC_MEM_ML;
+		scr = BIT(4);
+		break;
+	}
+
+	mix_regs = IOMEM(MX9_SRC_BASE_ADDR + 0x400 * (mix_id + 1));
+	mem_regs = IOMEM(MX9_SRC_BASE_ADDR + 0x3800 + 0x400 * mem_id);
+
+	/* Allow NS to set it */
+	setbits_le32(mix_regs + SRC_AUTHEN_CTRL, BIT(9));
+
+	clrsetbits_le32(mix_regs + SRC_PSW_ACK_CTRL0, BIT(28), BIT(29));
+
+	/* mix reset will be held until boot core write this bit to 1 */
+	setbits_le32(global_regs + SRC_GLOBAL_SCR, scr);
+
+	/* Enable mem in Low power auto sequence */
+	setbits_le32(mem_regs + SRC_MEM_CTRL, BIT(2));
+
+	/* Set the power down state */
+	val = readl(mix_regs + SRC_FUNC_STAT);
+	if (val & SRC_MIX_SLICE_FUNC_STAT_PSW_STAT) {
+		/* The mix is default power off, power down it to make PDN_SFT bit
+		 *  aligned with FUNC STAT
+		 */
+		setbits_le32(mix_regs + SRC_SLICE_SW_CTRL, BIT(31));
+		val = readl(mix_regs + SRC_FUNC_STAT);
+
+		/* Since PSW_STAT is 1, can't be used for power off status (SW_CTRL BIT31 set)) */
+		/* Check the MEM STAT change to ensure SSAR is completed */
+		while (!(val & SRC_MIX_SLICE_FUNC_STAT_MEM_STAT))
+			val = readl(mix_regs + SRC_FUNC_STAT);
+
+		/* wait few ipg clock cycles to ensure FSM done and power off status is correct */
+		/* About 5 cycles at 24Mhz, 1us is enough  */
+		udelay(1);
+	} else {
+		/*  The mix is default power on, Do mix power cycle */
+		setbits_le32(mix_regs + SRC_SLICE_SW_CTRL, BIT(31));
+		val = readl(mix_regs + SRC_FUNC_STAT);
+		while (!(val & SRC_MIX_SLICE_FUNC_STAT_PSW_STAT))
+			val = readl(mix_regs + SRC_FUNC_STAT);
+	}
+
+	/* power on */
+	clrbits_le32(mix_regs + SRC_SLICE_SW_CTRL, BIT(31));
+	val = readl(mix_regs + SRC_FUNC_STAT);
+	while (val & SRC_MIX_SLICE_FUNC_STAT_ISO_STAT)
+		val = readl(mix_regs + SRC_FUNC_STAT);
+}
+
 void imx93_cpu_lowlevel_init(void)
 {
 	void __iomem *ccm = IOMEM(MX9_CCM_BASE_ADDR);
@@ -136,6 +227,9 @@ void imx93_cpu_lowlevel_init(void)
 	for (i = 0; i <= 3 ; i++)
 		writel(CCM_AUTHEN_TZ_NS, ccm + GPR_SHARED0_AUTHEN(i) + SET);
 
+	imx93_mix_power_init(MIX_PD_MEDIAMIX);
+	imx93_mix_power_init(MIX_PD_MLMIX);
+
 	/* clear isolation for usbphy, dsi, csi*/
 	writel(0x0, src + SRC_SP_ISO_CTRL);
 
diff --git a/include/mach/imx/imx9-regs.h b/include/mach/imx/imx9-regs.h
index 6a87f7eb3a94b5dc125c6b48bd60d6fd7c2d7d15..1d18e28ca5342eff1d96935eb20a4ce76c9190ce 100644
--- a/include/mach/imx/imx9-regs.h
+++ b/include/mach/imx/imx9-regs.h
@@ -23,6 +23,7 @@
 #define MX9_SRC_BASE_ADDR		0x44460000UL
 #define MX9_ANATOP_BASE_ADDR		0x44480000UL
 #define MX9_ANATOP_DRAM_PLL_BASE_ADDR	0x44481300UL
+#define MX9_ANOMIX_BASE_ADDR		0x444f0000UL
 #define MX9_OCOTP_BASE_ADDR		0x47510000UL
 #define MX9_S3MUA_BASE_ADDR		0x47520000UL
 #define MX9_TRDC_NICMIX_BASE_ADDR	0x49010000UL

---
base-commit: 6c85c9d60dd32b42a866aed522ff7e19211ef7d2
change-id: 20251117-imx93-power-mix-6238d6b56b62

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



