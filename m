Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo179.mail-out.ovh.net ([178.33.111.220])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmKxm-0005DV-Pq
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 13:52:14 +0000
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 39D1D28C5A
 for <barebox@lists.infradead.org>; Fri, 10 Mar 2017 14:51:49 +0100 (CET)
Date: Fri, 10 Mar 2017 14:58:06 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170310135806.GB19458@mail.ovh.net>
References: <1489055471-12836-1-git-send-email-plagnioj@jcrosoft.com>
 <1489055471-12836-3-git-send-email-plagnioj@jcrosoft.com>
 <20170310070043.qsu5mcr2fmnn3oxi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170310070043.qsu5mcr2fmnn3oxi@pengutronix.de>
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
Subject: Re: [PATCH 3/3] fbcon: use __iowrite{32/64} to speedup the
 framebuffer console scrolling
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:00 Fri 10 Mar     , Sascha Hauer wrote:
> On Thu, Mar 09, 2017 at 11:31:11AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > this devide the time by 4 on x86
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/video/fbconsole.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
> > index b261f1704..b5e951e23 100644
> > --- a/drivers/video/fbconsole.c
> > +++ b/drivers/video/fbconsole.c
> > @@ -6,6 +6,7 @@
> >  #include <gui/image_renderer.h>
> >  #include <gui/graphic_utils.h>
> >  #include <linux/font.h>
> > +#include <linux/io.h>
> >  
> >  enum state_t {
> >  	LIT,				/* Literal input */
> > @@ -202,7 +203,7 @@ static void printchar(struct fbc_priv *priv, int c)
> >  
> >  		buf = gui_screen_render_buffer(priv->sc);
> >  
> > -		memcpy(buf, buf + line_height, line_height * priv->rows);
> > +		__iowrite64_copy(buf, buf + line_height, (line_height * priv->rows) >> 2);
> 
> Shouldn't this be >> 3?
yeah should be 3
> 
> Besides, I'm not sure using __iowrite64_copy is the right weapon here.
> Maybe better port arch/x86/lib/memcpy_64.S to get an optimized memcpy?
we need to test the performance

but as far as I remember __iowrite was kicker on ARM at least

Best Regards,
J.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
