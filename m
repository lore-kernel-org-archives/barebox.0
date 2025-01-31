Delivery-date: Fri, 31 Jan 2025 13:39:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqJI-006kGT-0i
	for lore@lore.pengutronix.de;
	Fri, 31 Jan 2025 13:39:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdqJI-0002Bf-8e
	for lore@pengutronix.de; Fri, 31 Jan 2025 13:39:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XRw2GGIjQBDk/pRfKhH4SpxP2E97W6DfpLkDF2Hj+Aw=; b=0Sjazz2jwUh+2zL7BFrmkWyERU
	4ogtwLit48iCsGyLJChlwSV3iD2aokOi5zNrlBFwtsj6oMkwBWkLz/iLgk0n8v2Dz6foKO8dWNSH6
	c+SytDlVcW/Aly1d4x7JAui0e6jbFkCmHWyfjVAcouBWlGPYLgLu83ngPTo3UDUDfoRNnW4uqx7dK
	FTGp71m7EvTmJ2idYw+RdnEgb9HgOdevGjbyizam0BnQOxxuNPelr89WpgPtqPaZr0PIAf8DljXPf
	1vGvYGuMvYhM79eDzrT03I6IcM5uwUfcFTXIRznV6UEBjPCp2zqA7Ue9iQDssmvkWq7i+/d4v1BcA
	NK01hy3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqIs-0000000AcO7-2bC7;
	Fri, 31 Jan 2025 12:39:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdqIp-0000000AcNm-3eUi
	for barebox@lists.infradead.org;
	Fri, 31 Jan 2025 12:39:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqIo-00027S-HA; Fri, 31 Jan 2025 13:39:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqIo-002nfp-16;
	Fri, 31 Jan 2025 13:39:18 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tdqIo-006RJY-0n;
	Fri, 31 Jan 2025 13:39:18 +0100
Date: Fri, 31 Jan 2025 13:39:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z5zEdpqeoN_W9FqR@pengutronix.de>
References: <20250128154531.1172019-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250128154531.1172019-1-m.grzeschik@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_043919_907323_8ED55144 
X-CRM114-Status: GOOD (  28.85  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX93: ele: make A0 firmware optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 28, 2025 at 04:45:31PM +0100, Michael Grzeschik wrote:
> Since the A0 firmare is not located in the firmware-ele-imx-0.1.0.bin
> anymore it is better to make it optional. We add a reference to where
> to find the latest version of the firmware in case someone still
> uses it.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/mach-imx/ele.c |  2 ++
>  firmware/Kconfig        | 11 +++++++++--
>  firmware/Makefile       |  2 +-
>  3 files changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
> index c209f53de4..ec0fd65216 100644
> --- a/arch/arm/mach-imx/ele.c
> +++ b/arch/arm/mach-imx/ele.c
> @@ -200,9 +200,11 @@ int imx93_ele_load_fw(void *bl33)
>  	rev = FIELD_GET(ELE_INFO_SOC_REV, info.soc);
>  
>  	switch (rev) {
> +#ifdef CONFIG_FIRMWARE_IMX93_OPTEE_A0
>  	case 0xa0:
>  		get_builtin_firmware_ext(mx93a0_ahab_container_img, bl33, &firmware, &size);
>  		break;
> +#endif
>  	case 0xa1:
>  		get_builtin_firmware_ext(mx93a1_ahab_container_img, bl33, &firmware, &size);
>  		break;
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index d068e6d983..00546e8706 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -81,10 +81,17 @@ config FIRMWARE_IMX93_OPTEE
>  	  in CONFIG_EXTRA_FIRMWARE_DIR/imx93-bl32.bin. When this option is enabled then
>  	  the TF-A binary will be used from CONFIG_EXTRA_FIRMWARE_DIR/imx93-bl31.bin-optee.
>  	  Additionally OP-TEE requires a RAM firmware loaded into the ELE. This is expected
> -	  in CONFIG_EXTRA_FIRMWARE_DIR/mx93a0-ahab-container.img and
> -	  CONFIG_EXTRA_FIRMWARE_DIR/mx93a1-ahab-container.img. You can obtain it from
> +	  in CONFIG_EXTRA_FIRMWARE_DIR/mx93a1-ahab-container.img. You can obtain it from
>  	  https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-ele-imx-0.1.0.bin

There's https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-ele-imx-0.1.1.bin now.
I took the chance to update the link accordingly.

>  
> +config FIRMWARE_IMX93_OPTEE_A0
> +	bool "install OP-TEE on i.MX93 older A0 revision boards"
> +	depends on FIRMWARE_IMX93_OPTEE
> +	help
> +	  Additionally OP-TEE requires a RAM firmware loaded into the ELE. This is expected
> +	  in CONFIG_EXTRA_FIRMWARE_DIR/mx93a0-ahab-container.img. You can obtain it from
> +	  https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-sentinel-0.11.bin

firmware-sentinel is the old package name. It has been renamed to
firmware-ele-imx and there is a version of that package that still
contains the A0 ELE firmware binary:

https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-ele-imx-0.1.0.bin

I updated the link accordingly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


