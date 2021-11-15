Delivery-date: Mon, 15 Nov 2021 14:04:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbec-0000BQ-EA
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 14:04:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmbeb-000754-9E
	for lore@pengutronix.de; Mon, 15 Nov 2021 14:04:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sTZUO1aNwilLp1WR8Rk2WXBoZggflkF8wzCcNiDmsAE=; b=ee4u13SGyUbQwW
	8X55LSRwZln8RserssHfWg3JQKop41bXXhcBFjib/Jz+e6Z5CNoKhhq9ZOsDqh78rDjcgDjRnhWlH
	ebufVHxD3OFTHn6fIYazcBOUo5jsYQoQCOeowE8M9L97b2HykAS+KZbPR66d5PMxFRFidU8IwJHgV
	kVbh1J0gp+TJaA836PFnfto5ET2uazV+wfw3IUIaCwwXZ6X41RbeikCYTfYEKZZZPLcZIkxvDBC7i
	rA8F4PTy5jwzYbM5trGamPdMIhAHqDW5uzO7VRLyB2o7eu+rA4lqV7J7cLDdgOJozGMREfiow7Tw+
	FvnEC282ld8DKYH/0IEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmbdD-00FZGc-Ix; Mon, 15 Nov 2021 13:02:43 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmbct-00FZA5-BU
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 13:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Whgu6PJHfBc2eVWPo2GiHCSRADExpNj1gX6Hyuo7tIk=; b=puYp9pjKB0c1hYUN2Rdyqx5bEl
 zSKTaVkVOg+gojKLUNracQLb9LabTHO9D9DvT3hscLus3uW1lkcursCl7i1f81Cjc6cUGys5LpVwa
 tYa5apffvVWHcaLbgSDh9U/ecX+RsqExnYLztOd9acxGzhTVYo+jPJ2L4ASCAJ2j8JipW8hpYPQoP
 7b0MIj12P9bdlnMLA1BdUnyl6C9/kr2fXIG6pvmolpJmVBuO3CKfxizmAYEqOlSgbVVBKm1qnd49P
 3tuPEMceBzkTrdJLee7L1jHfX9T+hFkkr7EUPulto3pOe5Ijz/d2O9qbNkOyW2MGxv48LTBjrXO6C
 v0as/kqg==;
Received: from [89.212.21.243] (port=42168 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mmbci-00B8Ey-H8; Mon, 15 Nov 2021 14:02:12 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: Y.Bas@phytec.de,
	s.riedmueller@phytec.de
Date: Mon, 15 Nov 2021 14:02:03 +0100
Message-Id: <20211115130208.619443-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_050223_737791_6F5DDC93 
X-CRM114-Status: GOOD (  10.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] PHYTEC patches to be mainlined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

this patch series contains PHYTEC barebox patches which weren't yet
introduced to this mailing list (or at least not in this form).

 1. The first patch increases the stability during boot in extreme cold
 conditions.

 2. The second patch targets PHYTEC specific config creation. Until now
 PHYTEC used to patch the default 'imx_v7_defconfig' with their changes.
 This patch introduces PHYTEC specific i.MX6 SoM config fragment which
 should be merged with the default 'imx_v7_defconfig' to create a
 complete config file. This mainly minimizes efforts required to port
 patches to defconfig with each new PHYTEC BSP release and uniforms
 config creation between PHYTEC's kernel and barebox.

 3. The last three patches (third, fourth and fifth) are meant as a
 fixup for patches that deleted the PMIC supply nodes. They were
 introduced because barebox doesn't support DA9063 PMIC regulator driver
 and instead prints ugly warnings (recently downgraded from error) like:

imx-esdhc 2194000.mmc@2194000.of: Failed to get 'vmmc' regulator (ignored).

 In either way, we rely on PMIC's reset default and use dummy
 regulators. Using barebox specific device-tree property
 ('barebox,allow-dummy-supply') shouldn't break booting Linux with
 barebox internal device-tree and allows using dummy regulators in
 bootloader where regulator support is limited. The complete solution
 would be porting DA9063 regulator driver to barebox, but let's add that
 to our "to-do" list for now and use this workaround instead.

Best regards,
Andrej

P.S. I cc-ed some PHYTEC guys so they can be involved in the discussion
if necessary.

Andrej Picej (4):
  ARM: configs: phytec-som-imx6.config
  regulator: allow use of dummy regulator
  ARM: dts: imx6qdl: pfla02: allow use of dummy regulators
  documentation: regulator: add dummy-supply

Stefan Riedmueller (1):
  flash-header-phytec-pcl063: Set SOC voltage to 1.25 V during boot

 .../bindings/regulator/regulator.rst          | 31 +++++++++++++++++++
 .../flash-header-phytec-pcl063.h              |  2 ++
 arch/arm/configs/phytec-som-imx6.config       | 10 ++++++
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi       | 22 +++++++++++--
 drivers/regulator/core.c                      |  9 +++++-
 5 files changed, 70 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/regulator.rst
 create mode 100644 arch/arm/configs/phytec-som-imx6.config

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

