Delivery-date: Mon, 02 Jun 2025 12:36:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2Wf-002vas-0E
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:36:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2We-0000Pl-9P
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:36:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aHY+KxXqMWfgVHPlCbksYTbr6IpYHQ63JQwd9IB6uaU=; b=JxXW6ruh/f/gKIVVR7lGdgmG0J
	lCiHXBPm00Ir9zbo96igJ6ZDMJzKarpThSYFE/YH7IQLhN2jTW2A+j+PiXYBrmc+c+u/EwNk5zxmn
	UfJ9l8qsi1FqfsNN3OQlZBwa72Os+IxEEnRb8eT45HY1JOV4hoKKMAmGgDhfV63yeaGNkrPk4kt2Y
	4IsJroRsIz1alWlRBk5N7MlOEXYjs/sNQqVT6p3OW5e0a06vfU8SCHFF84snxNQ3kO5uCDGnek8SE
	ErDHn2dLpds6YVuNulSA37LtlJbVyvv0PoaY8z9XIr8Ejr0QP5ZU/jkUb7ISNGPIWbMTnLLfZvyuu
	soAoyhfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2W9-00000007CeK-2uQm;
	Mon, 02 Jun 2025 10:35:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2Sv-00000007CEE-3BH4
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:32:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uM2Su-0007g0-HW; Mon, 02 Jun 2025 12:32:24 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM2Su-001RGg-18;
	Mon, 02 Jun 2025 12:32:24 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uM2Su-006cK0-0m;
	Mon, 02 Jun 2025 12:32:24 +0200
Date: Mon, 2 Jun 2025 12:32:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <aD19uB7PnDY4_Gg5@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
 <20250528-rk3588-optee-v2-8-63070238dd13@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250528-rk3588-optee-v2-8-63070238dd13@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_033225_798909_C4FF2C5E 
X-CRM114-Status: GOOD (  45.18  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 8/9] ARM: rockchip: pass device tree to TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, May 28, 2025 at 04:11:26PM +0200, Michael Tretter wrote:
> The upstream OP-TEE expects a device tree to be able to initialize the
> dynamic shared memory. Therefore, barebox should pass a device tree that
> contains memory nodes through the TF-A to OP-TEE.
> 
> OP-TEE may modify the passed fdt. Thus, barebox copies the fdt from the
> fixed size rodata area to the rk_scratch area and allocates a
> configurable memory area for the fdt to allow fdt modification.
> 
> OP-TEE has the CFG_DTB_MAX_SIZE config option for the maximum size of
> the fdt. barebox must reserve at least that much memory for the fdt to
> avoid out of bounds accesses from OP-TEE.
> 
> Unfortunately, the downstream TF-A fails to start if barebox passes its
> device tree and it is not possible to detect if the loaded TF-A is able
> to handle the device tree. Add a config option to pass the device tree
> if it is possible.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Changes in v2:
> - pass copy of fdt in scratch space to TF-A
> - add config option for fdt size
> - add documentation for CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
> ---
>  Documentation/boards/rockchip.rst |  4 ++++
>  arch/arm/mach-rockchip/Kconfig    | 23 +++++++++++++++++++++++
>  arch/arm/mach-rockchip/atf.c      | 24 ++++++++++++------------
>  include/mach/rockchip/bootrom.h   |  3 +++
>  4 files changed, 42 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
> index b2b04abb03cd1926bb59799af5f6a8c11d410cc2..8bce92865e3eda193412180c7295b5a35b3531e8 100644
> --- a/Documentation/boards/rockchip.rst
> +++ b/Documentation/boards/rockchip.rst
> @@ -94,6 +94,10 @@ With these barebox can be compiled as:
>  .. note:: The RK3566 and RK3568 seem to share the bl31 and bl32 firmware files,
>    whereas the memory initialization blob is different.
>  
> +.. note:: The bl31 from the rkbin repository seems to be unable to handle
> +  device trees of a larger size (for example, if CONFIG_OF_OVERLAY_LIVE is
> +  enabled). Disable CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT in this case.
> +
>  Creating a bootable SD card
>  ---------------------------
>  
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
> index 98dfd11c182b9fee6e3c958653ad4fa8a7d98d84..1b72dc4b8a16ce9dca742ff1173fc2208a0e619d 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -141,6 +141,29 @@ config ARCH_ROCKCHIP_ATF
>  	  useful for debugging early startup, but for all other cases,
>  	  say y here.
>  
> +config ARCH_ROCKCHIP_ATF_PASS_FDT
> +	bool "Pass device tree to TF-A"
> +	depends on ARCH_ROCKCHIP_ATF
> +	help
> +	  Enable this option if you are using an upstream OP-TEE that uses the
> +	  device tree to initialize dynamic shared memory, which is passed
> +	  through the upstream TF-A.
> +
> +	  Disable the option if you are using a downstream TF-A since it
> +	  doesn't always cope with device trees. Supposedly this happens if the
> +	  device tree is too large, for example if CONFIG_OF_OVERLAY_LIVE is
> +	  enabled.
> +
> +config ARCH_ROCKCHIP_ATF_FDT_SIZE
> +	hex
> +	default 0x0
> +	default 0x60000 if ARCH_ROCKCHIP_ATF_PASS_FDT
> +	prompt "Reserved size for the FDT blob passed to the TF-A"
> +	help
> +	  Set this size to CFG_DTB_MAX_SIZE in the OP-TEE configuration. OP-TEE
> +	  may modify the passed device tree and increase it's size. This
> +	  ensures that barebox reserves enough memory for the modifications.
> +
>  config ARCH_ROCKCHIP_OPTEE
>  	bool "Build rockchip OP-TEE binary into barebox"
>  	depends on ARCH_ROCKCHIP_ATF
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index cfa6df043b34c0f36919048237c7ecf33dfe0724..f4a71ef2dc8dffc6ceb4f97ee542f5b83858120b 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -183,21 +183,21 @@ void __noreturn rk3588_barebox_entry(void *fdt)
>  	rk_scratch = (void *)arm_mem_scratch(endmem);
>  
>  	if (current_el() == 3) {
> +		void *fdt_scratch = NULL;
> +
>  		rk3588_lowlevel_init();
>  		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
>  
> -		/*
> -		 * The downstream TF-A doesn't cope with our device tree when
> -		 * CONFIG_OF_OVERLAY_LIVE is enabled, supposedly because it is
> -		 * too big for some reason. Otherwise it doesn't have any visible
> -		 * effect if we pass a device tree or not, except that the TF-A
> -		 * fills in the ethernet MAC address into the device tree.
> -		 * The upstream TF-A doesn't use the device tree at all.
> -		 *
> -		 * Pass NULL for now until we have a good reason to pass a real
> -		 * device tree.
> -		 */
> -		rk3588_atf_load_bl31(NULL);
> +#ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
> +		pr_debug("Copy fdt to scratch area 0x%p (%zu bytes)\n",
> +			 rk_scratch->fdt, sizeof(rk_scratch->fdt));
> +		if (fdt_open_into(fdt, rk_scratch->fdt, sizeof(rk_scratch->fdt)) == 0)
> +			fdt_scratch = rk_scratch->fdt;
> +		else
> +			pr_warn("Failed to copy fdt to scratch: Continue without fdt\n");
> +#endif

I converted this to if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT))
while applying.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


