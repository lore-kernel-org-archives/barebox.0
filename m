Delivery-date: Tue, 07 Dec 2021 10:16:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWal-0008Mb-51
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:16:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWak-0002x0-1B
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:16:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qNXIIbl5hxpYZsXb3PvpfNys3w0EfAeFBzotVE5R1Ag=; b=MYFEv4yWsVHE94Ho7VytaRthfN
	DpPF8BVgFs+zXiLNymtgVZwI/lon3VUrO58p15e6wuv/C4FMbRrwvmsTIRYJqMMoh74FwO/RpSvkl
	k1+XLReK6IrzHw6JTlKKm02k1NRqf4+s4BvXxKRXaEj735sty6E6tcNWM8hJ+Vq/C8UuKmgSbUuU7
	BINPejLTNM/uWRZ6q2cpq+UOKO4m+0hAEZWqqcTk/yWlcYg5fGwUgkP8G//hB7Ope1e0nlbQwHsKy
	jDkBtyGxfSUmCIDAlkAif4TR6zmIA6Dl5XxXp+poOpRNMqdTutJVd2k5284KJA1zk4UtBUwkiJZBG
	tIngUenQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWZK-007lEC-7m; Tue, 07 Dec 2021 09:15:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWX5-007kPy-D5
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:13:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWX3-0002BE-UW; Tue, 07 Dec 2021 10:13:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWX3-0003ng-Ij; Tue, 07 Dec 2021 10:13:05 +0100
Date: Tue, 7 Dec 2021 10:13:05 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211207091305.GL28260@pengutronix.de>
References: <20211129071454.2014315-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129071454.2014315-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:12:51 up 292 days, 12:36, 143 users,  load average: 0.14, 0.23,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_011307_502250_C9AB6F80 
X-CRM114-Status: GOOD (  25.14  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] fs: /dev/mem: handle copy at offset 0 correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 29, 2021 at 08:14:54AM +0100, Ahmad Fatoum wrote:
> Despite that /dev/mem has a size of 0, the check preventing
> out-of-bounds access works for /dev/mem as well, because of unsigned
> wrap around. Corner case is when offset is zero. There will be no wrap
> around and
> 
>   count = min(count, 0 - 0) = 0
> 
> Leading to unexpected behavior with e.g.
> 
>   memcmp -s /dev/mem 0
> 
> on systems without MMU. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  fs/devfs-core.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 3715e543e632..2d016e0e4861 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -573,7 +573,10 @@ ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
>  	if (!dev || dev->num_resources < 1)
>  		return -1;
>  
> -	count = size = min(count, resource_size(&dev->resource[0]) - offset);
> +	if (resource_size(&dev->resource[0]) > 0 || offset != 0)
> +		count = min(count, resource_size(&dev->resource[0]) - offset);
> +
> +	size = count;
>  
>  	/* no rwsize specification given. Do whatever memcpy likes best */
>  	if (!rwsize) {
> -- 
> 2.33.0
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

