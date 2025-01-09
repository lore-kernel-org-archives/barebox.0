Delivery-date: Thu, 09 Jan 2025 10:18:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVogQ-0016kT-0w
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 10:18:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVogQ-0002wQ-7r
	for lore@pengutronix.de; Thu, 09 Jan 2025 10:18:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oxYcmJFUQpE5Z6Y9/PeruMkeHvJ3oibkCrJ4bbYOzFU=; b=fb2Y9P4aBk0GF9emm96L2/k6/3
	YO+LosnEySodgJKgeKP0YVvfc8mUzPjgoww6Sm0AaymXi8rBtckqsstZYHawOZST4LyP7A39IcT3b
	goeVutQFZkw6aj2QiFwWwnngF2rWd9fxgh/TYcIxdXMSSnVtlG0vk1JGrJP64USyItzvy51d9sZnK
	wBEnjz0DjYC/gOJ6lD2HM7pgi8SZT6YLZ+xK8O1P/MKd9+GTRbv5AARvEQTJU9JrNzJhhnGQMytgs
	1pHI4d3LUEATIo3Oe2CJbdmINj5zz0O8h2lV27mO5tSv1iac8RLHCMi2/BntfvP/Mafcbsjtx0JDR
	hnDkTwMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVofu-0000000BJz8-2f8c;
	Thu, 09 Jan 2025 09:17:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVoYu-0000000BHow-3YLh
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 09:10:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVoYs-0001Wh-UP; Thu, 09 Jan 2025 10:10:42 +0100
Message-ID: <e4af3816-0f89-402a-8d4f-25c477dc62ee@pengutronix.de>
Date: Thu, 9 Jan 2025 10:10:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250109074433.3242953-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250109074433.3242953-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_011044_891409_F13366CC 
X-CRM114-Status: GOOD (  17.15  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: add config option for dfu command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 09.01.25 08:44, Sascha Hauer wrote:
> Add an extra config option for the dfu command to avoid building it in
> non interactive builds which leads to linker errors.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/Kconfig  | 6 ++++++
>  commands/Makefile | 2 +-
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 67116ec9fc..a30299abf6 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2172,6 +2172,12 @@ config CMD_USBGADGET
>  	depends on USB_GADGET
>  	prompt "usbgadget"
>  
> +config CMD_DFU
> +	bool
> +	depends on USB_GADGET_DFU
> +	default y

Let's use the occasion and make it not enabled by default?

> +	prompt "dfu"

Please add a help text pointing out usbgdaget and mentioning that
the downside of using dfu (blocks shell).

Thanks,
Ahmad

> +
>  config CMD_WD
>  	bool
>  	depends on WATCHDOG
> diff --git a/commands/Makefile b/commands/Makefile
> index a98c39637c..0dfa0a33a4 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -64,7 +64,7 @@ obj-$(CONFIG_CMD_INSMOD)	+= insmod.o
>  obj-$(CONFIG_CMD_SPLASH)	+= splash.o
>  obj-$(CONFIG_CMD_FBTEST)	+= fbtest.o
>  obj-$(CONFIG_CMD_BEEP)		+= beep.o
> -obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
> +obj-$(CONFIG_CMD_DFU)		+= dfu.o
>  obj-$(CONFIG_USB_GADGET_SERIAL)	+= usbserial.o
>  obj-$(CONFIG_CMD_GPIO)		+= gpio.o
>  obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


