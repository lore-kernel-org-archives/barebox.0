Delivery-date: Fri, 13 Oct 2023 08:29:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrBfw-006k3n-FI
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 08:29:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrBfu-000296-I2
	for lore@pengutronix.de; Fri, 13 Oct 2023 08:29:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8xh5RIrJNNKDKSUOD+hD8OzveVKmIEQW9VLrXkfzgtk=; b=sSPwg3VjQfIVvzxxzA5QOWXQpS
	qZ2S9EK6yt8TUmp5Gb+/VqVW/WLabO6NSXardBi5ivYW/5hH8M0YITxr7l29y46iNcuwYa8Jfd35q
	L4FxPyw9PjQDnLDaeGeWqAwyllHKPHYJnXWZcUB6rk4rfdVL+gtZY9P+ISMG1NbcSuJbAe8MPM4r/
	3JOhDH1Hpwa1J5Xb22L0jQRx6BFksx5Wsc5Al0e/SxrBJvc6tq6GG+DAq4SkyIftLre67bRRINxBD
	mu2IqlG4sjuFLy9gfQl8zO75JHZIdNQOXBLOf2T8qHy26xt0l0GN2UtuyEXgOMumRHWZyvhwBLskc
	a6KIOcnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrBeM-002afN-1f;
	Fri, 13 Oct 2023 06:27:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrBeJ-002ael-0v
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 06:27:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBeH-0001xH-R5; Fri, 13 Oct 2023 08:27:49 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBeH-001Khx-Ep; Fri, 13 Oct 2023 08:27:49 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBeH-00EECS-Ce; Fri, 13 Oct 2023 08:27:49 +0200
Date: Fri, 13 Oct 2023 08:27:49 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231013062749.GK3359458@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
 <20231010143314.2031253-12-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010143314.2031253-12-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_232751_324944_E799A04A 
X-CRM114-Status: GOOD (  20.72  )
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

On Tue, Oct 10, 2023 at 04:32:59PM +0200, Marco Felsch wrote:
> Add dedicated configuration headers which guard the flexspi_* options
> like it is done for the HABV4 configuration block to be more
> user-friendly.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/mach/imx/flexspi-imx8mm-cfg.h | 10 ++++++++++
>  include/mach/imx/flexspi-imx8mp-cfg.h | 10 ++++++++++
>  2 files changed, 20 insertions(+)
>  create mode 100644 include/mach/imx/flexspi-imx8mm-cfg.h
>  create mode 100644 include/mach/imx/flexspi-imx8mp-cfg.h
> 
> diff --git a/include/mach/imx/flexspi-imx8mm-cfg.h b/include/mach/imx/flexspi-imx8mm-cfg.h
> new file mode 100644
> index 000000000000..f7f0310a57f4
> --- /dev/null
> +++ b/include/mach/imx/flexspi-imx8mm-cfg.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +/*
> + * This snippet can be included from a i.MX flash header configuration
> + * file for generating FlexSPI compatible images.
> + */
> +#if defined(CONFIG_SPI_NXP_FLEXSPI)
> +flexspi_ivtofs 0x1000
> +flexspi_fcfbofs 0x0
> +#endif

What's this #ifdef good for?

CONFIG_SPI_NXP_FLEXSPI enables the flexspi driver, but this is not
necessary to boot from it, right?

Sascha

> diff --git a/include/mach/imx/flexspi-imx8mp-cfg.h b/include/mach/imx/flexspi-imx8mp-cfg.h
> new file mode 100644
> index 000000000000..bbc061241748
> --- /dev/null
> +++ b/include/mach/imx/flexspi-imx8mp-cfg.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +/*
> + * This snippet can be included from a i.MX flash header configuration
> + * file for generating FlexSPI compatible images.
> + */
> +#if defined(CONFIG_SPI_NXP_FLEXSPI)
> +flexspi_ivtofs 0x0
> +flexspi_fcfbofs 0x400
> +#endif
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


