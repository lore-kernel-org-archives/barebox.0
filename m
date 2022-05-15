Delivery-date: Sun, 15 May 2022 21:40:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6P-00EWT0-W6
	for lore@lore.pengutronix.de; Sun, 15 May 2022 21:40:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6M-0005vR-Cv
	for lore@pengutronix.de; Sun, 15 May 2022 21:40:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8VKCJt4uPhlsMaSwqdfjxHGHB5G0vZTCbNVrIVRTWxs=; b=YLFW1mr13Jd7Lt
	23uLFUugXI5FOvP8BnYXpnIhF7u+mNAah0Kr8RL2oDCGIGkYaxv+6nPg5JMqhh4o9HOX2e1wC5CtX
	8vVw8ttg9d6HR1ND0+JGE+X1Ct1z+wl9QtCYSAU9JZ46mPktRyPIk/IvC7rtmFLX3goMk2pT7oWAE
	vS+QRc7zx8sy8BCjnNLzDonBlutx6iYyKJFa3EtqUXxTxKFYmh7jBEaj+SCm2e7KRK5cDonKIYUid
	uRGPuw+Z1AGb3G+iuyuafgzrIYthz9qkRugK0wO9qK+nwPPUuYdSrlB5m6ihqUBAPmS1QtN3nAwNl
	bV+YYy1umoXMA7rsN1cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqK4X-004nXM-Di; Sun, 15 May 2022 19:38:33 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqK4Q-004nR4-Hd
 for barebox@lists.infradead.org; Sun, 15 May 2022 19:38:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
 from; bh=Plm6STRMoFX4OtRGd3znpzHEawD1LUL9lFAjXkGqmW4=;
 b=DKq4bT2isnUZrCwY8HYM/7XkI+qHhZrUkL2W71Khjf72ZxWnR8j+smYSYsYm+SBIui8VzpTY2ymZY
 vqAQBZRPsYqJEfdVWajYLAoys3tUP4eKcpdwEzLnWpolskXr2holJFnla1yYwARRk7+jKc1++tvxXn
 8cAlO8gdvAeFHybR93R8zUzpaTxBXXEfVMggUWhenmv+Nz1jeT5jmQ/kktZiuIu63EQabQVrQmAaa6
 OlYdtK9dX4xE03N7NAzn36xD7YZw0YtR4O6nA1sFsYxZ7cj0crnJUKsda8o5ghV3DZD12aOmi2y2ra
 QBzXR5ODGDnzHvNSlithihKPI8XENDQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
 from; bh=Plm6STRMoFX4OtRGd3znpzHEawD1LUL9lFAjXkGqmW4=;
 b=5eNyPTKZoGV/ANX3DXLsHvHZ4nFh+HV1/Rhb+Fm0cz2us3MH9Wa+h7PsrSlrs3HoCFs9raLz46Nsn
 BxNWf9XDA==
X-HalOne-Cookie: d2b9e9814f4cea370ca4f560245f2a51e26e96f3
X-HalOne-ID: 8eb17d08-d486-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod4-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 8eb17d08-d486-11ec-a908-d0431ea8a290;
 Sun, 15 May 2022 19:38:13 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 15 May 2022 21:37:59 +0200
Message-Id: <20220515193807.354903-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123828_051066_2A1B8900 
X-CRM114-Status: GOOD (  17.51  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH v1 0/8] ARM: at91: Add pbl support to skov-arm9cpu
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

This is an RFC - because the code does not yet work :-(
It fails to mount the SD Card - for reasons I am yet to discover.

Most of the code is attempted to be generic so we can use it
for other targets.

Feedback on the general structure would be nice.
But otherwise just consider this a short status that something
is in the works and I may return to this later - no promises
on the timeframe though.

	Sam

Sam Ravnborg (8):
      pwm: atmel: Fix build and update
      ARM: at91: Provide at91_mux_pio_pin for use in lowlevel
      ARM: at91: Add at91sam9 xload_mmc for PBL use
      ARM: at91: Add extra register definitions
      ARM: at91: Add lowlevel helpers for at91sam9263
      ARM: at91: Make sdramc.h useable in multi image builds
      ARM: at91: Add initialize function to sdramc
      ARM: at91: Add xload support to skov-arm9cpu

 arch/arm/boards/skov-arm9cpu/lowlevel.c            | 148 +++-----
 arch/arm/mach-at91/Kconfig                         |   4 +-
 arch/arm/mach-at91/Makefile                        |   4 +-
 arch/arm/mach-at91/at91sam9_sdramc_ll.c            |  67 ++++
 arch/arm/mach-at91/at91sam9_xload_mmc.c            | 115 +++++++
 arch/arm/mach-at91/include/mach/at91_pmc.h         |   2 +
 arch/arm/mach-at91/include/mach/at91sam9263.h      |  14 +
 .../mach-at91/include/mach/at91sam9263_matrix.h    |  23 +-
 arch/arm/mach-at91/include/mach/at91sam926x.h      |   2 +
 arch/arm/mach-at91/include/mach/at91sam9_sdramc.h  | 165 ++++++---
 arch/arm/mach-at91/include/mach/gpio.h             |  25 ++
 arch/arm/mach-at91/include/mach/sam92_ll.h         |  54 +++
 arch/arm/mach-at91/include/mach/xload.h            |   4 +
 arch/arm/mach-at91/sam9263_ll.c                    | 216 ++++++++++++
 drivers/pwm/pwm-atmel.c                            | 383 +++++++++++++++------
 images/Makefile.at91                               |   5 +
 16 files changed, 981 insertions(+), 250 deletions(-)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

