Delivery-date: Tue, 13 Apr 2021 12:11:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWG18-0007LV-Km
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 12:11:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWG17-0005iY-Qs
	for lore@pengutronix.de; Tue, 13 Apr 2021 12:11:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vHK95PtwyzDLp+qR9FIPLBsnJQDSDmm9tfA95Bllo3g=; b=PnE5ASwaPbyuHSBnG0jkiDTaJ
	fUv6iH+dM0ECdvuKZp3i0SXAacOPBPSsw4jqgfeQSCtNWuUStcJCEehAFo/vbUGe6ZA1eLhoCBD9n
	iI4N7rkFrZ58kS5oRJXPhdDKpFLvSJMi7Ys/6dmjiV6KQGjD1SUkVdpa2nuZWy6ZRi/Ds6hojZ9FE
	rIiP3pLQWsJLbnkh4AR39pvOia13oMl+IWMYjbIh7hnlRkKiZt40VgUkVkYTYcVe3LVhgtpmZgwFT
	w9v3ln5KgJd0XGzcoGL4z3DZH99g13w6PR4lhlzWM75mgpjg5nf14h8sRdW/8SjLxPPJfhE6Mo1T4
	iZfbKbTIQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWFze-008qFX-0o; Tue, 13 Apr 2021 10:10:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFzS-008qDk-BY
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 10:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=7w+058YuloLfE1cJGiZ6eSTYy9x1ZYK1TclHqhTU1ug=; b=RN3cw8m1RBNVBRrSf6NXXh0aoW
 pLlEJ9ywI27Qlb/5bpgks4oDEaFgBvTsW/O5zJZ3La05U7uN3C6WR5+A2MMLAN5vk9oSmbkxgThMF
 Pk3vkm2Y8F2zIsria+o31RhARqslro22qa+EY2TkVT87GggpAKjmgzt8jggkxGGafhz2PXUAvdBqV
 eXRZDk1c0rrX856cxuw6C2fhG43AwdK8z8VGt4PvlfDlW/qt4eL6PvttKC3e1JRfU65enJl6uyFRN
 W0gnfPSat9ICLFh0BhqbZnn7XrgxyxL7e3IOmCXdSbmYrB2ZdPL90RhClJ/PKqA+5WpvI/ayuWqh0
 bFmIK/Vw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWFzP-006usf-Qx
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 10:09:49 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWFzO-0005F5-Le; Tue, 13 Apr 2021 12:09:46 +0200
To: Lars Pedersen <lapeddk@gmail.com>, barebox@lists.infradead.org
Cc: Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ffa4e57a-e8b3-a31d-cb93-d0bf8a6b9157@pengutronix.de>
Date: Tue, 13 Apr 2021 12:09:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210413092340.241337-1-lapeddk@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_030947_899840_EAB200D0 
X-CRM114-Status: GOOD (  16.32  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 13.04.21 11:23, Lars Pedersen wrote:
> Select CONFIG_POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
> board.
> 
> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
> Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
> ---
> Requires patch ARM: i.MX: Kamstrup mx7 concentrator board support
> 
>  arch/arm/mach-imx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index cc73d0a0d..4ee8ffe4b 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
>  	bool "Kamstrup i.MX7 Concentrator"
>  	select ARCH_IMX7
>  	select ARM_USE_COMPRESSED_DTB
> +	select CONFIG_POWER_RESET_GPIO_RESTART

Sorry, no CONFIG_ in Kconfig files. ^^

Cheers,
Ahmad

>  
>  config MACH_NXP_IMX6ULL_EVK
>  	bool "NXP i.MX6ull EVK Board"
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

