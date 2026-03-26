Delivery-date: Thu, 26 Mar 2026 09:20:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5fwo-005Hiu-2Z
	for lore@lore.pengutronix.de;
	Thu, 26 Mar 2026 09:20:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5fwo-0001O0-3l
	for lore@pengutronix.de; Thu, 26 Mar 2026 09:20:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GJ6l7F6EWP6QQpCTyLXvRmf4/tIyKLFdKgLyxwyus58=; b=x4O6WRhxEXTSOjdC44V11I8l3m
	100iD2iK+tvwLe69yyA3bp1vw0y6iOQxrgu4bNXxKAPwo4ZlMr0so0TzPgJIww7m5g2sxyIBIyjJY
	Yq/uHkfb4NHdNuush1tMudM9hBEt6OCysBpzPggn8naIQQwIrfn++4oTRpTER8DlvBBfllG8SkiTK
	ElqqfiFr6ZvbbVKpRJ3HFMXcdpFm9AU0wW9OEOeH2iVHxd6Z3gYeWv+RK/JwrKDD6bHUOUtNa+Xyz
	kZ0THsbOEC1tmNBj2gEYH3pwnCT4oRuPjk8EVHI5F42LjakHZl+WjSMVm/JxWPfU9c9qHPr6QsCF9
	RcVSIypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5fwF-000000051Bl-2GQB;
	Thu, 26 Mar 2026 08:19:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5fwE-0000000519y-2EQb
	for barebox@bombadil.infradead.org;
	Thu, 26 Mar 2026 08:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=GJ6l7F6EWP6QQpCTyLXvRmf4/tIyKLFdKgLyxwyus58=; b=jtaVmFTmZVhhcJRc7oSX/odSBK
	ynNA15U8/EaxXUE51jkKi7wdqVHNqmrUwkCaM1tQPl7jMwxZXeRJKHhJl3+50kfoa9IYGw/2gdUcL
	O3foC3p7WNP4TXUHFnMU6g1/9XzulCE+gsbJZ3MHKHwqtXFUPbO74IKiGKChFUpinADN9OgZP10Hh
	ZVlyjJOrhFCXNCkElmM6tkPD6gBi2zAKLM9srPFYILYrP9IJqwKGYD0Vszz+OFk4+d7oogqvBemH3
	SWuP0lqEg0kG6xKlNAQ6Diip+SRMqXUbJTsD4iV782gqvI0jgAx75whqP3mYCqBEe1+s0mBc7A/ja
	UgwqipDA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5fwB-00000007j5h-1Rc5
	for barebox@lists.infradead.org;
	Thu, 26 Mar 2026 08:19:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5fw9-0001Cp-BR; Thu, 26 Mar 2026 09:19:29 +0100
Message-ID: <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de>
Date: Thu, 26 Mar 2026 09:19:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_081931_496928_2F906D7D 
X-CRM114-Status: GOOD (  29.84  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts
 upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michał,

Cc += Alexander, who worked on other MYIR boards in the past.

On 3/26/26 08:29, Michał Kruszewski wrote:
> Hello,
> 
> I try to boot Linux using barebox on the MYiR Z-turn board (Xilinx Zynq SoC).
> I have generated the default configuration using `make zynq_defconfig`.
> After compiling and trying to boot nothing works.

Do you use upstream or a fork? There seems to be no Z-turn board support
upstream. barebox can generate multiple images in a build, which image did
you use?

> I am not surprised at all.
> I started digging, and here are a few things that are not clear to me.
> 
> Issue number one.
> Barebox consists of 2 bootloaders, the Pre-BootLoader (PBL) and Second-Stage BootLoader (SSBL).

The Pre-Bootloader is not necessarily the first stage, we prefer the terms
PBL and barebox proper.

> However, in my case I use the First Stage BootLoader (FSBL) compiled by Vitis.
> The FSBL does all the required hardware initialization.
> In such a case, the PBL is superfluous.

Every barebox image on ARM has a prebootloader prepended that:

  - decompresses barebox proper
  - loads it and configures the MMU
  - executes it while passing a device tree

The PBL may have extra functions as well like setting up DRAM, but at the very
least it's required to load barebox.

In general, PBLs have extra logic to detect if they are loaded second-stage
(e.g. from barebox itself for development) and in that case skip redoing
one-time initialization.

> I would like to disable it.

The PBL in your case is linked into the final barebox image and they are
meant to be used together.

> However, I can't disable PBL_IMAGE in menuconfig, it is forced to Y.
> It is selected by PBL_MULTI_IMAGES [=y] && HAVE_PBL_MULTI_IMAGES [=y].
> Moreover, I can't disable HAVE_PBL_MULTI_IMAGES, it is forced to Y by selecting ARM.
> Disabling ARM of course makes no sense.
> Is it even possible to configure barebox as a SSBL-only for the Zynq SoC?
> How to achieve this?

I am looking at start_avnet_zedboard() and at the start of
avnet_zedboard_ps7_init(), it skips the low level init if started
second stage, which is what you seem to be after?

> The second issues is that the MYiR Z-turn board is not supported directly by barebox.
> However, there is a valid dts description in the dts directory (Linux upstream device tree directory).
> How can I tell barebox to use a dts from the Linux dts upstream directory?
> I looked for some config in menuconfig but without success.

For quick testing, you can replace in arch/arm/dts/zynq-zed.dts

#include <arm/xilinx/zynq-zed.dts>

with your own board. Check that the stdout-path is correct.

Once you got that working, proper board support entails adding a new
DT in arch/arm/dts/, creating a new directory in arch/arm/boards/
and adding the new image to images/Makefile.zynq as well as the
Kconfig/Kbuild additions. For details, see:

https://www.barebox.org/doc/latest/devel/porting.html#porting-to-a-new-board

> The third issue is that I can't compile dts in the dts directory.
> The make help message says:
>>   src/<ARCH>/<DTS>.dtb   Build a single device tree binary
> However, when I try I get:
>   [user@host] make src/arm/xilinx/zynq-zturn-v5.dtb
>     DTC     src/arm/xilinx/zynq-zturn-v5.dtb
>   /bin/sh: 1: -Wp,-MD,src/arm/xilinx/.zynq-zturn-v5.dtb.d.pre.tmp: not found
>   make: *** [Makefile:148: src/arm/xilinx/zynq-zturn-v5.dtb] Error 127
> Of course the ARCH and CROSS_COMPILE are exported.

dts/ are just the device trees as they are in Linux. You can only build
device tree in arch/${ARCH/dts/.

You can read more about barebox device tree handling at:

https://www.barebox.org/doc/latest/devicetree/index.html

Hope this helps.

Cheers,
Ahmad

> 
> Regards,
> Michał Kruszewski
> 
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


