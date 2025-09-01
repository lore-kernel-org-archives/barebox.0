Delivery-date: Mon, 01 Sep 2025 10:46:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut0BY-006qpr-23
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 10:46:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut0BX-0007IM-BC
	for lore@pengutronix.de; Mon, 01 Sep 2025 10:46:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Uq41rxK+sHmpIt2EoUm5ME0js82FPDWy23RtpiZpJI=; b=t8qg5R9JkibeQVJCoWuBhYx6do
	Ap2JdIiGzcT5m3oXGH1rUoRxaeG/a61Y2HGYlAq+Qaf8xFcVsfgpkNR3X5XWhr0/BlfrCi6xIf7Lq
	5YVWloUfY14Wa9yRlFHLXt3h8P0a5CXbZvmX+dO3Eo6jWf/5pFwWhjch1fG5SyDLpqRpWVGL2/btW
	9MK4OBEbJCO6fsZOt/e+LfJaHAZunTJpi54CzWu3y5siJFYcMzr2iml9HQEIlVA1IoJI4EAo1scgX
	Llvf7/kv1t73/hN2SuP5F645HaXtbAKs6lsjtqLulwYOL0t5ZGqL//OqkbmvSIAIIwfLZuYMGi4YY
	iK00wzvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut0Aw-0000000Bcle-2Jvh;
	Mon, 01 Sep 2025 08:46:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uszoq-0000000BZHp-22LY
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 08:23:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uszon-0007v8-Nl; Mon, 01 Sep 2025 10:23:13 +0200
Message-ID: <79fff7ee-4e50-426e-94f2-3c2e2bfba2d4@pengutronix.de>
Date: Mon, 1 Sep 2025 10:23:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
References: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
 <20250901-imx6-usb-uuu-v1-3-1194bb6135ae@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250901-imx6-usb-uuu-v1-3-1194bb6135ae@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_012316_528590_EAC7934F 
X-CRM114-Status: GOOD (  18.74  )
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
Subject: Re: [PATCH 3/3] mach-imx: Kconfig: add option for image with dcd auth
 block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 9/1/25 9:35 AM, Sascha Hauer wrote:
> From: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
> 
> Add option CONFIG_HABV4_IMAGE_SIGNED_USB_DCD to select build of barebox
> image for i.mx6 devices with an additional authentication block in CSF
> ("0x0091000 offset size filename").
> Additional the barebox toolchain will build now a signed image e.g.
> barebox-image-name-dcdus.img for usb loading with SDP DCD_WRITE ROM
> command.
> 
> Signed-off-by: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
> ---
>  arch/arm/mach-imx/Kconfig |  9 +++++++++
>  images/Makefile.imx       | 11 +++++++----
>  2 files changed, 16 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 0d745ce2315834ec5d0c366d227b40f2adff5e83..ade4a4ce1783fc60f85aefab2da2df17a57bfe55 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -945,6 +945,15 @@ config HABV4_IMAGE_SIGNED_USB
>  	  enable the creation of a usb signed image, if the habv4-imx6-gencsf.h
>  	  included in the flash-header and the NXP cst Tool is available
>  
> +config HABV4_IMAGE_SIGNED_USB_DCD
> +	bool "build signed USB images including DCD"
> +	depends on ARCH_IMX6
> +	depends on HABV4_IMAGE_SIGNED_USB
> +	help
> +	  enable the creation of a usb signed image loaded via SDP and DCD_WRITE
> +	  ROM command, if the habv4-imx6-gencsf.h included in the flash-header
> +	  and the NXP cst Tool is available

Can you add here the info that this makes the image loadable via uuu?
Can imx-usb-loader still load this image?

Cheers,
Ahmad

> +
>  config HABV4_IMAGE_SIGNED_ENCRYPTED
>  	bool "build signed encrypted images"
>  	help
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 93264254e9e4cda3969bf7bf4812f2d1c5b59c09..8aa35a28e06ccffc9609054292eca026b17c0140 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -9,13 +9,15 @@ $(eval
>  ifeq ($($(strip $(1))), y)
>  	pblb-y += $(strip $(2))
>  	CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3)).imxcfg
> -	FILE_barebox-$(strip $(4)).img    = $(strip $(2)).pblb.imximg
> -	FILE_barebox-$(strip $(4))-s.img  = $(strip $(2)).pblb.simximg
> -	FILE_barebox-$(strip $(4))-us.img = $(strip $(2)).pblb.usimximg
> -	FILE_barebox-$(strip $(4))-es.img = $(strip $(2)).pblb.esimximg
> +	FILE_barebox-$(strip $(4)).img       = $(strip $(2)).pblb.imximg
> +	FILE_barebox-$(strip $(4))-s.img     = $(strip $(2)).pblb.simximg
> +	FILE_barebox-$(strip $(4))-us.img    = $(strip $(2)).pblb.usimximg
> +	FILE_barebox-$(strip $(4))-dcdus.img = $(strip $(2)).pblb.dcdusimximg
> +	FILE_barebox-$(strip $(4))-es.img    = $(strip $(2)).pblb.esimximg
>  	image-y += barebox-$(strip $(4)).img
>  	image-$(CONFIG_HABV4_IMAGE_SIGNED) += barebox-$(strip $(4))-s.img
>  	image-$(CONFIG_HABV4_IMAGE_SIGNED_USB) += barebox-$(strip $(4))-us.img
> +	image-$(CONFIG_HABV4_IMAGE_SIGNED_USB_DCD) += barebox-$(strip $(4))-dcdus.img
>  	image-$(CONFIG_HABV4_IMAGE_SIGNED_ENCRYPTED) += barebox-$(strip $(4))-es.img
>  endif
>  )
> @@ -51,6 +53,7 @@ $(call imx_image_rule,pimximg, -p $$($$(patsubst $$(obj)/%.pblb,PBL_MEMORY_SIZE_
>  $(call imx_image_rule,psimximg, -p $$($$(patsubst $$(obj)/%.pblb,PBL_MEMORY_SIZE_%,$$<)) -s)
>  $(call imx_image_rule,simximg, -s)
>  $(call imx_image_rule,usimximg, -u -s)
> +$(call imx_image_rule,dcdusimximg, -u -s -a)
>  $(call imx_image_rule,esimximg, -e -s)
>  $(call imx_image_rule,esimximg.dek, -e -s)
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



