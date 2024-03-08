Delivery-date: Fri, 08 Mar 2024 10:56:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riWxi-00DYAG-35
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 10:56:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riWxi-0003R4-By
	for lore@pengutronix.de; Fri, 08 Mar 2024 10:56:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VTf1qEplablU2EwNfC0P0jvQk+1yrSyAIYPILZhFVLs=; b=U1LtAyRQvOcV8EbAJ8yHi7GpFn
	NEUrhJOVS4TJYjJxXr1iQKwNELj07bYQ3leUu93NFKAbQqWDQZ5s3G/0iYHfGEV7TJ6l28blCHOi+
	SlUitL92w6cc7HpYcIceNZ5WWg1PxkEnKDwSTWf1MUXiDSngMCSfzqDVU6tMOLFEEc7No1iQJF069
	LHGdemfxeVAOQ1HkEw2+0tWrD1tmSH3GfcV9C3NeHbFQdiv/ry9eJ5/FFu+F+wIt+BnyMqdYdF5KA
	YYAhlz5DmRzjByjTBKHjzgL6kBWwemTxFS0U+c7O2lizQAudGLAhLxjMpge44AM5dczPJyS/4Rgve
	uR37eyRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWx9-00000008eX9-2CRB;
	Fri, 08 Mar 2024 09:55:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWx6-00000008eWL-0hJm
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 09:55:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1riWx1-0002tK-CT; Fri, 08 Mar 2024 10:55:39 +0100
Message-ID: <8d96a1c3a89986b2997db41863af4afcbff49d91.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
	barebox@lists.infradead.org
Date: Fri, 08 Mar 2024 10:55:39 +0100
In-Reply-To: <20240308073518.3922205-2-r.czerwinski@pengutronix.de>
References: <20240308073518.3922205-1-r.czerwinski@pengutronix.de>
	 <20240308073518.3922205-2-r.czerwinski@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_015544_229576_A883D872 
X-CRM114-Status: GOOD (  13.18  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] crypto: caam: caamrng: dma map descriptors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Freitag, dem 08.03.2024 um 08:35 +0100 schrieb Rouven Czerwinski:
> With DMA API debugging Barebox complains that the descriptors are never
> mapped before a sync. Add the map and unmap function calls.
>=20
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
> v2:
> - remove dma_map_sync_single_for_device() calls
> - remove dma_map_single for dma coherent memory
>=20
>  drivers/crypto/caam/caamrng.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.=
c
> index ea154913ca..03e75d0b7b 100644
> --- a/drivers/crypto/caam/caamrng.c
> +++ b/drivers/crypto/caam/caamrng.c
> @@ -91,6 +91,7 @@ static void rng_done(struct device *jrdev, u32 *desc, u=
32 err, void *context)
> =20
>  	/* Buffer refilled, invalidate cache */
>  	dma_sync_single_for_cpu(jrdev, bd->addr, RN_BUF_SIZE, DMA_FROM_DEVICE);
> +	dma_unmap_single(jrdev, (unsigned long)desc, desc_bytes(desc), DMA_TO_D=
EVICE);
>  }
> =20
>  static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
> @@ -102,8 +103,7 @@ static inline int submit_job(struct caam_rng_ctx *ctx=
, int to_current)
> =20
>  	dev_dbg(jrdev, "submitting job %d\n", !(to_current ^ ctx->current_buf))=
;
> =20
> -	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc)=
,
> -				   DMA_TO_DEVICE);
> +	dma_map_single(jrdev, (void *)desc, desc_bytes(desc), DMA_TO_DEVICE);
> =20
>  	err =3D caam_jr_enqueue(jrdev, desc, rng_done, ctx);
>  	if (!err)
> @@ -180,8 +180,7 @@ static inline int rng_create_sh_desc(struct caam_rng_=
ctx *ctx)
> =20
>  	ctx->sh_desc_dma =3D (dma_addr_t)desc;
> =20
> -	dma_sync_single_for_device(ctx->jrdev, (unsigned long)desc, desc_bytes(=
desc),
> -				   DMA_TO_DEVICE);
> +	dma_map_single(ctx->jrdev, desc, desc_bytes(desc), DMA_TO_DEVICE);

dma_map_single returns the DMA address that should be stored in
ctx->sh_desc_dma instead of the simple cast from virtual to DMA address
in the line above.

The other two dma_map/unmap calls in this patch look like a layering
violation. I would argue that those should move down into
caam_jr_enqueue and caam_jr_dequeue, to avoid the equally silly cast
from virt to DMA in those functions.

Regards,
Lucas

> =20
>  	print_hex_dump_debug("rng shdesc@: ", DUMP_PREFIX_OFFSET, 16, 4,
>  		       desc, desc_bytes(desc), 1);



