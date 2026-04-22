Delivery-date: Wed, 22 Apr 2026 08:53:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFRSu-00F0Rb-0J
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 08:53:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFRSt-0000U9-Gc
	for lore@pengutronix.de; Wed, 22 Apr 2026 08:53:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7dr+gJLLvnErMm+87zj7Msh92Y2i3BIBZsn5f3zxRM4=; b=nMiYUgMLUIJUIFmaT914EEgo8o
	IRchdhg/efUWWdVDr5pwBKoGAY/5LizreyRFCY/Zcg6gRXKFmZ+7jFch7dyunf594x2/rMiCrMc5Q
	ZV60zaa8U4+gfxSJMfR7J6j9+3ZHmPKLROp2OHNtiPd3HKSFl4cY76Sdje/sAfMbFPx4dO1leWvLm
	opxWWU6GZa0DJAsOsSVcSQxR2lxBVj92eCkytXWqYXNs6qnAHMW9gbcKYyNEbYpwPv8oLFYMJaP/j
	pK0wu9izKXiz3EaSkdpl4n6028hvks12mtLgDA4FHfPhFPtpQFiTYW6dr1LvPGtoC/51xLST2B7Uy
	9PPZzYKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFRSH-00000009gYI-1H6x;
	Wed, 22 Apr 2026 06:53:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFRSD-00000009gXS-3y5n
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 06:53:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFRSA-0000LS-EI; Wed, 22 Apr 2026 08:52:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFRSA-006ciS-0p;
	Wed, 22 Apr 2026 08:52:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFRSA-0000000AIs0-0kQs;
	Wed, 22 Apr 2026 08:52:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260421-v2026-02-0-topic-sconfig_console-v8-0-261cdfc6b0da@pengutronix.de>
References: <20260421-v2026-02-0-topic-sconfig_console-v8-0-261cdfc6b0da@pengutronix.de>
Message-Id: <177684077416.2455614.11255426004257901845.b4-ty@pengutronix.de>
Date: Wed, 22 Apr 2026 08:52:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_235257_997020_BD84AD89 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v8 0/7] Add helper for security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 Apr 2026 12:29:29 +0200, Fabian Pflug wrote:
> This series adds helper functions to the security policy framework to
> do additional work based on the selected policy.
> Like adding the policy name to the commandline and configuring pinmux
> based on the selected policy.
> 
> If this series is to be applied after Ahamad's bootm change series, then
> the block to change the commandline has to be moved up to roughly line
> 720 into the function bootm_boot_prep, where all the other
> bootm_data->provide_*** checks are, so that the previous context remains
> the same.
> 
> [...]

Applied, thanks!

[1/7] of: add of_property_write_string_array()
      https://git.pengutronix.de/cgit/barebox/commit/?id=025448cde7f9 (link may not be stable)
[2/7] security: policy: sanity check parameters
      https://git.pengutronix.de/cgit/barebox/commit/?id=cb3f0bb0f620 (link may not be stable)
[3/7] security: policy: remove global active_policy var
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f9e93cc8fa9 (link may not be stable)
[4/7] security: policy: add notifier chain for name change
      https://git.pengutronix.de/cgit/barebox/commit/?id=9f7e1db6b931 (link may not be stable)
[5/7] common: bootm: add policy to commandline
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b476a8d8146 (link may not be stable)
[6/7] drivers: pinctrl: configure pinctrl based on policy name
      https://git.pengutronix.de/cgit/barebox/commit/?id=646ce6f81faa (link may not be stable)
[7/7] security: kernel_pinctrl: fixup pinctrl in kernel dts
      https://git.pengutronix.de/cgit/barebox/commit/?id=eba69cabe145 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



