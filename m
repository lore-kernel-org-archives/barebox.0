Delivery-date: Mon, 13 Mar 2023 14:46:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiV8-0062Pj-LQ
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:46:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiV7-0006U7-Um
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:46:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CSJP6DKW/Dq0IPwe0L5e77XaxICKfKDQvzBiTy4EZ2k=; b=o5BjHxr322Hd1yCnilZRHRHa3F
	XyrI05MRV9N9YVSF8FDxofWIxJOeV4bIMAW10ausRyTWIuUx3KlTYSHPh6cs+tfKRE0MMl90GIBPx
	jWvr0w8dd2ZLG4gqXZ8OBUe7f2/tir01+phpBFYmU4MxIWmbfqiq83juia1PLRywtkwnPl2MXAxGe
	LOyxpHKMeQBaMtyneetzJ6qItT+6okTVXFjjT7XqBdVDeto+V48HASS2nUXBincOY9NwaTuYjz8VU
	hI5PptRwAXNPf1sO6nGpY8I84RxTDirPXoEPCSAEuhV+L12xo/+LqMWFJpti61g/+sBlg2xcTHvDf
	tALDGyYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiTi-005xlX-UX; Mon, 13 Mar 2023 13:44:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiR2-005vsG-Dy
	for barebox@bombadil.infradead.org; Mon, 13 Mar 2023 13:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CSJP6DKW/Dq0IPwe0L5e77XaxICKfKDQvzBiTy4EZ2k=; b=QaIvPwXgRDZ7Zm4fVdaT51gNfH
	mZzeFZbHHWs0NNX1nuTc5dod16TvsXNXeRNi8zHWU4wTy19uBQNVzl7ooP2vV6Vr8w+8u9TovLZtm
	6qPoho5R2gByU9n32jLLunIzqVVVQUvT4whG0BmKjXEF4fkMqMrdSZ40gwsyGqiDiJiY9ppoWW8aD
	6n9CDIrvkyoriLYNHrfLMrpFAkpZSXEkK15CHKyxw7xBknWoBKX948kh+QE2Ms4Q/5Y15oOyuiwcc
	9qwJ1kkkSLY0oP/y451qDIXO9t0FxwxCHIGA6K1ONGiFBG+p6mii5LKLF3Y6daof424p3vt/NEyhc
	OD85ZY2A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbiQw-001NSr-3D
	for barebox@lists.infradead.org;
	Mon, 13 Mar 2023 13:41:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQr-0004N9-Pa
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:42:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-22-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_134151_594835_19C08B23 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v2 22/23] ARM: i.MX8M: add QSPI update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds the FlexSPI/QSPI update handler to be able to write the
common barebox image to the QSPI.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/board.c | 1 +
 arch/arm/boards/nxp-imx8mn-evk/board.c | 1 +
 arch/arm/boards/nxp-imx8mp-evk/board.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/board.c b/arch/arm/boards/nxp-imx8mm-evk/board.c
index fd748262f7..c8e17570ca 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/board.c
@@ -53,6 +53,7 @@ static int imx8mm_evk_probe(struct device *dev)
 
 	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
 	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
+	imx8m_bbu_internal_flexspi_nor_register_handler("QSPI", "/dev/m25p0.barebox", 0);
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
 				   ar8031_phy_fixup);
diff --git a/arch/arm/boards/nxp-imx8mn-evk/board.c b/arch/arm/boards/nxp-imx8mn-evk/board.c
index 13efc62a58..3e90ba284c 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/board.c
@@ -51,6 +51,7 @@ static int imx8mn_evk_probe(struct device *dev)
 
 	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
 	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
+	imx8m_bbu_internal_flexspi_nor_register_handler("QSPI", "/dev/m25p0.barebox", 0);
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
 				   ar8031_phy_fixup);
diff --git a/arch/arm/boards/nxp-imx8mp-evk/board.c b/arch/arm/boards/nxp-imx8mp-evk/board.c
index 0c9fe7835b..2aa551e504 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/board.c
@@ -36,6 +36,7 @@ static int nxp_imx8mp_evk_probe(struct device *dev)
 
 	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
 	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
+	imx8m_bbu_internal_flexspi_nor_register_handler("QSPI", "/dev/m25p0.barebox", 0);
 
 	/* Enable RGMII TX clk output */
 	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);

-- 
2.30.2



