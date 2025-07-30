Delivery-date: Wed, 30 Jul 2025 08:12:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh03K-005AhE-2J
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 08:12:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh03K-00053l-1q
	for lore@pengutronix.de; Wed, 30 Jul 2025 08:12:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p4N8LJDmL79PGoYwdIRmq62bYf/YrmB+8PelBuIJh/0=; b=bqVNUGdbbQOhXd34ZlFp8XIms1
	pscaKkO2+4TG0uQ5zkVlSQ9cw+KOeWko6YUhgFzucgJPyTxOy69y/8IvuDOcilfxECquDLyCfjHXE
	tEccTZCexmJY38mlCB4yZLOcSxxyXFNhcpRSyEtpx1/UCn7nEv1d03nk1KEhkUuHPdfStKbejg/tz
	t1S6P+d83fboLZFXpyJ7K4zv83EruAn30J7u/ojNzAkV2sgpNUX4Aj6eMcUZWL5uOZEHwCIambYUh
	Ek6RYvC/2WhFy1Uhr1JDF+vm7S4x6PraBAUb3ZOlQ2C6jxT1rbKA0TbE8zqDVF39zhp9tGfahloom
	/njW0NtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh02q-00000000mGD-44Aq;
	Wed, 30 Jul 2025 06:12:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh02n-00000000mEb-3TD1
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 06:12:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh02l-0004zo-8G; Wed, 30 Jul 2025 08:12:03 +0200
Message-ID: <0271f274-7d1d-4d93-8e89-30881ffca47c@pengutronix.de>
Date: Wed, 30 Jul 2025 08:12:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250730035010.3318600-1-chalianis1@gmail.com>
 <20250730035010.3318600-2-chalianis1@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250730035010.3318600-2-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_231205_868674_08C10084 
X-CRM114-Status: GOOD (  23.31  )
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
Subject: Re: [PATCH] arm: efi: add a dummy efi arch on ARM64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 30.07.25 05:50, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> this arch will forces a generic arm 64 cpu, which will
> produce an efi payload on ARM 64, this works with a virtual
> machine using qemu-system-aarch64, need further work to support
> real hardware.
> Submit the patch in case someone is interrested in working
> to have a full support for efi payload on real hardware.

Thanks for your patch.

For the Virt platforms we decided to use the multi defconfigs to cut down
on the number of configs. I think efi_defconfig is useful to have, because
it shares little with other existing configs, but it might confuse users
to provide it before it is a viable target, i.e. can actually boot a kernel
via EFI...

I just submitted an alternative patch for multi_v8_efi_defconfig, which could
be used as stepping stone for further work.

What do you think?

> -Use the following to build barebox for EFI:
> +Use the following to build barebox for EFI for x86:
>  
>  .. code-block:: sh
>  
> @@ -31,6 +31,15 @@ Use the following to build barebox for EFI:
>    make efi_defconfig
>    make
>  
> +for EFI on arm 64 use:
> +
> +.. code-block:: sh
> +
> +  export ARCH=arm
> +  export CROSS_COMPILE=aarch64-linux-gnu-
> +  make efi_defconfig
> +  make
> +
>  The resulting EFI image is ``barebox.efi`` (or the barebox-flash-image link).
>  
>  Running barebox on EFI systems
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index d283ef7793a1..d5dd6abc416f 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -276,6 +276,7 @@ source "arch/arm/mach-vexpress/Kconfig"
>  source "arch/arm/mach-tegra/Kconfig"
>  source "arch/arm/mach-zynq/Kconfig"
>  source "arch/arm/mach-zynqmp/Kconfig"
> +source "arch/arm/mach-efi/Kconfig"
>  
>  config BOARD_ARM_VIRT
>  	bool
> diff --git a/arch/arm/configs/efi_defconfig b/arch/arm/configs/efi_defconfig
> new file mode 100644
> index 000000000000..5fe998ed4d4d

> +CONFIG_VIDEO=y
> +CONFIG_FRAMEBUFFER_CONSOLE=y
> +CONFIG_DRIVER_VIDEO_EFI_GOP=y

This doesn't work correctly on ARM yet

> +CONFIG_FINTEK_SUPERIO=y
> +CONFIG_SMSC_SUPERIO=y

These are likely not used with ARM systems

> +CONFIG_STATE_DRV=y
> +CONFIG_WATCHDOG=y
> +CONFIG_WATCHDOG_EFI=y
> +CONFIG_F71808E_WDT=y
> +CONFIG_ITCO_WDT=y

Not relevant to ARM systems.

> +++ b/arch/arm/mach-efi/Kconfig
> @@ -0,0 +1,10 @@
> +config EFI_ARM64
> +	bool "EFI on ARM64"
> +	select CPU_V8
> +	select CPU_SUPPORTS_64BIT_KERNEL
> +	select HAVE_EFI_PAYLOAD
> +	select EFI_PAYLOAD

EFI_PAYLOAD is still gated behind COMPILE_TEST, so I think this should result in
a warning.

> +    select CLOCKSOURCE_EFI

Wrong indentation.

Cheers,
Ahmad
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


