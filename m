Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaO8r-0000M3-Rk
 for barebox@lists.infradead.org; Mon, 29 Feb 2016 13:45:43 +0000
Date: Mon, 29 Feb 2016 14:45:19 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20160229134519.GA29598@pengutronix.de>
References: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
 <1456488287-23404-3-git-send-email-s.trumtrar@pengutronix.de>
 <20160226202832.GE7219@io.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160226202832.GE7219@io.lakedaemon.net>
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
Subject: Re: [PATCH 2/5] lib: random: get_random_bytes from HWRNG if present
To: Jason Cooper <barebox@lakedaemon.net>
Cc: barebox@lists.infradead.org

Hi!

On Fri, Feb 26, 2016 at 08:28:32PM +0000, Jason Cooper wrote:
> Hi Steffen,
> 
> On Fri, Feb 26, 2016 at 01:04:44PM +0100, Steffen Trumtrar wrote:
> > Instead of generating pseudo random numbers, get random bytes
> > from an optional HW generator, if enabled and registered.
> > 
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  lib/random.c | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> 
> I have a long interest in KASLR on arm/arm64, so I'm glad to see this
> series!  :-)
> 

That is not what I had in mind when writing this ;-)

> > diff --git a/lib/random.c b/lib/random.c
> > index 210fea99466e..ff82dd1bed85 100644
> > --- a/lib/random.c
> > +++ b/lib/random.c
> > @@ -1,5 +1,6 @@
> >  #include <common.h>
> >  #include <stdlib.h>
> > +#include <linux/hw_random.h>
> >  
> >  static unsigned int random_seed;
> >  
> > @@ -22,6 +23,24 @@ void get_random_bytes(void *_buf, int len)
> >  {
> >  	char *buf = _buf;
> >  
> > +	if (IS_ENABLED(CONFIG_HWRNG)) {
> > +		struct hwrng *rng;
> > +		int bytes;
> > +
> > +		rng = hwrng_get_first();
> > +		if (!PTR_ERR(rng)) {
> > +			while (len) {
> > +				bytes = hwrng_get_data(rng, _buf, len, 0);
> > +				if (!bytes)
> > +					goto sw_fallback;
> > +				len -= bytes;
> > +			}
> > +
> > +			return;
> > +		}
> > +	}
> > +
> > +sw_fallback:
> >  	while (len--)
> >  		*buf++ = rand() % 256;
> >  }
> 
> However, I disagree with this approach.  One of the main problems we've
> had over the years with random number generation is not being clear
> about *how* the numbers were generated.  Something designed for placing
> characters in a game is not suitable for creating long-term crypto keys,
> stack canaries, and ASLR offsets.  See the paper on iOS bootloader and
> KASLR [1].
> 
> With that in mind, I'd like to suggest that we preserve the current
> functionality of get_random_bytes() as a non-strong source of entropy.
> After all, all current calls to srand() feed in a time...
> 
> We can then add get_hwrng_bytes() which makes it clear where the bytes
> are coming from.  Users down the line can more easily make an assessment
> of whether the SoC hwrng is trusted or not for their usecase.
> 

I see your point. So, is get_random_bytes() in the kernel always a
non-strong source? I was under the assumption, that the hwrng fills the
same pool that get_random_bytes() sources. The kernel however has
get_random_bytes_arch(). Shouldn't we also use this nomenclature here then?

As long as a user is not left under the assumption, that enabling HWRNG
somehow makes the randomness stronger, I think it may be a good idea to
make the code clearer via a different function call. No problem for me.

> My goal here is to have the bootloader grab some strong random numbers
> to hand off to the kernel.  The decompressor would consume a bit of it
> to initialize KASLR, and the rest would be consumed seeding the kernel's
> entropy pools.
> 
> A second goal is to have the OS write a seed file somewhere the
> bootloader can access.  Then, on reboot, the bootloader can read it in
> and hand it off to the kernel for KASLR, etc.  But that is orthogonal to
> this patch series...
> 

This is out of my comfort zone, so: send patches :-)

Thanks,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
