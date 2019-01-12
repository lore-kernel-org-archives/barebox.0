Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giQDi-0003N6-Vq
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 20:49:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id p6so5413609wmc.1
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 12:49:29 -0800 (PST)
MIME-Version: 1.0
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
 <20190112072234.21878-5-andrew.smirnov@gmail.com>
 <20190112110008.GC14273@ravnborg.org>
In-Reply-To: <20190112110008.GC14273@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 12:49:17 -0800
Message-ID: <CAHQ1cqF65-fSEn9S=ZUzibnTmYWTSGypA_YDqjzakC1YSa4mTg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 04/16] PCI: Simplify resource setup code in
 setup_device()
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Jan 12, 2019 at 3:00 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> > ---
> >  drivers/pci/pci.c | 99 ++++++++++++++++++++---------------------------
> >  1 file changed, 42 insertions(+), 57 deletions(-)
> >
> > diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> > index b8089207a4..666b457257 100644
> > --- a/drivers/pci/pci.c
> > +++ b/drivers/pci/pci.c
> > @@ -169,8 +169,11 @@ static void setup_device(struct pci_dev *dev, int max_bar)
> >                             cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
> >
> >       for (bar = 0; bar < max_bar; bar++) {
> > -             resource_size_t last_addr;
> > +             resource_size_t *last;
> >               u32 orig, mask, size;
> > +             unsigned long flags;
> > +             const char *kind;
> > +             int r;
> A more descriptine name than "r" would maybe improve readability.
>

It's just an index of an array, so single letter name seemed
reasonable. However, if you give me concrete suggestions, I am more
than happy to change it.

> > @@ -183,67 +186,49 @@ static void setup_device(struct pci_dev *dev, int max_bar)
> >               if (mask & PCI_BASE_ADDRESS_SPACE_IO) { /* IO */
> > -                     last_io = ALIGN(last_io, size);
> > -                     last_addr = last_io;
> >               } else if ((mask & PCI_BASE_ADDRESS_MEM_PREFETCH) &&
> >                          last_mem_pref) /* prefetchable MEM */ {
> > -                     last_mem_pref = ALIGN(last_mem_pref, size);
> > -                                                IORESOURCE_PREFETCH;
> > -                     last_addr = last_mem_pref;
> >               } else { /* non-prefetch MEM */
> > -                     last_mem = ALIGN(last_mem, size);
> > -                     last_addr = last_mem;
> >               }
> >

You omitted

-               dev->resource[bar].start = last_addr;

here, which would make things a bit more clear since it make easier to
see that "dev->resource[bar].start" and "last_addr" are
interchangeable.

> > -             dev->resource[bar].end = last_addr + size - 1;
> > +             dev->resource[bar].start = *last;
> > +             dev->resource[bar].end = dev->resource[bar].start + size - 1;
> > +
> > +             pr_debug("pbar%d: allocated at %pa\n", bar, last);
> > +
> > +             *last += size;
>
> I could not see that dev->resource[bar].end was assigned the
> same value with the new code.
> Maybe I just missed it because I did not follow *last?
>

Yes, "*last" should have the same value as "last_addr" (I probably
should've kept the name). Also

dev->resource[bar].end = dev->resource[bar].start + size - 1;

should always be true, just by definition, so as long as
dev->resource[bar].start is the same (and it is) the value of .end
should be OK.

> I think it is worth to double check it.
>

I did compare debug outputs before/after when I was writing the patch,
and AFAICT they matched.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
