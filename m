Delivery-date: Mon, 13 Apr 2026 09:03:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBKn-00Bd0s-2N
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 09:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCBKn-0000N0-5y
	for lore@pengutronix.de; Mon, 13 Apr 2026 09:03:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3BmlaNqU967YOsqN2Y1JemGqXU1voJprqXNvbcp4I2I=; b=DIqaDc8jsO/ABzPzkY3NkX35pT
	xdjlMnHii4n2at1VRhRMUK322dPtbuqyYhCOlzXz0FHBLl+88pUxdquv3lgZuSCCoZqpTPwG6CF4y
	ueJmp2/dDF7J7grydVhBhkOR8FGsKP9gxEAs6X1dw4veotu+ZWk3KAO2jYahydEcZTapq0er79bcI
	a3Pw5Jznm0t5TrcUlM+KOtMV1c8WItJjupBlFraji+wYo4z5uT8hAtuUzwYH/69DEVavDG/2aHgHN
	yYOdeWvy5ICty7MWv08mUB8KG7QK1wO+xNtN4Ge3eJcaAQNDfDkrDpooWAp9OWMQxCUirJQ3Vci3g
	Vo6frEpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBKC-0000000F6oq-0Hvk;
	Mon, 13 Apr 2026 07:03:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBK8-0000000F6oF-2ZzT
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 07:03:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBK5-0000I8-A2; Mon, 13 Apr 2026 09:03:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBK5-0057sy-0P;
	Mon, 13 Apr 2026 09:03:05 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCBK5-0000000Eeup-09yZ;
	Mon, 13 Apr 2026 09:03:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260409-socfpga-agilex5-sdhci-v1-1-d1753ac5defa@pengutronix.de>
References: <20260409-socfpga-agilex5-sdhci-v1-1-d1753ac5defa@pengutronix.de>
Message-Id: <177606378502.3493864.18345748517262038824.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 09:03:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_000308_658289_E96D8841 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: cadence: fix device tree override of host_caps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 09 Apr 2026 16:15:09 +0200, Michael Tretter wrote:
> The host_caps setting in the device tree shall override the default
> host_caps set by the driver to allow board specific overrides.
> 
> Move the configuration of the driver default host_caps before the call
> to mci_of_parse().
> 
> mci_of_parse() still has to be called in the middle of the mci
> configuration, because f_max may be set in the device tree, but is used
> to calculate f_min.
> 
> [...]

Applied, thanks!

[1/1] mci: cadence: fix device tree override of host_caps
      https://git.pengutronix.de/cgit/barebox/commit/?id=dc5f6b53a25c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



