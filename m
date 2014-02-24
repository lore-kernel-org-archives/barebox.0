Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eu2.fugro.com ([46.34.88.152])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHri9-0004he-3Y
 for barebox@lists.infradead.org; Mon, 24 Feb 2014 09:20:29 +0000
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Mon, 24 Feb 2014 10:20:05 +0100
Message-ID: <C89EFD3CD56F64468D3D206D683A8D2203041BFE@ldam-msx2.fugro-nl.local>
In-Reply-To: <20140224085333.GU17250@pengutronix.de>
References: <C89EFD3CD56F64468D3D206D683A8D2203041AF3@ldam-msx2.fugro-nl.local>
 <20140224085333.GU17250@pengutronix.de>
From: "Hattink, Tjalling [FINT]" <T.Hattink@fugro.nl>
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
Subject: RE: [PATCH] mtd: nand: Do not automatically set SUBPAGE_READ flag
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > The default nand_read_subpage implementation returns -ENOSUPP, so if
> > you use a large nand chip without a specific read_subpage
> > implementation the read operations will always fail.
> >
> > This functionaliy can be restored when a proper nand_read_subpage is
> > implemented for the default driver.
> >
> > Signed-off-by: Tjalling Hattink <t.hattink@fugro.nl>
> > ---
> >  drivers/mtd/nand/nand_base.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/mtd/nand/nand_base.c
> > b/drivers/mtd/nand/nand_base.c index 54d8ba3..bfd695b 100644
> > --- a/drivers/mtd/nand/nand_base.c
> > +++ b/drivers/mtd/nand/nand_base.c
> > @@ -3562,10 +3562,6 @@ int nand_scan_tail(struct mtd_info *mtd)
> >         /* Invalidate the pagebuffer reference */
> >         chip->pagebuf = -1;
> >
> > -       /* Large page NAND with SOFT_ECC should support subpage
reads
> */
> > -       if ((chip->ecc.mode == NAND_ECC_SOFT) && (chip->page_shift >
> 9))
> > -               chip->options |= NAND_SUBPAGE_READ;
> > -
> 
> Only barebox nand_read_subpage returns -ENOSUPP. The kernel has a
> default implementation. Wouldn't it be possible (and better) to just
> remove the return -ENOSUPP from nand_read_subpage and use the code
> which we already have?
> 
> Sascha
> 

Hi Sascha,

I will remove the ENOSUPP return code and compare the code with the
kernel and test it. I'll publish a new patch if I have results (which is
probably upcoming Friday).

I still wonder though why this -ENOSUPP return is added in the first
place. The motivation written above it is somewhat unclear to me:
"Currently we have no users in barebox, so disable this for now"

Kind regards,

Tjalling Hattink

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
