Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXlHn-0008Hg-G6
 for barebox@lists.infradead.org; Fri, 04 Sep 2015 07:19:48 +0000
Received: by lbcjc2 with SMTP id jc2so6393845lbc.0
 for <barebox@lists.infradead.org>; Fri, 04 Sep 2015 00:19:25 -0700 (PDT)
Date: Fri, 4 Sep 2015 10:27:40 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150904102740.4a6f5b564126416e83c98a5b@gmail.com>
In-Reply-To: <20150904062048.GT18700@pengutronix.de>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
 <1440714250-28080-4-git-send-email-antonynpavlov@gmail.com>
 <20150828063432.GA18700@pengutronix.de>
 <20150828184614.d0ec3d17f1800be9093f7fa3@gmail.com>
 <20150904062048.GT18700@pengutronix.de>
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

On Fri, 4 Sep 2015 08:20:48 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Aug 28, 2015 at 06:46:14PM +0300, Antony Pavlov wrote:
> > On Fri, 28 Aug 2015 08:34:32 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > > On Fri, Aug 28, 2015 at 01:24:04AM +0300, Antony Pavlov wrote:
> > > > N.B. phys_to_virt() translates phys address
> > > > to KSEG1 (uncached) address as barebox mips
> > > > has no cache support.
> > > =

> > > What would it take to implement cache support for mips?
> > lack of the cache support is critical problem for current barebox mips =
support.
> > I'm planning to add cache support in several weeks.
> > This task needs much test efforts for different boards.
> > =

> > Anyway I can't carry out cache adding work at one.
> > But adding virt_to_phys and DMA support will help to add cache support =
one day anyway.
> =

> Looking at this again the virt_to_phys/phys_to_virt macros are not
> necessary. dma_alloc_coherent() already returns both the virtual address
> and the DMA address. It should be possible to replace DMA_ADDRESS_BROKEN
> in the ehci driver with a real pointer and use it appropriatly in the
> driver.

Here is a fragment of drivers/usb/host/ehci-hcd.c:

    while (td !=3D (void *)QT_NEXT_TERMINATE) {
           qh->qt_next =3D td->qt_next;
           td =3D (void *)hc32_to_cpu(qh->qt_next);
    }


qh->qt_next contains physical memory address for EHCI controller,
so after 'td =3D (void *)hc32_to_cpu(qh->qt_next)' contains physical addres=
s.

But latter we can use 'td->qt_next'. If physical address !=3D virtual addre=
ss
then we will fail. So we need addition phys_to_virt() call here.

Some addition workaround is needed here because phys_to_virt(QT_NEXT_TERMIN=
ATE) !=3D QT_NEXT_TERMINATE.


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
