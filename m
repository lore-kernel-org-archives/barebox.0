Delivery-date: Tue, 01 Apr 2025 10:22:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzWt5-006uxX-1U
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 10:22:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzWt4-0004iU-SX
	for lore@pengutronix.de; Tue, 01 Apr 2025 10:22:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7+47envajIRiiYvyosrJF9LSeb8OW0O/Gv8uJSG0YQ0=; b=YT20OpNzDnD0PzbNhlFADYyaw6
	hRqDFkHDE+nm8X3H52P92vfPQMVfF3MInIiEVKi3Ddpttwj0OcxGLveN+iO7woo8xWNJXyzE2TCLu
	MJWAmfMG/gY9vcWVhNZ/gKpYfVRR6wrK311Bcwt4WSpI2WqMn/p0BpKZ71IUC5lxzbKWhq+h7YG0m
	zO4gMOl7SdBXwUa4SFXCSbFxs+MAxlkb4IsquKmqJukReBkYyxsJh66btag73JQxNolMxpC/ZrWGn
	MZZ7GmYA7ailLDwc1jk3Kyb8vq9YQUSpL7jZV5KftGWLF2z6J0wrwn57BZxJZZ+zBLp7k7O92PHJ/
	DAaDkEcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzWsX-00000002JVd-0sUf;
	Tue, 01 Apr 2025 08:21:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzWsU-00000002JUY-2RXA
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 08:21:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tzWsS-0004ZW-Mo; Tue, 01 Apr 2025 10:21:44 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzWsR-002jUw-21;
	Tue, 01 Apr 2025 10:21:43 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzWsR-00B3Ni-1j;
	Tue, 01 Apr 2025 10:21:43 +0200
Date: Tue, 1 Apr 2025 10:21:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Z-uiF0fi1sQqUYvv@pengutronix.de>
References: <20250331122918.564304-1-o.rempel@pengutronix.de>
 <Z-ueuhmDq-gYUmcQ@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Z-ueuhmDq-gYUmcQ@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_012146_620668_D6D2C2E7 
X-CRM114-Status: GOOD (  22.03  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] spi: add STM32F7 QSPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 01, 2025 at 10:07:22AM +0200, Sascha Hauer wrote:
> On Mon, Mar 31, 2025 at 02:29:18PM +0200, Oleksij Rempel wrote:
> > From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > 
> > Introduce support for the STM32F7 QSPI controller, compatible with
> > "st,stm32f469-qspi".
> > 
> > Validated on STM32MP133-based MECT1S r1 board, which includes an
> > F7-compatible QSPI peripheral
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  drivers/spi/Kconfig          |   8 +
> >  drivers/spi/Makefile         |   1 +
> >  drivers/spi/spi-stm32-qspi.c | 496 +++++++++++++++++++++++++++++++++++
> >  3 files changed, 505 insertions(+)
> >  create mode 100644 drivers/spi/spi-stm32-qspi.c
> > 
> > diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> > index aebfe30a1343..d6e8bea13c9c 100644
> > --- a/drivers/spi/Kconfig
> > +++ b/drivers/spi/Kconfig
> > @@ -114,6 +114,14 @@ config SPI_ZYNQ_QSPI
> >  	  This enables support for the Zynq Quad SPI controller in master mode.
> >  	  This controller only supports SPI memory interface.
> >  
> > +config STM32_QSPI
> > +	bool "STM32F7 QSPI driver"
> > +	depends on ARCH_STM32
> 
> Shall we add a || COMPILE_TEST here?

Sounds good, will add it in the next version.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


