Delivery-date: Thu, 09 Mar 2023 15:09:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paGxM-00Ew6T-Sh
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 15:09:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paGxM-0006Ik-F1
	for lore@pengutronix.de; Thu, 09 Mar 2023 15:09:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yo09mm34/52sWFHbLlmaCTHvdekLjkr3jqrNhAzmRrc=; b=0kHmXwPXhm4yVvsR3kixHb5/q/
	NuDfAGLF5sSeVtnQ2/BXUk2c4FeEdsc8T0FcT/rdg8832gM/GQnGzA+T1+SKlNJcFFpHrlPd6mz/i
	BfGnoJROp5AU/gebQbFQVKZUFJeiGiuB8NJKXr+weBh7chrT50bX2yN1kG4Gqo1I2OZeJRkRprpdt
	kPeDIcVxL7QXOFcEXgzkHxm8MNe+ogO9r5aopDI1cP8mID/ZuNhDefXlKfL2b3BkvRE/J6DGJBwy4
	OMOjd1KYQhR1cAL+EZiMnz6gv7GsVlyENfAxOCrE8213up9kUN/VOTen6q33NJ32LUVNFnc9Y6kDG
	7MQffyPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paGw3-00AMWB-96; Thu, 09 Mar 2023 14:07:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paGvG-00AMEb-DJ
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 14:07:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1paGvE-0005ul-No; Thu, 09 Mar 2023 15:07:08 +0100
Message-ID: <38a3580d-2089-77c3-d5b8-0462562d6e5a@pengutronix.de>
Date: Thu, 9 Mar 2023 15:07:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: mol@pengutronix.de
References: <20230309135713.3874769-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230309135713.3874769-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_060710_503395_EE6E5EEA 
X-CRM114-Status: GOOD (  18.54  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: Enable frame pointers for arm64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.03.23 14:57, Sascha Hauer wrote:
> stack unwinding on arm64 depends on framepointers, so enable them.
> 
> OSELAS.Toolchain-2022.10.0 now defaults to -fomit-frame-pointer whereas
> earlier versions default to -fno-omit-frame-pointer. Fix stack
> unwinding for new OSELAS.Toolchain and other toolchains which omit
> frame pointers by default.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index 3ef3604737..f6e2ae9b8a 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -18,6 +18,7 @@ config CPU_64
>  	select HAVE_PBL_IMAGE
>  	select HAVE_PBL_MULTI_IMAGES
>  	select HAS_DMA
> +	select ARCH_WANT_FRAME_POINTERS
>  
>  # Select CPU types depending on the architecture selected. This selects
>  # which CPUs we support in the kernel image, and the compiler instruction

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



