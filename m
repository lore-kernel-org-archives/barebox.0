Delivery-date: Tue, 20 Apr 2021 11:24:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYmcA-0008MI-AM
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 11:24:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYmc9-0006Ab-Co
	for lore@pengutronix.de; Tue, 20 Apr 2021 11:24:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wYTieTOw7yCcnvaJ1Qnh5j8xIB2YEFS8Wqe/QTTpBxE=; b=UUkxiZGgeWw9QqifXUOQ0GJ5h
	9ayrPg2o4nMgYSFOFOdU0KFudHuT2GNPpbVaJujctMgxp0IUItAUXFjD4cU8cqJ8KmaD+gGZXHKI2
	c/Sxx2QMYqBTS6ug2xOrR21G2TIKdC3D4SSMfiL8HAi8jZd2LNXv08K+sXYfPAHcV2t3+ih6ljACx
	1Zp0scueFHs7G7My5pvbwOVk1UkJPsbRmaJVM88qSLrBaNFeDA0auU43+wSa2HqmqJrXLMt9C4rbw
	V5/146SPrdg7HTJPfZOXFzhB5205ZRbdb7J/XZ1UNUDnBACcs+w9VxNy9+U+akF8lliL9E079gCHX
	7K1rW3LSg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYmay-00Biwf-JG; Tue, 20 Apr 2021 09:23:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYman-00Bivr-1b
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 09:22:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=xsUAseJtXMvJNIuXoGKiqHgebebDix55M8EANe9psIM=; b=RW/Wk1PMpwkKOR44B6zHgm3L/w
 7ZKC2nXRem1ZCUe68+arZOIyRVX6tt8oKHlAN5Cge2VUwCARqcExVhYpDbTVXXABBi6bMfb4XeBA/
 9sYplgTVnSP//Nezjy5Cu3k8K9cvFbOwLLZJmM50ykmShtTjJ1tzcGAResMpx8cXbWzWJVcG0lRCU
 lESnAp/jgbR/djLHA/ud3PwYOhrc53g8wPYZqF8c6UjEFPCY1AU07rElo74Ozu0Cw3uqvn/7Euds9
 LCuRqtIz6AsbFh9wLlLROpAON0Js7hFvCMDNH6vbLplU5O47vtdq4IwAPVc46aEIZxIBFWpRQUoQg
 wqyBqN2Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmai-00ByOd-BZ
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 09:22:47 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYmag-00064J-No; Tue, 20 Apr 2021 11:22:42 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
 <20210420075700.246124-4-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <38c4866a-8391-d24e-aa31-a35be50eff0b@pengutronix.de>
Date: Tue, 20 Apr 2021 11:22:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210420075700.246124-4-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_022244_427354_B0A0B3EC 
X-CRM114-Status: GOOD (  27.69  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/8] of: add flag to not create resmem DT entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 20.04.21 09:56, Rouven Czerwinski wrote:
> If we are parsing entries from the /reserved-memory device tree path we
> don't want to add them again as resmem blocks at the beginning of the
> device tree. Therefore add another flag to indicate this.

This has the assumption that the /reserved-memory device tree node is
identical between barebox and kernel. Prior to your next commit, this
assumption wasn't there because barebox just copied over fix ups it
knows about into the kernel device tree.

I think what you rather do here is to mark device tree reserved entries
by origin. You have a bit that says whether it's a /memreserve/
or /reserved-memory and fix it up the same way into the kernel device
tree.

> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/of/fdt.c | 10 +++++++---
>  include/of.h     |  2 ++
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 6aade13fa0..da36739713 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -552,6 +552,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end,
>  	if (flags & OF_RESERVE_ENTRY_FLAG_XN)
>  		of_reserve_map.xn |= BIT(e);
>  
> +	if (flags & OF_RESERVE_ENTRY_FLAG_NO_RESERVE)
> +		of_reserve_map.noentry |= BIT(e);
> +
>  	return 0;
>  }
>  
> @@ -594,9 +597,10 @@ void fdt_add_reserve_map(void *__fdt)
>  	fdt_res += n;
>  
>  	for (i = 0; i < res->num_entries; i++) {
> -		of_write_number(&fdt_res->address, res->start[i], 2);
> -		of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1,
> -				2);
> +		if (!(res->noentry & BIT(i))) {
> +			of_write_number(&fdt_res->address, res->start[i], 2);
> +			of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1, 2);
> +		}
>  		fdt_res++;
>  	}
>  
> diff --git a/include/of.h b/include/of.h
> index 088b088223..c6d3836db1 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -55,9 +55,11 @@ struct of_reserve_map {
>  	uint64_t end[OF_MAX_RESERVE_MAP];
>  	int num_entries;
>  	u32 xn;
> +	u32 noentry;

u16 : OF_MAX_RESERVE_MAP would fit nicely in here. See comment on first patch. 

>  };
>  
>  #define OF_RESERVE_ENTRY_FLAG_XN		BIT(0)
> +#define OF_RESERVE_ENTRY_FLAG_NO_RESERVE	BIT(1)

Sorry for bikeshedding. But OF_RESERVE.*_NO_RESERVE needs a rename
even if the commit stays mostly as it is..

>  
>  int of_add_reserve_entry(resource_size_t start, resource_size_t end,
>  		 int flags);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

