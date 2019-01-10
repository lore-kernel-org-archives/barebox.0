Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghfoT-0007ps-6l
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 19:16:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id a62so134891wmh.4
 for <barebox@lists.infradead.org>; Thu, 10 Jan 2019 11:16:20 -0800 (PST)
MIME-Version: 1.0
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
 <20190110045739.19399-6-andrew.smirnov@gmail.com>
 <20190110100920.gacszawd5wziik73@pengutronix.de>
In-Reply-To: <20190110100920.gacszawd5wziik73@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 10 Jan 2019 11:16:07 -0800
Message-ID: <CAHQ1cqFqkytFvvq5JT-6DT0HkykKsRp=R7uYCEhLhH_avQ7Agw@mail.gmail.com>
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
Subject: Re: [PATCH 05/21] PCI: Convert postscan_setup_bridge() to use a loop
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 10, 2019 at 2:09 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Andrey,
>
> On Wed, Jan 09, 2019 at 08:57:23PM -0800, Andrey Smirnov wrote:
> > Simplify postscan_setup_bridge() by folding limit setting code into a
> > loop. No functional change intended.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/pci/pci.c | 26 +++++++-------------------
> >  1 file changed, 7 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> > index 02b7f091f7..b5e13e5dbc 100644
> > --- a/drivers/pci/pci.c
> > +++ b/drivers/pci/pci.c
> > @@ -330,28 +330,16 @@ static void prescan_setup_bridge(struct pci_dev *dev)
> >
> >  static void postscan_setup_bridge(struct pci_dev *dev)
> >  {
> > +     int r;
> > +
> >       /* limit subordinate to last used bus number */
> >       pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, last[PCI_BUS_RESOURCE_BUSN] - 1);
> >
> > -     if (last[PCI_BUS_RESOURCE_MEM]) {
> > -             last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], SZ_1M);
> > -             pr_debug("bridge NP limit at %pa\n", &last[PCI_BUS_RESOURCE_MEM]);
> > -             pci_set_limit(dev, PCI_BUS_RESOURCE_MEM,
> > -                           last[PCI_BUS_RESOURCE_MEM] - 1);
> > -     }
> > -
> > -     if (last[PCI_BUS_RESOURCE_MEM_PREF]) {
> > -             last[PCI_BUS_RESOURCE_MEM_PREF] = ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF], SZ_1M);
> > -             pr_debug("bridge P limit at %pa\n", &last[PCI_BUS_RESOURCE_MEM_PREF]);
> > -             pci_set_limit(dev, PCI_BUS_RESOURCE_MEM_PREF,
> > -                           last[PCI_BUS_RESOURCE_MEM_PREF] - 1);
> > -     }
> > -
> > -     if (last[PCI_BUS_RESOURCE_IO]) {
> > -             last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], SZ_4K);
> > -             pr_debug("bridge IO limit at %pa\n", &last[PCI_BUS_RESOURCE_IO]);
> > -             pci_set_limit(dev, PCI_BUS_RESOURCE_IO,
> > -                           last[PCI_BUS_RESOURCE_IO] - 1);
> > +     for (r = PCI_BUS_RESOURCE_IO; r <= PCI_BUS_RESOURCE_MEM_PREF; r++) {
> > +             if (last[r]) {
> > +                     last[r] = ALIGN(last[r], pci_resource_to_alignment(r));
> > +                     pci_set_limit(dev, r, last[r] - 1);
> > +             }
>
> Indeed postscan_setup_bridge() gets simpler, but the code as a whole doesn't
> get easier to read. Yes, the commonalities are merged into this loop, but
> with the price of having to dispatch the differences in a switch/case
> later. This often works but here I don't think this is an improvement.
>

I am confused, is this a comment for this specific patch or more than
that, since you mention a switch statement? Can you drop:

PCI: Convert postscan_setup_bridge() to use a loop
PCI: Convert prescan_setup_bridge() to use a loop
PCI: Consolidate limit/base settting code

and apply the rest?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
