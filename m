Delivery-date: Thu, 07 Mar 2024 10:10:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ri9lS-00C7Ci-03
	for lore@lore.pengutronix.de;
	Thu, 07 Mar 2024 10:10:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ri9lQ-0001hT-QO
	for lore@pengutronix.de; Thu, 07 Mar 2024 10:10:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5ATpsY+Tap6Ow5fma7VpYd6vRpwUFkwyZHqyvnQTlO8=; b=V5NBkD0e1WQkP9VaWG5vQAuvdD
	G877md4YFOmQtT5T9iB4pnb1KyG+1Ebo62bLLs1n7KHhG6pxryAhHcB3QQHfWa+vwCC5V8xJSB3Iu
	BFwc9zqX1btckf57bVcfSWmBrG5IQ96S4K8TZxeu8576YBMLoJ/CrIoARoRlia1UFpOAIZ0Ik+Ju/
	Mnp+0SLAEPJqUijcwziTUAL6hwJrv2U+DX+HZLmxAkVHQIrPtrOJdRzzbjWXPYbnNwyPi7Rk2L3vm
	ul89YcfkBtpFJwZT1Sll/uk549U5o0X5jPRj7gv6sxaNJH5Gk1c5i0QOgf40Jsd9c6IOYRHt3QNFR
	fPEmd9dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9ku-00000003lqy-3w9O;
	Thu, 07 Mar 2024 09:09:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ri9kr-00000003lpp-3jtj
	for barebox@lists.infradead.org;
	Thu, 07 Mar 2024 09:09:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1ri9ki-0001Bk-L2; Thu, 07 Mar 2024 10:09:24 +0100
Message-ID: <ed0e7ba1b848ba4ef5d3e5d596de0776c965710e.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
	barebox@lists.infradead.org
Date: Thu, 07 Mar 2024 10:09:24 +0100
In-Reply-To: <20240307083936.1195215-1-r.czerwinski@pengutronix.de>
References: <20240307083936.1195215-1-r.czerwinski@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_010933_956845_CA6D7AFE 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [PATCH 1/2] crypto: caam: map DMA buffers before sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Donnerstag, dem 07.03.2024 um 09:39 +0100 schrieb Rouven Czerwinski:
> With dma api debugging enabled, Barebox complains correctly that the
> result and desc buffer are never mapped correctly. Add the correct map
> and unmap sequence.
>=20
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/crypto/caam/rng_self_test.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rn=
g_self_test.c
> index b6fcc3bc09..f5ab974a98 100644
> --- a/drivers/crypto/caam/rng_self_test.c
> +++ b/drivers/crypto/caam/rng_self_test.c
> @@ -186,6 +186,8 @@ int caam_rng_self_test(struct device *dev, const u8 c=
aam_era, const u8 rngvid,
> =20
>  	construct_rng_self_test_jobdesc(desc, rng_st_dsc, result, desc_size);
> =20
> +	dma_map_single(dev, desc, desc_size * sizeof(*desc), DMA_TO_DEVICE);
> +	dma_map_single(dev, result, result_size * sizeof(*result), DMA_FROM_DEV=
ICE);
>  	dma_sync_single_for_device(dev, (unsigned long)desc,
>  			desc_size * sizeof(*desc), DMA_TO_DEVICE);
>  	dma_sync_single_for_device(dev, (unsigned long)result,

While harmless, those syncs are not needed anymore after the dma_map is
added, as they do the same cache maintenance operations as the map
right before.

Regards,
Lucas

> @@ -218,6 +220,8 @@ int caam_rng_self_test(struct device *dev, const u8 c=
aam_era, const u8 rngvid,
>  	ret =3D 0;
> =20
>  err:
> +	dma_unmap_single(dev, (dma_addr_t)desc, desc_size * sizeof(*desc), DMA_=
TO_DEVICE);
> +	dma_unmap_single(dev, (dma_addr_t)result, result_size * sizeof(*result)=
, DMA_FROM_DEVICE);
>  	dma_free(desc);
>  	dma_free(result);
>  	return ret;



