Delivery-date: Fri, 09 Apr 2021 15:13:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUqwk-0007qr-3e
	for lore@lore.pengutronix.de; Fri, 09 Apr 2021 15:13:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lUqwi-0000Yv-TM
	for lore@pengutronix.de; Fri, 09 Apr 2021 15:13:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=798sjIP7UtaGCFGtOZJ/ro5h9rh0HM7LAuoAMA6iO14=; b=DEoafQUXdybPYYCmnrRcljpraU
	RM6cAbYj1Mt95ATvD+m8o1YQxXkYsXBiFhQ7nNwXOOzqJWG7BnBrvzCIY9Us5XirXMx4MKioJYy4g
	6YFE+Di6SJnTqldCj6Z7BXvPaL4ar+EV1ooNfLzmB8EcZI9ZSj5TXUhkPLFlFkJ+9GRzd1lpZuh6y
	bAk0zOFV7b5+JA9CdkGs0v3PnVItrp6A82W2l4w7/qai2nSGMdTQWaSVewgHifeoAphlpxHlv9gli
	uHd5eaWtUAaeiusG4olRVNY8ah0zuhLi2GTlUWBfw4qiEdGsrdx0xPnyY7SIvV8nsDcx6Hi74Lxam
	UsNJc2RQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUqvk-000ngV-7f; Fri, 09 Apr 2021 13:12:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqvW-000neT-U4
 for barebox@desiato.infradead.org; Fri, 09 Apr 2021 13:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ZnMuTbk/ux/IL3O0wsHTFDySJIAf5nXpQcv2m5BsNJU=; b=Yrxsw8/2N3mbngnbUqvljgVBkF
 LQE7WQcWZC8Gea6MJEMNEWzLg9fzK6uzLWkJ8xlRRv8IcYxJ5CQwGKUrriaRYa1lAHMtDFG2co61y
 Uohqj83dUmX7Jb2MzPcG7s7y0dyYPl4d2p67PIEZyUQg4IvbUvosIrwA/XYCsGXhkWJnQ73Mhr6zC
 qC7ez3QFGnvqNcOfCI3AfIhMsoNpICGXpVNKieDd7zMdpnNk762hhKBzTGeP1YRqOjh6ib956E3W8
 n8oMR27Q81ddgtRuufe3CS6iNZ5tOSipvaKL3UnQ6KhjLAHd7A1FCZS1HqY8f9FO0EnElrx/UF7ks
 nDSrqyQA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqvT-004XTu-A2
 for barebox@lists.infradead.org; Fri, 09 Apr 2021 13:11:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lUqvP-0008Ct-NE; Fri, 09 Apr 2021 15:11:51 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lUqvP-00017q-DB; Fri, 09 Apr 2021 15:11:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  9 Apr 2021 15:11:43 +0200
Message-Id: <20210409131149.2184-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_061155_392427_FE04F650 
X-CRM114-Status: GOOD (  10.92  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 0/6] add multiimage support for sama5d3 based
 microchip-ksz9477-evb board 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

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
 drivers/mci/atmel_mci_pbl.c                   | 115 ++++
 images/Makefile.at91                          |   5 +
 18 files changed, 884 insertions(+), 488 deletions(-)
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

