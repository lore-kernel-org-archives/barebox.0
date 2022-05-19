Delivery-date: Thu, 19 May 2022 13:58:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nren6-0021Ae-Pp
	for lore@lore.pengutronix.de; Thu, 19 May 2022 13:58:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nren5-0007kz-Dv
	for lore@pengutronix.de; Thu, 19 May 2022 13:58:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fCJpm+BwGi4enP8JX0/qeyk5DTHN9fbGhAZzCZWCzaU=; b=qJ5f3DHMfb5Q++SjW/ECW0wdEL
	iVWypS0D/lI8VaHGZl98eQZk+eYL3PzREws29ggp452KHqTNMM1AR4gvna7LGJREXm+vFovoAH/Wv
	pAUN5S7929/Yh+OLRtRgxY5BOWSlIslcZ8jF+uJaNOcOFwC8fU1A1Ov02gULkdz90zLCUG2M4GxHH
	ezt26Fdw1LnT4udEx2QYkVaIo6/0lb68bmrung2ko7bmt23l5l9QQ394guGbzySt6WyAM1Ry5w+YC
	R/C3N8GWxuqhf9DbhyLMGGfZggfCIG5iJrLyuoKIWjQaTj4pVSY0f6eY+kEy5r0SunULyWMP707rb
	VNa22B1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrelK-006XvG-Mb; Thu, 19 May 2022 11:56:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrelG-006XuG-4u
 for barebox@lists.infradead.org; Thu, 19 May 2022 11:56:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrelE-0007U0-VQ; Thu, 19 May 2022 13:56:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrelE-00038y-Mf; Thu, 19 May 2022 13:56:08 +0200
Date: Thu, 19 May 2022 13:56:08 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220519115608.GW25578@pengutronix.de>
References: <20220518175745.56467-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220518175745.56467-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:55:59 up 50 days, 25 min, 50 users,  load average: 0.14, 0.08,
 0.02
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_045610_243879_F25A726F 
X-CRM114-Status: GOOD (  28.02  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: address: treat absent dma-ranges as 1:1 translation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 18, 2022 at 07:57:45PM +0200, Lucas Stach wrote:
> Some DTs use dma-ranges in child busses without this property being present
> in the parent bus. To avoid failing the address translation, do the same as
> the Linux kernel and treat absence of this property as a 1:1 translation.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/of/address.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 67e8062f5d17..4eafce376d36 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -301,10 +301,13 @@ static int of_translate_one(struct device_node *parent, struct of_bus *bus,
>  	 *
>  	 * As far as we know, this damage only exists on Apple machines, so
>  	 * This code is only enabled on powerpc. --gcl
> +	 *
> +	 * This quirk also applies for 'dma-ranges' which frequently exist in
> +	 * child nodes without 'dma-ranges' in the parent nodes. --RobH
>  	 */
>  	ranges = of_get_property(parent, rprop, &rlen);
>  #if !defined(CONFIG_PPC)
> -	if (ranges == NULL) {
> +	if (ranges == NULL && strcmp(rprop, "dma-ranges")) {
>  		pr_vdebug("OF: no ranges; cannot translate\n");
>  		return 1;
>  	}
> -- 
> 2.35.3
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

