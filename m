Delivery-date: Tue, 05 Jul 2022 10:21:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8doA-006LLd-T9
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 10:21:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8doC-0004Vu-T2
	for lore@pengutronix.de; Tue, 05 Jul 2022 10:21:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G+m0gdDa8y576jkAUZBocRt+/IeeYQUgxltojiC+wr4=; b=VFkbr19y16JzvWXnCHzKy0j6Px
	LF+jlYaZhp0L2AW+ZRrqyZlYwoS9tcILSFY46DzCe1V2YwWDKdpxfdG8OheBh9xYSjcr/uuCKiLIh
	B5xhwkXUARSYYE7x8+/Xx6I2unw9MYftf1ROhJO/fIrKqy8FtxUeMCHRQOoM9Rxg0ONS/AieJDV2A
	PPVMqXiu2S8ZbQxd24RuKrnySdtYaK89a9Y0LLHvZlU003jXJ/pCV+fQIXo80d4rCCMgo/U9bMhIM
	271UShAwH3uz/TxLtmhTTbJbYqNMK1LqX9CjJjfOo+FQHBBOB4I9JBzi8YX454bxIoovPhdGTLDXQ
	0UdldZeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8dmm-00G8Ep-Te; Tue, 05 Jul 2022 08:19:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8dmh-00G8BW-Du
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 08:19:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8dmg-00048F-0I; Tue, 05 Jul 2022 10:19:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8dmf-00064k-Nc; Tue, 05 Jul 2022 10:19:49 +0200
Date: Tue, 5 Jul 2022 10:19:49 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220705081949.GA5208@pengutronix.de>
References: <20220704141809.457135-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220704141809.457135-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_011951_517586_19115543 
X-CRM114-Status: GOOD (  17.89  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: bootm: print error in case of appendroot failed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 04, 2022 at 04:18:09PM +0200, Marco Felsch wrote:
> Inform the user that appendroot failed instead of silently dropping the
> request. This makes the debugging easier e.g. if nt-signature wasn't set
> correctly.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/bootm.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 3c80e8bf94..1c722afc80 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -729,6 +729,8 @@ int bootm_boot(struct bootm_data *bootm_data)
>  			globalvar_add_simple("linux.bootargs.bootm.appendroot",
>  					     rootarg);
>  			free(rootarg);
> +		} else {
> +			pr_err("Failed to append kernel cmdline parameter 'root='\n");
>  		}
>  	}
>  
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


