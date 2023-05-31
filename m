Delivery-date: Wed, 31 May 2023 12:41:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4JGk-0048nW-QS
	for lore@lore.pengutronix.de; Wed, 31 May 2023 12:41:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4JGi-0005Of-1e
	for lore@pengutronix.de; Wed, 31 May 2023 12:41:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gQHWZkvOr/Xg/I74lVZuSFdXGIBfewdp04SnpbCujQY=; b=gUN4I16jZkOB3VhzKSJU+Nadz0
	I6mMkorM42NKrmz+Kr2LsioWo2d0OnkTVrsfcZZuCmbcancOH3spldrtdLVJJsT/A8emcgWawxTzB
	CsyYVy24b4bb9VDEPGP5xqnyUKnn2YkrjCO54ucyFrT0/51f8MdFxQ+Snt1pEOAjYGnnb1pctm0u8
	+r3BMyZU/ggILSdICO06gnVd389qu9UDmweoaxpF8YPwd5yuJ1mmoiTw3yvn48jKMvN3iNL8AtX7v
	Ua0+KNnvM29iz8ciC4+Lexbq12exdsgyHL3pHjRFS2G2JG+L9eR3N7uriYhpdbovVH0RWBXprw/mQ
	F7TgzGgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4JFd-00H9IL-0f;
	Wed, 31 May 2023 10:40:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4JFa-00H9Ht-06
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 10:40:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4JFY-00050T-4F; Wed, 31 May 2023 12:40:16 +0200
Message-ID: <c93b9b54-0b21-d5d9-bda0-c4e191ccbb6f@pengutronix.de>
Date: Wed, 31 May 2023 12:40:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230531103515.845714-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230531103515.845714-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_034018_097288_27E83F9C 
X-CRM114-Status: GOOD (  21.82  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: set zero page accessible before copying ATAGs
 there
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.05.23 12:35, Sascha Hauer wrote:
> We used skip setting up the zero page as faulting when the SDRAM
> starts at 0x0. One reason for doing that was that ATAGs will be copied
> there in that case. Call zero_page_access() if necessary to be able
> to set the zero page to faulting during barebox startup in the next
> step.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/lib32/armlinux.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
> index 6cb7d4b5f3..eb30f4a952 100644
> --- a/arch/arm/lib32/armlinux.c
> +++ b/arch/arm/lib32/armlinux.c
> @@ -18,6 +18,7 @@
>  #include <memory.h>
>  #include <of.h>
>  #include <magicvar.h>
> +#include <zero_page.h>
>  
>  #include <asm/byteorder.h>
>  #include <asm/setup.h>
> @@ -265,8 +266,12 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
>  		pr_debug("booting kernel with devicetree\n");
>  		params = oftree;
>  	} else {
> -		setup_tags(initrd_address, initrd_size, swap);
>  		params = armlinux_get_bootparams();
> +
> +		if ((unsigned long)params < PAGE_SIZE)
> +			zero_page_access();
> +
> +		setup_tags(initrd_address, initrd_size, swap);
>  	}
>  	architecture = armlinux_get_architecture();
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



