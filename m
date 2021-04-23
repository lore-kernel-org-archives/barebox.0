Delivery-date: Fri, 23 Apr 2021 16:30:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwop-0005xT-Pd
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 16:30:07 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZwoo-0000Pq-Ol
	for lore@pengutronix.de; Fri, 23 Apr 2021 16:30:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OISoQOkjZCxMpsEUA5iJLFrg1oxvdAQyDSwKARXSm00=; b=k2mTR3M+CxnxUlzoV/WNMuR+Gb
	g7z0I5JsUpwxdSqgLgALSq67duwmV1JIbhs3RRSOdC6JnJNjXF8bxGOicNrs5tcpthnyBvpHfUOCO
	PBZL/OVCyoLKn34M+j2vcRn9ZFhqBHR57QZZQGgwl3yAwOKk6Ue0llx5b/QoxyMCg6pD4h3JhiS5+
	+ZzxHCl6bdtjL6ok2hEDz3vYbJ2dQw8nfCbv19azdq7hacBtGPiyckvkDP3mhEDpFzfz17Xehx36L
	+jFmXTW8KpdBSsPsxEzjIEbrcQuhx5/EqpU8uvzP0nWJvIc+0qdA5TwfdznYhveiLA0+myjuNNuEc
	cerAItZA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZwnu-001gut-RR; Fri, 23 Apr 2021 14:29:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwnV-001gpt-Jr
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 14:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=dLpM94fg+3kVM7Qn13r0m21HioSQGsO1yW8Z9knGqtM=; b=S7N2Qrcync0UG61IsTCs3x1LdS
 qlK5e6RUpGDqHCwkYb97bn5Eej/l+/WsFokwPCIShHct+hq0uAMNxVzGobbZKdj+f7ofFy8j4HIN4
 vhJ/Tk7PUNAVumQ1yyGBWF5NpLJs4v8OO26fAZOD3Xwat9FrR1a0FjyOtCCq663ouQifIYuycX67+
 WvxoXqnWlDutjaBN/yw2w+g6uGKQmbv9MzS2f0aeS7OersUdyzvbgXWlBsktTq8zGWt+i03szCbXj
 2uzUKRqFclOHjZ0uGWv+HLFNmc3FwatXuZcVG/vV49Jl7cP2jzATBDBYvxjo8tTCogAhiyGjFE2yQ
 bHRqEe/w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZwnO-00ETBZ-U4
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 14:28:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwnN-0008WN-DF; Fri, 23 Apr 2021 16:28:37 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lZwnN-0007gH-1H; Fri, 23 Apr 2021 16:28:37 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 23 Apr 2021 16:28:23 +0200
Message-Id: <20210423142829.29468-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_072839_025533_E30B5ABB 
X-CRM114-Status: GOOD (  11.69  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/6] add multiimage support for sama5d3 based
 microchip-ksz9477-evb board 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v2:
- add proper sanity check for atmci_instances array size
- add comment about initial MCI state and reason why reconfiguration is
  needed.

This patch series provide multiimage support for the microchip-ksz9477-evb.
The main work was done to make atmel_mci driver reusable for the
pbl/xloader.

With this patches it is possible to build first and second stages in one
run with one defconfig.

Oleksij Rempel (6):
  mci: atmel_mci: add PBL support
  ARM: at91: xload-mmc: add sama5d3_atmci_start_image() helper
  ARM: at91: ddramc: add sama5d3_barebox_entry() handler
  ARM: at91: add __sama5d3_stashed_bootrom_r4 helper
  ARM: at91: add sama5d3_lowlevel_init() helpers
  ARM: at91: sama5d3: add multiimage support for the
    microchip-ksz9477-evb

 .../boards/microchip-ksz9477-evb/lowlevel.c   |  33 +-
 arch/arm/mach-at91/Kconfig                    |   2 +
 arch/arm/mach-at91/Makefile                   |   1 +
 arch/arm/mach-at91/ddramc.c                   |   8 +
 arch/arm/mach-at91/include/mach/ddramc.h      |   1 +
 .../mach-at91/include/mach/sama5_bootsource.h |   3 +
 .../include/mach/sama5d3-xplained-ddramc.h    |  88 ++++
 arch/arm/mach-at91/include/mach/sama5d3_ll.h  |  24 +
 arch/arm/mach-at91/include/mach/xload.h       |   4 +
 arch/arm/mach-at91/sama5d3_ll.c               |  34 ++
 arch/arm/mach-at91/xload-mmc.c                |  51 ++
 drivers/mci/Kconfig                           |   4 +
 drivers/mci/Makefile                          |   3 +-
 drivers/mci/atmel-mci-regs.h                  |  37 ++
 drivers/mci/atmel_mci.c                       | 494 +-----------------
 drivers/mci/atmel_mci_common.c                | 465 +++++++++++++++++
 drivers/mci/atmel_mci_pbl.c                   | 116 ++++
 images/Makefile.at91                          |   5 +
 18 files changed, 885 insertions(+), 488 deletions(-)
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3-xplained-ddramc.h
 create mode 100644 arch/arm/mach-at91/include/mach/sama5d3_ll.h
 create mode 100644 arch/arm/mach-at91/sama5d3_ll.c
 create mode 100644 drivers/mci/atmel_mci_common.c
 create mode 100644 drivers/mci/atmel_mci_pbl.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

