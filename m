Delivery-date: Mon, 16 Oct 2023 07:46:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsGR8-00AEFA-8O
	for lore@lore.pengutronix.de; Mon, 16 Oct 2023 07:46:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsGR6-0006Lo-Vz
	for lore@pengutronix.de; Mon, 16 Oct 2023 07:46:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+2kEG/75vjO5R2U1Bo9zzJE0XBEVhL1q86KlrCCva7w=; b=LYQo7+mZCe6V1HM+qoNuxQQYKJ
	6I3DNLuAmB9AVIEPRuLK4wWVD8XqaxXLgyYS/GKBRML01KDUIbUa3NIQwC/plu51hBD2LSdYv18kE
	G30z/Op7zbyYwpnL9ol1qwJXUjNIvCKNDCJNfCcZOF0fpz4eYwpTSG7iyW2lyWq9kbErR0PUuvV0m
	Qoe2JzzIyOvG5fSQpn1C6DFTTiyc09V7WksDALd/vHlk02WwOH4k9WgeKoI7kSh+190K1xRMDU1uh
	lFMr7t0Oo9KdOnvLCpMpOSEInTUwT2H1fzcnRtvi2ogSotqIhri4C4UERz9Qo30kBcmU31CDsptiz
	UTCcUgWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsGPS-008QAC-1h;
	Mon, 16 Oct 2023 05:44:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsGPO-008Q8m-1e
	for barebox@lists.infradead.org;
	Mon, 16 Oct 2023 05:44:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsGPJ-00063e-SP; Mon, 16 Oct 2023 07:44:49 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsGPJ-0020kM-Ft; Mon, 16 Oct 2023 07:44:49 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsGPJ-00EgMK-De; Mon, 16 Oct 2023 07:44:49 +0200
Date: Mon, 16 Oct 2023 07:44:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231016054449.xiwwqwrulhv5tfr7@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
 <20231010143314.2031253-12-m.felsch@pengutronix.de>
 <20231013062749.GK3359458@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013062749.GK3359458@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231015_224454_551048_AA72B7AA 
X-CRM114-Status: GOOD (  23.70  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/26] ARM: i.MX8M: add flexspi-imx8m{m,p}-cfg.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-10-13, Sascha Hauer wrote:
> On Tue, Oct 10, 2023 at 04:32:59PM +0200, Marco Felsch wrote:
> > Add dedicated configuration headers which guard the flexspi_* options
> > like it is done for the HABV4 configuration block to be more
> > user-friendly.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  include/mach/imx/flexspi-imx8mm-cfg.h | 10 ++++++++++
> >  include/mach/imx/flexspi-imx8mp-cfg.h | 10 ++++++++++
> >  2 files changed, 20 insertions(+)
> >  create mode 100644 include/mach/imx/flexspi-imx8mm-cfg.h
> >  create mode 100644 include/mach/imx/flexspi-imx8mp-cfg.h
> > 
> > diff --git a/include/mach/imx/flexspi-imx8mm-cfg.h b/include/mach/imx/flexspi-imx8mm-cfg.h
> > new file mode 100644
> > index 000000000000..f7f0310a57f4
> > --- /dev/null
> > +++ b/include/mach/imx/flexspi-imx8mm-cfg.h
> > @@ -0,0 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +
> > +/*
> > + * This snippet can be included from a i.MX flash header configuration
> > + * file for generating FlexSPI compatible images.
> > + */
> > +#if defined(CONFIG_SPI_NXP_FLEXSPI)
> > +flexspi_ivtofs 0x1000
> > +flexspi_fcfbofs 0x0
> > +#endif
> 
> What's this #ifdef good for?
> 
> CONFIG_SPI_NXP_FLEXSPI enables the flexspi driver, but this is not
> necessary to boot from it, right?

The flexspi_* options are used to decide if the barebox image should be
flexspi compatible. It also influence the HAB CSF generation since it
adds a 2nd CSF slot depending if enabled.

We can drop this guard as you already NACKed to use the
CONFIG_SPI_NXP_FLEXSPI for HAB decisions.

Regards,
  Marco

> 
> Sascha
> 
> > diff --git a/include/mach/imx/flexspi-imx8mp-cfg.h b/include/mach/imx/flexspi-imx8mp-cfg.h
> > new file mode 100644
> > index 000000000000..bbc061241748
> > --- /dev/null
> > +++ b/include/mach/imx/flexspi-imx8mp-cfg.h
> > @@ -0,0 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +
> > +/*
> > + * This snippet can be included from a i.MX flash header configuration
> > + * file for generating FlexSPI compatible images.
> > + */
> > +#if defined(CONFIG_SPI_NXP_FLEXSPI)
> > +flexspi_ivtofs 0x0
> > +flexspi_fcfbofs 0x400
> > +#endif
> > -- 
> > 2.39.2
> > 
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


