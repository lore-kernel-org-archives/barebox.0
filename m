Delivery-date: Mon, 08 Aug 2022 14:46:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL29n-00GBQS-SK
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 14:46:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL29o-0004xo-Kj
	for lore@pengutronix.de; Mon, 08 Aug 2022 14:46:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gD329JB0/YgZMZRi3JjfjosLsduflNASeXD8Wukxj8M=; b=zWGiwBVmog4b6U8f9IC26POZ3V
	/px8Dhp6FHci2BaHiGfQaFvhB1TcdIUWYQgkU5buY/a03/kmZn7vzEIR3AJG7W43X0cZP4OElBOlS
	ojTjf/WuqoZ2skR/iapi5CxXB2kPrvX+Y3QGxSPpRsqon/iZPLYyj1MVOt21vZHdpYU+iSY3K+5NW
	mtx9+vcj/VHmc0B985iv8Oxi9lS6lZwKQGq1iieqFV78W7TF3rFNARyiejLZQDS/qYxgoPkw3C0B5
	XG2DKeQPXqUVk/HaFUVrBl9T9wBw7swZieXKEo7+nPjXGvYZ/wPzTQ6v+4ZheEQQm2OLGD4RJp3Mb
	32aWCL8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL28S-00DoDY-52; Mon, 08 Aug 2022 12:45:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL28M-00DoAu-JP
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 12:45:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL28L-0004em-0p; Mon, 08 Aug 2022 14:45:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL28K-0001Du-OV; Mon, 08 Aug 2022 14:45:24 +0200
Date: Mon, 8 Aug 2022 14:45:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808124524.GE31528@pengutronix.de>
References: <20220805082137.2202560-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805082137.2202560-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_054526_732650_D69B6694 
X-CRM114-Status: GOOD (  23.91  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] pbl: factor out pbl_bio API into pbl/bio.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 05, 2022 at 10:21:37AM +0200, Ahmad Fatoum wrote:
> We'll be adding more PBL driver interface definitions into
> include/pbl, so move the block I/O stuff there as well.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/at91sam9_xload_mmc.c |  2 +-
>  arch/arm/mach-at91/include/mach/xload.h |  2 +-
>  arch/arm/mach-at91/xload-mmc.c          |  2 +-
>  drivers/mci/atmel-sdhci-pbl.c           |  2 +-
>  fs/fat/fat-pbl.c                        |  2 +-
>  include/pbl.h                           | 13 -------------
>  include/pbl/bio.h                       | 19 +++++++++++++++++++
>  7 files changed, 24 insertions(+), 18 deletions(-)
>  create mode 100644 include/pbl/bio.h

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-at91/at91sam9_xload_mmc.c b/arch/arm/mach-at91/at91sam9_xload_mmc.c
> index 64266757d63a..5cf41c483d0f 100644
> --- a/arch/arm/mach-at91/at91sam9_xload_mmc.c
> +++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
> @@ -3,7 +3,7 @@
>  
>  #include <debug_ll.h>
>  #include <common.h>
> -#include <pbl.h>
> +#include <pbl/bio.h>
>  
>  #include <linux/sizes.h>
>  #include <asm/cache.h>
> diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
> index 82db65e30768..6b9492193b96 100644
> --- a/arch/arm/mach-at91/include/mach/xload.h
> +++ b/arch/arm/mach-at91/include/mach/xload.h
> @@ -4,7 +4,7 @@
>  #define __MACH_XLOAD_H
>  
>  #include <linux/compiler.h>
> -#include <pbl.h>
> +#include <pbl/bio.h>
>  
>  void __noreturn sama5d2_sdhci_start_image(u32 r4);
>  void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
> diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
> index 28d122f0a357..33e5b203fe90 100644
> --- a/arch/arm/mach-at91/xload-mmc.c
> +++ b/arch/arm/mach-at91/xload-mmc.c
> @@ -9,7 +9,7 @@
>  #include <mach/gpio.h>
>  #include <linux/sizes.h>
>  #include <asm/cache.h>
> -#include <pbl.h>
> +#include <pbl/bio.h>
>  
>  static void at91_fat_start_image(struct pbl_bio *bio,
>  				 void *buf, unsigned int len,
> diff --git a/drivers/mci/atmel-sdhci-pbl.c b/drivers/mci/atmel-sdhci-pbl.c
> index 626e4008fe85..2c5f107abd7e 100644
> --- a/drivers/mci/atmel-sdhci-pbl.c
> +++ b/drivers/mci/atmel-sdhci-pbl.c
> @@ -8,7 +8,7 @@
>   */
>  
>  #include <common.h>
> -#include <pbl.h>
> +#include <pbl/bio.h>
>  #include <mci.h>
>  #include <debug_ll.h>
>  #include <mach/xload.h>
> diff --git a/fs/fat/fat-pbl.c b/fs/fat/fat-pbl.c
> index 93cd6decbcb0..6b8a807657d4 100644
> --- a/fs/fat/fat-pbl.c
> +++ b/fs/fat/fat-pbl.c
> @@ -8,10 +8,10 @@
>  #define pr_fmt(fmt) "fat-pbl: " fmt
>  
>  #include <common.h>
> +#include <pbl/bio.h>
>  #include "integer.h"
>  #include "ff.h"
>  #include "diskio.h"
> -#include "pbl.h"
>  
>  DRESULT disk_read(FATFS *fat, BYTE *buf, DWORD sector, BYTE count)
>  {
> diff --git a/include/pbl.h b/include/pbl.h
> index f58daec7351a..0dc23c72dcf5 100644
> --- a/include/pbl.h
> +++ b/include/pbl.h
> @@ -15,19 +15,6 @@ void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len
>  
>  #ifdef __PBL__
>  #define IN_PBL	1
> -
> -struct pbl_bio {
> -	void *priv;
> -	int (*read)(struct pbl_bio *bio, off_t block_off, void *buf, unsigned nblocks);
> -};
> -
> -static inline int pbl_bio_read(struct pbl_bio *bio, off_t block_off,
> -			       void *buf, unsigned nblocks)
> -{
> -	return bio->read(bio, block_off, buf, nblocks);
> -}
> -
> -ssize_t pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, size_t len);
>  #else
>  #define IN_PBL	0
>  #endif
> diff --git a/include/pbl/bio.h b/include/pbl/bio.h
> new file mode 100644
> index 000000000000..79e47451a0e4
> --- /dev/null
> +++ b/include/pbl/bio.h
> @@ -0,0 +1,19 @@
> +#ifndef __PBL_BIO_H__
> +#define __PBL_BIO_H__
> +
> +#include <linux/types.h>
> +
> +struct pbl_bio {
> +	void *priv;
> +	int (*read)(struct pbl_bio *bio, off_t block_off, void *buf, unsigned nblocks);
> +};
> +
> +static inline int pbl_bio_read(struct pbl_bio *bio, off_t block_off,
> +			       void *buf, unsigned nblocks)
> +{
> +	return bio->read(bio, block_off, buf, nblocks);
> +}
> +
> +ssize_t pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, size_t len);
> +
> +#endif /* __PBL_H__ */
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


