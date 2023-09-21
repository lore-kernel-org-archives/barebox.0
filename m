Delivery-date: Thu, 21 Sep 2023 10:08:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEjf-005dyQ-Sr
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:08:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEjd-0003WL-P9
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:08:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Oyd2NAgRVOMQIYv8sPFrHfF9g1Gf0xkRWtpqAgcgKbk=; b=thERvTVM8ZSTbD67H7PV2uIFbM
	VuBtJRyYDX/+eU0XE5ON+45OoNQbIqEKh2L7qGN24dSOMIKVUOGsGj/ms7NsWupKRkb48pX7/3fRa
	r5yy5ASJWlL4jB2zsx+agjHYIuc8OMtiGz/sFco2StMdYewBi7+2Sx42/5A9JuHXD6F78/9V9Diro
	8YS0xLqDsIMDij4u5m21MW3F7L49in705nIPnlyr1dx9jO97qu2S55rKRNE5d73TFZtINSiOscxwo
	A53GcmkmTBUbd6wvCINu49M8xcEwJqD/uSK7sKyvPtyT/oMlQ26lW6Edy3qi/TWGD+g0uOjy4sEuu
	x79i+SHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEid-005SaJ-0a;
	Thu, 21 Sep 2023 08:07:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEia-005SZk-19
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:07:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEiZ-0003G7-1c; Thu, 21 Sep 2023 10:07:23 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEiY-007sjU-Jm; Thu, 21 Sep 2023 10:07:22 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEiY-00AfA1-D6; Thu, 21 Sep 2023 10:07:22 +0200
Date: Thu, 21 Sep 2023 10:07:22 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921080722.GC637806@pengutronix.de>
References: <20230914091054.121730-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914091054.121730-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_010724_396389_9F144710 
X-CRM114-Status: GOOD (  23.64  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] remoteproc: imx: don't re-request reserved SDRAM
 region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 14, 2023 at 11:10:53AM +0200, Ahmad Fatoum wrote:
> Various remoteproc drivers point at reserved memory regions via a
> memory-region property in the device tree. As all reserved memory
> regions are requested since 2022.10.0, we shouldn't have code request
> them again. Fix that. There's not much use of the memory-region property
> for i.MX upstream, so breakage should've been rather limited.
> 
> This has only been build-tested.
> 
> Fixes: d0b5f6bde15b ("of: reserved-mem: reserve regions prior to mmu_initcall()")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/remoteproc/imx_rproc.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index 68fe8031e5fb..c1f70cf75520 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -422,7 +422,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
>  	/* remap optional addresses */
>  	for (a = 0; a < nph; a++) {
>  		struct device_node *node;
> -		struct resource res, *res_cpu;
> +		struct resource res;
>  
>  		node = of_parse_phandle(np, "memory-region", a);
>  		err = of_address_to_resource(node, 0, &res);
> @@ -434,13 +434,12 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
>  		if (b >= IMX7D_RPROC_MEM_MAX)
>  			break;
>  
> -		res_cpu = request_sdram_region(dev_name(dev), res.start,
> -					       resource_size(&res));
> -		if (!res_cpu) {
> -			dev_err(dev, "remap optional addresses failed\n");
> -			return -ENOMEM;
> -		}
> -		priv->mem[b].cpu_addr = (void *)res_cpu->start;
> +		/*
> +		 * reserved memory region are automatically requested and
> +		 * mapped uncached
> +		 */
> +
> +		priv->mem[b].cpu_addr = phys_to_virt(res.start);
>  		priv->mem[b].sys_addr = res.start;
>  		priv->mem[b].size = resource_size(&res);
>  		b++;
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


