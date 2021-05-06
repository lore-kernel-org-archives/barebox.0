Delivery-date: Thu, 06 May 2021 11:30:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLP-0001X0-Sa
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:30:55 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLM-00007q-Lw
	for lore@pengutronix.de; Thu, 06 May 2021 11:30:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tefwAU9tPYN9nVfS2pF/0lzUfN6g9bluJWCI2IOsRX8=; b=jv+PJxnOO4OjRP
	PdwT0scboO8D3wpAkK8nEtPep0tRSfvsPs/YxQpLuhFxY86LM2i0ULm9z+a2ZT3MTwC4SEreHegXS
	kemZumAo7NAQjI8ddxf9Xauhrw5O0tuTBo9DXkFPGc1YOushKA4lA8pxI2xuG/0RADT+q/sx2F2/d
	NFrkRL9qyyPuKk9sIHJ5rvkvarHPBwgUQoaoqCFjtFvl++HjX65OjW/yw5yxw+FnY0gk+P1empHtq
	IGNbR1tRMwdJoz1AuXSd0hvzc4+h7bF5+RiiaS7B8idC30fs1cidnes9XXTNJr7HueuobEzjZq+cZ
	c66AbvQaiNDOZ8q74sBw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaKL-003o1D-Jx; Thu, 06 May 2021 09:29:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJk-003nqi-1o
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=pt52ifSs2tPDplxbHHthxTg/7Zi6BcAjNnOz3hM5QCc=; b=KsAO7dvysm/Y0gerHZ2CK6EuWK
 CZgi0RHjwUS8LAPVD1SXaBzJ193fDOXQieGWXFuWc6Lz1/cZZ6T6wj4F/MS0B915Gn1gM8597UzVW
 tw7fkqa67/XSo4NftHK39Q8Xtd8oXmY+ZfTZAIFk0gLwbwPBLGiuLTM64AKglsUWzsg/dzOqkjPow
 2Y1/jld3wKyidulTYDSk9LdIDy1szU6+T08mxYK4HobkIL+3BCvTxGvbs9AmueecZfIrxqUU9M6Tn
 pSts7bycyRJaIlw0NSxlJDJ+6EAWev07KGb0R9s1wXImelGn8b+gQIqwIkOkbNJonEF7RzbooZ9Vp
 Vr2Ig+JQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFU-TX
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:10 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0007p4-VV; Thu, 06 May 2021 11:29:02 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001l7-BW; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:44 +0200
Message-Id: <20210506092901.25461-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022907_007614_9DA91FAF 
X-CRM114-Status: GOOD (  13.94  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v5 00/17] barebox deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Another round to address the last review feedback

Changes since v4:
  - Pass of_device_id array to BAREBOX_DEEP_PROBE_ENABLE()
  - convert dev_warn to dev_err

Changes since v3:
  - Add deep-probe support for pinctrl
  - Port over Phytec Physom to deep-probe
  - Make sure console is probed ealier at postconsole_initcall time
  - Let of_devices_ensure_probed_by_dev_id() probe all matching devices, not
    only the first one
  - add GPIO support to the base deep probe patch

Lucas Stach (1):
  of: base: move memory init from DT to initcall

Marco Felsch (9):
  imx53: remove unused imx53_add_nand
  of: platform: remove check of already added devices
  of: platform: Keep track of populated platform devices
  of: base: move clock init from of_probe() to barebox_register_of()
  initcall: add of_populate_initcall
  common: add initial barebox deep-probe support
  ARM: i.MX: esdctl: add deep-probe support
  ARM: stm32mp: ddrctrl: add deep-probe support
  ARM: boards: mx6-sabrelite: add deep-probe support

Sascha Hauer (7):
  of: Set of_chosen and of_model earlier
  of: implement of_get_stdoutpath()
  pinctrl: Find controller node first
  common: Explicitly probe consoles earlier with deep probe
  pinctrl: Add deep probe support
  ARM: i.MX Phytec physom: convert to board driver
  ARM: i.MX Phytec physom: Add deep-probe support

 .../boards/freescale-mx6-sabrelite/board.c    |  58 +++--
 arch/arm/boards/phytec-som-imx6/board.c       | 159 +++++++++---
 arch/arm/mach-imx/esdctl.c                    |  12 +-
 .../arm/mach-imx/include/mach/devices-imx53.h |  27 --
 arch/arm/mach-stm32mp/ddrctrl.c               |  12 +-
 common/Makefile                               |   1 +
 common/deep-probe.c                           |  39 +++
 drivers/base/driver.c                         |  11 +-
 drivers/clk/clk.c                             |   5 +
 drivers/i2c/i2c.c                             |   8 +
 drivers/of/base.c                             |  61 +++--
 drivers/of/of_gpio.c                          |   4 +
 drivers/of/platform.c                         | 230 +++++++++++++++---
 drivers/pinctrl/pinctrl.c                     |  16 +-
 drivers/regulator/core.c                      |   6 +
 drivers/reset/core.c                          |   4 +
 drivers/spi/spi.c                             |   2 +
 include/asm-generic/barebox.lds.h             |  11 +-
 include/deep-probe.h                          |  26 ++
 include/init.h                                |  10 +-
 include/of.h                                  |  33 +++
 21 files changed, 587 insertions(+), 148 deletions(-)
 create mode 100644 common/deep-probe.c
 create mode 100644 include/deep-probe.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

