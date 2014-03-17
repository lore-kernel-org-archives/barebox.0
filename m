Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPWP9-0008N2-Ft
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 12:12:32 +0000
Date: Mon, 17 Mar 2014 13:12:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317121209.GM17250@pengutronix.de>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
 <1394803820-29277-5-git-send-email-s.hauer@pengutronix.de>
 <1395054052.2700.179.camel@lws-hemp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395054052.2700.179.camel@lws-hemp>
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
Subject: Re: [PATCH 4/6] ARM: pfla02: Set ODT to recommended setting
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

Hi Christian,

On Mon, Mar 17, 2014 at 12:00:52PM +0100, Christian Hemp wrote:
> Hello Sascha,
> 
> We removed this ODT values, because we had problems. I think before we
> use this settings we have to do some tests (climate cabinet...) with
> different modules.

Ok, I'll drop the patch then.

Sascha

> 
> 
> Christian
> 
> Am Freitag, den 14.03.2014, 14:30 +0100 schrieb Sascha Hauer:
> > From: Christian Hemp <c.hemp@phytec.de>
> > 
> > Change the ODT values to  0x11117 (Recommended from Freescale)
> > see App note AN4579 "i.MX 6 Series Thermal Management Guidelines"
> > 
> > Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> >  arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
> > index 138ae36..fd09054 100644
> > --- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
> > +++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
> > @@ -75,8 +75,8 @@ wm 32 0x021b001c 0x04008048
> >  wm 32 0x021b0800 0xa1380003
> >  wm 32 0x021b4800 0xa1380003
> >  wm 32 0x021b0020 0x00005800
> > -wm 32 0x021b0818 0x00022227
> > -wm 32 0x021b4818 0x00022227
> > +wm 32 0x021b0818 0x00011117
> > +wm 32 0x021b4818 0x00011117
> >  wm 32 0x021b083c 0x433c033f
> >  wm 32 0x021b0840 0x033e033d
> >  wm 32 0x021b483c 0x43490351
> 
> 
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
