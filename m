Delivery-date: Fri, 18 Oct 2024 10:48:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ieT-005osq-2X
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 10:48:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1ieT-0001Sd-5g
	for lore@pengutronix.de; Fri, 18 Oct 2024 10:48:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Au7RA/ILMyugusyidQ3HBSou6AC+OEtnaJWWRcM6E8=; b=mcLuYATiFCPO4/4UiLHVUN5lMC
	N+wzGQK4wJRo1BU42p/P/7mFFWfjtFE7NgS0mO0Skf3SDiqgi5iAJMR6HADkEh0izPqIA6k7L/8Tq
	rvljWkTigUN/Vgla53eYQhq3Kt1xaY10vJeDm+Ux9Ihws+xcF6XdT8J0FTdYpv4w94W5JozP9rIiC
	hxzJzCp1ijQDbctxeXnYhK+vykti/E6nbFvsgXsaBQjSHNrwROmGJSE6nPc1qldQUdctgTupNGvgg
	XefkbGHDAYf2PGH6a7kroAEOpBwR6Oig1nKwcdXiqGW4KLLS1XKePMvegYWj4WipggeejSG5aRj5/
	FO+SxVug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1idy-000000002Lj-1djo;
	Fri, 18 Oct 2024 08:47:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iW8-0000000Hadt-1SRw
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 08:39:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iW5-0000fi-OA; Fri, 18 Oct 2024 10:39:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iW5-000BJw-1i;
	Fri, 18 Oct 2024 10:39:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iW5-00CH20-1Y;
	Fri, 18 Oct 2024 10:39:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
Message-Id: <172924076548.2925225.3960642095296920680.b4-ty@pengutronix.de>
Date: Fri, 18 Oct 2024 10:39:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_013928_419138_418AEB4E 
X-CRM114-Status: UNSURE (   9.48  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] rockchip: add RK808 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 15 Oct 2024 13:10:57 +0200, Sascha Hauer wrote:
> This series adds support for the RK808 PMIC found on several Rockchip
> boards. Unlike the earlier versions of this PMIC this one comes with
> SPI support. As we do not have a Rockchip SPI driver yet, this is added
> in this series as well.
> 
> 

Applied, thanks!

[1/7] spi: add rockchip spi controller support
      https://git.pengutronix.de/cgit/barebox/commit/?id=c4598e66e92f (link may not be stable)
[2/7] mfd: mx13xxx: drop unnecessary ifdefs
      https://git.pengutronix.de/cgit/barebox/commit/?id=512cfb4b3805 (link may not be stable)
[3/7] mfd: rk808: factor out common probe function
      https://git.pengutronix.de/cgit/barebox/commit/?id=87a9ec846b0a (link may not be stable)
[4/7] mfd: rk808: update header file from kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=f72a75d550a0 (link may not be stable)
[5/7] mfd: rk808: add support for RK806
      https://git.pengutronix.de/cgit/barebox/commit/?id=e26649b90703 (link may not be stable)
[6/7] regulator: add regulator_register()
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d724387bc68 (link may not be stable)
[7/7] regulator: rk808: update from kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=50d47557efb9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



