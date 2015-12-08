Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6Dvh-0001gU-W1
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 08:47:26 +0000
Received: by lffu14 with SMTP id u14so8128247lff.1
 for <barebox@lists.infradead.org>; Tue, 08 Dec 2015 00:47:02 -0800 (PST)
Date: Tue, 8 Dec 2015 12:11:06 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151208121106.c916124ce8cb8a10f803ef5f@gmail.com>
In-Reply-To: <20151207102744.GH11966@pengutronix.de>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
 <1440714250-28080-4-git-send-email-antonynpavlov@gmail.com>
 <20150828063432.GA18700@pengutronix.de>
 <20150828184614.d0ec3d17f1800be9093f7fa3@gmail.com>
 <20150904062048.GT18700@pengutronix.de>
 <20151206175051.e4a017449d741f3989cdc161@gmail.com>
 <20151207102744.GH11966@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 3/9] MIPS: add virt_to_phys() and phys_to_virt()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Mon, 7 Dec 2015 11:27:44 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sun, Dec 06, 2015 at 05:50:51PM +0300, Antony Pavlov wrote:
> > On Fri, 4 Sep 2015 08:20:48 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > On Fri, Aug 28, 2015 at 06:46:14PM +0300, Antony Pavlov wrote:
> > > > On Fri, 28 Aug 2015 08:34:32 +0200
> > > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > > =

> > > > > On Fri, Aug 28, 2015 at 01:24:04AM +0300, Antony Pavlov wrote:
> > > > > > N.B. phys_to_virt() translates phys address
> > > > > > to KSEG1 (uncached) address as barebox mips
> > > > > > has no cache support.
> > > > > =

> > > > > What would it take to implement cache support for mips?
> > > > lack of the cache support is critical problem for current barebox m=
ips support.
> > > > I'm planning to add cache support in several weeks.
> > > > This task needs much test efforts for different boards.
> > > > =

> > > > Anyway I can't carry out cache adding work at one.
> > > > But adding virt_to_phys and DMA support will help to add cache supp=
ort one day anyway.
> > > =

> > > Looking at this again the virt_to_phys/phys_to_virt macros are not
> > > necessary. dma_alloc_coherent() already returns both the virtual addr=
ess
> > > and the DMA address. It should be possible to replace DMA_ADDRESS_BRO=
KEN
> > > in the ehci driver with a real pointer and use it appropriatly in the
> > > driver.
> > > =

> > =

> > I have tried to get physical address from dma_alloc_coherent(),
> > here is a small part of my patch (just for demonstration):
> > =

> > --- a/drivers/usb/host/ehci-hcd.c
> > +++ b/drivers/usb/host/ehci-hcd.c
> > @@ -41,6 +41,7 @@ struct ehci_priv {
> >  	struct ehci_hcor *hcor;
> >  	struct usb_host host;
> >  	struct QH *qh_list;
> > +	dma_addr_t qh_list_dma;
> >  	struct qTD *td;
> >  	int portreset;
> >  	unsigned long flags;
> > @@ -403,7 +410,7 @@ ehci_submit_async(struct usb_device *dev, unsigned =
long pipe, void *buffer,
> >  		goto fail;
> >  	}
> >  =

> > -	ehci->qh_list->qh_link =3D cpu_to_hc32((uint32_t)ehci->qh_list | QH_L=
INK_TYPE_QH);
> > +	ehci->qh_list->qh_link =3D cpu_to_hc32(ehci->qh_list_dma | QH_LINK_TY=
PE_QH);
> >  =

> >  	token =3D hc32_to_cpu(qh->qt_token);
> >  	if (!(token & 0x80)) {
> > @@ -1306,7 +1313,7 @@ int ehci_register(struct device_d *dev, struct eh=
ci_data *data)
> >  	ehci->post_init =3D data->post_init;
> >  =

> >  	ehci->qh_list =3D dma_alloc_coherent(sizeof(struct QH) * NUM_TD,
> > -					   DMA_ADDRESS_BROKEN);
> > +					   &ehci->qh_list_dma);
> >  	ehci->periodic_queue =3D dma_alloc_coherent(sizeof(struct QH),
> >  						  DMA_ADDRESS_BROKEN);
> >  	ehci->td =3D dma_alloc_coherent(sizeof(struct qTD) * NUM_TD,
> > =

> > =

> > However ehci_td_buffer() gets buf pointer outside of ehci driver (e.g. =
via usb_bulk_msg()),
> > so it is difficult to avoid virt_to_phys() in ehci_td_buffer(), e.g.:
> > =

> > @@ -195,7 +197,7 @@ static int ehci_td_buffer(struct qTD *td, void *buf=
, size_t sz)
> >  =

> >         idx =3D 0;
> >         while (idx < 5) {
> > -               td->qt_buffer[idx] =3D cpu_to_hc32(addr);
> > +               td->qt_buffer[idx] =3D cpu_to_hc32(virt_to_phys(addr));
> >                 next =3D (addr + 4096) & ~4095;
> >                 delta =3D next - addr;
> >                 if (delta >=3D sz)
> > =

> > Have you any idea?
> =

> No. Translating this addres into a physical address seems unavoidable
> here. I would still prefer a real cache implementation for MIPS though.
> Have you looked further into that? The current MIPS cached/uncached
> memory windows seem to be a constant source of problems we could avoid.

We already have Atheros AR9331 branch with cache support.
I assume that cleaned MIPS cache support patch series will be ready till Ch=
ristmas.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
