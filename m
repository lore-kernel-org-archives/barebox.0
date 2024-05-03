Delivery-date: Fri, 03 May 2024 12:37:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIb-00H8BP-3C
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:37:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qIa-0002Et-V8
	for lore@pengutronix.de; Fri, 03 May 2024 12:37:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p3K1pcXJ22/naD6/MKtfIGP7Lqgfo7TC15jJrNPotmw=; b=z3DmvOan21or6TxpEBWPfAAe1s
	723SwHIag7Htn9oxBMtKio569e38D31eroFCmHCe9RTl8Mm+Fv2PIHV/mtcSQ/oN/tf6bQwz/oSSZ
	fPv5cdMT3IHgarNH8V8hlYBFTS/XhBcxiW7W2JrFkClA3jRlO17r/RLkyrjaKDK6agCEkoiV9gLWk
	R5fsaFm7nGAAxbw2CobM13S5Jrynw1InV+kgMtiON+Cp67ie37M1Rc/5ticy/oFBT8GktJUCiR8ly
	IVYz+s7Cg6G+H2pC8kZ4TtlOzqMywsfocyWJavl9CmlBb0Kc4GdLCCCO/h7iXU5MNFqOpaIgQohyU
	3HQF76hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qI8-0000000G4u4-34vy;
	Fri, 03 May 2024 10:37:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qI4-0000000G4rz-3jsR
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:37:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-0001wL-LZ; Fri, 03 May 2024 12:37:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-00FgXd-99; Fri, 03 May 2024 12:37:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qI3-005kc5-0c;
	Fri, 03 May 2024 12:37:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de
Date: Fri,  3 May 2024 12:37:12 +0200
Message-Id: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_033720_948093_168CD88F 
X-CRM114-Status: GOOD (  10.56  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/5] ARM: i.MX8MP: add nominal drive mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike the i.MX8MM and i.MX8MN SoCs added earlier, the early setup code
and device tree for the i.MX8MP configures some clocks at frequencies
that are only validated for overdrive mode, i.e. when VDD_SOC is 950 mV.

Boards may want to run their SoC at the lower voltage of 850 mV though
to reduce heat generation and power usage. For this to work, clock rates
need to adhere to the limits of the nominal drive mode.

This needs to be done across both barebox and Linux. This series handles
the barebox side and a separate series will follow for the kernel.

Ahmad Fatoum (5):
  ARM: i.MX8M: pass cpu_type parameter to __imx8m_early_clock_init
  ARM: i.MX8MP: configure PLL3 as 600MHz
  ARM: i.MX8MP: configure PLL3 as noc_io parent
  ARM: i.MX8MP: don't reparent GIC from BootROM default
  ARM: dts: i.MX8MP: Add optional nominal drive mode DTSI

 arch/arm/dts/imx8mp-nominal.dtsi  | 49 +++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx8m.c         | 43 ++++++++++++++++++++-------
 include/mach/imx/imx8m-ccm-regs.h |  1 +
 3 files changed, 83 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm/dts/imx8mp-nominal.dtsi

-- 
2.39.2



