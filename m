Delivery-date: Tue, 09 Jan 2024 10:38:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Z6-00A79Y-1r
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:38:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Z5-0005GI-TG
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:38:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FjS9mNDkUnRPfoxNk3fdKzpiRCppAWnwcrhH36RpegM=; b=u4KJ5GL7lx7c8c0t9hwAqZkebU
	aoo0Wql6+KXElKSdXyOM+eNEKWqpw5rWX5uyay000QGdYds0zXvMj5+6NAIKmmtlPFdJkJyEEaCZI
	NbgkmYe1opm2ozX2YzLZSOdBtJ1eEr1gvC5HR+GuCDkK0Vgitx2qY0yzxERmdJVgNvnlaoWclAnVV
	BXsmvFvRVeFSNrlqh2XCv7Py/yP1AE1Q14I7W72SQIeBum10C2ebq3VugaAa/rl0m7WsoHvM4xkQK
	4qesjn1Xtr4m11u3oo7YeSzHCdRDudzTBREpxjFLDbZ+2V5HveZq0uYLuqUE4LY5ogKx2eSnbhZz+
	r0HY9UNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8Xw-007XNo-0n;
	Tue, 09 Jan 2024 09:37:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8Xt-007XMd-0X
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:37:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rN8Xr-0004vl-U0; Tue, 09 Jan 2024 10:37:15 +0100
Message-ID: <fda8f1cf-b774-47bb-871d-36913bca9515@pengutronix.de>
Date: Tue, 9 Jan 2024 10:37:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
 <20240109091603.235589-3-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240109091603.235589-3-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_013717_202031_441009C2 
X-CRM114-Status: GOOD (  19.34  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 02/10] ARM: Layerscape: LS1028a: reserve DDR region for
 TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 09.01.24 10:15, Sascha Hauer wrote:
> On LS1028a the TF-A is placed in DDR, so we have to reserve the region
> in order to keep Linux away from it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-layerscape/soc.c       | 2 ++
>  drivers/mci/imx-esdhc-pbl.c          | 3 ++-
>  include/mach/layerscape/layerscape.h | 8 ++++++++
>  3 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
> index 4d4ef05d4b..5f9d0d5171 100644
> --- a/arch/arm/mach-layerscape/soc.c
> +++ b/arch/arm/mach-layerscape/soc.c
> @@ -91,6 +91,8 @@ static int ls1028a_init(void)
>  
>  	layerscape_register_pbl_image_handler();
>  
> +	reserve_sdram_region("tfa", LS1028A_TFA_RESERVED_START, LS1028A_TFA_RESERVED_SIZE);

Does this mean that the TF-A region is mapped executable (and therefore prefetchable)
from early MMU setup time until this line has finished executing?

> +
>  	return 0;
>  }
>  
> diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
> index 2c74d101e4..2d071eaca8 100644
> --- a/drivers/mci/imx-esdhc-pbl.c
> +++ b/drivers/mci/imx-esdhc-pbl.c
> @@ -21,6 +21,7 @@
>  #endif
>  #ifdef CONFIG_ARCH_LAYERSCAPE
>  #include <mach/layerscape/xload.h>
> +#include <mach/layerscape/layerscape.h>
>  #endif
>  #include "sdhci.h"
>  #include "imx-esdhc.h"
> @@ -387,7 +388,7 @@ static int ls1028a_esdhc_start_image(void __iomem *base, struct dram_regions_inf
>  		.socdata = &data,
>  	};
>  	void *sdram = (void *)0x80000000;
> -	void (*bl31)(void) = (void *)0xfbe00000;
> +	void (*bl31)(void) = (void *)LS1028A_TFA_RESERVED_START;
>  	size_t bl31_size;
>  	void *bl31_image;
>  	struct bl2_to_bl31_params_mem_v2 *params;
> diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
> index a048b7ef9e..6f420dd4f4 100644
> --- a/include/mach/layerscape/layerscape.h
> +++ b/include/mach/layerscape/layerscape.h
> @@ -3,6 +3,8 @@
>  #ifndef __MACH_LAYERSCAPE_H
>  #define __MACH_LAYERSCAPE_H
>  
> +#include <linux/sizes.h>
> +
>  #define LS1046A_DDR_SDRAM_BASE		0x80000000
>  #define LS1046A_DDR_FREQ		2100000000
>  
> @@ -16,6 +18,12 @@
>  #define LS1028A_SP_SHARED_DRAM_SIZE	SZ_2M
>  #define LS1028A_TZC400_BASE		0x01100000
>  
> +#define LS1028A_TFA_SIZE		SZ_64M
> +#define LS1028A_TFA_SHRD		SZ_2M
> +#define LS1028A_TFA_RESERVED_SIZE	(LS1028A_TFA_SIZE + LS1028A_TFA_SHRD)
> +#define LS1028A_TFA_RESERVED_START	(0x100000000 - LS1028A_TFA_RESERVED_SIZE)
> +#define LS1028A_TFA_START		(0x100000000 - LS1028A_TFA_SIZE)
> +
>  enum bootsource ls1046a_bootsource_get(void);
>  enum bootsource ls1021a_bootsource_get(void);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



