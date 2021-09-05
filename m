Delivery-date: Sun, 05 Sep 2021 16:02:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mMsj5-0007zC-LV
	for lore@lore.pengutronix.de; Sun, 05 Sep 2021 16:02:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mMsj4-0003hd-KB
	for lore@pengutronix.de; Sun, 05 Sep 2021 16:02:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u//1mOYNfKwjjeSSPnl/v3MFNHmi+uoMjWCDMQuVdDw=; b=bo1KQjfO+Ze+GpgFuKbjsSLjss
	k5e7dFzZTjZ0txKOwMkY9rsMtjd2ieIYL+zxWloc2evRwdS4myXDyr6ccFuAK01/VoLrdvg94hQQh
	75tGhRjeCYQssNnk1QrXtxr/RbKCM+Q49f0i7oWKlWO582jmQHZVRrJZrANBdBtqdYM/oAIJ+/kDv
	Ple+2xtR/M8hIRGY4X0tZWfEDX6WhV+5Z1a2gYM9qO+hScoD6jNlb48KelBu2YpRdY88zyJysEl5E
	UKoj4LcxthK5B1G+GpTEKB2NpceVaEpUxIs3+8RsFDV1zOV6FQdB0ooGzYZlAbdj2SR7Va32oeyjZ
	WZ40ZT3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMshn-00Ft9P-Rh; Sun, 05 Sep 2021 14:01:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMshg-00Ft8V-49
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 14:01:01 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mMshc-0003Ro-R5; Sun, 05 Sep 2021 16:00:56 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20210826165718.1905-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <803a1068-6381-64cd-813f-de7c21bfce72@pengutronix.de>
Date: Sun, 5 Sep 2021 16:00:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210826165718.1905-1-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210905_070100_225547_5529D488 
X-CRM114-Status: GOOD (  28.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: bbu: use correct offset for eMMC boot
 partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 26.08.21 18:57, Ahmad Fatoum wrote:
> According to the i.MX8MP RM rev3, the bootrom expects the bootloader to
> sit directly at the start of the eMMC boot partition.
> 
> The 32K offset is only valid for eMMC user partitions and SD. Reflect
> this in the code. This should allow changing the update handler for
> the i.MX8MP-EVK from using the eMMC user area to using the eMMC boot
> partition. This isn't done here, because the change wasn't tested
> on actual hardware.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Change is untested. Would be great if someone can confirm on actual HW.
> (And adjust the EVK boot handler)

please dismiss.
This is superseded by
https://lore.barebox.org/barebox/c4653e6641f43249c0a511b211e0ea08be56afb3.camel@pengutronix.de/T/#t

> ---
>  arch/arm/mach-imx/imx-bbu-internal.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
> index 880f8b249642..32c6f44fb4ac 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -393,6 +393,15 @@ static unsigned long imx_bbu_flash_header_offset_mmc(void)
>  	return SZ_1K;
>  }
>  
> +static unsigned long imx_bbu_flash_header_offset_mmcboot(void)
> +{
> +	if (cpu_is_mx8mp())
> +		return 0;
> +
> +	/* Older i.MX use for boot partition the same offset as eMMC user/SD */
> +	return imx_bbu_flash_header_offset_mmc();
> +}
> +
>  static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
>  {
>  	struct imx_internal_bbu_handler *imx_handler =
> @@ -608,7 +617,7 @@ static int imx_bbu_internal_mmcboot_register_handler(const char *name,
>  	struct imx_internal_bbu_handler *imx_handler;
>  
>  	imx_handler = __init_handler(name, devicefile, flags);
> -	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmc();
> +	imx_handler->flash_header_offset = imx_bbu_flash_header_offset_mmcboot();
>  
>  	imx_handler->handler.handler = imx_bbu_internal_mmcboot_update;
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

