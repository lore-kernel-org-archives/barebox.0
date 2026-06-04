Delivery-date: Thu, 04 Jun 2026 09:03:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV272-002C3e-2e
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 09:03:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV272-0001iQ-6q
	for lore@pengutronix.de; Thu, 04 Jun 2026 09:03:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9K57kbvi8jEcYRM6XgUdhzEOgBZfPqHkG/ABPpQvc/M=; b=vv8QOMRJupUrmgAcyBjxn7BQE2
	SuB8rxIG+yqWRChFGqfRA+/HRSSvWBSP6sRMoLKk1C9q5r+LCrV+2R26GQPCqVhgOclQyuZhFivg+
	hBD5rEAUJTZSC2iL+VJsXvzIPR1K8OHz51kc3nvrwsMwzK9BhmW6UjFKchmI2Ui2t4YwvpbR+J3MO
	FdOXz59ECwFG5Toq9IqR6nEwjY0cpTITCwIG34DGR/sTnpRlR90hGYR4eniEY+md29b9alCXyBGFn
	CIFU0Bb9njst3Z/Hb0Fb43L4sc7mnVMcPNnLSODwsAV8poxkPKBo5C5T439xViTGOF0thsjQQDXsU
	OFEBxyCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV25d-0000000GGN0-3dFZ;
	Thu, 04 Jun 2026 07:02:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV25a-0000000GGMd-3m2I
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 07:02:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wV25Y-0001HE-Q8; Thu, 04 Jun 2026 09:02:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wV25Y-0012Da-1X;
	Thu, 04 Jun 2026 09:02:00 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wV25Y-00000009LrM-1lRv;
	Thu, 04 Jun 2026 09:02:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
References: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
Message-Id: <178055652041.2228900.5283731050869480552.b4-ty@pengutronix.de>
Date: Thu, 04 Jun 2026 09:02:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_000202_962083_0FB8CBC9 
X-CRM114-Status: UNSURE (   7.02  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] ARM: i.MX6UL: initialize snvs peripheral
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Jun 2026 15:33:41 +0200, Stefan Kerkmann wrote:
> This series adds snvs peripheral initialization for the i.MX6UL soc
> which is necessary to write values into the snvs lpgpr register.
> 
> To make the code more consistent across the i.MX6/7/8M families some
> smaller cleanups are included as well.
> 
> 
> [...]

Applied, thanks!

[1/4] nvmem: snvs_lpgpr: remove unnecessary cfg->name assignment
      https://git.pengutronix.de/cgit/barebox/commit/?id=d37ceab82e82 (link may not be stable)
[2/4] ARM: i.MX8M/i.MX7: initialize SNVS glitch detection for all families
      https://git.pengutronix.de/cgit/barebox/commit/?id=f0eaecb91875 (link may not be stable)
[3/4] ARM: i.MX7: snvs: rename imx7_snvs_init -> imx7_setup_snvs
      https://git.pengutronix.de/cgit/barebox/commit/?id=536ed336c59f (link may not be stable)
[4/4] ARM: i.MX6UL: initialize SNVS
      https://git.pengutronix.de/cgit/barebox/commit/?id=7c4ecef454dd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



