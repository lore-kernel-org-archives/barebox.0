Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e3zhN-0004yy-5u
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 07:20:31 +0000
Date: Mon, 16 Oct 2017 09:20:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016072006.s6pbfyrbzvttmw2q@pengutronix.de>
References: <20171012175228.16710-1-nikita.yoush@cogentembedded.com>
 <20171012175228.16710-3-nikita.yoush@cogentembedded.com>
 <20171013132002.GA11309@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171013132002.GA11309@ravnborg.org>
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
Subject: Re: [PATCH 3/3] fbtest: add gradients pattern
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>, barebox@lists.infradead.org

On Fri, Oct 13, 2017 at 03:20:02PM +0200, Sam Ravnborg wrote:
> Hi Nikita
> 
> Thanks for this, I have missed further fbtest options in the past.
> Some nitpicks, that you may ignore.
> 
> 	Sam
> 
> On Thu, Oct 12, 2017 at 08:52:28PM +0300, Nikita Yushchenko wrote:
> > This pattern draws red, green, blue, and white color gradients, together with
> > 3 anchor rectangles in corners.
> > 
> > To be used with automated screen testing via computer vision methods.
> > 
> > Suggested-by: Chris Healy <cphealy@gmail.com>
> > Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
> > ---
> >  commands/fbtest.c | 110 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 108 insertions(+), 2 deletions(-)
> > 
> > diff --git a/commands/fbtest.c b/commands/fbtest.c
> > index 9981c1319..8e6a5457f 100644
> > --- a/commands/fbtest.c
> > +++ b/commands/fbtest.c
> > @@ -117,6 +117,111 @@ static void fbtest_pattern_geometry(struct screen *sc, u32 color)
> >  	}
> >  }
> >  
> > +static void draw_line_r(struct screen *sc, bool rotate_90_ccw,
> > +		int x1, int y1, int x2, int y2,
> > +		uint8_t r, uint8_t g, uint8_t b)
> > +{
> > +	if (rotate_90_ccw)
> > +		gu_draw_line(sc,
> > +			     y1, sc->info->yres - x1,
> > +			     y2, sc->info->yres - x2,
> > +			     r, g, b, 0xff, 0);
> > +	else
> > +		gu_draw_line(sc, x1, y1, x2, y2, r, g, b, 0xff, 0);
> > +}
> > +
> > +static void solid_rect_r(struct screen *sc, bool rotate_90_ccw,
> > +		int x1, int y1, int x2, int y2,
> > +		uint8_t r, uint8_t g, uint8_t b)
> > +{
> > +	if (rotate_90_ccw)
> > +		gu_fill_rectangle(sc,
> > +				  y1, sc->info->yres - x1,
> > +				  y2, sc->info->yres - x2,
> > +				  r, g, b, 0xff);
> > +	else
> > +		gu_fill_rectangle(sc, x1, y1, x2, y2, r, g, b, 0xff);
> > +}
> > +
> > +static void grad_rect_r(struct screen *sc, bool rotate_90_ccw,
> > +		int x1, int y1, int x2, int y2,
> > +		uint8_t r, uint8_t g, uint8_t b)
> > +{
> > +	int x;
> > +
> > +	for (x = x1; x <= x2; x++)
> > +		draw_line_r(sc, rotate_90_ccw, x, y1, x, y2,
> > +			    r * (x - x1 + 1) / (x2 - x1 + 1),
> > +			    g * (x - x1 + 1) / (x2 - x1 + 1),
> > +			    b * (x - x1 + 1) / (x2 - x1 + 1));
> In the other xxx_xxx_sc(sc, ..) you have the following arguments on a new line.
> But in this you have second argument on the same line.
> It looks in-consistent.
> 
> Something like:
> 		draw_line_r(sc,
> 			    rotate_90_ccw, x, y1, x, y2,
> 			    r * (x - x1 + 1) / (x2 - x1 + 1),
> 			    ....
> 

I think the function arguments are aligned quite nice in this patch and
what you see is because Nikita tried to align x/y or r/g/b arguments in
separate lines. I applied it as-is.

> > +}
> > +
> > +static void anchor_rect_r(struct screen *sc, bool rotate_90_ccw,
> > +		int x1, int y1, int x2, int y2)
> 
> Following arguments should be aligned after first "(" like this:
> static void anchor_rect_r(struct screen *sc, bool rotate_90_ccw,
> 			  int x1, int y1, int x2, int y2)
> 
> At least this is how the kernel does things and I recall barebox is the same

I fixed this up while applying.

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
