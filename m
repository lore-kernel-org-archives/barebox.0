Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0f7G-0005qf-KX
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 21:22:47 +0000
Date: Wed, 30 Jan 2013 22:22:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130130212242.GB1906@pengutronix.de>
References: <1359053740-4793-1-git-send-email-antonynpavlov@gmail.com>
 <CAA4bVAHF=pyMC_puZJyUCGziExD58jbckDOYoFu_prDP0bOpMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAHF=pyMC_puZJyUCGziExD58jbckDOYoFu_prDP0bOpMw@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM OMAP: use SZ_*M constants in RAM device register
 functions
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2013 at 01:29:18PM +0400, Antony Pavlov wrote:
> ping

Applied now.

Sascha

> 
> On 24 January 2013 22:55, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/arm/boards/beaglebone/board.c  |    2 +-
> >  arch/arm/boards/omap343xdsp/board.c |    2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
> > index 830ff47..fda8031 100644
> > --- a/arch/arm/boards/beaglebone/board.c
> > +++ b/arch/arm/boards/beaglebone/board.c
> > @@ -311,7 +311,7 @@ console_initcall(beaglebone_console_init);
> >
> >  static int beaglebone_mem_init(void)
> >  {
> > -       omap_add_ram0(256 * 1024 * 1024);
> > +       omap_add_ram0(SZ_256M);
> >
> >         return 0;
> >  }
> > diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
> > index 6dbbc4c..d894104 100644
> > --- a/arch/arm/boards/omap343xdsp/board.c
> > +++ b/arch/arm/boards/omap343xdsp/board.c
> > @@ -620,7 +620,7 @@ console_initcall(sdp3430_console_init);
> >
> >  static int sdp3430_mem_init(void)
> >  {
> > -       omap_add_ram0(128 * 1024 * 1024);
> > +       omap_add_ram0(SZ_128M);
> >
> >         return 0;
> >  }
> > --
> > 1.7.10.4
> >
> 
> 
> 
> -- 
> Best regards,
>   Antony Pavlov
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
