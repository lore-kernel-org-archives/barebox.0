Delivery-date: Wed, 25 Mar 2026 12:48:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5Mim-004uFB-15
	for lore@lore.pengutronix.de;
	Wed, 25 Mar 2026 12:48:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5Mil-0000JE-NS
	for lore@pengutronix.de; Wed, 25 Mar 2026 12:48:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UPIoSC3jwTswUCeFdJPLujrcFB1Qxrr3uy/GDHNkZX0=; b=lGy/dy9l42QCF1Lp9aWpvmdh26
	gmtKFFqOLWuboyJmAk7VuqqQjW1P5ji4BrxUMx4M9dcHZDP6um55sCaUBJmAr1bv797bsrwL8htVC
	87+eNlhFjgjcWcvq8OtfSwuSh6hU8zUOU/IqfzEsUhX5TpHOq6ksfi3ljMo4F5abusOtw4TipI49P
	cg+R0BMMY2JQyf1Ety4XXaPNJia1ZHJ7sFsxnTu9OQTRQa53Nig5YZ6SMsw5GAVVelEwun+pBTuxJ
	rGr6u5ogNR2wTzy6+O1RdTqbDfXEz4kM0Swt5KdizINTQzLMsJ3Uqv/Z1UlenjnogLU8iDm6oeuka
	HP8ix5aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MiP-00000003IiS-3UBh;
	Wed, 25 Mar 2026 11:48:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MiK-00000003Ifl-2GlP
	for barebox@lists.infradead.org;
	Wed, 25 Mar 2026 11:47:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-00005c-Jq; Wed, 25 Mar 2026 12:47:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-0023MB-1M;
	Wed, 25 Mar 2026 12:47:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-00000009hXd-1Kt4;
	Wed, 25 Mar 2026 12:47:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Mar 2026 12:42:45 +0100
Message-ID: <20260325114753.2249763-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_044756_576191_CAC33E21 
X-CRM114-Status: UNSURE (   8.59  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] firmware: arm_scmi: clock: make more robust
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox on the STM32MP15 lxa-mc1 with SCMI over SMC was completely
silent when used with TF-A v2.14, which is an abysmal user experience.

Improve upon this a bit:

  - If SCMI clocks fail with -EPROTO in serial driver probes, swallow
    the error and just disallow further clock operations to allow
    user to reach an interactive shell with just CONFIG_DEBUG_LL

  - Sync the driver with Linux and add an Origin-URL to make future
    diffs and syncs easier

The first change was only done to drivers that actually check
clk_enable, which happens to include STM32MP, AM62L and RK35xx, which are
the only platforms currently supported by barebox that make use of
SCMI clock protocol over SMC.

The actual fix has been posted separately for inclusion into master:
https://lore.barebox.org/barebox/20260325113711.2163037-1-a.fatoum@pengutronix.de/T/#u

Ahmad Fatoum (3):
  serial: introduce clk_get_enabled_for_console()
  clk: ignore -EPROTO in clk_get_enabled_if_available
  firmware: arm_scmi: clock: sync with Linux v7.0

 drivers/clk/clk-scmi.c            | 285 ++++++++++++++++-----
 drivers/firmware/arm_scmi/clock.c | 397 ++++++++++++++++++++++++------
 drivers/serial/serial_lpuart.c    |  12 +-
 drivers/serial/serial_lpuart32.c  |  12 +-
 drivers/serial/serial_ns16550.c   |   9 +-
 drivers/serial/serial_stm32.c     |  10 +-
 include/console.h                 |  15 ++
 include/linux/clk.h               |  28 +++
 include/linux/scmi_protocol.h     |  30 ++-
 9 files changed, 612 insertions(+), 186 deletions(-)

-- 
2.47.3



