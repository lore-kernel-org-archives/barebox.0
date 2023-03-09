Delivery-date: Thu, 09 Mar 2023 11:45:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDly-00EiRO-04
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:45:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDlx-0001Gm-AJ
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:45:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CSJP6DKW/Dq0IPwe0L5e77XaxICKfKDQvzBiTy4EZ2k=; b=BU5ptT3Uct6k5LVn+CJRfA0dsv
	7k+i2007/faIM5MbfZdfn3hvnJvA2TeVClmJnM79bTGFR3OERJkJQn+Yx73okgJl3P/pXuYAl02Hg
	NqieYEs0XCHb2qNbrxKi5OfXTQuKIdgKXy1p3mLCRMU2AEKwXEOo1fMRcb97x4mSMeHs1Vj2n5tmV
	D4XJGQnhoprky4imJv4oG/ShTEIMOQkQ4MS60Fm+ocaje57ZSotr0fFdIA4O6ktKPNWaPL77lpWpe
	Hd7XPK6oAfxKsxPO72ynB0krrjX9CAgycG9Q/xPm+jIaEIbzNED2XdENGj+M1XtCrF4yi59b+F/ZY
	hmkFxJxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDkb-009AIs-KV; Thu, 09 Mar 2023 10:43:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDiv-0099IM-I6
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CSJP6DKW/Dq0IPwe0L5e77XaxICKfKDQvzBiTy4EZ2k=; b=cTbSEL00Y8r8/KPO/luaZrzfQP
	kzjV5Gr4FdGqUH1KryPFaBKBgZKHsQDKGbJNueJ0EDr74ZHyg9zre1crPRhj7TlSiU0K+6PpPyBDi
	sg5rqPH9EG7eMQJ+9f70AVJHs4ohEaPGfJ+FtONM+ACgU5lJ6MwUKkRzaOTr3Tn4lDUWOws+aXexR
	dC9HJ811QF5ZEEmbJOUcfKAcUpZ4AeYrTgZWQ0sVf6Tcgj+imPszom71gBg2gI6w95AcqWOkkenkx
	hp7sPZPpt/wnyKtdIieGwXl2johdadnUlUPjWgtHIL+3gWbYZin21U1hJVeu4P03v8qgSbYmXJmvH
	E8VoSySw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDhX-0005RJ-0R
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:42:11 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhS-0007YT-Kl
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-21-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_104048_653690_E566F772 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 21/21] ARM: i.MX8M: add QSPI update handler
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



