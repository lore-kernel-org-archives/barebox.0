Delivery-date: Fri, 12 Jun 2026 14:51:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY1Lg-0053xq-22
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 14:51:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY1Lf-0004UQ-Ui
	for lore@pengutronix.de; Fri, 12 Jun 2026 14:51:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JpCB5bi5LWEB+ckhm3eWBC4CuU7f9ET78Tzdt5uxeKg=; b=XGpkwexO64Qy6cY02u5f9Bfmm2
	bUULYI7nDthcnsVaivcw6oezLKcLm+j3xyDh8+J/TBkWfu24kEMeOne3kXU8QWeNFZaIH5FsojBVo
	MW0vpeshaPefUlzwu/8qV4z3DWsJ5RCImVa/YOSBRsdGaXFqEs3r0laXyLJeZOk7WCN7IBHChIdaV
	i9syTtp03KSzjQ4F/1ofUloiCr5YNusHFFZfUo1EIsptns1VmAFb69//nvOs4a861sWEz9rfiekQn
	pH94LU5H7S5ZGzu/94/5IsatD2LoFCzMOJ9wpUVaQEQBBDjadyxhCto06IkfIIeRg28PUGxLT43xF
	EpiEmI7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY1KD-0000000Au9D-0sQM;
	Fri, 12 Jun 2026 12:49:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY1K8-0000000Au8T-1oqQ
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 12:49:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1K6-00043O-On; Fri, 12 Jun 2026 14:49:22 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1K6-002Ney-2J;
	Fri, 12 Jun 2026 14:49:22 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1K6-0000000Gl10-2dDJ;
	Fri, 12 Jun 2026 14:49:22 +0200
Date: Fri, 12 Jun 2026 14:49:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <v35rnbiknyzjbppjppthjpce4z76dvof3yw5bh3ipvtoncytrv@zyaikieoeb62>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
 <20260612055930.635833-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612055930.635833-2-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_054924_475108_6C12F679 
X-CRM114-Status: GOOD (  20.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 02/10] serial: atmel: add lan9696 (Microchip LAN969X)
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-06-12, Oleksij Rempel wrote:
> Allow building the Atmel USART driver on Microchip LAN969X (ARCH_MICROCHIP)
> in addition to ARCH_AT91, and match the new "microchip,lan9691-usart"
> compatible alongside the existing AT91 variants.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/serial/Kconfig | 10 +++++++---
>  drivers/serial/atmel.c |  3 ++-
>  2 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 6ac1d94526c2..15cbdafcffcc 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -90,9 +90,13 @@ config DRIVER_SERIAL_NS16550_OMAP_TTYS
>  	  used.
>  
>  config DRIVER_SERIAL_ATMEL
> -	depends on ARCH_AT91
> -	default y
> -	bool "Atmel serial driver"
> +	bool "Atmel USART support"
> +	depends on ARCH_AT91 || ARCH_MICROCHIP
> +	default y if ARCH_AT91

Just keep 'default y'?

Regards,
  Marco


> +	help
> +	  This enables the driver for the on-chip UARTs of Atmel/Microchip
> +	  AT91, SAMA5, and LAN969X SoC families. The driver supports device
> +	  tree configuration and clock framework integration.
>  
>  config DRIVER_SERIAL_NS16550_PCI
>  	depends on DRIVER_SERIAL_NS16550
> diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
> index 2dcb458fbd30..13747ef8201b 100644
> --- a/drivers/serial/atmel.c
> +++ b/drivers/serial/atmel.c
> @@ -442,8 +442,9 @@ static int atmel_serial_probe(struct device *dev)
>  }
>  
>  static const struct of_device_id __maybe_unused atmel_serial_dt_ids[] = {
> -	{ .compatible = "atmel,at91rm9200-usart" },
> +	{ .compatible = "microchip,lan9691-usart" },
>  	{ .compatible = "atmel,at91sam9260-usart" },
> +	{ .compatible = "atmel,at91rm9200-usart" },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, atmel_serial_dt_ids);
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


