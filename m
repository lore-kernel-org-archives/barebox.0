Delivery-date: Thu, 04 Jun 2026 13:07:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5v3-002FnS-1s
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 13:07:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV5v2-0000UN-Vn
	for lore@pengutronix.de; Thu, 04 Jun 2026 13:07:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t+30aNsdDzazT+ivcJkXQ2zjvtAYRwEfWZGdwGCrZgg=; b=LEiBvcvaAABPJL
	nNxe5f9SV9llpzOZ5XkdIbcWTgCYaD+mqSrRfEdytsxTss2aPH94RSGBwRv45Ogc8Gg7Ij7ACXvdE
	u0mizYB9V/6PJEdvzH46lHQPzQgeO3QbZP35TULeOTZU10vGG7zeVnMtGPkihdtwa3iyFJx1okPK7
	MkJ0LuBOKFA6uldwL8I0wsXle3TQ2eGS2zdttA2vxeECOt5Aa/mMGDlxhENGIjezXEb9rAckWLzUN
	C/rWmXTVG+vfYUunDaSnoYYAyXgp2hoeUejcJ9CUgn9o7cQsvDAStQK4N3ofrI6tooprzuCJAITG8
	f5A+oCQ6T8t1Nq5dsQdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5uk-0000000GbyO-0adB;
	Thu, 04 Jun 2026 11:07:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV5ue-0000000GbwR-2YNf
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 11:07:04 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wV5uc-0000IX-6g; Thu, 04 Jun 2026 13:06:58 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 04 Jun 2026 13:06:53 +0200
Message-Id: <20260604-socfpga-axe5-sdram-init-v1-0-274f6361ce98@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE1cIWoC/x3MQQqEMAxA0atI1gY6HSPDXGVwEdqoWVhLIyJI7
 26Z5Vv8f4NJUTH4djcUOdV0Tw2vvoOwcloENTaDd350oxvQ9jDnhZEvIbRYeENNeqCngQNRiO8
 PQatzkVmv//k31foA5vyBFGkAAAA=
X-Change-ID: 20260604-socfpga-axe5-sdram-init-254ac55cd385
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_040700_681035_4F074543 
X-CRM114-Status: UNSURE (   5.55  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] arm: socfpga: agilex5: cleanup SDRAM initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Agilex5 SDRAM initialization contains some obscure and unclear
workarounds, which are supposedly necessary for a successful SDRAM
initialization.

I observed a race condition between the IOSSM firmware, which is
responsible for the SDRAM initialization, and barebox. I assume this
race is responsible for the observed initialization failures.

Add an explicit workaround including documentation for the race
condition and remove the other workarounds.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (5):
      arm: socfpga: agilex5: separate EL3 init function
      arm: socfpga: agilex5: panic if DDR init failed
      arm: socfpga: iossm: add delay to wait for firmware
      arm: socfpga: agilex5: drop dual port hack
      arm: socfpga: agilex5: drop bank select before ddr_init

 arch/arm/mach-socfpga/agilex5-sdram.c | 10 ++--------
 arch/arm/mach-socfpga/atf.c           | 32 +++++++++++++++++---------------
 arch/arm/mach-socfpga/iossm_mailbox.c | 23 ++++++++++++++++++++---
 3 files changed, 39 insertions(+), 26 deletions(-)
---
base-commit: 9f6b78063a365b5b2674663ba844fa928937f203
change-id: 20260604-socfpga-axe5-sdram-init-254ac55cd385

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



