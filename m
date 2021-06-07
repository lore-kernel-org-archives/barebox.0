Delivery-date: Mon, 07 Jun 2021 12:51:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCqZ-00066e-Ii
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:51:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCqU-0001ru-W3
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:51:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=96YXO/3mf6WQdWqmCp3CsTkFykRaJsbleOOygz8jjUw=; b=1uprXDOzSXMTMY
	gWGxw3F6O2lUUVL6KRNZ771TBZUqyIlMHHP8XOCts8y42NRGv9jmOS+HzZu7+GGhJ3Ej6jRYIry0r
	XilLs/AXNubrxdbkdBxepV9sY98jDkvT4ar/7RMKOawNqtfIVwcFCbVby9itpIUdzDxT7Hz/r5Pd5
	s5PnueYX3FjyzZ8Fql+5mTPndTtrAWMW9D9v1v6VXWREB0shhMzpqAtDZ2F9tvRjHqP/E80u6BRiB
	8GCtsYu4YDznqOWUlf8DpkW36KyZ9Ph5Pd9ISKCUFEOtz+BliW+fUkFNr50wREt/Qo16VhBCXkcuk
	otT1Xg5r0F0KHijM0bqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCoo-0033i1-4d; Mon, 07 Jun 2021 10:49:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-003229-Ff
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000dc-CV; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCjt-0008JR-Sv; Mon, 07 Jun 2021 12:44:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:43:59 +0200
Message-Id: <20210607104411.23071-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_640513_FF3653E8 
X-CRM114-Status: GOOD (  11.22  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/12] SDHCI updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series has some updates for the common SDHCI support and finally
support for the eMMC controller found on Rockchip RK3568 SoCs.

Sascha Hauer (12):
  mci: sdhci: straighten capabilities register
  mci: sdhci: Add and use SDHCI_CAPABILITIES_1 defines
  mci: sdhci: Use SDHCI_MAX_DIV_SPEC_200 define
  mci: sdhci: port over some common functions from Linux
  mci: sdhci: imx: Use sdhci_setup_host()
  mci: sdhci: Use Linux defines for SDHCI_HOST_CONTROL register
  mci: sdhci: arasan: Use sdhci_setup_host()
  mci: sdhci: arasan: Use sdhci_set_bus_width()
  mci: sdhci: Use Linux defines for SDHCI_CLOCK_CONTROL register
  mci: sdhci: arasan: Use sdhci_set_clock()
  mci: sdhci: Get rid of many register ops
  mci: Add support for Rockchip variant of the dwcmshc

 drivers/mci/Kconfig                  |   7 +
 drivers/mci/Makefile                 |   1 +
 drivers/mci/arasan-sdhci.c           | 143 +---------
 drivers/mci/atmel-sdhci-common.c     |  72 ++---
 drivers/mci/dove-sdhci.c             |  84 ++----
 drivers/mci/imx-esdhc-common.c       |  21 +-
 drivers/mci/imx-esdhc-pbl.c          |  20 +-
 drivers/mci/imx-esdhc.c              |  20 +-
 drivers/mci/imx-esdhc.h              |   8 -
 drivers/mci/rockchip-dwcmshc-sdhci.c | 382 +++++++++++++++++++++++++++
 drivers/mci/sdhci.c                  | 281 ++++++++++++++++++++
 drivers/mci/sdhci.h                  | 159 +++++++++--
 include/mci.h                        |   2 +
 13 files changed, 879 insertions(+), 321 deletions(-)
 create mode 100644 drivers/mci/rockchip-dwcmshc-sdhci.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

