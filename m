Delivery-date: Mon, 25 Nov 2024 11:19:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWBX-000A56-2j
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 11:19:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWBX-0007wB-Nu
	for lore@pengutronix.de; Mon, 25 Nov 2024 11:19:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6yVtBz82K53N95PEz0PTO9VIcPavkZqG+sDefk7nxaU=; b=FXcYrK77TystTkfBgFWCpDLdcS
	HenL6g79AXugriJpvlshdjM3Jeig3huCwJgKyQCb5zYkOTdxvRGUZ22gWWemUz6+Z1gKNa4xBE5qD
	eScWIGiWP60dSqw8IUAzORZ0gVcS0Ce70qfAMHXtc5yTxx/WcHbDUGRWWYRhzdmnNE7zAMPX2dG74
	ciD6xCfNiqtFowIyarQbIN21I92H3679rQoKWvsUEyxdMhz4H9TkKyTsAZsaCTVrSeKkv0TbSH2W9
	qPgtngBOQyTAHKkjWYO3MhQx2HlYtTygejKVXfopCpuz68lO3kvYakBDeVib1ekCSOYcv37Zo1Mq5
	h7C4rrjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWB9-00000007jbn-0lvc;
	Mon, 25 Nov 2024 10:18:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFW1Z-00000007gQf-1zrW
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 10:08:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tFW1X-00060l-Ol; Mon, 25 Nov 2024 11:08:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tFW1W-0003jT-2b;
	Mon, 25 Nov 2024 11:08:55 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tFW1X-00EdI8-1a;
	Mon, 25 Nov 2024 11:08:55 +0100
Date: Mon, 25 Nov 2024 11:08:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20241125100855.axxxbcgleefxaouo@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
 <20241115195747.997164-10-m.felsch@pengutronix.de>
 <Z0RCYFRw50l0E2qU@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z0RCYFRw50l0E2qU@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_020857_520949_23F1CB16 
X-CRM114-Status: GOOD (  31.26  )
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
Subject: Re: [PATCH 10/12] spi: add support for spi_controller::set_cs_timing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-11-25, Sascha Hauer wrote:
> On Fri, Nov 15, 2024 at 08:57:45PM +0100, Marco Felsch wrote:
> > Import the spi_controller set_cs_timing() hook to make it easier to port
> > code from the Linux.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  include/spi/spi.h | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/include/spi/spi.h b/include/spi/spi.h
> > index 8354b7d8baa6..092eacd4a8e1 100644
> > --- a/include/spi/spi.h
> > +++ b/include/spi/spi.h
> > @@ -179,6 +179,9 @@ static inline void spi_set_ctldata(struct spi_device *spi, void *state)
> >   *	must fail if an unrecognized or unsupported mode is requested.
> >   *	It's always safe to call this unless transfers are pending on
> >   *	the device whose settings are being modified.
> > + * @set_cs_timing: optional hook for SPI devices to request SPI master
> > + * controller for configuring specific CS setup time, hold time and inactive
> > + * delay interms of clock counts
> >   * @transfer: adds a message to the controller's transfer queue.
> >   * @cleanup: frees controller-specific state
> >   * @cs_gpiods: Array of GPIO descriptors to use as chip select lines; one per CS
> > @@ -246,6 +249,16 @@ struct spi_controller {
> >  	/* setup mode and clock, etc (spi driver may call many times) */
> >  	int			(*setup)(struct spi_device *spi);
> >  
> > +	/*
> > +	 * set_cs_timing() method is for SPI controllers that supports
> > +	 * configuring CS timing.
> > +	 *
> > +	 * This hook allows SPI client drivers to request SPI controllers
> > +	 * to configure specific CS timing through spi_set_cs_timing() after
> > +	 * spi_setup().
> > +	 */
> > +	int (*set_cs_timing)(struct spi_device *spi);
> 
> You add this hook here, but it's not called from the core code changes
> in the next commit and it's not implemented in the new driver you
> introduce with this series. Is there something missing in this series?

It's checked by spi_set_cs(). I wanted to be as close as possible to the
Linux version but can drop this hook and adapt the check. Another option
is to add the Linux spi_set_cs_timing() to the barebox
spi_register_controller().

Regards,
  Marco


> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


