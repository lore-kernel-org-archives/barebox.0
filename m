Delivery-date: Fri, 14 Feb 2025 11:49:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGQ-002Egi-1T
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:49:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGP-0004yN-99
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:49:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w7tE0KQEUKwLge/2uBfySRnJqrRXgH5/KoVpAypHCeA=; b=RYRL5d7FdrJAI/njYtp6a6zY8M
	2iLlIlP6X5V5D4itiXz8Z09C/npltYbwTOHaYG2ZyNd/vX7hTtZ+iIQTCE42upbDXbSRJdqXJKMNl
	1qPlj16KWpaHQtp0xCkUxRMUhDcUpHjdDfnbMCQlTKTnYEdhvxxajP2PCJ6e5sFAi6FhMdt8v7gGB
	oGdtujg+u7Xu2NK8+yBya4FtTDTYNP4t2DwT1Dc2+E+W8+SjKtb9Swk4usNIgjGJBT22Ouvqt2D5K
	3hMKY2QgtQEKNVfPAN1aSVfXS0HIVyufyojvAztIbkg/jyud+koyKgsPiUntN0S6D+fPDUEDs7j51
	/LvPIS8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titFy-0000000EYKK-42yS;
	Fri, 14 Feb 2025 10:49:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titF8-0000000EYEN-0B5e
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:48:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-0004Ui-Oo
	for barebox@lists.infradead.org; Fri, 14 Feb 2025 11:48:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-000u3S-1s
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 11:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-00CVIo-1a
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 11:48:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Feb 2025 11:48:10 +0100
Message-Id: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_024822_079735_54B5D517 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] commands: boot: add support for overriding boot artifacts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replacing part of the boot artifacts is a common development use case,
e.g. to load the kernel from the network, but otherwise boot the
bootloader spec file as-is or to inject an initrd into an existing boot
flow (e.g. rsinit to enable usb9pfs boot).

This series adds a simple to use way to achieve that.

Ahmad Fatoum (7):
  bootm: add helper functions for checking if FIT image is used
  boot: move global.linux.bootargs.dyn. to common code
  blspec: don't clobber bootm.image on boot attempt
  fastboot: drop useless bootm.image clobber
  bootm: don't clobber global.bootm. variables after script boot fails
  bootm: retire bootm_has_initrd
  commands: boot: add support for overriding boot artifacts

 Documentation/user/booting-linux.rst |   8 ++
 arch/arm/lib32/bootm.c               |  18 ++-
 arch/kvx/lib/bootm.c                 |  23 ++--
 commands/boot.c                      |  53 +++++++-
 common/Kconfig                       |   7 ++
 common/blspec.c                      |   7 +-
 common/boot.c                        |  14 ++-
 common/booti.c                       |  10 +-
 common/bootm.c                       | 173 +++++++++++++++++++--------
 common/fastboot.c                    |   3 -
 include/bootm.h                      |  23 +++-
 11 files changed, 249 insertions(+), 90 deletions(-)

-- 
2.39.5



