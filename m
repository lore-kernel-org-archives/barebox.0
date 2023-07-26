Delivery-date: Wed, 26 Jul 2023 12:18:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qObaw-00AgKB-Vm
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 12:18:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qObau-0002lF-Dr
	for lore@pengutronix.de; Wed, 26 Jul 2023 12:18:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pu02eXPnChhy69Lq5OE9T3Qy1qfy9+hgcXiQ2wkP+R4=; b=XUTsyPlGxzb/dPjGOf/SOIKn8j
	K2i9UcSL4PLLzzNPoJ8hpS8vgVXMw3m/qr9MRbkqxDnsR3gxepyOU2jpArdtXMzX6eSuVs35KO/tB
	6btGU+kbRlhg+sbyXe6KVfizQvRCfBiCvV+i5Ktx3rcLhmaztdDUWUv7voN7c8jUblyUYcbUaPA9c
	bC/JAeG5od3K57mReSMgMCBARUUse5HcG600s28Q9qDJ929pEcjN6cBNCqplkgtxS900xRmRDztYF
	NZ2apmc6dT82K6Uf1tYVo0ITOX3WCb109Vl/uOExyq56s8trJCQ2/FBr5OZv4b5uq+ZR7H2TNFHTf
	6VDWt7NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qObZr-009sLO-0Y;
	Wed, 26 Jul 2023 10:17:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qObZn-009sKd-1Q
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 10:17:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qObZm-0002dP-5B; Wed, 26 Jul 2023 12:17:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qObZl-0007sP-UB; Wed, 26 Jul 2023 12:17:01 +0200
Date: Wed, 26 Jul 2023 12:17:01 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <20230726101701.GK18491@pengutronix.de>
References: <20230718100248.875155-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230718100248.875155-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_031703_494243_A8A73269 
X-CRM114-Status: GOOD (  22.76  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: bootm: support locating kernel in FIT image in
 zero page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 18, 2023 at 12:02:48PM +0200, Ahmad Fatoum wrote:
> Since commit 7e2f6a1ffd64 ("uimage: disable zero page when loading to
> SDRAM at address 0x0"), we allow locating images loaded from files at
> address zero if that's within the SDRAM. This only applied to images
> loaded with file_to_sdram() and images that were already in RAM were
> still not allowed to overlap the zero page.
> 
> Fix this by doing in bootm_load_os() as was done in file_to_sdram(),
> namely, disabling zero page trapping for the duration of the memcpy.
> We need no further zero page handling afterwards, because kernel is
> booted after paging is disabled.
> 
> Cc: Michael Tretter <m.tretter@pengutronix.de>
> Reported-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/bootm.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 791d6b8fbbf1..4845c40958ae 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -13,6 +13,7 @@
>  #include <linux/stat.h>
>  #include <magicvar.h>
>  #include <uncompress.h>
> +#include <zero_page.h>
>  
>  static LIST_HEAD(handler_list);
>  
> @@ -119,7 +120,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
>  				(unsigned long long)load_address + kernel_size - 1);
>  			return -ENOMEM;
>  		}
> -		memcpy((void *)load_address, kernel, kernel_size);
> +		zero_page_memcpy((void *)load_address, kernel, kernel_size);
>  		return 0;
>  	}
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


