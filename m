Delivery-date: Wed, 13 Mar 2024 08:55:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJSe-0045Yj-0k
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 08:55:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJSd-0005vj-Ew
	for lore@pengutronix.de; Wed, 13 Mar 2024 08:55:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=atm1w5rhjZmVJQke2evmvqscmOeWw8CSFJ9/9DAypbw=; b=0unBKum55aqP9TWYCS3IsNoOr9
	1cAFZzUm1H/7aljcAkGbDciyvLtx4J9T1tBLdJeVj1FWUGRTPXvK7aaQvVf1OguIr2eUyc+yIrcnH
	98x4OF8Q0bMYqna5uSGUApuRAQC3pWVUYlM4zIwZtAUorNNWgrE3tU52+lCypO8/Dt3sWQXWpJOly
	lSgbdODvYMzQxEVtkGJuNXHH/DmdSZQRj6s2ks1EcwoyrIMNQjTc2xgU/57lehgv3Bpf8fRv3MeGk
	R3nCMqkVfuBOlJLyQvwU2Ge2WTJarGIJaWgL/zaYGzIU2ftN49/S2YZaDvBzr5whm/vXHu6If8q+S
	W9B+1c8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJSG-00000009Flb-2w22;
	Wed, 13 Mar 2024 07:55:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJSD-00000009FlA-1UvM
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 07:55:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rkJSC-0005eZ-4U; Wed, 13 Mar 2024 08:55:12 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rkJSB-0064UQ-OK; Wed, 13 Mar 2024 08:55:11 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rkJSB-00FVDy-2A;
	Wed, 13 Mar 2024 08:55:11 +0100
Date: Wed, 13 Mar 2024 08:55:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <ZfFb330vlcclb_tz@pengutronix.de>
References: <20240310215434.1220451-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240310215434.1220451-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_005513_926216_F3E35699 
X-CRM114-Status: GOOD (  26.54  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] MIPS: add generic device tree 2nd stage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 11, 2024 at 12:54:34AM +0300, Antony Pavlov wrote:
> Building and running barebox for 32-bit malta:
> 
> export ARCH=mips
> export CROSS_COMPILE=mips-linux-gnu-
> make -s qemu-malta_defconfig
> sed -i "s/# \(CONFIG_BOARD_MIPS_GENERIC_DT\) is not set/\1=y/" .config
> make -s oldconfig
> make -s
> qemu-system-mips -M malta -cpu 24Kf -m 256M \
>             -nographic -serial mon:stdio \
>             -bios images/barebox-qemu-malta.img \
>             -net user,tftp=$(pwd) -net nic,model=e1000
> 
> Building and running barebox for 64-bit malta:
> 
> export ARCH=mips
> export CROSS_COMPILE=mips-linux-gnu-
> make -s qemu-malta64el_defconfig
> sed -i "s/# \(CONFIG_BOARD_MIPS_GENERIC_DT\) is not set/\1=y/" .config
> make -s oldconfig
> make -s
> qemu-system-mips64el -M malta -cpu MIPS64R2-generic -m 256M \
>             -nographic -serial mon:stdio \
>             -bios images/barebox-qemu-malta.img.swapped \
>             -net user,tftp=$(pwd) -net nic,model=e1000
> 
> Use bootm to run barebox-dt-2nd.img (external device tree):
> 
> barebox@qemu malta:/ dhcp
> barebox@qemu malta:/ cp /mnt/tftp/images/barebox-dt-2nd.img barebox.img
> barebox@qemu malta:/ cp /mnt/tftp/arch/mips/dts/qemu-malta.dtb .
> barebox@qemu malta:/ imd barebox.img
> barebox@qemu malta:/ bootm -o qemu-malta.dtb barebox.img
> 
> Use bootm to run barebox-qemu-malta.img (encapsulated device tree):
> 
> barebox@qemu malta:/ dhcp
> barebox@qemu malta:/ cp /mnt/tftp/images/barebox-qemu-malta.img barebox.img
> barebox@qemu malta:/ imd barebox.img
> barebox@qemu malta:/ bootm barebox.img
> 
> N.B. Use just the same commands for both 32-bit and 64-bit malta boards.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Kconfig               | 10 ++++++++++
>  arch/mips/boards/Makefile       |  2 ++
>  arch/mips/boards/board-dt-2nd.S | 35 +++++++++++++++++++++++++++++++++
>  arch/mips/boot/main_entry-pbl.c |  4 ++++
>  arch/mips/lib/bootm.c           | 13 ++++++++++--
>  5 files changed, 62 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 63ba6aa9d5a..14062dee347 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -319,6 +319,16 @@ config 64BIT
>  
>  endchoice
>  
> +config BOARD_MIPS_GENERIC_DT
> +	select BOARD_GENERIC_DT
> +	depends on OFDEVICE
> +	bool "Build generic MIPS device tree 2nd stage image"
> +	help
> +	  This enables compilation of a generic image that can be started 2nd
> +	  stage from barebox or from qemu. It picks up a device tree passed
> +	  in a1 like the Kernel does.
> +	  The image will be called images/barebox-dt-2nd.img
> +
>  menu "MIPS specific settings"
>  
>  config CMD_MIPS_CPUINFO
> diff --git a/arch/mips/boards/Makefile b/arch/mips/boards/Makefile
> index 9402035856c..c4ce599c934 100644
> --- a/arch/mips/boards/Makefile
> +++ b/arch/mips/boards/Makefile
> @@ -13,3 +13,5 @@ obj-$(CONFIG_BOARD_QEMU_MALTA) += qemu-malta/
>  obj-$(CONFIG_BOARD_RZX50) += ritmix-rzx50/
>  obj-$(CONFIG_BOARD_TPLINK_MR3020) += tplink-mr3020/
>  obj-$(CONFIG_BOARD_TPLINK_WDR4300) += tplink-wdr4300/
> +
> +pbl-$(CONFIG_BOARD_MIPS_GENERIC_DT) += board-dt-2nd.o
> diff --git a/arch/mips/boards/board-dt-2nd.S b/arch/mips/boards/board-dt-2nd.S
> new file mode 100644
> index 00000000000..a1465f09e36
> --- /dev/null
> +++ b/arch/mips/boards/board-dt-2nd.S
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Startup Code for generic MIPS device tree 2nd stage image
> + *
> + * Copyright (C) 2024 Antony Pavlov <antonynpavlov@gmail.com>
> + */
> +
> +#include <asm/asm.h>
> +#include <asm/pbl_macros.h>
> +#include <linux/sizes.h>
> +
> +ENTRY_FUNCTION(start_dt_2nd)
> +
> +	/* save device tree address in v1 */
> +	move	v1, a1
> +
> +	mips_cpu_setup
> +
> +	copy_to_link_location	start_dt_2nd
> +
> +	stack_setup
> +
> +	/* pbl_main_entry() computes fdt_len by itself
> +	 * if fdt == fdt_end */
> +	move	a0, v1 /* fdt */
> +	move	a1, v1 /* fdt_end */
> +	PTR_LI	a2, SZ_256M /* ram_size */

Could this be taken from dt finally? I think it's good enough for now,
but would be a nice improvement.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


