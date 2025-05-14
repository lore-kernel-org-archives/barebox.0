Delivery-date: Wed, 14 May 2025 18:10:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFEgS-005YF5-1T
	for lore@lore.pengutronix.de;
	Wed, 14 May 2025 18:10:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uFEgR-0002Qi-TO
	for lore@pengutronix.de; Wed, 14 May 2025 18:10:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tp1Zfrcb3ygEphBmByrSJ9XadpxEfwoOAhwbdhYEJgg=; b=YTZXqEaUhwB1dCeZlu5nVE3jlr
	SjkIC8n22d5qyPjqPdFSiEolWqSYGExPKUMDq3ZjX4CcTnC1cEsjuteg30S/KSa7vtOowiXbjkr5t
	owswXMKxm5+2Scgm5fuGP4f0K7+IC/6kLi4T5xBesueujRsrIRXCrPDZiiJdhndqFljQhG3yIr5He
	mPzZH+c/r33v3tOCeL8YJZ3CI8YZ9qtsT4TXndfZsxTzQijv7jMgawXrrFw6Q8D4mq5WmAmjceek6
	8IjslZ+JT0zVUEfi7D38XoF9zxwkb1oRKdPlzuv2LagywHapvgS6oOx/x/ViVXqg4mgHAm4JMNpUq
	PocUDOLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFEfi-0000000Fgrt-2P8Q;
	Wed, 14 May 2025 16:09:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFDwo-0000000FZvI-3G72
	for barebox@lists.infradead.org;
	Wed, 14 May 2025 15:23:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uFDwi-00079y-HA; Wed, 14 May 2025 17:23:04 +0200
Message-ID: <09bc02e6-f82d-4f00-a52b-01a0c2c7f83e@pengutronix.de>
Date: Wed, 14 May 2025 17:22:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rouven Czerwinski <rouven.czerwinski@linaro.org>,
 barebox@lists.infradead.org
References: <20250513104521.4104574-1-rouven.czerwinski@linaro.org>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250513104521.4104574-1-rouven.czerwinski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_082306_818453_B1BC95FC 
X-CRM114-Status: GOOD (  14.83  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] virt: select COMMON_CLK & COMMON_CLK_OF_PROVIDER
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.05.25 12:45, Rouven Czerwinski wrote:
> Otherwise the qemu invocation provided in the documentation leads to no
> output on the serial console, presumably because the serial driver can
> not calculate the timings. This was not noticed in the multi_v8_defconfig since
> any other platform selects both.
> 
> Tested by using multi_v8_defconfig and disabling every other platform
> except virt.
> 
> Signed-off-by: Rouven Czerwinski <rouven.czerwinski@linaro.org>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  arch/arm/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 84b1660d1e..0800b15d78 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -146,6 +146,8 @@ config ARCH_ARM64_VIRT
>  	select BOARD_ARM_VIRT
>  	select HW_HAS_PCI
>  	select HAS_DEBUG_LL
> +	select COMMON_CLK
> +	select COMMON_CLK_OF_PROVIDER
>  
>  config ARCH_BCM283X
>  	bool "Broadcom BCM283x based boards"


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


