Delivery-date: Thu, 07 Mar 2024 10:14:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ri9pQ-00C7jA-1B
	for lore@lore.pengutronix.de;
	Thu, 07 Mar 2024 10:14:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ri9pN-0004ti-Of
	for lore@pengutronix.de; Thu, 07 Mar 2024 10:14:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+vmpRiUZuOKGru9LnK451j3MhbSBNjpStEyl6R/UvHY=; b=htxfS9lrM7HsJx9rBdcqcFV2Ts
	Be6qtuM8BmJj+5i7qkutnmBME1mk52M0ii83B2msjeEgnO9khGroMDRf4HJd3067WJarSCFawxzcR
	tEigb0uky5Nzgk4cXvo0vrF8wY4EXGp9sqz8aEzOMewDtlNP6Co6csHXl2L012tzTLfsHCdluOEtA
	3q3/EOVYSoX7ZECy28uqQQEDf1rUZKVrKfGW2W7Z+2AUD+pwQVBl/VIzKax5kaoGiWSxx92i0iQTu
	xVTeSP0I9vFyh4prxpO8EukjLYXvhsgRPX9apLtlpUgRHyl6MSuDkmdb7fDJvzncsJ4uu+jr3CU2F
	MQqGywMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9oq-00000003mxg-05yS;
	Thu, 07 Mar 2024 09:13:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9ol-00000003muV-1K0v
	for barebox@lists.infradead.org;
	Thu, 07 Mar 2024 09:13:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1ri9ok-0004Nc-2y; Thu, 07 Mar 2024 10:13:34 +0100
Message-ID: <59d9ba3281e022c494ac2fe1dcf85beff07386b0.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
	barebox@lists.infradead.org
Date: Thu, 07 Mar 2024 10:13:33 +0100
In-Reply-To: <20240307083936.1195215-2-r.czerwinski@pengutronix.de>
References: <20240307083936.1195215-1-r.czerwinski@pengutronix.de>
	 <20240307083936.1195215-2-r.czerwinski@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_011335_419735_C200627C 
X-CRM114-Status: GOOD (  13.46  )
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
Subject: Re: [PATCH 2/2] crypto: caam: caamrng: map desc and buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Donnerstag, dem 07.03.2024 um 09:39 +0100 schrieb Rouven Czerwinski:
> With DMA API debugging Barebox complains that some buffers are never
> mapped before a sync. Add the map and unmap function calls.
>=20
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/crypto/caam/caamrng.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrng.=
c
> index ea154913ca..1b5713f978 100644
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
> @@ -102,6 +103,7 @@ static inline int submit_job(struct caam_rng_ctx *ctx=
, int to_current)
> =20
>  	dev_dbg(jrdev, "submitting job %d\n", !(to_current ^ ctx->current_buf))=
;
> =20
> +	dma_map_single(jrdev, (void *)desc, desc_bytes(desc), DMA_TO_DEVICE);
>  	dma_sync_single_for_device(jrdev, (unsigned long)desc, desc_bytes(desc)=
,
>  				   DMA_TO_DEVICE);
> =20
> @@ -180,6 +182,7 @@ static inline int rng_create_sh_desc(struct caam_rng_=
ctx *ctx)
> =20
>  	ctx->sh_desc_dma =3D (dma_addr_t)desc;
> =20
> +	dma_map_single(ctx->jrdev, desc, desc_bytes(desc), DMA_TO_DEVICE);
>  	dma_sync_single_for_device(ctx->jrdev, (unsigned long)desc, desc_bytes(=
desc),
>  				   DMA_TO_DEVICE);

Same comment on those syncs as the patch before.

> =20
> @@ -210,6 +213,7 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, in=
t buf_id)
>  	int err;
> =20
>  	bd->buf =3D dma_alloc_coherent(RN_BUF_SIZE, &bd->addr);
> +	dma_map_single(ctx->jrdev, (void *)bd->addr, RN_BUF_SIZE, DMA_FROM_DEVI=
CE);

This looks wrong. A device coherent buffer doesn't ever need to be
mapped via the streaming DMA API. The DMA debug is probably confused by
the bogus dma_sync_single_for_cpu() in rng_done(), which shouldn't be
there, as the buffer is allocated from coherent memory and thus doesn't
need to be synced.

Regards,
Lucas

> =20
>  	err =3D rng_create_job_desc(ctx, buf_id);
>  	if (err)



