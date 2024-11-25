Delivery-date: Mon, 25 Nov 2024 10:19:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFVG2-00090o-0c
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 10:19:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFVG2-0000Ew-3e
	for lore@pengutronix.de; Mon, 25 Nov 2024 10:19:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jVXdlHcHS3GfozrZJ7FE1Qbg25nBaXQa8t7BQIcaomE=; b=UbgxGibhP5ar0zIyylm+Yk/2Bs
	NokFN59bQLwDhD9FrgE+m9gCwG8PLS74889pi+vdWm32/PPKbfMk139mfkV40/fe48Hc+PVOM9HIX
	bs718P0k3TPs9Mu7lscYfT3agT9kKOOIVlQ+hblJvYPZci7RjCI6Zal8/k0B6NHq6ttJJAAEMVlIN
	ozXhVU8xuoAHmSkMgyXxRelvZXa3owYf9yLgSUCMMDtLVws27UlmD+2tr6eyR3dN8OZzRvO2LI/Ro
	UgT/Dx6S8T44QWVD9m9wudnj0+ykfPDyIcNidCEGEtwxKVDPrf0v28JL+Pui4ZVWWyGNMBYR8CXgS
	6USPfazw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFVFa-00000007XPa-3RUm;
	Mon, 25 Nov 2024 09:19:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFVFU-00000007XO8-0xLa
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 09:19:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tFVFS-00008v-VN; Mon, 25 Nov 2024 10:19:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tFVFS-0003UG-03;
	Mon, 25 Nov 2024 10:19:14 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tFVFS-00EcAS-2G;
	Mon, 25 Nov 2024 10:19:14 +0100
Date: Mon, 25 Nov 2024 10:19:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0RBEioJ_pm7K95U@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
 <20241115195747.997164-6-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241115195747.997164-6-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_011916_268295_68B81340 
X-CRM114-Status: GOOD (  22.09  )
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
Subject: Re: [PATCH 06/12] spi: add support to handle cs-gpios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 15, 2024 at 08:57:41PM +0100, Marco Felsch wrote:
> At the moment all drivers have to parse the cs-gpios on their own and
> have to implement the mapping. By this commit we add the support to
> handle this within the core and if there is a valid CS GPIO for a device
> we assign it accordingly.
> 

...

>  	 * likely need more hooks for more protocol options affecting how
> @@ -156,6 +158,9 @@ static inline void spi_set_ctldata(struct spi_device *spi, void *state)
>   *	the device whose settings are being modified.
>   * @transfer: adds a message to the controller's transfer queue.
>   * @cleanup: frees controller-specific state
> + * @cs_gpiods: Array of GPIO descriptors to use as chip select lines; one per CS
> + *	number. Any individual value may be NULL for CS lines that
> + *	are not GPIOs (driven by the SPI controller itself).
>   * @list: link with the global spi_controller list
>   *
>   * Each SPI controller can communicate with one or more @spi_device
> @@ -233,6 +238,10 @@ struct spi_controller {
>  	/* called on release() to free memory provided by spi_controller */
>  	void			(*cleanup)(struct spi_device *spi);
>  
> +	/* GPIO chip select */
> +	struct gpio_desc	**cs_gpiods;
> +	bool			use_gpio_descriptors;

You forgot to copy the documentation for this member.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


