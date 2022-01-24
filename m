Delivery-date: Mon, 24 Jan 2022 09:57:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBv9u-00BiPh-JU
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 09:57:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBv9t-0001gU-6N
	for lore@pengutronix.de; Mon, 24 Jan 2022 09:57:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X82r8RGmrrZeMmNK5Xio7plc0+ZqfHRY1iC2aCl/FbI=; b=GoPDXhVWP81frj
	qk1vt8DU+n/u4LqCMikC51XKUgNdlgYCAPR74OxDB/LfeCY5TFeTb0boRI6vQbfbkNkszMoqkUhOT
	LNhnqptMRQuxJBKPkwKaTfbbkNNTQcVtYNtfJqZUF5q3wiRtPD9zcOzeIeY/BtOpYx5kBQL4vrB3i
	6/aATaAiUBdO+HUwwMuABei+QaFqZVb+2brYghwjDd5OgfhmA/R+bN3iJ78xfK2fclt7VVUZGPW1O
	qhaJNmVlEZUAmieyfLdBb0J846uwrbvG1s/w11AzCvLgxDv/54WBkhfDKAT9CpRKNBzVB5XWeDiyZ
	7/O3fkKcXCJ0ZV8IqaGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBv8F-002gdB-9a; Mon, 24 Jan 2022 08:55:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBv88-002gb4-GE
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 08:55:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nBv86-0001PC-Ai; Mon, 24 Jan 2022 09:55:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nBv85-0006p9-Uk; Mon, 24 Jan 2022 09:55:13 +0100
Date: Mon, 24 Jan 2022 09:55:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, barebox@lists.infradead.org
Message-ID: <20220124085513.GX23490@pengutronix.de>
References: <20220123165149.158515-1-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220123165149.158515-1-linux@fw-web.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:32:52 up 44 days, 17:18, 74 users,  load average: 0.10, 0.18, 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_005516_597519_6B3E00EC 
X-CRM114-Status: GOOD (  36.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] ARM: Rockchip: Add rk3568 BananaPi R2 Pro board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Jan 23, 2022 at 05:51:49PM +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> This adds support for the BananaPi R2 Pro board.
> It is basicly a copy of rk3568 evb board but with slightly modified DTS.
> Added GPIO-Leds to dts and modified the hw-detection a bit.
> 
> Tested features so far are:
> 
>  - 1st stage booting
>  - Network
>  - SD card (Emmc not tested but basicly same as on EVB)
>  - power LED (green)
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  .../rockchip-rk3568-bpi-r2pro/.gitignore      |   1 +
>  .../boards/rockchip-rk3568-bpi-r2pro/Makefile |   2 +
>  .../boards/rockchip-rk3568-bpi-r2pro/board.c  |  93 +++
>  .../rockchip-rk3568-bpi-r2pro/lowlevel.c      |  49 ++
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/rk3568-bpi-r2-pro.dts            | 593 ++++++++++++++++++
>  arch/arm/mach-rockchip/Kconfig                |   6 +
>  dts/Bindings/arm/rockchip.yaml                |   5 +
>  images/Makefile.rockchip                      |   7 +
>  10 files changed, 758 insertions(+)
>  create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/.gitignore
>  create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/Makefile
>  create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
>  create mode 100644 arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
>  create mode 100644 arch/arm/dts/rk3568-bpi-r2-pro.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 6fe1b5991455..c26f84dcd8de 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -186,4 +186,5 @@ obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
>  obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
>  obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
>  obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
> +obj-$(CONFIG_MACH_RK3568_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
>  obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
> diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/.gitignore b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/.gitignore
> new file mode 100644
> index 000000000000..f458f794b54c
> --- /dev/null
> +++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/.gitignore
> @@ -0,0 +1 @@
> +sdram-init.bin
> diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/Makefile b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/Makefile
> new file mode 100644
> index 000000000000..01c7a259e9a5
> --- /dev/null
> +++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
> new file mode 100644
> index 000000000000..37634a7e33ed
> --- /dev/null
> +++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/board.c
> @@ -0,0 +1,93 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#define pr_fmt(fmt) "rk3568-r2pro: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <mach/bbu.h>
> +#include <aiodev.h>
> +#include <bootsource.h>
> +#include <environment.h>
> +#include <globalvar.h>
> +#include <magicvar.h>
> +#include <deep-probe.h>
> +
> +static bool machine_is_rk3568_r2pro = false;
> +
> +static int rk3568_r2pro_probe(struct device_d *dev)
> +{
> +	enum bootsource bootsource = bootsource_get();
> +	int instance = bootsource_get_instance();
> +
> +	barebox_set_model("RK3568 R2PRO");
> +	barebox_set_hostname("rk3568-r2pro");
> +	machine_is_rk3568_r2pro = true;

Maybe add a bpi to the hostname, model, variable names and instead drop
the rk3568?

> +	if (!IS_ENABLED(CONFIG_AIODEV))
> +		return 0;
> +
> +	if (!machine_is_rk3568_r2pro)
> +		return 0;
> +
> +	hwid_chan = aiochannel_by_name("aiodev0.in_value1_mV");
> +	if (IS_ERR(hwid_chan)) {
> +		ret = PTR_ERR(hwid_chan);
> +		goto err_hwid;
> +	}
> +
> +	ret = aiochannel_get_value(hwid_chan, &hwid_voltage);
> +	if (ret)
> +		goto err_hwid;
> +
> +	pr_info("hwid_voltage: %d\n", hwid_voltage);

The voltage is not really interesting. This should be a pr_debug.

> +
> +	if (hwid_voltage == 1800)
> +		hwid = "V00";
> +	else
> +		hwid = "unknown";

Have you verified this board really encodes the hardware revision using
this adc channel?

> diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts

I saw this device tree looks different from the one you sent for kernel
inclusion. This is not a problem now, but once the kernel dts is
upstream it will show up in dts/ in the barebox tree. We then usually
include the upstream dts from the barebox board dts, so that only the
barebox specific additions are in the barebox dts. Given that it would
be nice if you could minimize the differences now already, so that later
inclusion of the upstream dts becomes easier.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

