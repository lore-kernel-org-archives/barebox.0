Delivery-date: Mon, 18 May 2026 12:34:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvIY-0016Kc-0P
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 12:34:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOvIW-0006O8-Vb
	for lore@pengutronix.de; Mon, 18 May 2026 12:34:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I/LIs509jHbaY4AhBZWxbhe2quRxUY6GaCHaMVxESfM=; b=lp9YHtvy+pv2oo+pmyNsRHK8b7
	rh+1AkBKQi+YKuq83I1tmaVuodHFw53Umrknle5a4l67nF041MnOV/ySBXOrmFUntrWDEcHop9eKy
	Sz/HnAxpMBMtJ7QwYTW7uTmWvndvibbCeN+nOAdhmoMoAi9tQffR7K1IHnkp14ULcZXIo8g91CGin
	B9jijbfrjTVJxKogk/6yuwWeHH1kA7A7DVOQphXSEDtu4Ds7YYtOY1j8R+/BWWHTJkCPYogo2Ke0F
	PomuknGFd+Uwy6FgNDCRuGvM9eS1R5eP29LDiqM9CXOII3A6E7OlfhevJoIlj3oNu4WaUaqF6bt6q
	gibyT93w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOu7s-0000000EzAI-0xPa;
	Mon, 18 May 2026 09:19:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOu7q-0000000Ez9p-0ZDc
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 09:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=I/LIs509jHbaY4AhBZWxbhe2quRxUY6GaCHaMVxESfM=; b=UoOrNHCT7AQfIHgelG7B6+4POi
	x34DmxX9R3ojI++6fW1ncz9hfXf1AWMkfBZfPtwh3vMu1hx77eYqinRZoyU6RhaKJ+yacrJk6X+zu
	IzXPPZxYPzHGZ7tpN/7ZbF5niszBc7JXjsOP81Sdg3+9wNpl03jzIIf9rtBMjTihhpCaKUlt27hs0
	LJ8xdZlJmIvq2TfcTxd4XCh7Vy4RcCKqv7GDhUFeAfIsS4x9T3GFEFssiopiT7mVKzNVcwkKWytkH
	9g+f0vbOQOv3Tntsk/ziwRRWJAReAgL7sYVoouy5SSDxRalNSGe5A6QzP1Hg6zN93mAkEs7gFiuuU
	31gKrYXA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOu7m-0000000AXxB-2lYd
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 09:19:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOu7l-0004QL-Sw; Mon, 18 May 2026 11:18:57 +0200
Message-ID: <8d364049-78d5-4788-9cb2-feb58f41306f@pengutronix.de>
Date: Mon, 18 May 2026 11:18:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Opus 4.7" <noreply@anthropic.com>
References: <20260511-rockchip-emmc-hs400-v1-0-515fb6d20e12@pengutronix.de>
 <20260511-rockchip-emmc-hs400-v1-3-515fb6d20e12@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260511-rockchip-emmc-hs400-v1-3-515fb6d20e12@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_101859_159247_DA7B98C2 
X-CRM114-Status: GOOD (  40.87  )
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
Subject: Re: [PATCH 03/10] mci: sdhci: add ADMA2 descriptor helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 5/11/26 2:07 PM, Sascha Hauer wrote:
> Add reusable ADMA2 (32-bit and 64-bit) support to the SDHCI core so
> drivers can opt in to ADMA without each having to reimplement descriptor
> table management.
> 
> A driver enables ADMA by calling sdhci_setup_adma() after
> sdhci_setup_host(). The helper allocates a DMA-coherent descriptor
> table sized for SDHCI_DEFAULT_ADMA_DESCS entries (drivers can override
> adma_table_cnt before calling), picks the descriptor format based on
> SDHCI_USE_64_BIT_DMA, sets SDHCI_USE_ADMA in host->flags and caps
> mci->max_req_size so the MCI core splits requests to fit. From there,
> sdhci_setup_data_dma() builds an ADMA2 descriptor chain for the
> contiguous transfer buffer (one descriptor per up-to-64 KiB chunk plus
> a terminating nop/end entry) and programs SDHCI_ADMA_ADDRESS instead
> of the SDMA address. sdhci_config_dma() now selects ADMA32/ADMA64 in
> HOST_CONTROL accordingly.
> 
> If sdhci_setup_adma() fails (no SDHCI_CAN_DO_ADMA2, no memory, or
> unaligned table), the host transparently falls back to the existing
> SDMA path.

See below for feedback.

> 
> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/sdhci.c | 154 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>  drivers/mci/sdhci.h |  59 ++++++++++++++++++++
>  2 files changed, 212 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> index f7172347e1..0c3ca69e9a 100644
> --- a/drivers/mci/sdhci.c
> +++ b/drivers/mci/sdhci.c
> @@ -585,6 +585,13 @@ static void sdhci_config_dma(struct sdhci *host)
>  	ctrl = sdhci_read8(host, SDHCI_HOST_CONTROL);
>  	/* Note if DMA Select is zero then SDMA is selected */
>  	ctrl &= ~SDHCI_CTRL_DMA_MASK;
> +
> +	if (host->flags & SDHCI_USE_ADMA) {
> +		ctrl |= SDHCI_CTRL_ADMA32;
> +		if (host->flags & SDHCI_USE_64_BIT_DMA && !host->v4_mode)
> +			ctrl |= SDHCI_CTRL_ADMA64;
> +	}
> +
>  	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
>  
>  	if (host->flags & SDHCI_USE_64_BIT_DMA) {
> @@ -601,11 +608,67 @@ static void sdhci_config_dma(struct sdhci *host)
>  	}
>  }
>  
> +static void sdhci_adma_write_desc(struct sdhci *host, void **desc,
> +				  dma_addr_t addr, int len, unsigned int cmd)
> +{
> +	struct sdhci_adma2_64_desc *dma_desc = *desc;

This should be a union between sdhci_adma2_32_desc and sdhci_adma2_64_desc.

> +
> +	/* 32-bit and 64-bit descriptors share these fields. */
> +	dma_desc->cmd = cpu_to_le16(cmd);
> +	dma_desc->len = cpu_to_le16(len);
> +	dma_desc->addr_lo = cpu_to_le32(lower_32_bits(addr));
> +
> +	if (host->flags & SDHCI_USE_64_BIT_DMA)
> +		dma_desc->addr_hi = cpu_to_le32(upper_32_bits(addr));

On a 64-bit system without SDHCI_USE_64_BIT_DMA, but with a 64-bit addr,
we will end up with memory corruption here.

Please add at least a BUG, so it fails reliably or propagate an error.

> +
> +	*desc += host->desc_sz;
> +}
> +EXPORT_SYMBOL_GPL(sdhci_adma_write_desc);

Why export a static symbol?

> +
> +/*
> + * Build the ADMA2 descriptor table for a single contiguous DMA buffer.
> + * Each entry of the table covers up to SDHCI_ADMA2_MAX_LEN bytes; longer
> + * transfers are split across multiple descriptors.
> + */
> +static int sdhci_adma_build_table(struct sdhci *host, dma_addr_t addr,
> +				  unsigned int len)
> +{
> +	void *desc = host->adma_table;
> +	void *desc_end = host->adma_table + host->adma_table_sz;
> +
> +	while (len) {
> +		unsigned int chunk = min_t(unsigned int, len,
> +					   SDHCI_ADMA2_MAX_LEN);

I think the min_t is unneeded and if it is, just give len the same type
as SDHCI_ADMA2_MAX_LEN?

> +
> +		if (desc + host->desc_sz > desc_end)
> +			return -ENOSPC;
> +
> +		/*
> +		 * The length field is 16-bit; a length of 0 encodes
> +		 * SDHCI_ADMA2_MAX_LEN bytes per the SD Host Controller
> +		 * specification.
> +		 */
> +		sdhci_adma_write_desc(host, &desc, addr, chunk & 0xffff,
> +				      ADMA2_TRAN_VALID);
> +		addr += chunk;
> +		len -= chunk;
> +	}
> +
> +	if (desc + host->desc_sz > desc_end)
> +		return -ENOSPC;

Nitpick: I think it would be cleaner to move this check into
sdhci_adma_write_desc(), so it returns an error on out-of-bound write
and just propagate the error instead of redoing the same if clause here
and in the loop.

> +
> +	/* Append a terminating descriptor (nop, end, valid). */
> +	sdhci_adma_write_desc(host, &desc, 0, 0, ADMA2_NOP_END_VALID);
> +
> +	return 0;
> +}
> +
>  void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
>  			  dma_addr_t *dma)
>  {
>  	struct device *dev = sdhci_dev(sdhci);
>  	int nbytes;
> +	int ret;
>  
>  	if (!data) {
>  		if (dma)
> @@ -633,7 +696,22 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
>  	}
>  
>  	sdhci_config_dma(sdhci);
> -	sdhci_set_sdma_addr(sdhci, *dma);
> +
> +	if (sdhci->flags & SDHCI_USE_ADMA) {
> +		ret = sdhci_adma_build_table(sdhci, *dma, nbytes);
> +		if (ret) {
> +			dev_err(dev, "ADMA table build failed: %pe\n",
> +				ERR_PTR(ret));
> +			dma_unmap_single(dev, *dma, nbytes,
> +					 (data->flags & MMC_DATA_READ) ?
> +					 DMA_FROM_DEVICE : DMA_TO_DEVICE);

Why is the data umapped here?!

> +			*dma = SDHCI_NO_DMA;
> +			return;
> +		}
> +		sdhci_set_adma_addr(sdhci, sdhci->adma_addr);
> +	} else {
> +		sdhci_set_sdma_addr(sdhci, *dma);
> +	}
>  }
>  
>  void sdhci_teardown_data(struct sdhci *sdhci,
> @@ -1213,3 +1291,77 @@ int sdhci_setup_host(struct sdhci *host)
>  
>  	return 0;
>  }
> +
> +/**
> + * sdhci_setup_adma() - allocate ADMA descriptor table and enable ADMA
> + * @host: sdhci host
> + *
> + * Allocate a DMA-coherent ADMA2 descriptor table and mark the host as
> + * ADMA-capable so subsequent calls to sdhci_setup_data_dma() use ADMA
> + * instead of SDMA. Drivers must call this after sdhci_setup_host() since
> + * it relies on the SDHCI_USE_64_BIT_DMA flag established there.
> + *
> + * The descriptor count defaults to SDHCI_DEFAULT_ADMA_DESCS, which caps
> + * the largest single transfer at SDHCI_DEFAULT_ADMA_DESCS *
> + * SDHCI_ADMA2_MAX_LEN bytes. Drivers can override host->adma_table_cnt
> + * before calling to allocate a different size.
> + *
> + * Returns 0 on success or a negative error code on failure. On failure
> + * the host falls back to SDMA.
> + */
> +int sdhci_setup_adma(struct sdhci *host)
> +{
> +	struct device *dev = sdhci_dev(host);
> +	struct mci_host *mci = host->mci;
> +	dma_addr_t dma;
> +	void *buf;
> +
> +	BUG_ON(!mci);
> +
> +	/*
> +	 * Without a controller capability bit ADMA2 cannot be used. Don't
> +	 * fail loudly: the driver may have called us speculatively, just
> +	 * leave SDMA as the fallback.
> +	 */
> +	if (!(host->caps & SDHCI_CAN_DO_ADMA2))
> +		return -ENOTSUPP;
> +
> +	if (host->flags & SDHCI_USE_64_BIT_DMA)
> +		host->desc_sz = SDHCI_ADMA2_64_DESC_SZ(host);
> +	else
> +		host->desc_sz = SDHCI_ADMA2_32_DESC_SZ;
> +
> +	if (!host->adma_table_cnt)
> +		host->adma_table_cnt = SDHCI_DEFAULT_ADMA_DESCS;
> +
> +	host->adma_table_sz = host->adma_table_cnt * host->desc_sz;
> +
> +	buf = dma_alloc_coherent(dev, host->adma_table_sz, &dma);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	host->adma_table = buf;
> +	host->adma_addr = dma;
> +	host->flags |= SDHCI_USE_ADMA;
> +
> +	/*
> +	 * One descriptor handles up to SDHCI_ADMA2_MAX_LEN bytes; the last
> +	 * one is reserved for the terminating entry.
> +	 */
> +	mci->max_req_size = (host->adma_table_cnt - 1) * SDHCI_ADMA2_MAX_LEN;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(sdhci_setup_adma);
> +
> +void sdhci_release_adma(struct sdhci *host)
> +{
> +	if (!(host->flags & SDHCI_USE_ADMA))
> +		return;
> +
> +	dma_free_coherent(sdhci_dev(host), host->adma_table, host->adma_addr,
> +			  host->adma_table_sz);
> +	host->adma_table = NULL;

Why zero host->adma_table, but not host->adma_addr?

> +	host->flags &= ~SDHCI_USE_ADMA;
> +}
> +EXPORT_SYMBOL_GPL(sdhci_release_adma);


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



