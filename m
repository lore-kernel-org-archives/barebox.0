Delivery-date: Fri, 10 Nov 2023 14:01:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R94-005rfO-0G
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:01:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R93-000578-Qt
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:01:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W6YlK5mcL2BybH37ioi8ltXlQgNUKnu7uvOGHoAAVFI=; b=B+Rx+WdHEIjMid2i9aNQ6tUxtg
	xIZj+NjfZEOnXJ9CiQKjybM4DzU+2r2JlEpHRJrI985vW1q5zr+wcGYeNBcyK/4IzUjPnYHC6RV0H
	axbZTScKaftrm31W/V+X02kRk+TK23gCOREWg8gZYgKBltzJn5SSVwh3jeE1gGts8OIkm6KMyC4Ui
	kkWqmtuizhjDaLcfnzZGWwV8W2W3fbHvZnpWnHigUj4nlpAB6M0f8p9wl4QM7MWz7TmHFAoj2OHGl
	SXKOjl8oETXhwOrm8P+THfb3MB0wmyXgbDIjfC1ZwjlR/UxcWp2zU9jnVX2NHd7EEG4H3hhp5UFbj
	WmPbkqgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7w-008lyw-15;
	Fri, 10 Nov 2023 13:00:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lwD-1T
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=W6YlK5mcL2BybH37ioi8ltXlQgNUKnu7uvOGHoAAVFI=; b=EVt9CfwrMHx3eGFzfoKYWwlF5S
	Ty/4QSBcM1tiudOiN5pA2UGpQZeMe+frd2Jd0kAHZ/F2+Jzo3lQMuLuLh3jAmSftLMj71BnaLjQWm
	+Fi8laPNcpHDKzC6f8AZxg4jkIoIIcrEH+UmJKd4RGpwVaDNop4su3vqhFbXphOJSlRog13kOqpjz
	mQGBBpXY7LRjjjGCjvUWWwtD1YGc5eziQLtf/K55iOCDJrjj9AtTiwNv3hHbcg7ugyv8Ph1bCGENT
	MECoGeQHSyhVMEgxbDf5zkj0oSmP6MbWvls0EWZh2M5aLnnEvohbB0gbcBquUMa/JVlsN2fI1zSmk
	8MXZJ3VQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3l-0Q
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-000433-BE; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081Yw-66; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096M4-0R;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:15 +0100
Message-Id: <20231110130028.2123895-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130032_737394_CEDF57EF 
X-CRM114-Status: GOOD (  11.57  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/13] Add i.MX9 DDR support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX9 DDR controller is very similar to the one found on i.MX8M.
Most patches in this series are for preparing the i.MX8M DDR driver
for integrating i.MX9 support. i.MX9 support is added in the last patch.

Sascha

Sascha Hauer (13):
  ddr: imx8m: rename driver to imx
  ddr: imx8m: introduce dram_controller struct
  ddr: imx8m: move get_trained_CDD() to SoC code
  ddr: imx8m: move PLL init to SoC specific code
  ddr: imx8m: clean up defines
  ddr: imx8m: move phy_base to controller struct
  ddr: imx8m: remove empty function
  ddr: imx8m: get rid of hardcoded phy address
  ddr: imx8m: split header file
  ddr: imx8m: return cfg from dram_config_save()
  ddr: imx8m: Drop '8m' suffix from pr_fmt
  ddr: move imx8m_ddr_old_spreadsheet to controller
  ddr: Initial i.MX9 support

 arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c |  10 +-
 .../boards/phytec-som-imx8mq/ddrphy_train.c   |  12 +-
 arch/arm/boards/zii-imx8mq-dev/ddrphy_train.c |  10 +-
 drivers/ddr/Kconfig                           |   2 +-
 drivers/ddr/Makefile                          |   2 +-
 drivers/ddr/{imx8m => imx}/Kconfig            |  12 +-
 drivers/ddr/imx/Makefile                      |   8 +
 drivers/ddr/{imx8m => imx}/ddrphy_csr.c       |   2 +-
 drivers/ddr/{imx8m => imx}/ddrphy_train.c     |  50 +-
 drivers/ddr/imx/ddrphy_utils.c                |  97 +++
 drivers/ddr/{imx8m => imx}/helper.c           |  28 +-
 .../ddrphy_utils.c => imx/imx8m_ddr_init.c}   | 595 +++++++++------
 drivers/ddr/imx/imx9_ddr_init.c               | 698 ++++++++++++++++++
 drivers/ddr/imx8m/Makefile                    |   7 -
 drivers/ddr/imx8m/ddr_init.c                  | 217 ------
 include/soc/imx/ddr.h                         | 167 +++++
 include/soc/imx8m/ddr.h                       | 162 +---
 include/soc/imx9/ddr.h                        |  18 +
 18 files changed, 1431 insertions(+), 666 deletions(-)
 rename drivers/ddr/{imx8m => imx}/Kconfig (51%)
 create mode 100644 drivers/ddr/imx/Makefile
 rename drivers/ddr/{imx8m => imx}/ddrphy_csr.c (99%)
 rename drivers/ddr/{imx8m => imx}/ddrphy_train.c (75%)
 create mode 100644 drivers/ddr/imx/ddrphy_utils.c
 rename drivers/ddr/{imx8m => imx}/helper.c (74%)
 rename drivers/ddr/{imx8m/ddrphy_utils.c => imx/imx8m_ddr_init.c} (66%)
 create mode 100644 drivers/ddr/imx/imx9_ddr_init.c
 delete mode 100644 drivers/ddr/imx8m/Makefile
 delete mode 100644 drivers/ddr/imx8m/ddr_init.c
 create mode 100644 include/soc/imx/ddr.h
 create mode 100644 include/soc/imx9/ddr.h

-- 
2.39.2



