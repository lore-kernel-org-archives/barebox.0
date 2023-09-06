Delivery-date: Wed, 06 Sep 2023 16:17:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtLa-0063Fl-Ue
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 16:17:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtLY-0001Wa-Pm
	for lore@pengutronix.de; Wed, 06 Sep 2023 16:17:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C/SBXQTaJIDSnuJu5CZ2NdQlKlZHvEFc84F97xDHkzo=; b=D9eOlBMo2pweZkSXLR44SeB3eE
	tEHqvjg6sYAAWWtAw5s9Ih5YcL2c7hnjuN6WmVVcghgc67qq27/BWDq+V1MixYj8kg0MIqCcG+xMH
	OYl3Hp3zBfDYARwyMGBGvHm9XzQbvzrJjmSrBfUxVuVawjZgysIZ7FafjLE0RuBs/3F8vz3ye+SPw
	/xqETIFQyvZRumc4obzZIhDRDb7M05x4YsRF8fPr2Z7mqgIHuCCVVlIahABrPPS7dEMPiiHNIo2do
	VaWfteOSZcA26Ovoam0Xwj50ZfhfDV7yXVXU1qo6n8qp6jS0QxRl/I9zEEB5O4ERG5VcEJc1SsQHZ
	xXhBkOuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtKU-00AD9J-0v;
	Wed, 06 Sep 2023 14:16:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtKQ-00AD8G-1k
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 14:16:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtKP-00015O-6o; Wed, 06 Sep 2023 16:16:21 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtKO-004Rle-Qw; Wed, 06 Sep 2023 16:16:20 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtKO-002GGo-Gf; Wed, 06 Sep 2023 16:16:20 +0200
Date: Wed, 6 Sep 2023 16:16:20 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230906141620.GG492117@pengutronix.de>
References: <20230905093210.2067770-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230905093210.2067770-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_071622_609555_3D5180BF 
X-CRM114-Status: GOOD (  34.37  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] ARM: i.MX8M: esdctl: split memory banks for devices
 with >4G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 05, 2023 at 11:32:10AM +0200, Marco Felsch wrote:
> At the moment the whole available memory is added to one single memory
> bank "ram0". This can cause barebox chainload issues on devices with a
> huge amount of memory like the i.MX8MP-EVK which has 6G of RAM if the
> barebox pbl binary is to large.
> 
> The reason for this issues is that memory_bank_first_find_space()
> returns the memory area with the largest amount of free space on the
> first memory bank. So in case of Debix SOM-A 8G and i.MX8MP-EVK 6G this
> is the area crossing the 4G boundary. This cause the barebox pbl code to
> trigger a MMU exception once the early MMU gets enabled which is
> configured for sizes <=4G.
> 
> Split the memory space into two memory banks: "ram0" and "ram1" to fix
> this issue.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
> v3:
> - add comment
> - add ifdef to fix 32bit compilation warning
> v2:
> - drop add_mem() usage and use arm_add_mem_device() directly
> ---
>  arch/arm/mach-imx/esdctl.c | 41 ++++++++++++++++++++++++++++++++++----
>  1 file changed, 37 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 1798ad48e50a..2fca0a44a176 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -510,16 +510,49 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
>  				   reduced_adress_space, mstr);
>  }
>  
> +static int _imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data,
> +			       unsigned int buswidth)
> +{
> +	resource_size_t size = imx8m_ddrc_sdram_size(mmdcbase, buswidth);
> +	resource_size_t size0, size1;
> +	int ret;
> +
> +	/*
> +	 * Split the available memory into multiple banks if the device does
> +	 * have more RAM than 3G. At the moment this is necessary to prevent
> +	 * memory_bank_first_find_space() from finding free space near the end
> +	 * of the 4G barrier which is the case in a 6G/8G setup. This is
> +	 * important for larger barebox-pbl binaries (e.g. debug enabled) and
> +	 * the barebox chainloading mechanism since the pbl init the MMU to 4G.
> +	 * In this case a MMU exception will be thrown if the barebox-pbl is
> +	 * placed near the 4G barrier.
> +	 */
> +	size0 = min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
> +	size1 = size - size0;
> +
> +	ret = arm_add_mem_device("ram0", data->base0, size0);
> +	if (ret || size1 == 0)
> +		return ret;
> +
> +#ifdef CONFIG_64BIT
> +	/*
> +	 * Albeit this hook is called on 64bit machines only, the driver serves
> +	 * 32bit machines as well. Guard the code to avoid compiler warnings.
> +	 */
> +	ret = arm_add_mem_device("ram1", SZ_4G, size1);
> +#endif
> +
> +	return ret;
> +}
> +
>  static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  {
> -	return arm_add_mem_device("ram0", data->base0,
> -			   imx8m_ddrc_sdram_size(mmdcbase, 32));
> +	return _imx8m_ddrc_add_mem(mmdcbase, data, 32);
>  }
>  
>  static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  {
> -	return arm_add_mem_device("ram0", data->base0,
> -			   imx8m_ddrc_sdram_size(mmdcbase, 16));
> +	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
>  }
>  
>  static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
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


