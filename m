Delivery-date: Wed, 19 Jul 2023 07:52:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qM06y-002d1u-21
	for lore@lore.pengutronix.de; Wed, 19 Jul 2023 07:52:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qM06v-0004wF-FY
	for lore@pengutronix.de; Wed, 19 Jul 2023 07:52:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=41jeoMrLAqYmNHkK9o95VO+D3DcC4yjmnVt3aGaBmNU=; b=Bhku7FP6Bm2RSY0BV2j4EdXGzQ
	UUxknKvOGY7xRBW2+ZxyBGrHdSqF6zJPsTsta4SuaH3WdvZ5sOjPtqBykESZ8HEoyQZlrO2yE+W+1
	vhC8pWKLt2fBee5fdXEFRcEQhRE79Nlz/6S30Z2y7EtsUs6ODUUObX+n6j1vCgj2RG1+MVknVk575
	9TwG9jNMjVhmWh9uBDki8iRR6GbqRF5maG+q/z5Xs+9ToUwnROxOmFYToYN+aiV6acbhLr6W5olVe
	AwNfisaIJT38+xTYZhCIIB/kIw4KcP6sjKQlHsl1vvBTOpc05oozKZO4KnoY5rs6ybgz0mr2g4n+4
	aR4v9ACg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM05Q-005R5O-10;
	Wed, 19 Jul 2023 05:50:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM05N-005R48-18
	for barebox@bombadil.infradead.org;
	Wed, 19 Jul 2023 05:50:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=41jeoMrLAqYmNHkK9o95VO+D3DcC4yjmnVt3aGaBmNU=; b=El3PGMTD8a5LpHMJnkdqxFLdE7
	MdlvlcxclUMwqdlA17Sf2znTzPa/v7oeUHZfrZIn6ZNPcr+VzI8Wghy1o+u7XJ3gpXIWTJMgt6FS9
	RmPrqSwzubturniE6rURPfLBGHyjQ728rk+aZFBob9ZM28vMl1jKm2Z5IPUwLSjX2TBqUcotWb486
	TriK0ErQiuig5WDNI6iaHkvAaFu+bCrxl8oeXWPg4HDr6R35qXRPbKq4UX6gSnk7Ym1o105R6veeW
	YVqbRhZyM4jZjHh9kTfGVGfjC+6lqo3vILn7LLQYGyxg6qW/Q6/3XgltAeq8ZzDwjcIeBHi5MqK1f
	/LO8QUCQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLinr-00BStl-1A
	for barebox@lists.infradead.org;
	Tue, 18 Jul 2023 11:23:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1qLime-0008Df-Bf; Tue, 18 Jul 2023 13:22:24 +0200
Received: from str by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1qLimb-0005Nb-IU; Tue, 18 Jul 2023 13:22:21 +0200
Date: Tue, 18 Jul 2023 13:22:21 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230718112221.GA29726@pengutronix.de>
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_122339_587970_9945EEFE 
X-CRM114-Status: GOOD (  23.37  )
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
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>
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

This works for me \o/

Tested-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>


Thanks,
Steffen

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


