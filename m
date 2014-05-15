Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WksNv-0002Vm-B6
 for barebox@lists.infradead.org; Thu, 15 May 2014 09:55:31 +0000
Received: by mail-ee0-f43.google.com with SMTP id d17so463853eek.16
 for <barebox@lists.infradead.org>; Thu, 15 May 2014 02:55:09 -0700 (PDT)
Date: Thu, 15 May 2014 11:55:06 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140515095505.GB18289@omega>
References: <1400146868-17820-1-git-send-email-w.egorov@phytec.de>
 <1400146868-17820-2-git-send-email-w.egorov@phytec.de>
 <20140515094811.GA18289@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140515094811.GA18289@omega>
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
Subject: Re: [PATCH v2 4/4] phycore-am335x: Added bbu nand xloadslots handler
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, May 15, 2014 at 11:48:11AM +0200, Alexander Aring wrote:
> On Thu, May 15, 2014 at 11:41:08AM +0200, Wadim Egorov wrote:
> > Added bbu nand xloadslots handler to phycore-am335x.
> > 
> > Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> > ---
> > v2:
> >   - changed method to pass device files
> > ---
> >  arch/arm/boards/phytec-phycore-am335x/board.c |    9 +++++++++
> >  1 files changed, 9 insertions(+), 0 deletions(-)
> > 
> > diff --git a/arch/arm/boards/phytec-phycore-am335x/board.c b/arch/arm/boards/phytec-phycore-am335x/board.c
> > index 59de42b..76782d4 100644
> > --- a/arch/arm/boards/phytec-phycore-am335x/board.c
> > +++ b/arch/arm/boards/phytec-phycore-am335x/board.c
> > @@ -48,6 +48,13 @@ static struct omap_barebox_part pcm051_barebox_part = {
> >  	.nor_size = SZ_512K,
> >  };
> >  
> > +char *xloadslots[] = {
> maybe change this to const?
> 
meant static here. :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
