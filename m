Delivery-date: Tue, 04 Apr 2023 09:06:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjajv-009Qn4-Ex
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 09:06:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjajv-0004jD-E2
	for lore@pengutronix.de; Tue, 04 Apr 2023 09:05:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vi7mPfqpxHLeXPxPJtDzbNnmhks7JQjDxhJiPpnvB9c=; b=IwgiRsQPeueoZ4nCg8+huqq+Ay
	72zs4KsXhVq7z8Q3cJR9YHZ6Zb4TWVL0YNiVa2pS/g0wAZ8knJ2VfGhVwxir+Y+ZNepByf4b2ti9s
	nT12cZzvL8hp7RGKXqne2KIXc71IYPAUZBYiN8ZHnf1X5Od26wwTQP1jBnsWh8gcL5nYn/g6uW5y7
	i3cWnN5/qnPbv16q2+vSG3KdXOArSmYIKDcAeU4YRuP32KB5QNb2vAxr0lj1OllKR/THZWzNp7odn
	W2fL3rcw6XTCx1FkU1qKZptBTzQ6KvMUKre/VRcZ2vK2zU3DdyOqpa1UMi0fN80eIg1a2Nl8H22iC
	PeDkYm6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjaiw-000G2x-1U;
	Tue, 04 Apr 2023 07:04:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjaiu-000G2E-01
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 07:04:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjais-0004O4-NO; Tue, 04 Apr 2023 09:04:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjais-0008IZ-G4; Tue, 04 Apr 2023 09:04:54 +0200
Date: Tue, 4 Apr 2023 09:04:54 +0200
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230404070454.GU19113@pengutronix.de>
References: <20230403115340.3416720-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230403115340.3416720-1-p.zabel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_000456_049858_12385C8F 
X-CRM114-Status: GOOD (  31.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] spi: add per-driver bits-per-word mask
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 03, 2023 at 01:53:37PM +0200, Philipp Zabel wrote:
> Allow SPI hosts to signal per-transfer bits-per-word switching
> support and drivers to query it with spi_is_bpw_supported().
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  include/spi/spi.h | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/spi/spi.h b/include/spi/spi.h
> index fa9329b08c80..809ebd8df1a8 100644
> --- a/include/spi/spi.h
> +++ b/include/spi/spi.h
> @@ -131,6 +131,11 @@ struct spi_message;
>   *	SPI slaves, and are numbered from zero to num_chipselects.
>   *	each slave has a chipselect signal, but it's common that not
>   *	every chipselect is connected to a slave.
> + * @bits_per_word_mask: A mask indicating which values of bits_per_word are
> + *	supported by the driver. Bit n indicates that a bits_per_word n+1 is
> + *	supported. If set, the SPI core will reject any transfer with an
> + *	unsupported bits_per_word. If not set, this value is simply ignored,
> + *	and it's up to the individual driver to perform any validation.
>   * @max_speed_hz: Highest supported transfer speed
>   * @setup: updates the device mode and clocking records used by a
>   *	device's SPI controller; protocol code may call this.  This
> @@ -165,6 +170,12 @@ struct spi_controller {
>  
>  	/* Optimized handlers for SPI memory-like operations */
>  	const struct spi_controller_mem_ops *mem_ops;
> +
> +	/* Bitmask of supported bits_per_word for transfers */
> +	u32			bits_per_word_mask;
> +#define SPI_BPW_MASK(bits) BIT((bits) - 1)
> +#define SPI_BPW_RANGE_MASK(min, max) GENMASK((max) - 1, (min) - 1)
> +
>  	/*
>  	 * on some hardware transfer size may be constrained
>  	 * the limit may depend on device transfer settings
> @@ -435,6 +446,26 @@ spi_transfer_del(struct spi_transfer *t)
>  	list_del(&t->transfer_list);
>  }
>  
> +/**
> + * spi_is_bpw_supported - Check if bits per word is supported
> + * @spi: SPI device
> + * @bpw: Bits per word
> + *
> + * This function checks to see if the SPI controller supports @bpw.
> + *
> + * Returns:
> + * True if @bpw is supported, false otherwise.
> + */
> +static inline bool spi_is_bpw_supported(struct spi_device *spi, u32 bpw)
> +{
> +	u32 bpw_mask = spi->master->bits_per_word_mask;
> +
> +	if (bpw == 8 || (bpw <= 32 && bpw_mask & SPI_BPW_MASK(bpw)))
> +		return true;
> +
> +	return false;
> +}
> +
>  /* All these synchronous SPI transfer routines are utilities layered
>   * over the core async transfer primitive.  Here, "synchronous" means
>   * they will sleep uninterruptibly until the async transfer completes.
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


