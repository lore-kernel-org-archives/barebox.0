Delivery-date: Fri, 14 Jun 2024 08:33:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI0VC-005mt9-3C
	for lore@lore.pengutronix.de;
	Fri, 14 Jun 2024 08:33:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sI0VC-0002R2-FX
	for lore@pengutronix.de; Fri, 14 Jun 2024 08:33:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jcx6uCHQPkdcH2lFx8xxq4ey7u5HORPGTKJvKXQJ1Ao=; b=tRDzjbkD4U95YiwW1zgMnxt6Hp
	vrsefPi5BFSfw3nQMFzi7JOTgVevmMLpHJbJT91bgmN8wM+cJBcfu63NCggaHQoudbxHNcVgb+bdc
	JDexXIc0rK0pCIDcm3JhEs/FtSc1jhM0LtCbo2XkFmM7Xqfll0ns+hoK1B0T0INDBoyXgDd0KEsUs
	rXEohkNXDFNMhFWvBWaP30fakuqgnVvtl6AQ25zXeDrVDoiYH4FbaNbafiy0RyS5zsv7UMFalhZQj
	JGx5xhqaM2EjFxjDn2fSj0KFxk7KU5lwE94epa6FBQByBJG4Hgt5O79VPWiR/2qpTLUXwto+GCBm3
	XejgfHWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI0Un-00000001dgr-1gA5;
	Fri, 14 Jun 2024 06:33:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI0Ul-00000001dfb-0gRR
	for barebox@lists.infradead.org;
	Fri, 14 Jun 2024 06:33:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI0Uk-0002K0-0w; Fri, 14 Jun 2024 08:33:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI0Uj-002CiK-Kh; Fri, 14 Jun 2024 08:33:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sI0Uj-00CBXj-1s;
	Fri, 14 Jun 2024 08:33:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20240613135338.21202-1-jmaselbas@zdiv.net>
References: <20240613135338.21202-1-jmaselbas@zdiv.net>
Message-Id: <171834678557.2904252.10837318799340418957.b4-ty@pengutronix.de>
Date: Fri, 14 Jun 2024 08:33:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_233307_258288_4A01F571 
X-CRM114-Status: UNSURE (   5.63  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: core: clarify comment on MMC version detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Jun 2024 15:53:38 +0200, Jules Maselbas wrote:
> The MMC version is read from the reserved bits 125:122 in the CSD register,
> theses bits are specified as SPEC_VERS by JEDEC in the eMMC standard JESD84.
> 
> 

Applied, thanks!

[1/1] mci: core: clarify comment on MMC version detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=d77277c301e7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



