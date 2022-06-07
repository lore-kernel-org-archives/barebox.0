Delivery-date: Tue, 07 Jun 2022 09:06:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTIn-0066p9-2a
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 09:06:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTIl-0001a2-2d
	for lore@pengutronix.de; Tue, 07 Jun 2022 09:06:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zK5oVFwDRY7052E1Yv7bGOMneX6UHDEcZx084yo8f7Q=; b=CtHYNjxtriwEJsw8JyiOcUP4yS
	VDqi8aHkDkavUNgNwBQUb71NDcVfscodpvSgffuvyWhfX71ipQ7JNezuY5o6UXuHd9pcBFPlPg3qV
	dPj+e6qH/I/rErVqAWnYycHsmiwy2BkBqP7j94T18wtsWmciyD1OAxYGwXVJqKGYvSlEcXesXvcvn
	zhBB6eG5tXlRjuuR6/NcjOHkYN/cjYwKyuvq8J3bd3suGPEPjXQwkFRKzq8fQcVuSdFiqQMEs1nLG
	5Ny0sIpDbe5mUA2pjmM2lX4HUej7/4W3WQOenLmmyhrN1CClxXdyeisL/la2g2kck8G+Ds2FCnbve
	BJQQG40A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTHG-005Iyv-Po; Tue, 07 Jun 2022 07:05:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTGJ-005IbA-4P
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 07:04:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTGH-0000vJ-Re; Tue, 07 Jun 2022 09:04:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTGH-0008PI-IY; Tue, 07 Jun 2022 09:04:21 +0200
Date: Tue, 7 Jun 2022 09:04:21 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220607070421.GJ1615@pengutronix.de>
References: <20220603072307.1578650-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603072307.1578650-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_000423_251331_B57C183F 
X-CRM114-Status: GOOD (  20.63  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND] of: address: fix printing of OF node name in
 error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 03, 2022 at 09:23:07AM +0200, Ahmad Fatoum wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> barebox has no %pOF. Open code this instance to yield a better error
> message.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> RESEND: Decoupling from rpi4 series, no other changes
> ---

Applied, thanks

Sascha

>  drivers/of/address.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 4eafce376d36..65e67973ad62 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -673,8 +673,8 @@ int of_dma_get_range(struct device_node *np, u64 *dma=
_addr, u64 *paddr, u64 *siz
>  	dmaaddr =3D of_read_number(ranges, naddr);
>  	*paddr =3D of_translate_dma_address(node, ranges + naddr);
>  	if (*paddr =3D=3D OF_BAD_ADDR) {
> -		pr_err("translation of DMA address(%llx) to CPU address failed node(%p=
OF)\n",
> -		       dmaaddr, np);
> +		pr_err("translation of DMA address(%llx) to CPU address failed node(%s=
)\n",
> +		       dmaaddr, np->name);
>  		ret =3D -EINVAL;
>  		goto out;
>  	}
> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

