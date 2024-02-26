Delivery-date: Mon, 26 Feb 2024 17:16:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1redeB-008J5V-31
	for lore@lore.pengutronix.de;
	Mon, 26 Feb 2024 17:16:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1redeB-0005Rr-7T
	for lore@pengutronix.de; Mon, 26 Feb 2024 17:16:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JZACdC6b6+WKoo8zqwCcAkAPmFL0UGI8FLisR0TXe/k=; b=3xKN4EjGaG7l9R2bytfj0G7GFw
	OPb8QOp8LK605us1xVwdvqRb6Ue3ezBtANolmChoHW0j4x4RdQAoA0UcGC1sW2GNpTyg4ppRRDimY
	fvTaLKSpBF1UyfCRZWSc9KrOR5awNy0AJjMYTIfyoZHWOAy83XBeLYB4UGQz7gixWyVoeKGA9qSH6
	8ZYOQmxy/vg1IajnoTgmDpSHXnzgxuUZ6g/rxWW25C6NPYp8vqWUBz9O60cPKKktrUCNButJIHk1i
	QuoENyZmuxM73qCMBKQBkom+B/bntR3C9hCVmifLdDUcowr2u4s04/aYMYORuuWjZISGVjInK8WmS
	HmIyIhJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reddb-00000001bX0-2WYT;
	Mon, 26 Feb 2024 16:15:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reddC-00000001bHZ-1nRN
	for barebox@lists.infradead.org;
	Mon, 26 Feb 2024 16:15:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1reddB-0005B3-2g; Mon, 26 Feb 2024 17:15:05 +0100
Message-ID: <6b401b49-4f5a-4a83-9685-01cb92c40d96@pengutronix.de>
Date: Mon, 26 Feb 2024 17:15:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
 <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-2-2df2430da984@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-2-2df2430da984@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_081506_711378_0D5D7011 
X-CRM114-Status: GOOD (  21.02  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/3] arm: mach-imx: set cpu type in pbl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.02.24 15:40, Stefan Kerkmann wrote:
> In order to use the `cpu_is_imxxyz` macro family in the pbl,
> `__imx_cpu_type` has to be defined and initialized. As we don't have
> access to the devicetree at this point, we resort to manual assignment.
> 
> Note: It is safe to build the same imx.o object file for both barebox
> pbl and proper as the `imx_init` function is discarded during linking as
> the whole `init_call` section is not linked into the final binary.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/Makefile | 2 +-
>  arch/arm/mach-imx/atf.c    | 5 +++++
>  include/mach/imx/generic.h | 5 +++++
>  3 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index ce8af486ae..a2d9702bf4 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -28,7 +28,7 @@ obj-$(CONFIG_NAND_IMX) += nand.o
>  lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
>  obj-y += devices.o imx.o
>  obj-$(CONFIG_CMD_BOOTROM) += bootrom-cmd.o
> -obj-pbl-y += esdctl.o boot.o
> +obj-pbl-y += esdctl.o boot.o imx.o
>  obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
>  obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
>  pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += imx-udc.o
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 2d8388e8e9..e8060ebd95 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -148,6 +148,7 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *bl33)
>  	size_t bl31_size;
>  	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
>  
> +	imx_set_cpu_type(IMX_CPU_IMX8MM);
>  	imx8mm_init_scratch_space();
>  	imx8m_save_bootrom_log();
>  	imx8mm_load_bl33(bl33);
> @@ -218,6 +219,7 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *bl33)
>  	size_t bl31_size;
>  	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
>  
> +	imx_set_cpu_type(IMX_CPU_IMX8MP);
>  	imx8mp_init_scratch_space();
>  	imx8m_save_bootrom_log();
>  	imx8mp_load_bl33(bl33);
> @@ -289,6 +291,7 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *bl33)
>  	size_t bl31_size;
>  	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
>  
> +	imx_set_cpu_type(IMX_CPU_IMX8MN);
>  	imx8mn_init_scratch_space();
>  	imx8m_save_bootrom_log();
>  	imx8mn_load_bl33(bl33);
> @@ -353,6 +356,7 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *bl33)
>  	size_t bl31_size;
>  	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
>  
> +	imx_set_cpu_type(IMX_CPU_IMX8MQ);
>  	imx8mq_init_scratch_space();
>  	imx8m_save_bootrom_log();
>  	imx8mq_load_bl33(bl33);
> @@ -388,6 +392,7 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
>  	void *bl33 = (void *)MX93_ATF_BL33_BASE_ADDR;
>  	unsigned long endmem = MX9_DDR_CSD1_BASE_ADDR + imx9_ddrc_sdram_size();
>  
> +	imx_set_cpu_type(IMX_CPU_IMX93);
>  	imx93_init_scratch_space(true);
>  
>  	/*
> diff --git a/include/mach/imx/generic.h b/include/mach/imx/generic.h
> index 1dca335fdd..2b26a1d45a 100644
> --- a/include/mach/imx/generic.h
> +++ b/include/mach/imx/generic.h
> @@ -82,6 +82,11 @@ void imx93_cpu_lowlevel_init(void);
>  
>  extern unsigned int __imx_cpu_type;
>  
> +static __always_inline void imx_set_cpu_type(unsigned int cpu_type)
> +{
> +	__imx_cpu_type = cpu_type;
> +}
> +
>  #ifdef CONFIG_ARCH_IMX1
>  # ifdef imx_cpu_type
>  #  undef imx_cpu_type
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



