Delivery-date: Wed, 09 Apr 2025 16:40:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbd-00ARnN-1C
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:40:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbc-0003Gx-N8
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:40:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dua5gU4Jm0OXZjaPm/hQZQyRdIVG3ZoSNDvpWwixxvU=; b=yehdFinKmfe5/rzCrhqRxL/uBE
	mI+iwVeAbvWe4xUpuX0ABH+Y/oClWVygxHyclT/Z47VJHp90e6vKMzjPCws5FLohdzmlOinv5XqUr
	Ro3LYhu9jNkFKJQoE0hIy3i2uJOkhUAcS7RKBsF4pXe6ivQ1bE1PQT2Qn0riJnHxasS96kEiUvht4
	lL/QjmUFK4eB+MpZ/FUR+dUB+Ml+x+vXVfL0Va25ZupSwqhojhnWsnEKZUimeoUZqaOtw93C4Bu3o
	fEu7RAzaCbrB0o/ENZT3LS43/zGFT53mi4KIRLqU8kfcNWkBGp+1/Bu1tjVF0A8zZzhJUz4OfNEME
	uhBaFtNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WbB-00000007UqP-3n4r;
	Wed, 09 Apr 2025 14:40:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Vzn-00000007NXi-3IpD
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 14:01:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-0004q5-Hd
	for barebox@lists.infradead.org; Wed, 09 Apr 2025 16:01:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-004701-16
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 16:01:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-008jBv-0o
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 16:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  9 Apr 2025 16:01:28 +0200
Message-Id: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_070139_820840_B63DAEFD 
X-CRM114-Status: GOOD (  11.03  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] ARM: add support for chainloading barebox inside FIP images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use on the STM32MP1, add a bootm handler for chainloading FIP
images. This removes the last remaining use case for SSBL .stm32 images,
after TF-A had dropped support late 2022.

Ahmad Fatoum (7):
  fip: add struct fip_image_desc::private_data
  fip: mark predefined toc_entries array const
  bootm: implement UIMAGE_IS_ADDRESS_VALID helper
  ARM: legacy: make architecture number unsigned
  ARM: introduce jump_to_linux helper
  ARM: add support for chainloading barebox inside FIP images
  ARM: stm32mp: retire non-FIP stm32mp_bbu_mmc_register_handler

 arch/arm/Kconfig                              |  11 +
 arch/arm/boards/lxa-mc1/board.c               |   4 +-
 .../boards/phytec-phycore-stm32mp1/board.c    |   2 +-
 arch/arm/boards/protonic-stm32mp1/board.c     |  16 +-
 arch/arm/boards/protonic-stm32mp13/board.c    |  16 +-
 arch/arm/boards/seeed-odyssey/board.c         |   4 +-
 arch/arm/boards/stm32mp15x-ev1/board.c        |   4 +-
 arch/arm/boards/stm32mp15xx-dkx/board.c       |   4 +-
 arch/arm/cpu/Makefile                         |   1 +
 arch/arm/cpu/bootm-fip.c                      | 276 ++++++++++++++++++
 arch/arm/include/asm/armlinux.h               |   4 +-
 arch/arm/include/asm/boot.h                   |  28 ++
 arch/arm/lib32/armlinux.c                     |  24 +-
 arch/arm/lib64/armlinux.c                     |  12 +-
 arch/arm/mach-stm32mp/init.c                  |  10 +
 commands/fiptool.c                            |   4 +-
 common/booti.c                                |   3 +-
 include/bootm.h                               |   3 +
 include/bootstrap.h                           |   2 +-
 include/fiptool.h                             |  18 +-
 include/mach/stm32mp/bbu.h                    |   8 -
 lib/fip.c                                     |   2 +-
 lib/tbbr_config.c                             |   4 +-
 23 files changed, 399 insertions(+), 61 deletions(-)
 create mode 100644 arch/arm/cpu/bootm-fip.c
 create mode 100644 arch/arm/include/asm/boot.h

-- 
2.39.5



