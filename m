Delivery-date: Mon, 13 Mar 2023 14:43:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSv-0061Tz-QA
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:43:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSv-0005KR-3I
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:43:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=viqKat1XU1PCntqTcQDGtvJzyn392TKaVYF5Z8lIclI=; b=AhSqUCegbGPHEYQ5QACEbPV67s
	rL85UlyRiTrwdFpUAET/xAETXmfrq5TKUdOvM0Te6GZivllRNE9EwYd8FdB+Al4vtN2KacciBFd0j
	2nNzmKfztc7v1+ieUS/xLbi0UGtfU+rsjqU24ai2stpjqd7seEa4yvZwb9Z6zZe5N5Fkry3O70geQ
	xc9e26Fds7jnb8jclRdxrrJ+Tz3wWUdOGgLLTXhw9ywf0cMW1LuidqHzAOubBWGoW30OC6yeIuFkb
	LGbfSlfzLCy3BGbG1wd9hSbLlJ3bb6PCSXkqUAYKs0OHchVBlYyZ0zEEIBjLJcOxU/j8l0m79rb1q
	imGJwSFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiRZ-005wDO-5L; Mon, 13 Mar 2023 13:42:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQr-005vko-C8
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQq-0004N9-7J
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-10-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064145_505023_3B7E7834 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/23] ARM: i.MX8MM bootsource: fix QSPI boot source
 detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ROM will not update the sw-info field, so we need to parse the
SBMR1. There is just one QSPI controller so set instance to 0 to avoid
bootsource_instance=unknown.

This ports u-boot commit:

| commit d4e84f24a6815957b3a218166f214ca9a1c4a7de
| Author: Peng Fan <peng.fan@nxp.com>
| Date:   Thu May 17 15:15:59 2018 +0800
|
|     imx8m: add QSPI boot dev
|
|     When boot type could not be detected from rom sw info,
|     read sbmr1 to detect, here we only use it to detect FLEXSPI
|     boot, because ROM not update it in rom sw info.
|
|     Signed-off-by: Peng Fan <peng.fan@nxp.com>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 6f6f7008be..c6134f35b6 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -243,6 +243,11 @@ static unsigned int imx8mp_get_bmod(uint32_t r)
 	return FIELD_GET(IMX8MP_SRC_SBMR_BMOD, r);
 }
 
+static unsigned int imx8mm_get_bcfg(uint32_t r)
+{
+	return FIELD_GET(BOOT_CFG2(6, 4), r);
+}
+
 static int imx53_bootsource_internal(uint32_t r)
 {
 	return FIELD_GET(BOOT_CFG1(7, 4), r);
@@ -323,6 +328,7 @@ void imx53_boot_save_loc(void)
 #define IMX6_SRC_GPR10	0x44
 #define IMX6_BMOD_SERIAL	0b01
 #define IMX6_BMOD_RESERVED	0b11
+#define IMX8MM_BCFG_FSPI	0b100
 #define IMX8MP_BMOD_FUSES	0b0000
 #define IMX8MP_BMOD_SERIAL	0b0001
 #define IMX6_BMOD_FUSES		0b00
@@ -358,6 +364,11 @@ static bool imx8mp_bootsource_serial(uint32_t sbmr2)
 		 !(sbmr2 & BT_FUSE_SEL));
 }
 
+static bool imx8mm_bootsource_qspi(uint32_t sbmr1)
+{
+	return imx8mm_get_bcfg(sbmr1) == IMX8MM_BCFG_FSPI;
+}
+
 static bool imx6_bootsource_serial_forced(uint32_t bootmode)
 {
 	if (cpu_mx6_is_mx6ul() || cpu_mx6_is_mx6ull())
@@ -692,6 +703,7 @@ void imx8mm_get_boot_source(enum bootsource *src, int *instance)
 {
 	unsigned long addr;
 	void __iomem *src_base = IOMEM(MX8MM_SRC_BASE_ADDR);
+	uint32_t sbmr1 = readl(src_base + 0x58);
 	uint32_t sbmr2 = readl(src_base + 0x70);
 
 	if (imx6_bootsource_serial(sbmr2)) {
@@ -699,6 +711,12 @@ void imx8mm_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
+	if (imx8mm_bootsource_qspi(sbmr1)) {
+		*src = BOOTSOURCE_SPI; /* Really: qspi */
+		*instance = 0;
+		return;
+	}
+
 	addr = IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0;
 
 	__imx7_get_boot_source(src, instance, addr, sbmr2);

-- 
2.30.2



