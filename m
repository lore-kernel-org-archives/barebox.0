Delivery-date: Wed, 13 May 2026 14:23:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8cu-001Fio-2c
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:23:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8cp-0005BN-A9
	for lore@pengutronix.de; Wed, 13 May 2026 14:23:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TOK+eCaQvwooEFDAjXr0km23q8Nc2bkt8zo7OYrPVo4=; b=cahc4nRUa8QX8t
	jTvxoT5HvG7V+XAnKJTEf9N6/rxhdVUR0lWRhS57p1B4IFaE14sZkNrA6eut3Yri3wQRgRbaA73k3
	u5B2mNx0wjQ1nbCNsvRc487V2+UsqDlCLnch1tZdu2WDFhUifrf9ZHaaKsSzdPhbGJyhGCDmHDuQC
	K8vXbyy/QkEf5YBlbHlP4ke2w9XEPPSwcrSkkViFBgPh4/Khfm+EUHPpzdkgl/tER1css/7zvNJYI
	Es4PMm9HiFs46dJBTShdLx+b/V9NtEvzF8wDvP7wQNhsOQwxm3jxxfwGcMyklNW7zmo9jX63c3bWl
	c8DhpqhfWKw8vXsAjvcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8be-00000002TEA-40Ac;
	Wed, 13 May 2026 12:22:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8ba-00000002TBe-22ak
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:22:28 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8bY-0004ke-SD; Wed, 13 May 2026 14:22:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:22:21 +0200
Message-Id: <20260513-socfpga-agilex5-entry-v1-0-090758694c88@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP1sBGoC/x3MTQqAIBBA4avErBuYfqmuEi1ERxsIC40worsnL
 b/Few9EDsIRpuKBwJdE2X1GVRagV+Udo5hsqKnuqasajLu2h1OonGycOmR/hhuHkXpqlaFBj5D
 bI7CV9H/n5X0/FIpF5mcAAAA=
X-Change-ID: 20260513-socfpga-agilex5-entry-890604ad08c9
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_052226_533749_D2BA693F 
X-CRM114-Status: UNSURE (   8.92  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] arm: socfpga: agilex5: fix stack in entry function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The entry function for the Arrow AXE5 Eagle board places the stack at
the end of the OCRAM. However, the board firmware uses the same page for
handoff data for barebox, which is read after barebox is already
running. This may cause data corruption if the stack grows into the
handoff data.

Patch 1 fixes the stack location for the Arrow AXE5 Eagle board to avoid
corrupting the handoff data.

Patch 2 adds a ENTRY_FUNCTION_AGILEX5 macro, which uses the fixed
address for the stack and may be used by Agilex 5 based board.  The
address for the stack in OCRAM is SoC specific and specifying it per
board is unnecessary and error prone.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (2):
      arm: socfpga: axe5-eagle: fix stack location
      arm: socfpga: agilex5: add helper for entry function

 arch/arm/boards/arrow-axe5-eagle/lowlevel.c |  5 ++---
 include/mach/socfpga/barebox-arm.h          | 20 ++++++++++++++++++++
 2 files changed, 22 insertions(+), 3 deletions(-)
---
base-commit: 2cb5e0014a37160731ad6eb6d7f7d846394db362
change-id: 20260513-socfpga-agilex5-entry-890604ad08c9

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



