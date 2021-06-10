Delivery-date: Thu, 10 Jun 2021 16:48:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrLzE-0001J8-N4
	for lore@lore.pengutronix.de; Thu, 10 Jun 2021 16:48:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrLzD-000281-T2
	for lore@pengutronix.de; Thu, 10 Jun 2021 16:48:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8JAK/5tzCejhsNcZNfFIHjrkcKZSEl+7SQZ/yfZub5I=; b=n4IlLE+LsdoScy
	6t5d4EnVrA2kkI4EoAosr7cGYPwzNtnjdKnwwJz1eWg7LKlGktCxn9jU+tyZvoaRmeHw6wN9aqwga
	OYFCbS/9RDyG+E/EPWiHBQYbmJ9SSF7nPFk2/pzC1nOsmVADiOqZQjT8G1XNPVPY3cAQPrVnNwaQC
	wwEmSVmaAIcjOKM7w+WgeGmScOFHy0nIGIYhL6U0AGR7TUX9i05lpnqQgTePFqEAkSlS2eGLKL6Nj
	7zt/WMMdKY60Ptr7r14F8yVrMUA2+MObBWDytR2fo9SNNpGO98yDzT6yc1Jh/7z6CG8KBQ2ZZ7/x6
	SIBsnB8EF0KieNw3KNpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrLy4-001Cak-0e; Thu, 10 Jun 2021 14:47:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrLxz-001Ca1-68
 for barebox@lists.infradead.org; Thu, 10 Jun 2021 14:47:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrLxp-0001yC-V2; Thu, 10 Jun 2021 16:47:21 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrLxp-0004Un-Ll; Thu, 10 Jun 2021 16:47:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 10 Jun 2021 16:47:17 +0200
Message-Id: <20210610144720.25620-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_074731_251719_489A9745 
X-CRM114-Status: GOOD (  10.67  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] MMC: SDHCI: Add and use common DMA helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far the SDHCI common code can only do PIO data transfers. This series
pimps that up to allow DMA data transfers. The imx-esdhc driver is
converted to use these new helpers and also the new Rockchip SDHCI
support which I resend here converted to use the helpers.

Sascha

Sascha Hauer (3):
  mci: sdhci: Add DMA transfer helpers
  mci: Add support for Rockchip variant of the dwcmshc
  mci: imx-esdhc: Use common DMA helpers

 drivers/mci/Kconfig                  |   7 +
 drivers/mci/Makefile                 |   1 +
 drivers/mci/arasan-sdhci.c           |   2 +-
 drivers/mci/atmel-sdhci-common.c     |   2 +-
 drivers/mci/imx-esdhc-common.c       |  88 ++-----
 drivers/mci/mci-bcm2835.c            |   2 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c | 377 +++++++++++++++++++++++++++
 drivers/mci/sdhci.c                  | 118 ++++++++-
 drivers/mci/sdhci.h                  |  10 +-
 9 files changed, 538 insertions(+), 69 deletions(-)
 create mode 100644 drivers/mci/rockchip-dwcmshc-sdhci.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

