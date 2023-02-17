Delivery-date: Fri, 17 Feb 2023 17:31:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT3da-00AFxK-KN
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 17:31:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT3dY-0004Fa-Nc
	for lore@pengutronix.de; Fri, 17 Feb 2023 17:31:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1joDKIzMowu30hwLebN+ktaKj9ZcNruOBupSUVnJAOE=; b=lgQavsrg4YjQIwnZrRWcqCg3cA
	8z9jJuv8O/7Xa/CTMjJsByAaLgQEpTzZc4yA1ssjL/3pvGhvCPjtfyoSEzPBMHsR1TeLb2X+s56zs
	4xMcWruQPdKRer4VB4rpaxeT+OWUtHh1nb6CanTgorMWY1bL7uuOWXNLpSP/PXqBE0bJ9Weee7HHO
	8sM73HGp/gLazQyPVCaKblFiEqES78J8S+Hd9pBL0ISQve0U/6j3fgTzhTtDShNnSulTImHlWgXbI
	w8rKb7SvfJ5t1T1ykR3Ags/vdufL+KB1cYGneMW0JkPps7kpnNO4QdxA/VuXtJz3YtgiFibL6E1in
	Cw52wisg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT3cG-00F3Uf-UT; Fri, 17 Feb 2023 16:29:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT3b7-00F31b-5i
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 16:28:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT3b5-0003Ye-OS; Fri, 17 Feb 2023 17:28:31 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT3b3-005crz-1m; Fri, 17 Feb 2023 17:28:30 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT3b3-006OCF-FE; Fri, 17 Feb 2023 17:28:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: str@pengutronix.de,
	ore@pengutronix.de
Cc: ejo@pengutronix.de,
	barebox@lists.infradead.org
Date: Fri, 17 Feb 2023 17:28:25 +0100
Message-Id: <20230217162826.1512263-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_082833_259678_225C2886 
X-CRM114-Status: UNSURE (   7.04  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/1] STM32MP: protonic/phycore: warn about potential DT breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Steffen, Oleksij,

during some DT cleanup I noticed potential subtle breakage in:

  arch/arm/dts/stm32mp151-prtt1c.dts
  arch/arm/dts/stm32mp151-prtt1l-net.dtsi
  arch/arm/dts/stm32mp151-prtt1l.dtsi
  arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
  arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi

You are duplicating pinctrl nodes defined in dts/src/arm/stm32mp15-pinctrl.dtsi.
These nodes have subnodes called either pins or pins1,2...
Upstream has already moved around nodes that the device trees override,
which may break your board or silently alter your pinmux.

Please either use upstream DT pinctrl nodes without any change or
define your own fully-defined nodes, so they don't clash (e.g.
named rgmii-phycore-barebox without reliance on upstream).

DT may already be partially broken. I see potential issue with
Phycore RGMII for example which changed upstream.

Cheers,
Ahmad (1):
  ARM: dts: STM32MP: protonic/phycore: add note about potential breakage

 arch/arm/dts/stm32mp151-prtt1c.dts                      | 5 +++++
 arch/arm/dts/stm32mp151-prtt1l-net.dtsi                 | 5 +++++
 arch/arm/dts/stm32mp151-prtt1l.dtsi                     | 6 ++++++
 arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi | 5 +++++
 4 files changed, 21 insertions(+)

-- 
2.30.2



