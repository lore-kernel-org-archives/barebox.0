Delivery-date: Tue, 28 Jan 2025 11:10:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciYA-005Tdn-0w
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 11:10:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciYA-0001tr-CJ
	for lore@pengutronix.de; Tue, 28 Jan 2025 11:10:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fIws6nglOgLaxkZKQPbkp/nDmT6yAiPujX2fAipSIgY=; b=DRyf9SST+PjBF6sipcbDTF7qwd
	aRKrX1mr12gWAYMqyk9TEogKmviCA737B5yvuhN/zGqXWvcNN2Rpl80E+jmLiVyJJ/E64AC3e2IGS
	KjM/rQr8GUHSf9/JbV+52QKT3xagRwm1nPNIQxGLYgFqdIcpQOI/8MAhOTLaaLkwy7B1TK3VYJRZQ
	Xm3CYm2IRNPwQyTlCgdo9sFwub8hsYOZvbTrt2qwDteGcpVM4KQjB7luyjIUoT+O/itX6dqSAqF2X
	V7+FxoNGlCIAbEoEK7yNscaB5vLB5QA1El9R09wloAE60Ky87rWzD8uJNggYMb0oKvOJFoVo/lqno
	z5zE5ytQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tciXm-00000004cWe-1oAu;
	Tue, 28 Jan 2025 10:10:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tciXk-00000004cVh-2KrI
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 10:10:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciXj-0001nv-8S; Tue, 28 Jan 2025 11:10:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciXj-002HHK-0E;
	Tue, 28 Jan 2025 11:10:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciXj-0028hI-00;
	Tue, 28 Jan 2025 11:10:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20250127-fix-phytec-som-8mm-ddr-static-v1-1-ade507aeb4b7@pengutronix.de>
References: <20250127-fix-phytec-som-8mm-ddr-static-v1-1-ade507aeb4b7@pengutronix.de>
Message-Id: <173805900299.510075.4454391398997749327.b4-ty@pengutronix.de>
Date: Tue, 28 Jan 2025 11:10:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_021004_597192_E0223B92 
X-CRM114-Status: UNSURE (   6.34  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MM: Phytec i.MX8MM SoC: change ddr_fsp0_cfg
 to static struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Jan 2025 10:31:30 +0100, Stefan Kerkmann wrote:
> Otherwise the symbol can be defined multiple times when building a multi
> target barebox.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX8MM: Phytec i.MX8MM SoC: change ddr_fsp0_cfg to static struct
      https://git.pengutronix.de/cgit/barebox/commit/?id=9037818cb7fc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



