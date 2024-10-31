Delivery-date: Thu, 31 Oct 2024 12:26:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6TK7-0034tX-1b
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 12:26:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6TK8-0001Zl-5l
	for lore@pengutronix.de; Thu, 31 Oct 2024 12:26:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zgx2MELCE2TDoGQvqtwwaydA8aVlsNJJmqmg4ipy3H4=; b=uh5+vXKcfNSQ0st+oh/qU+OJM8
	nxGOQ7L5f7hZCnmZazBgXYJbAs3eCgpEF3KC7+rSGWkvWi3CmKNuH4+MVaGszWV3lDOBFIp+6p+gF
	VkJsVQ7JnpQzs7EeOyUtXE8oKQ0zxKAbM5E/F/Ml6AWI9MEZqHobQYE0nRKYhJqWV6tyw/LphodE0
	eF8WJtOdz7YHRJx2RVCGvYQsnLI6fVbQVNu0wVd9LebfUlsEgnmB4Mg+3q1DgGvoqHwuynYYNBoEO
	LxlF5m0Or2b88JPv8aGy2r0WSzQjq0w75kCaccaPvrCNt4YtNctcmrOcU9MDWwMG1pTq9h6LBmrcP
	vutbAIOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6TJd-00000003OFl-3zhn;
	Thu, 31 Oct 2024 11:26:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6TJa-00000003OFC-2qrT
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 11:26:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t6TJY-0001Su-08; Thu, 31 Oct 2024 12:26:08 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t6TJX-001LdT-2d;
	Thu, 31 Oct 2024 12:26:07 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t6TJX-006Cjo-2N;
	Thu, 31 Oct 2024 12:26:07 +0100
Date: Thu, 31 Oct 2024 12:26:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZyNpT85j83rq96Y3@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-1-e276b4b59603@pengutronix.de>
 <CAP1tNvQ=o3UnO8dHxuOn8MmEfvf9q3jUU6kFGWM_R-BEFQq4hw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvQ=o3UnO8dHxuOn8MmEfvf9q3jUU6kFGWM_R-BEFQq4hw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_042610_744851_02DD782B 
X-CRM114-Status: GOOD (  19.72  )
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
Subject: Re: [PATCH 1/7] spi: add rockchip spi controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Oct 31, 2024 at 09:05:59AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> вт, 15 окт. 2024 г. в 14:21, Sascha Hauer <s.hauer@pengutronix.de>:
> >
> > This adds support for the SPI controller found on many Rockchip SoCs.
> > The driver is based on the corresponding Linux driver as of
> > Linux-6.12-rc1.
> ...
> > diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> > index 68a8c4e675..f9aefdfe45 100644
> > --- a/drivers/spi/Makefile
> > +++ b/drivers/spi/Makefile
> > @@ -17,3 +17,4 @@ obj-$(CONFIG_SPI_ZYNQ_QSPI) += zynq_qspi.o
> >  obj-$(CONFIG_SPI_NXP_FLEXSPI) += spi-nxp-fspi.o
> >  obj-$(CONFIG_DRIVER_SPI_STM32) += stm32_spi.o
> >  obj-$(CONFIG_SPI_SIFIVE) += spi-sifive.o
> > +obj-y += spi-rockchip.o
> 
> Why do you enable the driver without conditions?
> Maybe you need a KConfig symbol here?

Part of my "I am to lazy now to add proper Kconfig/Makefile entries now
and will do it later" attitude. Seems I forgot. Fixed now, thanks for
noting.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


