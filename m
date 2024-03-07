Delivery-date: Thu, 07 Mar 2024 12:21:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riBoU-00CDut-11
	for lore@lore.pengutronix.de;
	Thu, 07 Mar 2024 12:21:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riBoT-0001Ss-LC
	for lore@pengutronix.de; Thu, 07 Mar 2024 12:21:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WSsCfVlDQeDAOx2HIQgOpRCdYwbInp5Rh8bZu8vjJtI=; b=Hws5Q0UXonJ4GOPVmpffF5kzl0
	aX6wPeLyS24BMq4/t+RiWRZWHERPHgBE0wdCfHXWsxSN58vvSqX+ITFtcUYEAUvla9qaJFrzsqf3P
	jJHtVuOmRYE6P4B6RNPSe7rA2T+HtpXRFgL3lVMECPE60OPTgCeKEefI4F7bNuiEHxsBbQ8L6/P9B
	c4eHswcJ4vqVJPIlHscenCvuCKrUfIEJLbyJD8SC+f3URYqZMoVMhgBLIJVZPLAvup9GY+gf1e3qJ
	Az7nRQl4B5/uBR2NImfgwDN31UjsaBQTRhXDw+yWfLO3kJYCiVIIfFlbHOD4ql70zLTmcYurwsEa+
	lzUJWrhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riBnz-00000004H2c-14Bv;
	Thu, 07 Mar 2024 11:20:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riBnv-00000004H1r-1a3Q
	for barebox@lists.infradead.org;
	Thu, 07 Mar 2024 11:20:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1riBns-0000y4-LE; Thu, 07 Mar 2024 12:20:48 +0100
Message-ID: <8ce80053a8fc3767cc4a7c96189c35b2eac49b60.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: rcz@pengutronix.de, lst@pengutronix.de
Date: Thu, 07 Mar 2024 12:20:48 +0100
In-Reply-To: <20240307111409.3733947-1-a.fatoum@pengutronix.de>
References: <20240307111409.3733947-1-a.fatoum@pengutronix.de>
Autocrypt: addr=r.czerwinski@pengutronix.de; prefer-encrypt=mutual;
 keydata=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
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_032051_442181_C3599895 
X-CRM114-Status: GOOD (  17.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] dma: debug: detect repeated DMA sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Thu, 2024-03-07 at 12:14 +0100, Ahmad Fatoum wrote:
> dma_map_single will do any necessary cache maintenance to make a buffer
> available to a device. Calling debug_dma_sync_single_for_device on such
> a buffer is unnecessary, so flag when this happens.


AFAIUI It is only incorrect if the buffer is handed of to the device
and never touched by the CPU again. If you want to modify a buffer
after the device has modified it to let the device work on it again,
dma_sync_single_for_device is the correct function.

In Essence:

Device Access -> dma_sync_single_for_cpu -> CPU modification ->
dma_sync_single_for_device -> Device Access

The buffer stays mapped to the deivce the whole time. Please correct me
if my understanding is wrong.

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> =C2=A0drivers/dma/debug.c | 22 ++++++++++++++++++++--
> =C2=A01 file changed, 20 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
> index b3bfbff9b2f5..b80e35ff5092 100644
> --- a/drivers/dma/debug.c
> +++ b/drivers/dma/debug.c
> @@ -12,6 +12,7 @@ struct dma_debug_entry {
> =C2=A0	dma_addr_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_addr;
> =C2=A0	size_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 size;
> =C2=A0	int=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 direction;
> +	bool=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 dev_mapped;
> =C2=A0};
> =C2=A0
> =C2=A0static const char *dir2name[] =3D {
> @@ -121,6 +122,7 @@ void debug_dma_map(struct device *dev, void
> *addr,
> =C2=A0	entry->dev_addr =3D dev_addr;
> =C2=A0	entry->size =3D size;
> =C2=A0	entry->direction =3D direction;
> +	entry->dev_mapped =3D true;
> =C2=A0
> =C2=A0	list_add(&entry->list, &dma_mappings);
> =C2=A0
> @@ -159,9 +161,17 @@ void debug_dma_sync_single_for_cpu(struct device
> *dev,
> =C2=A0	struct dma_debug_entry *entry;
> =C2=A0
> =C2=A0	entry =3D dma_debug_entry_find(dev, dma_handle, size);
> -	if (!entry)
> +	if (!entry) {
> =C2=A0		dma_dev_warn(dev, "sync for CPU of never-mapped %s
> buffer 0x%llx+0x%zx!\n",
> =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0 dir2name[direction], (u64)dma_handle,
> size);
> +		return;
> +	}
> +
> +	if (!entry->dev_mapped)
> +		dma_dev_warn(dev, "unexpected sync for CPU of
> already CPU-mapped %s buffer 0x%llx+0x%zx!\n",
> +			=C2=A0=C2=A0=C2=A0=C2=A0 dir2name[direction], (u64)dma_handle,
> size);
> +
> +	entry->dev_mapped =3D false;
> =C2=A0}
> =C2=A0
> =C2=A0void debug_dma_sync_single_for_device(struct device *dev,
> @@ -177,7 +187,15 @@ void debug_dma_sync_single_for_device(struct
> device *dev,
> =C2=A0	 * corruption
> =C2=A0	 */
> =C2=A0	entry =3D dma_debug_entry_find(dev, dma_handle, size);
> -	if (!entry)
> +	if (!entry) {
> =C2=A0		dma_dev_warn(dev, "Syncing for device of never-
> mapped %s buffer 0x%llx+0x%zx!\n",
> =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0 dir2name[direction], (u64)dma_handle,
> size);
> +		return;
> +	}
> +
> +	if (entry->dev_mapped)
> +		dma_dev_warn(dev, "unexpected sync for device of
> already device-mapped %s buffer 0x%llx+0x%zx!\n",
> +			=C2=A0=C2=A0=C2=A0=C2=A0 dir2name[direction], (u64)dma_handle,
> size);
> +
> +	entry->dev_mapped =3D true;
> =C2=A0}



