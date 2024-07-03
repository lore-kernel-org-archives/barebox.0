Delivery-date: Wed, 03 Jul 2024 20:48:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP51u-001GFh-2c
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 20:48:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP51u-0004KL-4l
	for lore@pengutronix.de; Wed, 03 Jul 2024 20:48:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oJAc0Xhh50YJJVXksK4fA6RknPsmKr0cCNTFs6MMAA8=; b=NWgBStCFZa+dXJ54eb6DI34aZw
	7LLLrl9W1lTJGdEkJqPAT9lmpthX8TRInKpOLy5npu4Ao3tgLyB4IldSdtWaVJDoDLB0UBg/hBNth
	akaYDL86Pe5YeYriyzknfxH4u3DTgHVvAHp0i7to0T+3XEQJuBRDZ7aXE1wl+kZJpq4E9zwRw3elF
	2F4CwKAwqXzGu6+Dj39lT8LEQKhN8ngcBWhwpzxBvcwPpTCZykgJIWRMfLxRRL9Vq11A5Uz/v4PTI
	htWV01/nMUVty3pxRKV5YYwielV3svgMiaOCYQ6JTkckQe3q8BX1zzJaMAIWvcv15a1vki+PP1O/c
	Bx93hMbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP51U-0000000BCII-064i;
	Wed, 03 Jul 2024 18:48:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP51Q-0000000BCHA-26kZ
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 18:48:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP51P-0004Gb-7T; Wed, 03 Jul 2024 20:48:03 +0200
Message-ID: <79f09912-8de7-4e2f-94c6-587ef80a69bf@pengutronix.de>
Date: Wed, 3 Jul 2024 20:48:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
 <20240703-v2024-05-0-topic-hab-v2-1-17419aa5d3a3@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-hab-v2-1-17419aa5d3a3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_114804_577945_7DBBC22E 
X-CRM114-Status: GOOD (  23.16  )
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
Subject: Re: [PATCH v2 1/9] i.MX: HABv4: fix SRK_LOCK for i.MX8M devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 03.07.24 19:20, Marco Felsch wrote:
> The fuse to lock the SRK hash on i.MX8M* SoCs is different than the one
> used for the i.MX6 SoCs. Fix this by refactoring
> imx_hab_write_srk_hash_ocotp() and make the lock fusing SoC specific.
> 
> Fixes: 6c4d5bb5acfe ("i.MX: HABv4: implement interface for i.MX8MQ")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Sascha, can this go into master?

Thanks,
Ahmad

> ---
>  drivers/hab/hab.c                | 34 +++++++++++++++++++++++++++++++---
>  include/mach/imx/ocotp-fusemap.h |  1 +
>  2 files changed, 32 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
> index ed091058d8fb..28a091841a69 100644
> --- a/drivers/hab/hab.c
> +++ b/drivers/hab/hab.c
> @@ -128,7 +128,7 @@ static int imx_hab_read_srk_hash_ocotp(u8 *__srk)
>  	return 0;
>  }
>  
> -static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
> +static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk)
>  {
>  	u32 *newsrk = (u32 *)__newsrk;
>  	int ret, i;
> @@ -139,6 +139,17 @@ static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
>  			return ret;
>  	}
>  
> +	return 0;
> +}
> +
> +static int imx6_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
> +{
> +	int ret;
> +
> +	ret = imx_hab_write_srk_hash_ocotp(newsrk);
> +	if (ret)
> +		return ret;
> +
>  	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
>  		ret = imx_ocotp_write_field(OCOTP_SRK_LOCK, 1);
>  		if (ret < 0)
> @@ -148,6 +159,23 @@ static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
>  	return 0;
>  }
>  
> +static int imx8m_hab_write_srk_hash_ocotp(const u8 *newsrk, unsigned flags)
> +{
> +	int ret;
> +
> +	ret = imx_hab_write_srk_hash_ocotp(newsrk);
> +	if (ret)
> +		return ret;
> +
> +	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
> +		ret = imx_ocotp_write_field(MX8M_OCOTP_SRK_LOCK, 1);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int imx_hab_permanent_write_enable_ocotp(int enable)
>  {
>  	return imx_ocotp_permanent_write(enable);
> @@ -222,7 +250,7 @@ static struct imx_hab_ops imx_hab_ops_iim = {
>  };
>  
>  static struct imx_hab_ops imx6_hab_ops_ocotp = {
> -	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
> +	.write_srk_hash = imx6_hab_write_srk_hash_ocotp,
>  	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
>  	.lockdown_device = imx6_hab_lockdown_device_ocotp,
>  	.device_locked_down = imx6_hab_device_locked_down_ocotp,
> @@ -231,7 +259,7 @@ static struct imx_hab_ops imx6_hab_ops_ocotp = {
>  };
>  
>  static struct imx_hab_ops imx8m_hab_ops_ocotp = {
> -	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
> +	.write_srk_hash = imx8m_hab_write_srk_hash_ocotp,
>  	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
>  	.lockdown_device = imx8m_hab_lockdown_device_ocotp,
>  	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
> diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
> index 823273895502..c4f94e61e8f8 100644
> --- a/include/mach/imx/ocotp-fusemap.h
> +++ b/include/mach/imx/ocotp-fusemap.h
> @@ -54,6 +54,7 @@
>  #define OCOTP_GP2			(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
>  #define OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
>  /* i.MX8M moved the security related fuses */
> +#define MX8M_OCOTP_SRK_LOCK		(OCOTP_WORD(0x400) | OCOTP_BIT(9) | OCOTP_WIDTH(1))
>  #define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
>  #define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



