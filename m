Delivery-date: Fri, 19 Jan 2024 17:27:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriQ-007Gkh-1R
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriR-0003zA-0W
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JOrRAcFmZK+r+5V2Dzwqm0DC5OOcnrKce1OuuDVTX3g=; b=IakAWZddylGl9t9/eHW3hD8LvB
	of2KW0AbEbFpQFBLe8lgZQM9V67j+FjKHXSa0b66hwiSlsBkW47kNMyamKqW0bPbXKJEbqnpiM3hK
	CCdnqSdgFZWSAxGMKF2KQXiZymQnV21kwQFg/sI4LeU6KhSOcxq2oUFl5AfML1T5q4+S8NtR/Je+/
	hdzTtB00XmM8jWZeeenL4WxyPxigDzBg69qYcJB7fXN+/a7QdeHxcBFSCndRbH/Sq4cjKbI1ifp2o
	cYptKDsXEm4sIGiVg2nHBpdUr3R2afvTZXzDNc/nwCDn15d5MQdd1kJg1qszr24P2MHOI3nAv6O7z
	F7Gw2kEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhQ-0066mh-2C;
	Fri, 19 Jan 2024 16:26:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066bz-1x
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0003RW-J1
	for barebox@lists.infradead.org; Fri, 19 Jan 2024 17:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTQ-6D
	for barebox@lists.infradead.org; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-0J
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Jan 2024 17:25:51 +0100
Message-Id: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_740559_AE66D9B1 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/19] pmdomain: imx: add i.MX8MP HSIO blk-ctrl driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike other i.MX8M variants, TF-A on i.MX8MP enables all power domains
up front, so later software can keep reusing it.

This benefited us because we didn't have a driver for the HSIO blk-ctrl,
which powers the USB PHYs and controllers on the i.MX8MP.

However, not all i.MX8MP SKUs have all power domains, e.g. the lite
variant lacks VPUs, NPU, ISP and DSP and their associated power domains.

Removing power domains altogether in TF-A though would break USB in barebox
when not booted over SDP as neither BootROM or TF-A would enable the HSIO
blk-ctrl.

In order to decouple barebox from prior HSIO initialization, port over the
Linux driver.

Ahmad Fatoum (19):
  drivers: soc: split off powerdomains into new pmdomain directory
  pmdomain: use single implementation for dev_pm_domain_attach
  pmdomain: power: drop unused parameters for internal functions
  pmdomain: associate devices with their power domain
  pmdomain: push have_genpd_providers check into __genpd_dev_pm_attach
  pmdomain: drop superfluous parameter to __genpd_dev_pm_attach
  pmdomain: implement dev_pm_domain_attach_by_id/name
  pmdomain: add support for enabling power domains later on
  pmdomain: imx: gpcv2: enable COMPILE_TEST build
  pmdomain: add stub definition for dev_pm_domain_detach
  pmdomain: add stub definition for pm_runtime_put_genpd
  pmdomain: implement pm_genpd_remove/of_genpd_del_provider for cleanup
  driver: have dev_request_mem_region_err_null warn if resource starts
    at 0
  include: linux/device.h: implement dev_platform_ioremap_resource
  regmap: include missing header from linux/regmap.h
  clk: define aliases for clk_bulk_prepare_enable/disable_unprepare
  driver: make driver.h header self-contained
  pmdomain: imx: add i.MX8MP HSIO blk-ctrl driver
  ARM: dts: i.MX8MP: drop barebox,allow-dummy for HSIO blk-ctrl

 arch/arm/dts/imx8mp.dtsi                      |   4 -
 drivers/Kconfig                               |   1 +
 drivers/Makefile                              |   1 +
 drivers/base/driver.c                         |   2 +-
 drivers/base/power.c                          | 209 +++++++-
 drivers/pmdomain/Kconfig                      |   7 +
 drivers/pmdomain/Makefile                     |   3 +
 drivers/pmdomain/imx/Kconfig                  |  16 +
 drivers/pmdomain/imx/Makefile                 |   3 +
 drivers/{soc => pmdomain}/imx/gpcv2.c         |   0
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c        | 459 ++++++++++++++++++
 drivers/{soc => pmdomain}/ti/Kconfig          |   1 +
 drivers/{soc => pmdomain}/ti/Makefile         |   1 +
 .../{soc => pmdomain}/ti/ti_sci_pm_domains.c  |   0
 drivers/soc/Kconfig                           |   1 -
 drivers/soc/Makefile                          |   1 -
 drivers/soc/imx/Kconfig                       |   6 -
 drivers/soc/imx/Makefile                      |   1 -
 include/driver.h                              |   4 +
 include/linux/clk.h                           |   3 +
 include/linux/device.h                        |  12 +
 include/linux/regmap.h                        |   1 +
 include/pm_domain.h                           | 171 +++++--
 23 files changed, 838 insertions(+), 69 deletions(-)
 create mode 100644 drivers/pmdomain/Kconfig
 create mode 100644 drivers/pmdomain/Makefile
 create mode 100644 drivers/pmdomain/imx/Kconfig
 create mode 100644 drivers/pmdomain/imx/Makefile
 rename drivers/{soc => pmdomain}/imx/gpcv2.c (100%)
 create mode 100644 drivers/pmdomain/imx/imx8mp-blk-ctrl.c
 rename drivers/{soc => pmdomain}/ti/Kconfig (84%)
 rename drivers/{soc => pmdomain}/ti/Makefile (57%)
 rename drivers/{soc => pmdomain}/ti/ti_sci_pm_domains.c (100%)

-- 
2.39.2



