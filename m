Delivery-date: Thu, 07 Jul 2022 13:00:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9PEs-0098zS-VO
	for lore@lore.pengutronix.de; Thu, 07 Jul 2022 13:00:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9PEu-0002Vh-IG
	for lore@pengutronix.de; Thu, 07 Jul 2022 13:00:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tPRfA3jVyMbJw+3uJmFAXfpP9C006hzvVlWHuJyXaZo=; b=q0y5yeISzh2qOfs2SFKfbDZiK6
	fzwEkWjMQdIe24IMV9U0qwz0p52S1OuY9s5vmFbKY3YGpIkaR5M9jp1kqwCEAsX3yuDVcRkAuaARP
	Rr6wMEXcD1HYC+HaHWaQnwrJ/OJ/9+X7pcxax8pG9YJkEFnB0VcB/tp5IWpOfHMUYXuv13gZi/L/1
	3Z+FSZmHrRm5+1Y0Z/Whlrgg08ZRfyB0FwGGfNIsR2NCkGd7pr0VpjO8Ow8RnvrqyyjX56jyEhCMO
	PPWvQgzxbZyK8Ym2QvYgf5l0WOG0rp5agYL+EFH+xXztESwh3kcj12FO5hOy5e/JPVKJVsk+Fji9n
	m1eE57nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9PDm-00Fhtc-9u; Thu, 07 Jul 2022 10:58:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9PDZ-00FhpI-E8
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 10:58:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o9PDY-0002ME-2k; Thu, 07 Jul 2022 12:58:44 +0200
Message-ID: <d8b4fcf4-76d4-efb3-8276-bb52ba1fccee@pengutronix.de>
Date: Thu, 7 Jul 2022 12:58:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20220707104127.3330997-1-s.trumtrar@pengutronix.de>
 <20220707104127.3330997-3-s.trumtrar@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220707104127.3330997-3-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_035845_505474_4D0108D8 
X-CRM114-Status: GOOD (  17.66  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] ARM: socfpga: defconfig: add aa1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.07.22 12:41, Steffen Trumtrar wrote:
> Disable KALLSYMS because of image size.

Where does it need to fit into where it does no longer? This should go into
the commit message. If you have image size problems, consider using __dtb_z_
instead of __dtb_ for the device trees to compress it.

> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/configs/socfpga-arria10_defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
> index a37bae6217..17135677b9 100644
> --- a/arch/arm/configs/socfpga-arria10_defconfig
> +++ b/arch/arm/configs/socfpga-arria10_defconfig
> @@ -1,11 +1,11 @@
>  CONFIG_ARCH_SOCFPGA=y
> +CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1=y
>  CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES=y
>  CONFIG_AEABI=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  CONFIG_ARM_UNWIND=y
>  CONFIG_MALLOC_SIZE=0x0
>  CONFIG_MALLOC_TLSF=y
> -CONFIG_KALLSYMS=y
>  CONFIG_RELOCATABLE=y
>  CONFIG_HUSH_FANCY_PROMPT=y
>  CONFIG_CMDLINE_EDITING=y


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


