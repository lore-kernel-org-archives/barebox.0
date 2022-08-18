Delivery-date: Thu, 18 Aug 2022 07:21:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyc-002dQs-CC
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:21:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyZ-0000kb-GL
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:21:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vBQ3mDANMGw4piF1VpVM7XLE3NOJE2u2QgiacpJGZGg=; b=cCaVh4qAO6oh6z3+0JPd3MiDB6
	RiPDLAUdXI5e6OtiBQyNAqfy6uAn29nYclLOOGoNovOsYSOwSS4hqdlbP3YaazmBGPEuLaNfYSbnf
	Q9V2Y8jO+Ge2MCKFEO1QlAgdoV2kkyFBPOY54Nl2j8x9I0cuOAxdr+sJwKNB4NXROPz6trFX8JQid
	4cl6Y01C8EdVuC/2bWEkDO8SojElIzvXERxpHc+wsVC+6G8rYZk4WYT7NT78mYn/oGEIVuCspsn1c
	4ENfbmnrqP6+TJEEvaZMhbO9Fh1ETvU3KJjIu7wLfWBU4g+rmND6aRlRFEabEc2R6Zmc4Ym6FTSDz
	rV30t7Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXxE-00Fo2g-QY; Thu, 18 Aug 2022 05:20:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwm-00Fn3N-S5
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwl-0008HP-1W; Thu, 18 Aug 2022 07:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-000S3W-9d; Thu, 18 Aug 2022 07:19:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHQ-KK; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de
Date: Thu, 18 Aug 2022 07:19:45 +0200
Message-Id: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_062211_254C5DF6 
X-CRM114-Status: GOOD (  15.13  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/10] Add new feature controller framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX8MM exists in a Lite variant with no VPUs as well as Solo and
Dual variants with one or two cores respectively instead of the default
four. For i.MX6, we had a manual fixup taking care of deleting the
excess CPUs, but for e.g. the i.MX8MP, we have fuses for the M7, VPUs, CAN,
CAN-FD, ISPs, NPU, ... etc. Describing all that in the DT is overly verbose
as we need to take care not to rely on specific device node names that
should be disabled. There has been an upstream attempt to get a binding
for U-Boot to act on:

  https://lore.kernel.org/all/20220324042024.26813-1-peng.fan@oss.nxp.com/

This was refused by the DT maintainer, because any solution to this
problem should also be flexible enough to cover the case of partitioning
devices between the secure and normal world.

There's a patch series upstream to describe a domain-controller binding
that allows a hypervisor to partition devices into domains. With the
naming generalized, this fits nicely the use case of gating devices
behind specific features:

https://lore.kernel.org/all/3ca7cd75-4b62-2380-adb0-646bbeb647a2@pengutronix.de/

This series does that. See the first two commit messages for details.
We use a barebox, prefix as the naming isn't set in stone, but the intention
is to drop the prefix and potentially rename once an upstream binding is
approved.

Ahmad Fatoum (10):
  driver: add feature controller framework
  driver: consult feature controller prior to device probe
  driver: featctrl: fixup kernel device tree
  dt-bindings: add i.MX8M feature controller bindings
  soc: imx: add i.MX8M feature controller driver
  nvmem: import Linux nvmem_cell_read_variable_le_u32
  nvmem: ocotp: add i.MX8M[MN] feature controller support
  ARM: dts: i.MX8MN: describe feature controller
  RFC: soc: imx: imx8m-featctrl: add i.MX8M[MN] stand-alone driver
  RFC: ARM: dts: i.MX8MM: describe standlone feature controller

 arch/arm/dts/imx8mm.dtsi             |  61 ++++++++++
 arch/arm/dts/imx8mn.dtsi             |  32 ++++++
 drivers/base/Kconfig                 |   3 +
 drivers/base/Makefile                |   1 +
 drivers/base/driver.c                |   9 ++
 drivers/base/featctrl.c              | 160 +++++++++++++++++++++++++++
 drivers/nvmem/core.c                 |  33 ++++++
 drivers/nvmem/ocotp.c                |  62 +++++++++--
 drivers/of/Kconfig                   |  12 ++
 drivers/soc/imx/Kconfig              |   6 +
 drivers/soc/imx/Makefile             |   1 +
 drivers/soc/imx/imx8m-featctrl.c     | 101 +++++++++++++++++
 include/dt-bindings/features/imx8m.h |  14 +++
 include/featctrl.h                   |  29 +++++
 include/linux/nvmem-consumer.h       |   9 ++
 include/soc/imx8m/featctrl.h         |  25 +++++
 16 files changed, 550 insertions(+), 8 deletions(-)
 create mode 100644 drivers/base/featctrl.c
 create mode 100644 drivers/soc/imx/imx8m-featctrl.c
 create mode 100644 include/dt-bindings/features/imx8m.h
 create mode 100644 include/featctrl.h
 create mode 100644 include/soc/imx8m/featctrl.h

-- 
2.30.2



