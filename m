Delivery-date: Thu, 07 Mar 2024 16:55:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riG5Q-00CR6C-1H
	for lore@lore.pengutronix.de;
	Thu, 07 Mar 2024 16:55:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riG5P-0001ij-L6
	for lore@pengutronix.de; Thu, 07 Mar 2024 16:55:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tgyi1XPueBSpRx/7a5YgpRbEeDGftkIfZhk19LnuKpE=; b=261i/uhTXZhH8vX4rBd6wuQuqd
	Oou6ItjNxfQ+IpCqX/ZKeglHVHP11OoZ6goQjFK15rZvtqxgdXsRpbwEi+m/BpB2AYhF3kgwNa0wr
	/2DOYgL9SBSiDkWMeFEJHcTtY7fC+YAhVnj0ntk5mUMSFm/c6R/4Pgg6R7GGPDR7HUS2ZfHsn61D0
	MsRxfL5SZaQmjAVzR9xgXxyUeEVWaPrmwWsxZvv8BitN267G7XDijjTlphZEo9YBgrvXx6jeUctzn
	TPUAFz7m7aDsKnaBrZfvBu6b/nLtBH4qx+EdFFLTTyq/QkYBcWB7o8AMX4tPATTpWL+MH4yOUmkoW
	sBMrfFgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riG4b-00000005NLR-3sIi;
	Thu, 07 Mar 2024 15:54:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riG4Y-00000005NKV-2VIQ
	for barebox@lists.infradead.org;
	Thu, 07 Mar 2024 15:54:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1riG4S-0000cf-SG; Thu, 07 Mar 2024 16:54:12 +0100
Message-ID: <5f6fe01bd40ac4e1a9078bde26b397c92346b037.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Rouven Czerwinski
	 <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org
Date: Thu, 07 Mar 2024 16:54:12 +0100
In-Reply-To: <152b0d55-9a77-4aa2-9dab-192eb4f78a19@pengutronix.de>
References: <20240307111409.3733947-1-a.fatoum@pengutronix.de>
	 <8ce80053a8fc3767cc4a7c96189c35b2eac49b60.camel@pengutronix.de>
	 <152b0d55-9a77-4aa2-9dab-192eb4f78a19@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_075418_732286_DBA09CAB 
X-CRM114-Status: GOOD (  28.24  )
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
Subject: Re: [PATCH] dma: debug: detect repeated DMA sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Donnerstag, dem 07.03.2024 um 13:27 +0100 schrieb Ahmad Fatoum:
> Hi,
>=20
> On 07.03.24 12:20, Rouven Czerwinski wrote:
> > Hi Ahmad,
> >=20
> > On Thu, 2024-03-07 at 12:14 +0100, Ahmad Fatoum wrote:
> > > dma_map_single will do any necessary cache maintenance to make a buff=
er
> > > available to a device. Calling debug_dma_sync_single_for_device on su=
ch
> > > a buffer is unnecessary, so flag when this happens.
> >=20
> >=20
> > AFAIUI It is only incorrect if the buffer is handed of to the device
> > and never touched by the CPU again. If you want to modify a buffer
> > after the device has modified it to let the device work on it again,
> > dma_sync_single_for_device is the correct function.
> >=20
> > In Essence:
> >=20
> > Device Access -> dma_sync_single_for_cpu -> CPU modification ->
> > dma_sync_single_for_device -> Device Access
> >=20
> > The buffer stays mapped to the deivce the whole time. Please correct me
> > if my understanding is wrong.
>=20
> Your understanding is correct and my patch shouldn't preclude using
> the DMA API that way. What it flags is doing a sync for CPU or a sync
> for device twice in a row without an intervening sync into the
> inverse direction.
>=20
Yep, the name of the property is a bit confusing, as it's not really
telling if an entry is dma mapped, but rather in which domain CPU/DEV
the entry currently resides. All memory regions start out in the CPU
domain and dma_map/dma_sync_for_device push them into the device
domain, while dma_unmap/dma_sync_for_cpu pull them back into the CPU
domain.

So maybe make this a enum of domains or at least rename to dev_owned or
something along those lines.

Regards,
Lucas

> Cheers,
> Ahmad
>=20
> >=20
> > > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > > ---
> > > =C2=A0drivers/dma/debug.c | 22 ++++++++++++++++++++--
> > > =C2=A01 file changed, 20 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
> > > index b3bfbff9b2f5..b80e35ff5092 100644
> > > --- a/drivers/dma/debug.c
> > > +++ b/drivers/dma/debug.c
> > > @@ -12,6 +12,7 @@ struct dma_debug_entry {
> > > =C2=A0	dma_addr_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_addr;
> > > =C2=A0	size_t=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 size;
> > > =C2=A0	int=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 direction;
> > > +	bool=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 dev_mapped;
> > > =C2=A0};
> > > =C2=A0
> > > =C2=A0static const char *dir2name[] =3D {
> > > @@ -121,6 +122,7 @@ void debug_dma_map(struct device *dev, void
> > > *addr,
> > > =C2=A0	entry->dev_addr =3D dev_addr;
> > > =C2=A0	entry->size =3D size;
> > > =C2=A0	entry->direction =3D direction;
> > > +	entry->dev_mapped =3D true;
> > > =C2=A0
> > > =C2=A0	list_add(&entry->list, &dma_mappings);
> > > =C2=A0
> > > @@ -159,9 +161,17 @@ void debug_dma_sync_single_for_cpu(struct device
> > > *dev,
> > > =C2=A0	struct dma_debug_entry *entry;
> > > =C2=A0
> > > =C2=A0	entry =3D dma_debug_entry_find(dev, dma_handle, size);
> > > -	if (!entry)
> > > +	if (!entry) {
> > > =C2=A0		dma_dev_warn(dev, "sync for CPU of never-mapped %s
> > > buffer 0x%llx+0x%zx!\n",
> > > =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0 dir2name[direction], (u64)dma_handl=
e,
> > > size);
> > > +		return;
> > > +	}
> > > +
> > > +	if (!entry->dev_mapped)
> > > +		dma_dev_warn(dev, "unexpected sync for CPU of
> > > already CPU-mapped %s buffer 0x%llx+0x%zx!\n",
> > > +			=C2=A0=C2=A0=C2=A0=C2=A0 dir2name[direction], (u64)dma_handle,
> > > size);
> > > +
> > > +	entry->dev_mapped =3D false;
> > > =C2=A0}
> > > =C2=A0
> > > =C2=A0void debug_dma_sync_single_for_device(struct device *dev,
> > > @@ -177,7 +187,15 @@ void debug_dma_sync_single_for_device(struct
> > > device *dev,
> > > =C2=A0	 * corruption
> > > =C2=A0	 */
> > > =C2=A0	entry =3D dma_debug_entry_find(dev, dma_handle, size);
> > > -	if (!entry)
> > > +	if (!entry) {
> > > =C2=A0		dma_dev_warn(dev, "Syncing for device of never-
> > > mapped %s buffer 0x%llx+0x%zx!\n",
> > > =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0 dir2name[direction], (u64)dma_handl=
e,
> > > size);
> > > +		return;
> > > +	}
> > > +
> > > +	if (entry->dev_mapped)
> > > +		dma_dev_warn(dev, "unexpected sync for device of
> > > already device-mapped %s buffer 0x%llx+0x%zx!\n",
> > > +			=C2=A0=C2=A0=C2=A0=C2=A0 dir2name[direction], (u64)dma_handle,
> > > size);
> > > +
> > > +	entry->dev_mapped =3D true;
> > > =C2=A0}
> >=20
> >=20
>=20



