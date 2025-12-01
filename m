Delivery-date: Mon, 01 Dec 2025 11:38:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1Iy-006mwP-0Y
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:38:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1Ix-00088O-FL
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:38:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QY4xJ25Kh10UGcoG7y4ytUnfzrOmgDpax88KW57OY0k=; b=eltYuzWY57YN0IwINRYkpudf0b
	nK9EcR/PlgkI/OZZ47Ui4witly8BHTbPEW5zVZ06CU1qAhbQItQ+6LC8v3PTtTlgnR0vVyqYsdh5D
	2nX3mBe4/usF8Ig2hNKv+tG3rv7QtPdVc2Wr4QA+Ve9cBLDXZzQorOIJJCPSe9lFiPhs19n2EZPgk
	XHavgkIdb8mTcYypS6AWDM7JaEFXQZtU9930RfqDbCPbEWt/rwKp2zEtQNS2MsnUUk3WhmRy4NQ3J
	aDa4m8rjLg44dWuikt2du1rD0resCfX86GYQo7sE203PgixYRAvsUrx45kHbrv0dgu56KjxSuOMC5
	g30q0U9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1IV-00000003LZH-33cE;
	Mon, 01 Dec 2025 10:38:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ1IT-00000003LYL-0jV6
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:38:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vQ1IR-00083q-HG; Mon, 01 Dec 2025 11:38:19 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQ1IR-003Qem-0c;
	Mon, 01 Dec 2025 11:38:19 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQ1IR-00HFMs-08;
	Mon, 01 Dec 2025 11:38:19 +0100
Date: Mon, 1 Dec 2025 11:38:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aS1wGqrhGhU6XfIR@pengutronix.de>
References: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
 <20251128-avenger96-v1-2-009b13bd8df7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251128-avenger96-v1-2-009b13bd8df7@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_023821_216479_2110948C 
X-CRM114-Status: GOOD (  31.23  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: stm32mp: bbu: add NOR flash FIP update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 28, 2025 at 01:51:18AM +0100, Sohaib Mohamed wrote:
> Add support for updating STM32MP1 bootloader in NOR flash. The handler
> automatically detects FIP location (256K or 512K offset) and flashes

The "or 512K offset" part isn't implemented, right?

> FSBL at offset 0 and FIP at offset 512K. FIP is truncated if it exceeds
> available space.
> 
> The handler detects the FIP location within the image (at either 256K
> or 512K offset) and flashes components to their appropriate locations:
> - FSBL at offset 0 (first 256K)
> - FIP at offset 512K (remainder of flash)
> 
> When flashing from eMMC boot partitions to NOR, the FIP is truncated if
> needed since eMMC boot partitions are typically larger than available
> NOR flash space.

I guess you mean that not the FIP image is truncated, but the input
image (/dev/mmcx.boot) is truncated to the actual FIP image size.

But like Ahmad I can't find this part implemented. Should we just drop
this sentence for now?

Sascha

> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
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
> -- 
> 2.43.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


