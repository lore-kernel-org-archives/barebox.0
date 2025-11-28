Delivery-date: Fri, 28 Nov 2025 10:40:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOuxo-005jyE-1I
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 10:40:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOuxn-0001RG-MM
	for lore@pengutronix.de; Fri, 28 Nov 2025 10:40:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zY+rfJ8CwS3doi96JzSpw3bGH4tUJjYZUkVdY77QtTM=; b=lWpSKzGgDUj3KstEjMGbk78Tr3
	9e5SPccJ6mw5c8dEss2l2OQDkqetLmE2BggrY+Pdle/NXyOLFbZukP4Gj61xbapbh4gX0xv6moTjL
	nmkn+JOAiV882N3DRhcwr8j9J11ZfrpHY5zwDUa9qxhqjR1x/9XsGXhJKGA0TCrW3/6MiYAiOL6do
	PmJU9ToL0M8IQ4e4MpViOVATGfAAMOghh/ypApVFaPexK3seFhUEgp1jm1CwPFIvPHSI12rEkauvw
	bmmJjKl/EhQNQ9mjmTmFIozDfUEXdby6gYbE+8nICGovAPQKaSEj5N8M2EF83BUQZB2iowM25cK8O
	tcued9Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOuxP-00000000EpK-1Bd0;
	Fri, 28 Nov 2025 09:40:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOuxM-00000000Eoh-2HcK
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 09:40:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOuxL-0001M3-0m; Fri, 28 Nov 2025 10:39:59 +0100
Message-ID: <dcb2c091-33a7-4c9c-822e-d62a3922d21e@pengutronix.de>
Date: Fri, 28 Nov 2025 10:39:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
 <20251128-avenger96-v1-2-009b13bd8df7@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251128-avenger96-v1-2-009b13bd8df7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_014000_624659_AE589155 
X-CRM114-Status: GOOD (  27.33  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: stm32mp: bbu: add NOR flash FIP update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11/28/25 1:51 AM, Sohaib Mohamed wrote:
> Add support for updating STM32MP1 bootloader in NOR flash. The handler
> automatically detects FIP location (256K or 512K offset) and flashes
> FSBL at offset 0 and FIP at offset 512K. FIP is truncated if it exceeds
> available space.
> 
> The handler detects the FIP location within the image (at either 256K
> or 512K offset) and flashes components to their appropriate locations:
> - FSBL at offset 0 (first 256K)
> - FIP at offset 512K (remainder of flash)

Above two paragraphs just repeat the same info.

> When flashing from eMMC boot partitions to NOR, the FIP is truncated if
> needed since eMMC boot partitions are typically larger than available
> NOR flash space.

This doesn't reflect what the code is doing. It just passes it along to
bbu_flash. I would expect flashing a too big image would just fail with
-ENOSPC, because pwrite_full() couldn't write all bytes and not
truncation as the commit message claims.

> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-stm32mp/bbu.c | 77 +++++++++++++++++++++++++++++++++++++++++++++
>  include/mach/stm32mp/bbu.h  | 10 ++++++
>  2 files changed, 87 insertions(+)
> 
> diff --git a/arch/arm/mach-stm32mp/bbu.c b/arch/arm/mach-stm32mp/bbu.c
> index 07b5111341..e8d0138cc7 100644
> --- a/arch/arm/mach-stm32mp/bbu.c
> +++ b/arch/arm/mach-stm32mp/bbu.c
> @@ -193,3 +193,80 @@ int stm32mp_bbu_mmc_fip_register(const char *name,
>  
>  	return ret;
>  }
> +
> +static int stm32mp_bbu_nor_fip_handler(struct bbu_handler *handler,
> +			 struct bbu_data *data)
> +{
> +	struct bbu_data *fsbl_data, *fip_data;
> +	enum filetype filetype;
> +	int ret;
> +
> +	filetype = file_detect_type(data->image, data->len);
> +	if (filetype == filetype_fip) {
> +		pr_debug("Flashing FIP at offset 512K\n");
> +		return bbu_flash(data, SZ_512K);
> +	}
> +
> +	if (filetype != filetype_stm32_image_fsbl_v1) {
> +		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
> +				file_type_to_string(filetype_stm32_image_fsbl_v1),
> +				file_type_to_string(filetype)))
> +			return -EINVAL;
> +
> +		/* Force: Let's assume it's an FSBL and flash anyway */
> +	}
> +
> +	if (data->len > SZ_256K)
> +		filetype = file_detect_type(data->image + SZ_256K,
> +					    data->len - SZ_256K);
> +	else
> +		filetype = filetype_unknown;
> +
> +	/* Not an eMMC image, just flash 1:1 */
> +	if (filetype != filetype_fip) {
> +		pr_debug("Flashing FSBL at offset 0\n");
> +		return bbu_flash(data, 0);
> +	}
> +
> +	/* On SPI-NOR, offset 256K is FSBL2. If we get a FIP image there
> +	 * instead, let's assume that's an eMMC boot partition image
> +	 * and flash the FSBL to offset 0 and the remainder to offset 512K
> +	 */
> +
> +	pr_debug("Flashing FSBL at offset 0\n");
> +	fsbl_data = data;
> +	fsbl_data->image = data->image;
> +	fsbl_data->len = SZ_256K;
> +
> +	ret = bbu_flash(fsbl_data, 0);
> +	if (ret < 0)
> +		return ret;
> +
> +	pr_debug("Flashing FIP from file offset 256K at offset 512K\n");
> +	fip_data = data;
> +	fip_data->image = data->image + SZ_256K;
> +	fip_data->len = data->len - SZ_256K;
> +
> +	return bbu_flash(fip_data, SZ_512K);
> +}
> +
> +int stm32mp_bbu_nor_fip_register(const char *name,
> +				 const char *devicefile,
> +				 unsigned long flags)
> +{
> +	struct stm32mp_bbu_handler *priv;
> +	int ret;
> +
> +	priv = xzalloc(sizeof(*priv));
> +
> +	priv->handler.flags = flags;
> +	priv->handler.devicefile = devicefile;
> +	priv->handler.name = name;
> +	priv->handler.handler = stm32mp_bbu_nor_fip_handler;
> +
> +	ret = bbu_register_handler(&priv->handler);
> +	if (ret)
> +		free(priv);
> +
> +	return ret;
> +}
> diff --git a/include/mach/stm32mp/bbu.h b/include/mach/stm32mp/bbu.h
> index 233bcf6478..87b29f1527 100644
> --- a/include/mach/stm32mp/bbu.h
> +++ b/include/mach/stm32mp/bbu.h
> @@ -10,6 +10,9 @@
>  int stm32mp_bbu_mmc_fip_register(const char *name, const char *devicefile,
>  				 unsigned long flags);
>  
> +int stm32mp_bbu_nor_fip_register(const char *name, const char *devicefile,
> +				 unsigned long flags);
> +
>  #else
>  
>  static inline int stm32mp_bbu_mmc_fip_register(const char *name,
> @@ -19,6 +22,13 @@ static inline int stm32mp_bbu_mmc_fip_register(const char *name,
>  	return -ENOSYS;
>  }
>  
> +static inline int stm32mp_bbu_nor_fip_register(const char *name,
> +					       const char *devicefile,
> +					       unsigned long flags)
> +{
> +	return -ENOSYS;
> +}
> +
>  #endif
>  
>  #endif /* MACH_STM32MP_BBU_H_ */
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



