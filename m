Delivery-date: Tue, 31 May 2022 10:08:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvwvW-00G1XT-GL
	for lore@lore.pengutronix.de; Tue, 31 May 2022 10:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nvwvV-0007a8-B9
	for lore@pengutronix.de; Tue, 31 May 2022 10:08:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tGxObxMxhTqrK0cccZQ3eX021TmovMS4WeGukUn9dcI=; b=i8IQ1iwdmki0AvmeWUcmVRdStv
	nLqz/f/MbjkEhyIlbeFRRWQPuvy6aD9psAhtGjwBNw5JejvhX2vbha1t8gAzhcWHK/khCMLKXolAu
	tKpOhVpAfPrFvrLNvrroaqjhPazQ655FUTjEFLpsYlGiUE+T2iLj0IWzs3CycCkM3silwhWnRzmZ+
	gNsw5ewYVX+ilaJPoEv0vNxK09iOifFxdX0gHzTAVm0jl4nIz0Rg1bMl5xQxhSEm3tKPo9cidQD3I
	PIFV9yE/s21FOSRBKuj0DWlDntDdAUwly+ryou5/WG8vVDn9oLyrKK8NnmyrgJGBvgspCfoEIzAYj
	Cjay/kpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvwu9-009mTm-Np; Tue, 31 May 2022 08:07:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvwu4-009mSG-GL
	for barebox@lists.infradead.org; Tue, 31 May 2022 08:07:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nvwu3-0007Sr-9o; Tue, 31 May 2022 10:06:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nvwu3-0001vM-0r; Tue, 31 May 2022 10:06:59 +0200
Date: Tue, 31 May 2022 10:06:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220531080658.GR1615@pengutronix.de>
References: <20220530074102.632341-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220530074102.632341-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_010700_581674_A8510EBD 
X-CRM114-Status: GOOD (  24.63  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND master] PBL: fdt: fix /memory parsing when
 #address-cells != #size-cells
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 30, 2022 at 09:41:02AM +0200, Ahmad Fatoum wrote:
> Due to a typo, this code assumed so far ignored #size-cells and assumed
> it to be equal to #address-cells. This breaks using the
> barebox-dt-2nd.img with some 64-bit device trees like the Raspberry Pi's.
> 
> Fixes: ffb0344b7410 ("ARM: Add generic device tree 2nd stage support")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Sent originally as part of the Raspberry Pi 4 support patch series.
> Split it out, so it can go into master independently.
> ---
>  pbl/fdt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/pbl/fdt.c b/pbl/fdt.c
> index 51719698f269..8e4d1295074a 100644
> --- a/pbl/fdt.c
> +++ b/pbl/fdt.c
> @@ -47,7 +47,7 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
>  		pr_err("Cannot find #size-cells property");
>  		goto err;
>  	}
> -	ns = fdt32_to_cpu(*nap);
> +	ns = fdt32_to_cpu(*nsp);
>  
>  	/* Find the memory range */
>  	node = fdt_node_offset_by_prop_value(fdt, -1, "device_type",
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

