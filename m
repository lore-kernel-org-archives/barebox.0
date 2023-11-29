Delivery-date: Wed, 29 Nov 2023 07:19:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Duv-00CvIL-2T
	for lore@lore.pengutronix.de;
	Wed, 29 Nov 2023 07:19:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8Duv-0003BP-Qc
	for lore@pengutronix.de; Wed, 29 Nov 2023 07:19:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GySgDGGpW5ni+VtJ52tsY7VK7WeSeliBxj8HvZP4uWY=; b=DYU4G31xw/r5br+MI0I0zO+xDZ
	EQomUDPKi4jLzwd3N7k8REFZ6lHo+7L1iIeTtKAFF3lTo2CC3XZ5YlVgWzrIopVkP4G9sw2bmw71K
	jLJ59jsnaIQBTRmwAEZa0v3olXMtLj8UiNZpjRB1fFXc7LBeMrr1MEDW66ZBU/x5BzadZVnXudDMk
	km5ba+WovGwhzhDMofyqbbyHbJHknj8etSnKRXmtr2GINm3p3+nXJ+oJm8ETPVyvz6h9K1/dov2D4
	GMZmUatfmaB5hYAi0gMb0OkU48Pt5vh6fBN1a6HMiJpkr6paVhnPx+TtgOwABF8girn1MW1KeiUcq
	6GL1c96g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dtl-007COQ-1S;
	Wed, 29 Nov 2023 06:18:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Dte-007CM3-0m
	for barebox@lists.infradead.org;
	Wed, 29 Nov 2023 06:18:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-0002qu-Kh; Wed, 29 Nov 2023 07:18:04 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-00CLQR-8C; Wed, 29 Nov 2023 07:18:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r8Dtc-007Tac-0X;
	Wed, 29 Nov 2023 07:18:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	str@pengutronix.de,
	lst@pengutronix.de
Date: Wed, 29 Nov 2023 07:17:54 +0100
Message-Id: <20231129061758.1781732-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_221806_282235_5BA5CF72 
X-CRM114-Status: GOOD (  11.20  )
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
Subject: [PATCH 0/4] dma: catch mistakes with CONFIG_DMA_API_DEBUG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cache invalidation issues around DMA accesses can be difficult to debug.
Motivated by recent fixes to the macb driver[1], let's add some optional
sanity checking to the DMA API inspired by the Linux CONFIG_DMA_API_DEBUG
option.

This would have caught the issue fixed by [1] in the macb driver and it
already caught a misuse of the API on the STM32MP system I tested it on.

Usage is simple: just enable it and ensure no warnings are printed.
All warnings are printed alongside the extents of the DMA buffer in
question and a stack trace at the time the check failed.

[1]: https://lore.barebox.org/barebox/20231128-v2023-08-0-topic-macb-v1-0-9faff73bc990@pengutronix.de/T/#t

Ahmad Fatoum (4):
  dma: factor out dma map generic implementations into file
  dma: add DMA API debugging support
  mci: core: remove broken, unneeded write bounce buffer
  mci: stm32_sdmmc2: correct usage of DMA API

 common/Kconfig             |  14 +++
 drivers/dma/Makefile       |   2 +
 drivers/dma/debug.c        | 183 +++++++++++++++++++++++++++++++++++++
 drivers/dma/debug.h        |  56 ++++++++++++
 drivers/dma/map.c          |  43 +++++++++
 drivers/mci/mci-core.c     |  10 +-
 drivers/mci/stm32_sdmmc2.c |  41 +++++----
 include/dma.h              |  61 ++++---------
 8 files changed, 340 insertions(+), 70 deletions(-)
 create mode 100644 drivers/dma/debug.c
 create mode 100644 drivers/dma/debug.h
 create mode 100644 drivers/dma/map.c

-- 
2.39.2



