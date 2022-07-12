Delivery-date: Tue, 12 Jul 2022 16:03:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBGTu-004a6a-Su
	for lore@lore.pengutronix.de; Tue, 12 Jul 2022 16:03:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBGTt-0001dv-1K
	for lore@pengutronix.de; Tue, 12 Jul 2022 16:03:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zAwnvOpWfsOUZcYIx8iDZ3eSFL6BS/MzdCdtAuguVbs=; b=o75JY9uyoCrgmUdKkfLCitw5IL
	DREnqEzdS0fm6HS8v2CCgNQ/LCgFGmNHNF6HGhy6gYYmkECVJf5zIaDz9ZvMTHozSFYFP9xdaZrVB
	+aU5SMQwOSh+3BiZOKVeLNZoBjNyNVdAgW8aFOK3dP/cEJLqBYFeLmbfUmNpNuRMqxNgTfqwUMTqz
	TDGH9fbDbtvVjavIEVj8lCZYmthzMFvYmXRavwxPghopsnCSw5UNexRS46ZoorA7zXkcBpF6ep+38
	Lnpatg3Ps9vr9k8bNjEeymQp/x2uZJTorswErB0iUTAYxcBNrenv7h+YbIt4Mi9+DCbS+/ASMou7f
	kZhW5WTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBGSP-00Bacx-MA; Tue, 12 Jul 2022 14:01:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBGSK-00Baaw-EI
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 14:01:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oBGSJ-0001CF-0w; Tue, 12 Jul 2022 16:01:39 +0200
Message-ID: <200c0d39-6ede-e8f8-3c60-f803f707c5ee@pengutronix.de>
Date: Tue, 12 Jul 2022 16:01:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20220712133202.2472149-1-s.hauer@pengutronix.de>
 <20220712133202.2472149-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220712133202.2472149-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_070140_511482_5FF06113 
X-CRM114-Status: GOOD (  17.00  )
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
Subject: Re: [PATCH 2/2] ARM: i.MX8MP-EVK: Use compressed dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 12.07.22 15:32, Sascha Hauer wrote:
> Use a compressed dtb to save some space in OCRAM.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I sent patches a few days ago to move the select to ARCH_IMX8M.

> ---
>  arch/arm/mach-imx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 54a4f7a33a..fb96234de2 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -591,6 +591,7 @@ config MACH_NXP_IMX8MP_EVK
>  	select IMX8M_DRAM
>  	select I2C_IMX_EARLY
>  	select USB_GADGET_DRIVER_ARC_PBL
> +	select ARM_USE_COMPRESSED_DTB
>  
>  config MACH_NXP_IMX8MQ_EVK
>  	bool "NXP i.MX8MQ EVK Board"


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


