Delivery-date: Mon, 18 May 2026 14:18:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOwvP-001854-1X
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 14:18:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOwvO-0002wy-J8
	for lore@pengutronix.de; Mon, 18 May 2026 14:18:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=aRU5T0I+ZPiF58a07ceZ9v6dyUw7Jd9i96TPIHCVb94=; b=wBXjc/LPNYi25PMIXD7/vdV77s
	sCO6/prF2lt5SZmZQF2c4L+kBuoDzs8/ry6NVYQBfj67YxG8ZebcA9hQC6Btq/zdUT/kPM/CRIMmW
	WKs22uIq3Axj2em2W9a6KTS+lfaMK6xZ72OUthljWjgtwORMIaK5AZCRsUup0dWbmJ8EU+EcxMfxb
	wdsXhW733NARRZT1kPqGPaoAYsqgcO7mwip9P5RbEy0k7+777/h/Gic94KpAegsnMmUVUgvwCZ9bh
	wS6mmFjKEESLUNs0J0Q7hLlHqnRbcXmLx8HHMgV6hB23IOrvVzy4LWYHsPaQCBt1RwTtWz87WKKWH
	Uhd2vJIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwu2-0000000Fb7C-2KeB;
	Mon, 18 May 2026 12:16:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwtz-0000000Fb6C-1pow
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 12:16:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wOwtx-0002ao-HT; Mon, 18 May 2026 14:16:53 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wOwtw-000agp-2t;
	Mon, 18 May 2026 14:16:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wOwtx-0000000Ethi-1WB2;
	Mon, 18 May 2026 14:16:53 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <8d364049-78d5-4788-9cb2-feb58f41306f@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 12:16:53 +0000
Message-Id: <E1wOwtx-0000000Ethi-1WB2@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_051655_486435_1C7894B7 
X-CRM114-Status: GOOD (  40.42  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, "Claude
 Opus 4.7" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/10] mci: sdhci: add ADMA2 descriptor helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-18 11:18, Ahmad Fatoum wrote:
> Hi,
>=20
> On 5/11/26 2:07 PM, Sascha Hauer wrote:
> > Add reusable ADMA2 (32-bit and 64-bit) support to the SDHCI core so
> > drivers can opt in to ADMA without each having to reimplement descriptor
> > table management.
> >=20
> > A driver enables ADMA by calling sdhci_setup_adma() after
> > sdhci_setup_host(). The helper allocates a DMA-coherent descriptor
> > table sized for SDHCI_DEFAULT_ADMA_DESCS entries (drivers can override
> > adma_table_cnt before calling), picks the descriptor format based on
> > SDHCI_USE_64_BIT_DMA, sets SDHCI_USE_ADMA in host->flags and caps
> > mci->max_req_size so the MCI core splits requests to fit. From there,
> > sdhci_setup_data_dma() builds an ADMA2 descriptor chain for the
> > contiguous transfer buffer (one descriptor per up-to-64 KiB chunk plus
> > a terminating nop/end entry) and programs SDHCI_ADMA_ADDRESS instead
> > of the SDMA address. sdhci_config_dma() now selects ADMA32/ADMA64 in
> > HOST_CONTROL accordingly.
> >=20
> > If sdhci_setup_adma() fails (no SDHCI_CAN_DO_ADMA2, no memory, or
> > unaligned table), the host transparently falls back to the existing
> > SDMA path.
>=20
> See below for feedback.
>=20
> >=20
> > Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/mci/sdhci.c | 154 ++++++++++++++++++++++++++++++++++++++++++++=
+++++++-
> >  drivers/mci/sdhci.h |  59 ++++++++++++++++++++
> >  2 files changed, 212 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
> > index f7172347e1..0c3ca69e9a 100644
> > --- a/drivers/mci/sdhci.c
> > +++ b/drivers/mci/sdhci.c
> > @@ -585,6 +585,13 @@ static void sdhci_config_dma(struct sdhci *host)
> >  	ctrl =3D sdhci_read8(host, SDHCI_HOST_CONTROL);
> >  	/* Note if DMA Select is zero then SDMA is selected */
> >  	ctrl &=3D ~SDHCI_CTRL_DMA_MASK;
> > +
> > +	if (host->flags & SDHCI_USE_ADMA) {
> > +		ctrl |=3D SDHCI_CTRL_ADMA32;
> > +		if (host->flags & SDHCI_USE_64_BIT_DMA && !host->v4_mode)
> > +			ctrl |=3D SDHCI_CTRL_ADMA64;
> > +	}
> > +
> >  	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
> > =20
> >  	if (host->flags & SDHCI_USE_64_BIT_DMA) {
> > @@ -601,11 +608,67 @@ static void sdhci_config_dma(struct sdhci *host)
> >  	}
> >  }
> > =20
> > +static void sdhci_adma_write_desc(struct sdhci *host, void **desc,
> > +				  dma_addr_t addr, int len, unsigned int cmd)
> > +{
> > +	struct sdhci_adma2_64_desc *dma_desc =3D *desc;
>=20
> This should be a union between sdhci_adma2_32_desc and sdhci_adma2_64_des=
c.

This exactly matches the Kernel. Might be cleaner to make this a union,
but having the same code as the kernel here is also nice.

>=20
> > +
> > +	/* 32-bit and 64-bit descriptors share these fields. */
> > +	dma_desc->cmd =3D cpu_to_le16(cmd);
> > +	dma_desc->len =3D cpu_to_le16(len);
> > +	dma_desc->addr_lo =3D cpu_to_le32(lower_32_bits(addr));
> > +
> > +	if (host->flags & SDHCI_USE_64_BIT_DMA)
> > +		dma_desc->addr_hi =3D cpu_to_le32(upper_32_bits(addr));
>=20
> On a 64-bit system without SDHCI_USE_64_BIT_DMA, but with a 64-bit addr,
> we will end up with memory corruption here.
>=20
> Please add at least a BUG, so it fails reliably or propagate an error.

This problem is pre-existing in the tree. Yes, we should catch this, but
should be another patch.

>
> > +
> > +	*desc +=3D host->desc_sz;
> > +}
> > +EXPORT_SYMBOL_GPL(sdhci_adma_write_desc);
>=20
> Why export a static symbol?

Was exported previously, forgot to remove when making it static.

>=20
> > +
> > +/*
> > + * Build the ADMA2 descriptor table for a single contiguous DMA buffer.
> > + * Each entry of the table covers up to SDHCI_ADMA2_MAX_LEN bytes; lon=
ger
> > + * transfers are split across multiple descriptors.
> > + */
> > +static int sdhci_adma_build_table(struct sdhci *host, dma_addr_t addr,
> > +				  unsigned int len)
> > +{
> > +	void *desc =3D host->adma_table;
> > +	void *desc_end =3D host->adma_table + host->adma_table_sz;
> > +
> > +	while (len) {
> > +		unsigned int chunk =3D min_t(unsigned int, len,
> > +					   SDHCI_ADMA2_MAX_LEN);
>=20
> I think the min_t is unneeded and if it is, just give len the same type
> as SDHCI_ADMA2_MAX_LEN?

That would be int. But should we really allow negative lengths as input
to this function?

>=20
> > +
> > +		if (desc + host->desc_sz > desc_end)
> > +			return -ENOSPC;
> > +
> > +		/*
> > +		 * The length field is 16-bit; a length of 0 encodes
> > +		 * SDHCI_ADMA2_MAX_LEN bytes per the SD Host Controller
> > +		 * specification.
> > +		 */
> > +		sdhci_adma_write_desc(host, &desc, addr, chunk & 0xffff,
> > +				      ADMA2_TRAN_VALID);
> > +		addr +=3D chunk;
> > +		len -=3D chunk;
> > +	}
> > +
> > +	if (desc + host->desc_sz > desc_end)
> > +		return -ENOSPC;
>=20
> Nitpick: I think it would be cleaner to move this check into
> sdhci_adma_write_desc(), so it returns an error on out-of-bound write
> and just propagate the error instead of redoing the same if clause here
> and in the loop.

Ok.

>=20
> > +
> > +	/* Append a terminating descriptor (nop, end, valid). */
> > +	sdhci_adma_write_desc(host, &desc, 0, 0, ADMA2_NOP_END_VALID);
> > +
> > +	return 0;
> > +}
> > +
> >  void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
> >  			  dma_addr_t *dma)
> >  {
> >  	struct device *dev =3D sdhci_dev(sdhci);
> >  	int nbytes;
> > +	int ret;
> > =20
> >  	if (!data) {
> >  		if (dma)
> > @@ -633,7 +696,22 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, str=
uct mci_data *data,
> >  	}
> > =20
> >  	sdhci_config_dma(sdhci);
> > -	sdhci_set_sdma_addr(sdhci, *dma);
> > +
> > +	if (sdhci->flags & SDHCI_USE_ADMA) {
> > +		ret =3D sdhci_adma_build_table(sdhci, *dma, nbytes);
> > +		if (ret) {
> > +			dev_err(dev, "ADMA table build failed: %pe\n",
> > +				ERR_PTR(ret));
> > +			dma_unmap_single(dev, *dma, nbytes,
> > +					 (data->flags & MMC_DATA_READ) ?
> > +					 DMA_FROM_DEVICE : DMA_TO_DEVICE);
>=20
> Why is the data umapped here?!

We have to. We are returning SDHCI_NO_DMA as dma address, so the caller
can't unmap it.

Sascha


--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


