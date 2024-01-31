Delivery-date: Wed, 31 Jan 2024 18:21:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVEHR-00E5WU-01
	for lore@lore.pengutronix.de;
	Wed, 31 Jan 2024 18:21:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVEHR-0000Mo-JD
	for lore@pengutronix.de; Wed, 31 Jan 2024 18:21:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p+FczEolr1bVEGLdKzg/mgn9UYnZDASE7r0vRCI6IE4=; b=KS9+aO45JjUoZyUPEjGo8i7jbC
	EU/ROKcvTPADziF+x1WfhgVvbjaLe2mEpwIDeFGvL+iw0BIdyubZCtuTeHt+L7dt0X/ctAx9aaTAp
	HuYB2hvPoCCbAWt3rWXk/fjYnMk6PtlCRI7esYKXGRulm1MvnN7/F6KujN+E9/3mav5OvBBP5Lay5
	qLa++ixQGiZ9mEFpyMla1VSBPib0tlc+/Vr0jChPUsRy+QljlQY+j4jXCqFNZZPyJr7/MgOm8CsGM
	TlhFohzUtgXUzuYrvI1j3bIW8VeO2TvAgVwLZRfE2wO/HIVFXZnflCLFPL6G6Y4A+5rkvZ8JQgTgV
	rI81+PAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVEH1-00000004o8N-3mGb;
	Wed, 31 Jan 2024 17:21:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVEGz-00000004o7n-0aAs
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 17:21:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVEGx-0000HK-PW; Wed, 31 Jan 2024 18:21:15 +0100
Message-ID: <ec788b5c-dab3-4018-ad94-26bd0a71b108@pengutronix.de>
Date: Wed, 31 Jan 2024 18:21:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240131-fix-fdt-memory-safety-v1-0-3d3a2c797eec@pengutronix.de>
 <20240131-fix-fdt-memory-safety-v1-2-3d3a2c797eec@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240131-fix-fdt-memory-safety-v1-2-3d3a2c797eec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_092117_209839_28072D0D 
X-CRM114-Status: GOOD (  22.23  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] of: fdt: fix oob writes with large ftd properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 31.01.24 17:57, Stefan Kerkmann wrote:
> OOB writes can be triggered when fdt->dt_size * 2 is still smaller than
> the property for which memory should be allocated. This can happen under
> rare circumstances when editing a fdt with the of_property command and a
> property is larger than 128k in size.
> 
> This happend when editing a FIT image (which is a ftd) with the
> of_property command and the Kernel image was around 8M in size.
> 
> The simplified call chain is the following:
> 
> of_property -> of_flatten_dtb -> create new fdt with 64k in size (this is
> fixed) -> __of_flatten_dtb -> attempt to copy kernel image (8M) ->
> fdt_ensure_space -> allocate only 128k for fdt->dt -> memcopy 8M into fdt->dt
> buffer -> crash
> 
> The fix is to grow fdt->dt to hold at least the new property. The power
> of 2 increment is untouched to keep the same behaviour otherwise.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  drivers/of/fdt.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 4f79a6120f..1f24ed0bbc 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -399,6 +399,10 @@ static int fdt_ensure_space(struct fdt *fdt, int dtsize)
>  		previous = fdt->dt;
>  		new_size = fdt->dt_size * 2;
>  
> +		while (new_size <= dtsize) {
> +			new_size *= 2;
> +		}

A nitpick that I solely note because I already had feedback on the first patch:
Kernel coding style is to omit { braces } for single statement blocks.

In your case you could just do:

 if (new_size <= dtsize)
 	new_size = roundup_pow_of_two(new_size + dtsize);

I think to skip the loop.

Cheers,
Ahmad

> +
>  		if ((fdt->dt = memalign_realloc(previous, fdt->dt_size,
>  						new_size)) == NULL) {
>  			free(previous);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



