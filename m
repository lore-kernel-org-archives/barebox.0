Delivery-date: Fri, 23 Jan 2026 10:46:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjDkk-004RGe-0U
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 10:46:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjDkj-0000Nx-22
	for lore@pengutronix.de; Fri, 23 Jan 2026 10:46:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AqmFUXD8aTfFsd0QTRLXBMtbdnUMfLx6OCnwFk/37Tg=; b=jh64cu5620rZexdJidGMbcvs/R
	1GAGv1DwaaPBHyBaY+jy0eolzpqjyPZaULt4KZWjVpFuRmhGIkuD3eh/FFnfzZcXX8brQqEyUmFV8
	RTmFFGsn20EC+psgcFT/8k2RapkUhVikIXlBHJ/8VBpSqlTRL79xKdaqMtAHI7xzqiKiCslIVztU4
	aHCpp6dp8cI1WTqPJiB9GReZ0weu7C78W4lz7hblfwV0ipDXd0hj5Bk32e3dByC7enMzm9nYnYGQ1
	fNbKRD7gtzddtyM+/8Hxwc68umwSrwfBto/R1XaNHzPBhx+ns+UeAfK2vAviX7IKMddZ/8skVYqJv
	OHKbQ7eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDkB-00000008c1n-2pxH;
	Fri, 23 Jan 2026 09:46:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDkA-00000008c1b-1G0F
	for barebox@bombadil.infradead.org;
	Fri, 23 Jan 2026 09:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=AqmFUXD8aTfFsd0QTRLXBMtbdnUMfLx6OCnwFk/37Tg=; b=GyFr5lWdEjJvNlo1HMh/QgnhZn
	8sP8S1lAXHRCg+vN3D1XJJrj3SefWcXrcO9rdI+RF9q2IFRk7No/heDmKQHkk3sZ+ODnIdqnmAEwa
	c5dnu7AmwmIO48X2T7/HvcxoPe2h6mAEbZ+re4cd5GWPtHZHoyktaC9Nk5Y0Ui49s1/1gMSTkAsUb
	3QvdUHe0FZIRWtNxok05a4t051uIq8g0u6VwYBlSIeZyJj15M81isbDijo8POpIaSMHzQUzGVMtly
	FoagCdlPxHQ0a7DGX5JQVjyxdgDUkdE3FpIhtcAG8Kh5NXC1bQ9Q23CuiZru3PWJNSg0Q4gNtzjtL
	Tc2CWGew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDk7-000000024oG-103V
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 09:46:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vjDk4-0000Gm-Oj; Fri, 23 Jan 2026 10:46:12 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vjDk5-0024PZ-0E;
	Fri, 23 Jan 2026 10:46:12 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vjDk4-00AtcZ-0y;
	Fri, 23 Jan 2026 10:46:12 +0100
Date: Fri, 23 Jan 2026 10:46:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aXNDZFjT0rABB7G3@pengutronix.de>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
 <20260116-barebox-kickpi-v1-6-d11fbccd527a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116-barebox-kickpi-v1-6-d11fbccd527a@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_094615_442974_9596C70A 
X-CRM114-Status: GOOD (  24.73  )
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
Subject: Re: [PATCH 06/14] ARM: rockchip: Add RK3562 KickPi K3 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 16, 2026 at 08:40:40PM +0100, Sohaib Mohamed wrote:
> KICKPI-K3 is a development board based on Rockchip RK3562, the main
> control chip. It has a quad-core 64-bit Cortex-A53 processor, a main
> frequency of up to 2.0GHz, low power consumption, and high performance.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
> ---
>  arch/arm/boards/Makefile                           |  1 +
>  .../boards/rockchip-rk3562-kickpi-k3/.gitignore    |  1 +
>  arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile |  4 ++
>  arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c  | 46 ++++++++++++++++++++++
>  .../boards/rockchip-rk3562-kickpi-k3/lowlevel.c    | 23 +++++++++++
>  arch/arm/configs/multi_v8_defconfig                |  1 +
>  arch/arm/configs/rockchip_v8_defconfig             |  1 +
>  arch/arm/dts/Makefile                              |  1 +
>  arch/arm/dts/rk3562-kickpi-k3.dts                  | 10 +++++
>  arch/arm/dts/rk3562-kickpi-k3.dtsi                 |  2 +-
>  arch/arm/mach-rockchip/Kconfig                     |  6 +++
>  images/Makefile.rockchip                           |  1 +
>  12 files changed, 96 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 946af95560..2a8e85e0b3 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -186,6 +186,7 @@ obj-$(CONFIG_MACH_LS1021AIOT)			+= ls1021aiot/
>  obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
>  obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
>  obj-$(CONFIG_MACH_RK3562_EVB2)			+= rockchip-rk3562-evb2/
> +obj-$(CONFIG_MACH_RK3562_KICKPI_K3)		+= rockchip-rk3562-kickpi-k3/
>  obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
>  obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
>  obj-$(CONFIG_MACH_PINE64_PINETAB2)		+= pine64-pinetab2/
> diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/.gitignore b/arch/arm/boards/rockchip-rk3562-kickpi-k3/.gitignore
> new file mode 100644
> index 0000000000..f458f794b5
> --- /dev/null
> +++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/.gitignore
> @@ -0,0 +1 @@
> +sdram-init.bin
> diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile b/arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile
> new file mode 100644
> index 0000000000..da63d2625f
> --- /dev/null
> +++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c b/arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c
> new file mode 100644
> index 0000000000..9e96bafb88
> --- /dev/null
> +++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c
> @@ -0,0 +1,46 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#define pr_fmt(fmt) "rk3562-kickpi-k3: " fmt
> +
> +#include <bootsource.h>
> +#include <common.h>
> +#include <init.h>
> +#include <mach/rockchip/bbu.h>
> +#include <globalvar.h>
> +#include <deep-probe.h>

Clean up a bit globalvar.h and deep-probe.h are not yet needed.

> diff --git a/arch/arm/dts/rk3562-kickpi-k3.dtsi b/arch/arm/dts/rk3562-kickpi-k3.dtsi
> index 77bd61cf30..ad5349d7c4 100644
> --- a/arch/arm/dts/rk3562-kickpi-k3.dtsi
> +++ b/arch/arm/dts/rk3562-kickpi-k3.dtsi
> @@ -22,7 +22,7 @@ aliases {
>  	};
>  
>  	chosen {
> -		stdout-path = "console=serial0,1500000n8";
> +		stdout-path = "serial0:1500000n8";
>  	};

This was just introduced in a previous patch. Please squash this hunk in
there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


