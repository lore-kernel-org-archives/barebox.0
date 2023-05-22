Delivery-date: Mon, 22 May 2023 10:39:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q114e-009S54-Mz
	for lore@lore.pengutronix.de; Mon, 22 May 2023 10:39:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q114c-0003bx-8X
	for lore@pengutronix.de; Mon, 22 May 2023 10:39:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yhFtGFQBTdXrY6IcWaqyqYpBYeHu6eWbGstkGMLHyZo=; b=uGtRFirqsKwnOWUM/9bkEb7/C+
	L6bSlTRFqBjCrdMG9UQ5/fH1zGZitDHnPYwXXE9Q/758pVU5wQOHxK/COOrCWM5cO2apwDOnjYOKu
	W/PqGoY8gUy28PGkn8nyYkce1LGJg79lHvRrmiM2ky6OhGfmYJS3+4/ST4cLCPXHyEsrRy/9/STZQ
	kKoP1a49/v02zYAJCY0A7Mh+lWTm2tiwyiHHDWwzPBkl3LaYzClmXxRmx0CsBNgZGM3h9lbnIWVQ+
	+EAB2M3lHXHi5xyqD3J3w+rRZaH/uEGivuHh6VBGzItgpab2khHYywmLmfjlShKeKlUrEQpCyGeue
	ObJ5/ajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q113e-005mFZ-37;
	Mon, 22 May 2023 08:38:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q113W-005mCA-2n
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 08:38:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q113V-0003UH-GN; Mon, 22 May 2023 10:38:13 +0200
Message-ID: <a67a1e6e-6f82-0f0d-ac06-b25d42d11a1f@pengutronix.de>
Date: Mon, 22 May 2023 10:38:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>, jbe@pengutronix.de
References: <20230522052526.1038966-1-a.fatoum@pengutronix.de>
 <20230522052526.1038966-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230522052526.1038966-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_013814_902636_8169A128 
X-CRM114-Status: GOOD (  24.38  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFT PATCH 2/2] mtd: cfi-flash: call ctrlc() during CFI reads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22.05.23 07:25, Ahmad Fatoum wrote:
> Memory mapped flash access can be quite slow on older processors. For
> writing and erasing, we already call resched() indirectly to feed the
> watchdog, so let's do this when reading as well. This fixes an issue
> of short running watchdogs triggering on PowerPC, because kernel boot
> takes too long.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mtd/nor/cfi_flash.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index f1555a72a42e..10542c710118 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -25,7 +25,9 @@
>  #include <io.h>
>  #include <errno.h>
>  #include <progress.h>
> +#include <string.h>
>  #include <linux/err.h>
> +#include <linux/sizes.h>
>  #include <asm/unaligned.h>
>  #include <linux/mtd/concat.h>
>  #include "cfi_flash.h"
> @@ -891,10 +893,16 @@ static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
>  		size_t *retlen, u8 *buf)
>  {
>  	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
> +	const void *src = info->base + from;
> +	size_t i;
> +
> +	for (i = 0; i < len; i = size_add(i, SZ_1M)) {
> +		buf = mempcpy(buf, src + i, min_t(size_t, len, SZ_1M));
> +		if (ctrlc())
> +			return -EINTR;

Christian mentioned in IRC that it may be surprising to users that a boot could be
aborted with ctrlc(). Thoughts? Also, the POSIXy thing to do is to return a short
read count, but I didn't do that, because I have not vetted that everything handles
that gracefully.. (read_file e.g. does, but I don't know about others).

Cheers,
Ahmad

> +	}
>  
> -	memcpy(buf, info->base + from, len);
>  	*retlen = len;
> -
>  	return 0;
>  }
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



