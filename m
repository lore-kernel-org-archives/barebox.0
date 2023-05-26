Delivery-date: Fri, 26 May 2023 15:29:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2XVM-00F7fh-JF
	for lore@lore.pengutronix.de; Fri, 26 May 2023 15:29:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2XVK-0004hf-41
	for lore@pengutronix.de; Fri, 26 May 2023 15:29:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QhGD37J9sC3ab21a7RF47tMbpC7wNfZsEHdX1xxTTLs=; b=Nn/5+b3mqxN7L2Oau8y7Tc3R9o
	rNdcY9zeuYrg5jDQ2OPK+cgBHiAG61Q//RxzmnV1TsjUrUqfRFgv4vSXy34OOys0Vu0tFKkfuDmbd
	zItvk4YIJFTChYGz1BrXu4unF250fdMwQsYbOWhRGtsOLPpsuZn9ciyNYrCRFJRmuITnCkydLvGpu
	UyEjmMCLfSEAdlwRHNBKnTs+PJVxE7JPfhn5ajXUuOH2EpkthSSpjcK+yXq0xPF4ymjnF8Wy7+hno
	Ge6pdKy2JqfpZfN1WEd56BjbjvjyriBDMO+d/SXEfTrCqhupcPRPDuyoaqmTU1LRvOpKUxVaQhzmK
	XrK5dYew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2XUF-002dos-0I;
	Fri, 26 May 2023 13:28:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2XUB-002dnv-2O
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 13:28:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2XUA-0004Vl-G1; Fri, 26 May 2023 15:28:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q2XUA-0002aq-8W; Fri, 26 May 2023 15:28:02 +0200
Date: Fri, 26 May 2023 15:28:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230526132802.GV17518@pengutronix.de>
References: <20230526124712.1558294-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230526124712.1558294-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_062803_781069_42407323 
X-CRM114-Status: GOOD (  20.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] i.MX: HABv4: fix left-over old arch_remap_range
 prototype use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 26, 2023 at 02:47:12PM +0200, Ahmad Fatoum wrote:
> The first arch_remap_range occurrence in the file was correctly changed
> to remap_range, but the second that was added for v3 wasn't adjusted.
> Fix that.
> 
> Fixes: 9845563450b8 ("treewide: use remap_range instead of arch_remap_range")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/hab/habv4.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index b10c92ec7671..b6baa92c679d 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -628,7 +628,7 @@ static int init_imx6_hab_get_status(void)
>  	imx6_hab_get_status();
>  
>  	zero_page_faulting();
> -	arch_remap_range((void *)PAGE_SIZE, SZ_1M - PAGE_SIZE, MAP_UNCACHED);
> +	remap_range((void *)PAGE_SIZE, SZ_1M - PAGE_SIZE, MAP_UNCACHED);
>  
>  	return 0;
>  }
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


