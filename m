Delivery-date: Fri, 16 Jan 2026 09:34:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfHj-001tln-2d
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 09:34:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgfHi-0007Gz-LY
	for lore@pengutronix.de; Fri, 16 Jan 2026 09:34:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SmRmYej5qV0KeDUSx9ln2jtF+DICZmLoibr7r5dNJ1M=; b=MZla/AztOat8Ffitgi7cmtDble
	Uc7qtmFOElFeTCnisOOyU97Qh/85G2sFMYVupNU4L+WNNUwwqSPN9fkT6DTcyQY3eF6ncvGDm9BXN
	a/brzqjxoaiFzXHmYZMxBpcdPG5YvvNLILgYVIOT/sU6yRONJ296odQ9u+NvYzJG24uZ6+m4k7gEP
	JS2SKVlFQecScMH9DTLKQsu1enJm/b0Ys1enQF4zi+VJbjj1UciefrrslnUKEks1o1rla1ov13XFR
	1XLztiD9FeSG4Mng6t+r5S/gOw57sEPKFOYkkAhGEbhm3j4TU7PUm9oylqrY4MZTehR4ybemnuiPL
	yZ/c4JqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfHD-0000000DlZ2-38BJ;
	Fri, 16 Jan 2026 08:33:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgfHB-0000000DlYh-0RS9
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 08:33:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vgfH7-0007C3-3q; Fri, 16 Jan 2026 09:33:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vgfH7-000t8x-1V;
	Fri, 16 Jan 2026 09:33:44 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vgfH6-00FS1K-29;
	Fri, 16 Jan 2026 09:33:44 +0100
Date: Fri, 16 Jan 2026 09:33:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, David Dgien <dgienda125@gmail.com>
Message-ID: <aWn36P7Q9UKkpkkd@pengutronix.de>
References: <20260115115924.3428886-1-a.fatoum@barebox.org>
 <20260115115924.3428886-3-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115115924.3428886-3-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_003349_152208_5E6657A7 
X-CRM114-Status: GOOD (  26.41  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/12] ARM: qemu-virt: add image for use as -bios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 15, 2026 at 12:54:28PM +0100, Ahmad Fatoum wrote:
> We previously used barebox-dt-2nd.img as image for Qemu Virt.
> Adding a dedicated image however allows us to use -kernel to specify,
> well, a kernel, which can make some testing scenarios more straight
> forward, once we implement support for barebox to lookup -kernel and
> -append QEMU options.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  arch/arm/boards/Makefile                  |  1 +
>  arch/arm/boards/qemu-virt/Makefile        |  2 +-
>  arch/arm/boards/qemu-virt/lowlevel.c      | 80 +++++++++++++++++++++++
>  images/Makefile.vexpress                  |  5 ++
>  include/compressed-dtb.h                  |  1 +
>  test/arm/virt-el2@multi_v8_defconfig.yaml | 23 +++++++
>  test/arm/virt@multi_v8_defconfig.yaml     |  4 +-
>  7 files changed, 113 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boards/qemu-virt/lowlevel.c
>  create mode 100644 test/arm/virt-el2@multi_v8_defconfig.yaml
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 4c586de2a985..dd2f2c324e25 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -189,6 +189,7 @@ obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
>  obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
>  obj-$(CONFIG_MACH_PINE64_PINETAB2)		+= pine64-pinetab2/
>  obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
> +obj-$(CONFIG_BOARD_ARM_VIRT)			+= qemu-virt/
>  obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
>  obj-$(CONFIG_MACH_RADXA_ROCK5)			+= radxa-rock5/
>  obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard-imx8mp/
> diff --git a/arch/arm/boards/qemu-virt/Makefile b/arch/arm/boards/qemu-virt/Makefile
> index ad283446eaf1..458f5209008d 100644
> --- a/arch/arm/boards/qemu-virt/Makefile
> +++ b/arch/arm/boards/qemu-virt/Makefile
> @@ -1,3 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> -obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/qemu-virt/lowlevel.c b/arch/arm/boards/qemu-virt/lowlevel.c
> new file mode 100644
> index 000000000000..6397bf165d4c
> --- /dev/null
> +++ b/arch/arm/boards/qemu-virt/lowlevel.c
> @@ -0,0 +1,80 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <linux/sizes.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/reloc.h>
> +#include <compressed-dtb.h>
> +#include <debug_ll.h>
> +#include <console.h>
> +#include <stdio.h>
> +#include <debug_ll/pl011.h>
> +#include <pbl.h>
> +
> +#define RAM_BASE	0x40000000
> +#define PL011_BASE	IOMEM(0x9000000)
> +
> +extern char __dtb_qemu_virt32_start[];
> +extern char __dtb_qemu_virt64_start[];
> +
> +static void *find_fdt(void *r0)
> +{
> +	void *fdt, *ram = (void *)RAM_BASE;
> +	const char *origin;
> +
> +	if (blob_is_fdt(ram)) {
> +		origin = "-bios";
> +		fdt = ram;
> +	} else if (r0 >= ram && blob_is_fdt(r0)) {
> +		origin = "-kernel";
> +		fdt = r0;
> +	} else if (IS_ENABLED(CONFIG_ARM32)) {
> +		origin = "built-in";
> +		fdt = __dtb_qemu_virt32_start;
> +	} else {
> +		origin = "built-in";
> +		fdt = __dtb_qemu_virt64_start;
> +	}
> +
> +	printf("Using %s device tree at %p\n", origin, fdt);

Doesn't make a difference for PBL, but I think pr_info would be more
appropriate here.

>  #define BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
> diff --git a/test/arm/virt-el2@multi_v8_defconfig.yaml b/test/arm/virt-el2@multi_v8_defconfig.yaml
> new file mode 100644
> index 000000000000..8aa514fb4179
> --- /dev/null
> +++ b/test/arm/virt-el2@multi_v8_defconfig.yaml

You anticipated ARM32 above, how about adding these for
multi_v7_defconfig as well?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


