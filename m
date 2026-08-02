Delivery-date: Sun, 02 Aug 2026 15:21:25 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqW84-005XgF-2Q
	for lore@lore.pengutronix.de;
	Sun, 02 Aug 2026 15:21:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D50852016E3
	for <lore@pengutronix.de>; Sun, 02 Aug 2026 15:21:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1kFFpMVd;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="YZhp/K2l";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h+cUBlY8veBJpspgOj8fb8jVHsuSm0ZUbkSdhP2eDQg=; b=1kFFpMVdsPDW/vyw8bXvnzg+6y
	2dQIep045JC5y8HruX5Ihmv96uHmRyhQXzqlokRRb4zX0AOLpT2cCRfM6DI8k1FshfaHSzF7Pu9Kv
	IUVpwSkMUdOZrf4ilxPAzVxvvr0IX9y8obM8cXauCsKiZfR09lfCEwoJas1+wCW8xbhFJZ1tcto+b
	iIakHxHSO8GLfF+y2RL7U/PRzyzpGS13xY/azLmyw18r47Snkfvoa4xE4CWuuyxB9+UDtuvR/kUtI
	oQsoZPRF/M9pgdOeO2U7kWIrsIkzig9pEbFxs9OQx5W1QGE2n7cYpRx8LRkEI3FUSHv5JrVCdVCfR
	i+bgvFZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW3A-0000000FevM-2cAA;
	Sun, 02 Aug 2026 13:16:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqW39-0000000Fetl-2hpT
	for barebox@lists.infradead.org;
	Sun, 02 Aug 2026 13:16:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0B7CB40696;
	Sun,  2 Aug 2026 13:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4D2C19425;
	Sun,  2 Aug 2026 13:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785676578;
	bh=LmiGkzBFnVrjE+essPAZ9Fwjyu54plXBA9CNDLfWgmU=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=YZhp/K2lpTXS2jozt/UgIyQwGfcr0AAQ7+avMrM6MEYZVVzPPvi03bGnV14mmmfko
	 slJxNxfma+h6bZkIlZnbMJ8xUH1iLcWFfftW0p7HLnO4XgovFBW2ZliAFTm+88b1Ru
	 KeTi0ixD6oYJ+DnBmrm1GfmFLamqk4ZAfwT0nYc/0LkyNQmcbX5bhYXeuY8Ite4EtD
	 JGte0aZkJaEJLwhkvf2O4cIWOC2TiLK48pc70Arv7WRvLcA8Zwvpt3wl27uNsvuD72
	 +gshR5JjthFbN1a1aAo7RN4Kfj0ENy0lIDu2d0iPV6MSefvrAgDjUdSYxWh8QRAk3l
	 5cT8DDKNByMEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A8EC55175;
	Sun,  2 Aug 2026 13:16:18 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Subject: [PATCH v3 00/15] ARM: mvebu: add Netgear RN102/RN104 support and
 related drivers
Date: Sun, 02 Aug 2026 15:16:16 +0200
Message-Id: <20260802-rn102-rn104-series-v3-0-f7685a279fb5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIACBDb2oC/32NQQ7CIBREr9KwFgPUUurKexgXBT4txlIDlWia3
 l1oN10YN5O8ZObNjAJ4CwGdixl5iDbY0SUoDwVSfes6wFYnRowwTmpWYu8oYWue8LbFmnMBkjS
 aGIPS8OnB2Pcqvd42Di95BzVlU270Nkyj/6yvkebe34NIMcE1b4RmlTaC80s3tPZxVOOA8kFke
 4X4qWBJ0UJJTVXJWiqxVyzL8gXbpu45CQEAAA==
X-Change-ID: 20260723-rn102-rn104-series-d668eb09d0ff
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785676613; l=4441;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=LmiGkzBFnVrjE+essPAZ9Fwjyu54plXBA9CNDLfWgmU=;
 b=tTMOXYCQYugCzl95+ncpiDBSQyrHCVXkpBOiDkKGSrIz53tpMZyGh8mXpGlyZw7L+7OaWG7RD
 bIb3b1WRyw8CcNqSwb1USdFW9xj/H+eplOx6lyQNQaddFjS8rEYkd2v
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D50852016E3
X-Stat-Signature: sz3srjzt14kfmyphta8to5prkmurmy7r

This series adds full barebox support for the Netgear RN102 and RN104
NAS platforms based on the Marvell Armada 370 SoC. Both devices share
the same hardware architecture, differing mainly in the number of drive
bays and board‑level integration.

The series introduces:
 - lowlevel initialization code for RN102 and RN104
 - board support files and environment integration
 - barebox‑specific device tree overlays for both platforms
 - image generation support and defconfig updates
 - fan controller subsystem and G76x driver
 - fan control command and Kconfig/Makefile integration
 - Marvell‑specific EHCI host controller driver
 - USB/EHCI fixes
 - ATA/AHCI improvements

The goal is to provide complete bootloader support for these NAS
devices, enabling reliable initialization of storage, USB, fan control,
and board‑specific peripherals. The patches have been tested on RN102.

Changes in v3:
 - cleaned up whitespace and indentation issues
 - squashed fan command integration into a single commit
 - removed noisy or unrelated changes
 - improved commit messages and structure

Link to v2:
https://patch.msgid.link/20260728-rn102-rn104-series-v2-0-ae31f55b7bc8@gmail.com

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>

---
Luca Lauro (15):
      ARM: mvebu: add Netgear RN102 support
      ARM: mvebu: enable RN102 in mvebu_defconfig
      ARM: mvebu: improve Netgear RN104 support
      ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
      drivers: fan: add fan subsystem, core API and G76x fan controller driver
      commands: add fan control command
      usb: ehci: add Marvell EHCI host controller driver
      usb: ehci: initialize periodic_queue_dma
      ata: ahci: add PCI AHCI and Marvell 9170 controller support
      ata: ahci: fix zero-length DMA handling
      ata: ahci: add helper for ATA commands without data
      ata: ahci: improve AHCI port bring-up sequence
      ata: ahci: add FLUSH EXT and STANDBY IMMEDIATE support during shutdown
      ata: ahci: add shutdown helpers for AHCI controllers
      ata: ahci: cleanup legacy code and remove unused paths

 arch/arm/boards/Makefile                   |    1 +
 arch/arm/boards/netgear-rn102/Makefile     |    4 +
 arch/arm/boards/netgear-rn102/board.c      |  243 ++++++
 arch/arm/boards/netgear-rn102/lowlevel.c   |   58 ++
 arch/arm/boards/netgear-rn104/Makefile     |    1 +
 arch/arm/boards/netgear-rn104/board.c      |  182 +++++
 arch/arm/boards/netgear-rn104/lowlevel.c   |   37 +-
 arch/arm/configs/mvebu_defconfig           |    1 +
 arch/arm/dts/Makefile                      |    1 +
 arch/arm/dts/armada-370-rn102-bb.dts       |   82 ++
 arch/arm/dts/armada-370-rn104-bb.dts       |   73 +-
 arch/arm/mach-mvebu/Kconfig                |    4 +
 commands/Kconfig                           |    7 +
 commands/Makefile                          |    2 +
 commands/fan.c                             |  286 +++++++
 drivers/Kconfig                            |    1 +
 drivers/Makefile                           |    1 +
 drivers/ata/ahci.c                         |  429 ++++++----
 drivers/ata/ahci.h                         |    1 +
 drivers/fan/Kconfig                        |   35 +
 drivers/fan/Makefile                       |    8 +
 drivers/fan/fan.c                          |  180 +++++
 drivers/fan/i2c_fan_controllers/Kconfig    |    6 +
 drivers/fan/i2c_fan_controllers/Makefile   |    5 +
 drivers/fan/i2c_fan_controllers/g76x.c     | 1185 ++++++++++++++++++++++++++++
 drivers/fan/other_fan_controllers/Kconfig  |    7 +
 drivers/fan/other_fan_controllers/Makefile |    3 +
 drivers/fan/spi_fan_controllers/Kconfig    |    1 +
 drivers/fan/spi_fan_controllers/Makefile   |    3 +
 drivers/usb/host/Kconfig                   |    7 +
 drivers/usb/host/Makefile                  |   13 +-
 drivers/usb/host/ehci-hcd.c                |    7 +-
 drivers/usb/host/ehci-marvell.c            |  228 ++++++
 images/Makefile.mvebu                      |   13 +-
 include/fan/fan.h                          |   94 +++
 include/fan/i2c_fan_controllers/g76x.h     |   37 +
 include/mach/mvebu/debug_ll.h              |    2 +-
 37 files changed, 3064 insertions(+), 184 deletions(-)
---
base-commit: f9cc366e5b67680473e4ab7837eeb27bf1b5a567
change-id: 20260723-rn102-rn104-series-d668eb09d0ff

Best regards,
--  
Luca Lauro <famlauro93l@gmail.com>




