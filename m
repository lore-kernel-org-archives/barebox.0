Delivery-date: Mon, 30 Jan 2023 18:28:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXxP-007qFN-8L
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 18:28:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMXxL-0004qC-NY
	for lore@pengutronix.de; Mon, 30 Jan 2023 18:28:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wGW7R2m+Qc2ltqCr7OzXA8Una2VgIww2nOGN7jchAPw=; b=qO1naDK7UMnJ0XASKEeFmsjpr7
	ey/Zwkfztvak1XiuBi5EftCfKXhKO8ETdH1Vfh0XhqRT7cDaSSmwnAR25G5XKvYAzHE8qjLkEQG4Y
	jjblZFyV0lsqrCLo9dLpEWXk5bcmc6HFkTpLbP4uqEluPZ1PsE+RiQPjIMky2s9KSV8Is0l4PMQPH
	G350Rf57YUIUVnR/kjey9mNhgXVyGZS8HcsYKXG1DyTJ9GfvZpRE7/GhxBUtIbzgsx8kI1PLJjTcQ
	q/SZvykeV+pyEEgXAsUccuY2TJwjNXrPO9RVgnIbzLEORffGm4DyKtG8uGL2P/9w+RPd3729TxNZU
	C+gZN2mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXvb-004XJo-9Y; Mon, 30 Jan 2023 17:26:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMXsb-004Vii-A0
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 17:23:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pMXsV-0003Hh-Ae
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 18:23:35 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOUK-001PnE-6Q; Mon, 30 Jan 2023 08:21:59 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pMOUI-00092h-Ge; Mon, 30 Jan 2023 08:21:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Jan 2023 08:21:57 +0100
Message-Id: <20230130072157.34711-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_092341_388869_E1383FB5 
X-CRM114-Status: GOOD (  11.60  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MM: innocomm-wb15: use revised PMIC settings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Original values used when WB15 support was upstreamed were taken from
EVK, but original U-Boot port, we had been running for years now, is
configured differently and is known to be stable. Revert to those values.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/innocomm-imx8mm-wb15/lowlevel.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
index 2077d3c88eb2..f7753bd32671 100644
--- a/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
+++ b/arch/arm/boards/innocomm-imx8mm-wb15/lowlevel.c
@@ -35,14 +35,24 @@ static void setup_uart(void)
 }
 
 static struct pmic_config bd71837_cfg[] = {
+	/* unlock the PMIC regs */
+	{ BD718XX_REGLOCK, 0x0 },
+	/* retry powering up indefinitely every 250ms after VR fault */
+	{ BD718XX_RCVCFG, 0xfc },
 	/* decrease RESET key long push time from the default 10s to 10ms */
 	{ BD718XX_PWRONCONFIG1, 0x0 },
-	/* unlock the PMIC regs */
-	{ BD718XX_REGLOCK, 0x1 },
+	/* WDOG_B: Warm Reset */
+	{ BD718XX_PWRCTRL0, 0xa3 },
+	/* READY=>SNVS on PMIC_ON_REQ, SNVS=>RUN on VSYS_UVLO */
+	{ BD718XX_TRANS_COND0, 0x48 },
+	/* WDOG_B: Go to SNVS power state after deassert */
+	{ BD718XX_TRANS_COND1, 0xc0 },
 	/* Set VDD_SOC/VDD_DRAM to typical value 0.85v for nominal mode */
 	{ BD718XX_BUCK1_VOLT_RUN, 0xf },
-	/* increase VDD_DRAM to 0.975v for 3Ghz DDR */
-	{ BD718XX_1ST_NODVS_BUCK_VOLT, 0x83 },
+	/* increase VDD_DRAM to 0.900v for 2400MT/s DDR */
+	{ BD718XX_1ST_NODVS_BUCK_VOLT, 0x02 },
+	/* set BUCK8 to 1.10v */
+	{ BD718XX_4TH_NODVS_BUCK_VOLT, 0x1e },
 	/* lock the PMIC regs */
 	{ BD718XX_REGLOCK, 0x11 },
 };
-- 
2.30.2



