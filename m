Delivery-date: Thu, 16 May 2024 07:57:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7U7q-00Gqkn-1r
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 07:57:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7U7o-0004C4-UJ
	for lore@pengutronix.de; Thu, 16 May 2024 07:57:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FdilfBIDufDsqqhS8VrzjHe/60GcG7zTsGpzQML4Wqg=; b=lLuSYCUXmdMLtl5+jNrNZYFcp6
	gRQGhvMNakBFVWc8fd0eVMYltEWnkGmG+Fi2O2iE4+GxDcXVDryPzR756SaoRfB4AxEF4qYRcqmoB
	hYEy9a7daiMbVbCYc6e3ABHTe4qr65NEjx0SiM0JZxAwpIPFnffU21+YaFOW/0wHKPXIA5H6VB5kR
	olAExjgx7rR7fTpDIQdaRrtbR2DJOsaqCcnroJtQBgSBOVC9zaYl0n96s/ro/ObWmuQwfsW0XoSrE
	5P4ffQiZCir6CirSB7kUUPZUcaaqVgbzOpG4v/fvfFWdYy5NiehS0rIU3sf7leDorryHRtj7nqmVq
	SHaf261A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7U7R-00000003oMY-1g5U;
	Thu, 16 May 2024 05:57:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7U7O-00000003oLt-0Aev
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 05:57:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U7M-00044O-Tl; Thu, 16 May 2024 07:57:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U7M-001exc-HM; Thu, 16 May 2024 07:57:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7U7M-00BRF4-1X;
	Thu, 16 May 2024 07:57:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
In-Reply-To: <20240515131607.393479-1-rhi@pengutronix.de>
References: <20240515131607.393479-1-rhi@pengutronix.de>
Message-Id: <171583904847.2726313.4471850677431993129.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 07:57:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_225730_324593_6CF45D88 
X-CRM114-Status: UNSURE (   8.83  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: GoMe e143_01: fix default state priorities
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 15:16:08 +0200, Roland Hieber wrote:
> During the initial installation we can forgo writing an initial state
> variable set to the eMMC if it is zeroed, and if the default values
> priorities are set correctly. Since only the first rootfs partition is
> populated during the install process, it should be preferred over the
> second rootfs.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: GoMe e143_01: fix default state priorities
      https://git.pengutronix.de/cgit/barebox/commit/?id=a657866d377b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



