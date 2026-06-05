Delivery-date: Fri, 05 Jun 2026 14:59:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVU9F-002cYH-0N
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 14:59:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVU9E-0003t1-DA
	for lore@pengutronix.de; Fri, 05 Jun 2026 14:59:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4WOWT2/aE0TC5dsfJPBzrcSr9RvmFyfpW0FLkNEp8a0=; b=ZDLZvojM/iR9hR
	Zu72iSwEUxJCoPQiveNaa+lZzoSQQE+2dodatB83CEMTLhQ+mzrk8XwYiLTR3Is19NfgDqvtPZYgk
	Pi+e3aUVEQ1413CB53qXuN7kRVqOuS18dsoo5mSLY4ioJqB97/+g8Z9MOlnIniu8wZOeB18v+BmwH
	tg+cn0Be2LELk97wRYP4fa9tW9tLMPdIZTYjmFTripg++4nZJAGH2p7+aePodvtSm5+Y6XsToEJdC
	RsKvc12RMLKlMzhyJU4CWk0FX7lHRYKVCR//jNkRxgK6gSfNTRGxqOH5rSgda2cU5190RId2YpONG
	ahK814F4UW+gRWc/SVQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVU7v-00000000e5E-23n5;
	Fri, 05 Jun 2026 12:58:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVU7s-00000000e3e-2HSF
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 12:58:18 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVU7p-0003Xw-Kx; Fri, 05 Jun 2026 14:58:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 14:58:12 +0200
Message-Id: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOTHImoC/x3MPQqAMAxA4atIZgNVbP25ijjENtYsKq2KULy7x
 fEb3ksQOQhHGIoEgW+Jsm8ZVVmAXWnzjOKyoVa1UUZpjLtdDk/oeL48XhROdF2jiHTftLqCHB6
 BF3n+6Ti97wcrZONyZAAAAA==
X-Change-ID: 20260605-socfpga-debug-uart-d840aa594751
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_055816_589578_831366D9 
X-CRM114-Status: UNSURE (   8.05  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] arm: socfpga: cleanup UART for serial console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Configuring debug console output for the PBL and low level code on
SoCFPGA boards is surprisingly complex and an inconsistent configuration
bit me more than once.

Get rid of the custom UART implementation and the base addresses for the
debug UART in the barebox configuration.

While at it, set the debug UART for the Arrow AXE5 board in the board
code and don't force the developer to know and configure the correct
debug UART in the configuration.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (3):
      arm: socfpga: replace custom UART with ns16550
      arm: socfpga: get rid of UART address for low-level debug
      arm: socfpga: axe5-eagle: always use UART0

 arch/arm/boards/arrow-axe5-eagle/lowlevel.c |   6 +-
 common/Kconfig.debug_ll                     |  44 +++--------
 include/mach/socfpga/debug_ll.h             | 113 +++++++++++-----------------
 3 files changed, 57 insertions(+), 106 deletions(-)
---
base-commit: 713a1e59dfea4516446822323b7c0db571cb214f
change-id: 20260605-socfpga-debug-uart-d840aa594751

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



