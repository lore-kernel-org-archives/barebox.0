Delivery-date: Tue, 28 Jun 2022 22:40:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0u-000bJX-5h
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:40:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0v-0004DF-FI
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:40:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eCSCBoWvbD6FWQdOboQrl08YPg47BWIXffzxdL3FHl8=; b=ovwEy47Qcx4s6W6iHnwBa3ndtB
	4bs49E6+vNYSoFxZVx19SNl5sez5xpS1AM3V4+Xm255TjsEWTywK9RsyQUC0Y/oNsfshyi3b9CIDX
	aSYD5evOzByh34T4Tj6mZ1e9UpjYnxv6IQRmy+kVWwFrWSG2hQeRUTx9qcDlpHmMcL6wcZivQwWxi
	44QxsJ4Re/tkpHl4WWPyKhYQVKuPy6QP3nA0FxZeBNLvo9r9Tv6iIjMwbUQyYl/XWuERzdY4WrzLw
	/erjCuNSPW8798cOMiDbgsZjwR1FvBdXvhDMz+LoYMABYnx5jT6GwoKQoT1TpNiuITUj5kntrCr6v
	4z32y3GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzO-0084kU-CA; Tue, 28 Jun 2022 20:39:14 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzE-0084fi-O4
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=eCSCBoWvbD6FWQdOboQrl08YPg47BWIXffzxdL3FHl8=;
	b=DVnbd2Yo0rFNFt0bx5vVlHw+KLTsBN3iHeQZseCSjghoRG/PaWOrrcToxnpzNweRjika5VuLLuG8q
	 EMWyqyOqqp5PxyttO7rF62l3drS9yNORlyq/zu6/KLFyGcsXag7efoVzw+WarxGbNFVdSNWl8YPLY7
	 9Grg1TJNkt15mXjCUIZMsjyyR+RGz+c5DsJ9Rco1YiXAEIZomxVPikn1yJPl/yTLjeNCi+HkYD7v2W
	 IzoAdTgIElRB06kjZEuFGTPfq7DLElKFJCCXtD68xcF+y1iv8QBXpSzaynd8ESFNg09FZiSds7aJht
	 /U11x+iGqVVKURO8D3osvUUBSNEbiFA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=eCSCBoWvbD6FWQdOboQrl08YPg47BWIXffzxdL3FHl8=;
	b=4AJa5QflaqxmQxpMo615Rj8MbFVhfniuHCOAi6j2I1geIkZUoaLx9Oqz9wuaViafSLXbvTB5vASze
	 jgAT68lDQ==
X-HalOne-Cookie: 6812e508e56a710a40abc27f5c24d4c8c007fe62
X-HalOne-ID: 544e302b-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 544e302b-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:38:56 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:38 +0200
Message-Id: <20220628203849.2785611-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133905_977492_03A7797E 
X-CRM114-Status: GOOD (  17.86  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/11] ARM: at91: Add pbl support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The following is the current set of patches so far to support
PBL for the skov-arm9cpu.

The pwm is not really part of this - but it is part of the story.
The patch-set was triggered when someone reported a bug in the 
atmel pwm code. The code did not build - so I ported it over.
Now I wanted to boot the target, but at91bootstrap no longer
supports the at91sam9263. So I decided to try to make it work
in barebox. I have tried this before and failed - but it should
be possible...

What I have made is modelled on top of all the great work
for other more modern atmel bouards.

v2:
 - The first stage bootloader works - thanks to feedback from Ahmad!
 - Add support for non-high capacity SD cards, as required by at91sam9 (Ahmad)
 - Replace hardcoded delay loops with pit based early delays (Ahmad)
 - Several adjustments to skov-arm9cpu code to fit the changes

The following patches are not ready:
- atmel_lcdfb: add support for updated DT bindings
- ARM: at91: Update DTS for skov-arm9cpu

They both rely on updated bindings that has not landed yet,
and which may end up not being compatible with the changes
implemented here.
So the patches works - but bindings are work-in-progress.

My plan is to resurrect my drm driver for at91sam9 and
with that the update the binding file. But timeline
for this work is unknowm.

In other words - I assume patch 1 to 8 + 10 as ready.
Patch 9 + 11 are WIP.

	Sam

Sam Ravnborg (11):
      pwm: atmel: Fix build and update
      ARM: at91: Make sdramc.h useable in multi image builds
      ARM: at91: Add initialize function to sdramc
      ARM: at91: Provide at91_mux_pio_pin for use in lowlevel
      mci: atmel_mci: Add PBL helper to configure highcapacity
      ARM: at91: Add at91sam9 xload_mmc for PBL use
      ARM: at91: Add extra register definitions
      ARM: at91: Add lowlevel helpers for at91sam9263
      atmel_lcdfb: add support for updated DT bindings
      ARM: at91: Add xload support to skov-arm9cpu
      ARM: at91: Update DTS for skov-arm9cpu

 arch/arm/boards/skov-arm9cpu/board.c               |  17 +-
 arch/arm/boards/skov-arm9cpu/lowlevel.c            | 158 +++------
 arch/arm/dts/at91-skov-arm9cpu.dts                 | 107 +++---
 arch/arm/mach-at91/Kconfig                         |   4 +-
 arch/arm/mach-at91/Makefile                        |   4 +-
 arch/arm/mach-at91/at91sam9_sdramc_ll.c            |  71 ++++
 arch/arm/mach-at91/at91sam9_xload_mmc.c            | 118 +++++++
 arch/arm/mach-at91/include/mach/at91_pmc.h         |   2 +
 arch/arm/mach-at91/include/mach/at91sam9263.h      |  14 +
 .../mach-at91/include/mach/at91sam9263_matrix.h    |  23 +-
 arch/arm/mach-at91/include/mach/at91sam926x.h      |   2 +
 arch/arm/mach-at91/include/mach/at91sam9_sdramc.h  | 165 ++++++---
 arch/arm/mach-at91/include/mach/gpio.h             |  25 ++
 arch/arm/mach-at91/include/mach/sam92_ll.h         |  54 +++
 arch/arm/mach-at91/include/mach/xload.h            |   5 +
 arch/arm/mach-at91/sam9263_ll.c                    | 215 ++++++++++++
 drivers/mci/atmel_mci_pbl.c                        |   5 +
 drivers/pwm/pwm-atmel.c                            | 383 +++++++++++++++------
 drivers/video/atmel_lcdfb.c                        |   6 +
 drivers/video/atmel_lcdfb.h                        |   4 +
 drivers/video/atmel_lcdfb_core.c                   | 125 +++++--
 images/Makefile.at91                               |   6 +-
 22 files changed, 1167 insertions(+), 346 deletions(-)




