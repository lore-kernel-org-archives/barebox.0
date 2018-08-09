Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnsXX-00010J-BK
 for barebox@lists.infradead.org; Thu, 09 Aug 2018 21:32:16 +0000
Date: Thu, 9 Aug 2018 23:32:03 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180809213203.7xmvzubyuqizqb4o@pengutronix.de>
References: <20180730111437.23453-1-r.hieber@pengutronix.de>
 <20180730111437.23453-4-r.hieber@pengutronix.de>
 <20180809193839.lqtaurzxn62emuhg@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180809193839.lqtaurzxn62emuhg@pengutronix.de>
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
Subject: Re: [PATCH 4/4] linux/types.h: fix missing include for BITS_TO_LONGS()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 09, 2018 at 09:38:39PM +0200, Sascha Hauer wrote:
> On Mon, Jul 30, 2018 at 01:14:37PM +0200, Roland Hieber wrote:
> > Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> > ---
> >  include/linux/types.h | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/include/linux/types.h b/include/linux/types.h
> > index f64ec4a814..44d8238d53 100644
> > --- a/include/linux/types.h
> > +++ b/include/linux/types.h
> > @@ -2,6 +2,7 @@
> >  #define _LINUX_TYPES_H
> >  
> >  #include <linux/posix_types.h>
> > +#include <linux/bitops.h>
> >  #include <asm/types.h>
> 
> This breaks compilation on ppc. Here linux/bitops.h includes files which
> use types (__be32 and friends) which are declared later in
> include/linux/types.h.
> 
> Why specifically is this patch needed?

I was isolating the architecture-specific parts of a shared customer
code base into single files (in order to port it to another arch), and
in that process I ended up with a .c file that included <linux/types.h>
for some macro which I don't remember, but it did not compile because
<linux/types.h> declares macros that use BITS_TO_LONGS(), which is
declared in <linux/bitops.h>, which was not included before.
I guess the original code already included <linux/bitops.h> via some
other path before including <linux/types.h>, so the error did not happen
there. So I reasoned that if <linux/types.h> uses BITS_TO_LONGS(), it
should include the respective header where this macro is defined.

And now that you say it, I see that I should have written that in my
commit message.

 - Roland

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
