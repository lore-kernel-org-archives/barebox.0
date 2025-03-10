Delivery-date: Mon, 10 Mar 2025 16:02:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tredw-00CI1A-1E
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 16:02:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tredv-0004nb-56
	for lore@pengutronix.de; Mon, 10 Mar 2025 16:02:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cr9yGmr3QI+Qyb89KfzrtUxtjwcceOMRr3FdumFZ7h8=; b=Mrh0FfpY/3p0N1L47asRSlYPfr
	phelo2mCZFOy6yFlJocyJJCmzqHXRhlJrZ9oO5tiBs9mOo7DRTapftXTewQDf4uSnTXjFnov4FYnr
	0lmwvufxpTg+BRJdm3pYxytPVai9tVjQ/lMm+E/7241UTdJwG231e/m88MQTtdk11LAkUwGjElU2T
	WvXC8hu8IhK6AofWZ8K+C0XO4IdGQeXKzfPTwJJrHxzJk5aOqRaAXnfCwrc4fQqXj1f53c9+S32/W
	1bKQtmS2rZZo3sYqq21mdf9EVXmbh9g/alYTnqwZe/SyZXr8o2NRSXkOZH07whtm4s5BOhS+DNNlC
	ar3COxOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tredC-0000000355t-2zhL;
	Mon, 10 Mar 2025 15:01:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trdEN-00000002nwx-3wbk
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 13:31:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1trdEL-0008FI-AE; Mon, 10 Mar 2025 14:31:41 +0100
Message-ID: <2770e761-a192-437f-bc82-128519c04d18@pengutronix.de>
Date: Mon, 10 Mar 2025 14:31:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
References: <20250310113626.2241630-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250310113626.2241630-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_063143_990719_33B3ABA5 
X-CRM114-Status: GOOD (  19.58  )
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
Subject: Re: [PATCH master] i.MX: HAB: fix i.MX8MP field-return fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 3/10/25 12:36, Marco Felsch wrote:
> Current tests showed that fusing just the single field-return bit(0) on
> i.MX8MP SoCs brick the device.

So such a device is bricked permanently with no way to upload
a bootloader again to fuse the remainder of the bits?

Interesting thing to not document :/

Cheers,
Ahmad

> 
> All i.MX8M SoCs have a single field-return bit except for the i.MX8MP
> which requires a pattern. The pattern is not documented but was
> discussed here [1] and the final u-boot commit [2] added the support
> accordingly.
> 
> This commit is based on the outcome of [1, 2].
> 
> [1] https://lore.kernel.org/all/20240621130626.729666-1-paul.geurts@prodrive-technologies.com/
> [2] https://github.com/u-boot/u-boot/blob/v2025.01/arch/arm/mach-imx/hab.c#L35
> 
> Tested-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/hab/hab.c                | 12 +++++++++++-
>  include/mach/imx/ocotp-fusemap.h |  1 +
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index 73d470be131e..74ba4a48557c 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -252,6 +252,12 @@ static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
>  	return ret;
>  }
>  
> +/*
> + * The fuse pattern for i.MX8M Plus is 0x28001401, but bit 2 is already set from factory.
> + * This means when field return is set, the fuse word value reads 0x28001405
> + */
> +#define MX8MP_FIELD_RETURN_PATTERN	0x28001401
> +
>  static int imx8m_hab_field_return_ocotp(void)
>  {
>  	int ret;
> @@ -264,7 +270,11 @@ static int imx8m_hab_field_return_ocotp(void)
>  	if (ret == 1)
>  		return -EINVAL;
>  
> -	ret = imx_ocotp_write_field(MX8M_OCOTP_FIELD_RETURN, 1);
> +	if (cpu_is_mx8mp())
> +		ret = imx_ocotp_write_field(MX8MP_OCOTP_FIELD_RETURN,
> +					    MX8MP_FIELD_RETURN_PATTERN);
> +	else
> +		ret = imx_ocotp_write_field(MX8M_OCOTP_FIELD_RETURN, 1);
>  
>  	return ret;
>  }
> diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
> index 37f1ee8298c2..587fe8b15eab 100644
> --- a/include/mach/imx/ocotp-fusemap.h
> +++ b/include/mach/imx/ocotp-fusemap.h
> @@ -68,6 +68,7 @@
>  #define MX8MP_OCOTP_ROM_NO_LOG		(OCOTP_WORD(0x480) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
>  #define MX8M_OCOTP_RECOVERY_SDMMC_BOOT_DIS	(OCOTP_WORD(0x490) | OCOTP_BIT(23) | OCOTP_WIDTH(1))
>  #define MX8M_OCOTP_FIELD_RETURN		(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
> +#define MX8MP_OCOTP_FIELD_RETURN	(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
>  #define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))
>  
>  #endif /* __MACH_IMX_OCOTP_FUSEMAP_H */



