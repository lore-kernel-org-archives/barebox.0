Delivery-date: Tue, 22 Feb 2022 12:20:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMTDY-006mjg-1w
	for lore@lore.pengutronix.de; Tue, 22 Feb 2022 12:20:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nMTDW-0008Vw-A0
	for lore@pengutronix.de; Tue, 22 Feb 2022 12:20:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTnpwpEaDODaKdgni3ZJk1SasLEp8K28cBCC8QdeSuU=; b=NTy8flEVemtSpw
	lkGLRybBkuNm9tMj6dB1y3uQfFB6SltkQPLLNvHuEz26YDlzCO0TXt2siqv9WeI1v7T2bzfGlQdW1
	ynLa1IPm35eV1btPJ675d8wnnixd2Dkdk+UKtjhqkvTq3KOVjPNZkt8YoNTowLVGnvp0MdMcxCAO5
	1KSKPrZPmQrL/xc86Xvly2e5KNNkEJq4r9ipKpRy7+2U6mkgoUgfYKIZHV0DBc09fXV6WlWT0wWEh
	dbeGFsZh7bo+XFxaO+MVRHn15+RIgVcEBw6cY8nmpEL5xbTs9ObZMisx1eCtEnGuUlsOv1nfBxQEa
	pVFdqB7nFCksyiuAI8mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMTCL-009OTV-88; Tue, 22 Feb 2022 11:19:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMTCB-009ORY-W3
 for barebox@lists.infradead.org; Tue, 22 Feb 2022 11:19:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nMTCA-0008Jc-QA; Tue, 22 Feb 2022 12:19:02 +0100
Message-ID: <1ef7b4b9-21e2-54ac-409e-792e3656fe0b@pengutronix.de>
Date: Tue, 22 Feb 2022 12:19:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Juergen Borleis <jbe@pengutronix.de>, barebox@lists.infradead.org
References: <20220222104859.44391-1-jbe@pengutronix.de>
 <20220222104859.44391-3-jbe@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220222104859.44391-3-jbe@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_031904_073339_8C475DED 
X-CRM114-Status: GOOD (  20.97  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] ARM: webasto-marvel: share the run-time setup with
 the ccbv2 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22.02.22 11:48, Juergen Borleis wrote:
> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  arch/arm/boards/webasto-ccbv2/board.c    |  6 +++++-
>  arch/arm/boards/webasto-ccbv2/lowlevel.c | 24 ++++++++++++++++++------
>  images/Makefile.imx                      |  2 ++
>  3 files changed, 25 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
> index 4777713..fd6ea6f 100644
> --- a/arch/arm/boards/webasto-ccbv2/board.c
> +++ b/arch/arm/boards/webasto-ccbv2/board.c
> @@ -22,7 +22,10 @@ static int ccbv2_probe(struct device_d *dev)
>  	imx6_bbu_internal_mmcboot_register_handler("emmc", "/dev/mmc1",
>  			BBU_HANDLER_FLAG_DEFAULT);
>  
> -	barebox_set_hostname("weabsto-ccbv2");
> +	if (of_machine_is_compatible("webasto,imx6ul-marvel"))
> +		barebox_set_hostname("webasto-marvel");

Nitpick: barebox_set_hostname(device_get_match_data(dev));

> +	else
> +		barebox_set_hostname("webasto-ccbv2");
>  
>  	if(!IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE))
>  		return 0;
> @@ -48,6 +51,7 @@ err:
>  
>  static const struct of_device_id ccbv2_of_match[] = {
>  	{ .compatible = "webasto,imx6ul-ccbv2" },
.data = $hostname1

> +	{ .compatible = "webasto,imx6ul-marvel" },

.data = $hostname2

>  	{ /* sentinel */ },
>  };
>  
> diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> index 84de271..add51c0 100644
> --- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
> +++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
> @@ -15,8 +15,6 @@
>  
>  #include "ccbv2.h"
>  
> -extern char __dtb_z_imx6ul_webasto_ccbv2_start[];
> -
>  static void configure_uart(void)
>  {
>  	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> @@ -32,7 +30,7 @@ static void configure_uart(void)
>  
>  }
>  
> -static void noinline start_ccbv2(u32 r0, unsigned long memSize)
> +static void noinline start_ccbv2(u32 r0, unsigned long memSize, char *fdt)
>  {
>  	int tee_size;
>  	void *tee;
> @@ -56,9 +54,10 @@ static void noinline start_ccbv2(u32 r0, unsigned long memSize)
>  		start_optee_early(NULL, tee);
>  	}
>  
> -	imx6ul_barebox_entry(__dtb_z_imx6ul_webasto_ccbv2_start);
> +	imx6ul_barebox_entry(fdt);
>  }
>  
> +extern char __dtb_z_imx6ul_webasto_ccbv2_start[];
>  ENTRY_FUNCTION(start_imx6ul_ccbv2_256m, r0, r1, r2)
>  {
>  
> @@ -70,12 +69,25 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_256m, r0, r1, r2)
>  	setup_c();
>  	barrier();
>  
> -	start_ccbv2(r0, SZ_256M);
> +	start_ccbv2(r0, SZ_256M, __dtb_z_imx6ul_webasto_ccbv2_start);
>  }
>  
>  ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
>  {
> +	imx6ul_cpu_lowlevel_init();
>  
> +	arm_setup_stack(0x00910000);
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +	barrier();
> +
> +	start_ccbv2(r0, SZ_512M, __dtb_z_imx6ul_webasto_ccbv2_start);
> +}
> +
> +extern char __dtb_z_imx6ul_webasto_marvel_start[];
> +ENTRY_FUNCTION(start_imx6ul_marvel, r0, r1, r2)
> +{
>  	imx6ul_cpu_lowlevel_init();
>  
>  	arm_setup_stack(0x00910000);
> @@ -84,5 +96,5 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
>  	setup_c();
>  	barrier();
>  
> -	start_ccbv2(r0, SZ_512M);
> +	start_ccbv2(r0, SZ_512M, __dtb_z_imx6ul_webasto_marvel_start);
>  }
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 18cabbf..4b2ad6e 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -377,6 +377,8 @@ $(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2_256m, w
>  
>  $(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2_512m, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512, imx6ul-webasto-ccbv2-512m)
>  
> +$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_marvel, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512, imx6ul-webasto-marvel-512m)
> +
>  # ----------------------- vf6xx based boards ---------------------------
>  pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
>  CFG_start_vf610_twr.pblb.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

