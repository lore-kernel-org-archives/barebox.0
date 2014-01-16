Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3mzo-0005lB-9V
 for barebox@lists.infradead.org; Thu, 16 Jan 2014 13:28:32 +0000
Date: Thu, 16 Jan 2014 14:28:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140116132809.GV16215@pengutronix.de>
References: <1389770794-20487-1-git-send-email-s.hauer@pengutronix.de>
 <20140115093607.GP16215@pengutronix.de>
 <20140115094154.GA12036@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140115094154.GA12036@omega>
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
Subject: Re: [PATCH 1/2] ARM: dts: rename imx6q-dmo-realq7.dts to
 imx6q-dmo-edmqmx6.dts
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 15, 2014 at 10:41:56AM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Wed, Jan 15, 2014 at 10:36:07AM +0100, Sascha Hauer wrote:
> > On Wed, Jan 15, 2014 at 08:26:33AM +0100, Sascha Hauer wrote:
> > > As this name is used in the Kernel.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/dts/Makefile                                        | 4 ++--
> > >  arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} | 0
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >  rename arch/arm/dts/{imx6q-dmo-realq7.dts => imx6q-dmo-edmqmx6.dts} (100%)
> ...
> >  {
> > @@ -155,7 +155,7 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
> 
> then the name of ENTRY_FUNCTION too?

I'll send a patch later renaming the whole board. For now I just want to
be compatible with the kernel filename which makes the files easier to
compare.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
