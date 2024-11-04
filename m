Delivery-date: Mon, 04 Nov 2024 11:49:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7udw-004iDh-2N
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 11:49:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7udx-00065Z-AS
	for lore@pengutronix.de; Mon, 04 Nov 2024 11:49:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5HfFSebn0opi7+6rGsYhXrLrOmgWDg40lAT0csBlpfM=; b=RIvWJFZYo5b2b+uKwBBAKaZea7
	3RPvTDj7s638j4zmeffjXLixzlyq4UVF6ER7uCfiqaVQH+v0eu9t1yVHJd4sPjL7DcRwKz3kCxI5h
	xejsF5IKiEi9iBkVshA9gfLh+SAKHvjIpXlNYTyNQxnp8GFAo66qHJ+y3bcaQ7J2I51jacaKfZi15
	pbMNTy7JYVgKMbvXwCcv862nvomzRHVtKE6PSF9KR8ECaPUuQMA30dxacJN3Zyermn95PnNm5to6w
	Y+yJQ+gdVcUkzyoese6qyFTnXg9JtslLFnUIfRVsUQQLE/rubzLsYShRII78vmB0PY2J+3EZvuNzm
	ZyWlEZ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7udL-0000000DMZA-1LRy;
	Mon, 04 Nov 2024 10:48:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7udH-0000000DMYQ-1PQH
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 10:48:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t7udF-00061c-Ty; Mon, 04 Nov 2024 11:48:25 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7udF-001xrO-2N;
	Mon, 04 Nov 2024 11:48:25 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7udF-00DRrt-27;
	Mon, 04 Nov 2024 11:48:25 +0100
Date: Mon, 4 Nov 2024 11:48:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZyimeUKCZ91qZsr2@pengutronix.de>
References: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-0-96df2d7dadf4@pengutronix.de>
 <20241029-v2024-10-0-topic-socfpga-agilex5-v1-5-96df2d7dadf4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-5-96df2d7dadf4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_024827_395135_E4DBE6A7 
X-CRM114-Status: GOOD (  23.41  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/10] ARM: socfpga: add Arrow AXE5 Agilex5 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 29, 2024 at 09:42:35AM +0100, Steffen Trumtrar wrote:
> Add the Agilex5-based Arrow AXE5-Eagle board.
> It consists among other things of:
>   - Agilex5 SoCFPGA
>   - 1 GB LPDDR4 SDRAM for HPS
>   - 1 GB LPDDR4 SDRAM for FPGA
>   - 1 Gb QSPI for configuration via SDM
>   - microSD
>   - 4-port USB hub
>   - 2x 1Gb Ethernet
>   - HDMI output
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                    |  1 +
>  arch/arm/boards/arrow-axe5-eagle/Makefile   |  3 +
>  arch/arm/boards/arrow-axe5-eagle/board.c    | 23 +++++++
>  arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 58 ++++++++++++++++++
>  arch/arm/configs/socfpga-agilex5_defconfig  | 88 +++++++++++++++++++++++++++
>  arch/arm/dts/Makefile                       |  1 +
>  arch/arm/dts/socfpga_agilex5_axe5_eagle.dts | 94 +++++++++++++++++++++++++++++
>  images/Makefile.socfpga                     |  9 +++
>  8 files changed, 277 insertions(+)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index e0dc27cb3d21cc7bc763f148595321562d65d740..bc4d3bb4ea9e5691de90cbf7e6b0fbc577076732 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -111,6 +111,7 @@ obj-$(CONFIG_MACH_SAMA5D4_WIFX)			+= sama5d4_wifx/
>  obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
>  obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
>  obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
> +obj-$(CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE)	+= arrow-axe5-eagle/
>  obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
>  obj-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1)	+= enclustra-aa1/
>  obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
> diff --git a/arch/arm/boards/arrow-axe5-eagle/Makefile b/arch/arm/boards/arrow-axe5-eagle/Makefile
> new file mode 100644
> index 0000000000000000000000000000000000000000..1d052d28c9fc6a82dbf806eedac60fac8a56d4f9
> --- /dev/null
> +++ b/arch/arm/boards/arrow-axe5-eagle/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +lwl-y += lowlevel.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/arrow-axe5-eagle/board.c b/arch/arm/boards/arrow-axe5-eagle/board.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..1efea0b3d9cf0aa5ecd7c67ea9348708dcfd0b80
> --- /dev/null
> +++ b/arch/arm/boards/arrow-axe5-eagle/board.c
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <bbu.h>
> +#include <mach/socfpga/soc64-regs.h>
> +
> +static int axe5_init(void)
> +{
> +	if (!of_machine_is_compatible("arrow,axe5-eagle"))
> +		return 0;
> +
> +	pr_debug("Change the pullup values on EMAC2 HPS mii signals\n");
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x224);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x228);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x23c);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x234);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x248);
> +	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x24c);
> +
> +	return 0;
> +}
> +postcore_initcall(axe5_init);

Please convert to a board driver.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


