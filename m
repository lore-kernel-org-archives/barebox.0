Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6H17-00051M-3Z
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 08:51:37 +0000
Date: Fri, 15 Feb 2013 09:51:34 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130215085134.GA5062@pengutronix.de>
References: <1360835962-14789-1-git-send-email-shc_work@mail.ru>
 <20130215084108.GD25672@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130215084108.GD25672@pengutronix.de>
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
Subject: Re: [PATCH] Add missing SZ_xx defines
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2013 at 09:41:08AM +0100, Sascha Hauer wrote:
> On Thu, Feb 14, 2013 at 01:59:22PM +0400, Alexander Shiyan wrote:
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  include/sizes.h |   12 ++++++++++++
> >  1 files changed, 12 insertions(+), 0 deletions(-)
> > 
> > diff --git a/include/sizes.h b/include/sizes.h
> > index c47f906..321d40c 100644
> > --- a/include/sizes.h
> > +++ b/include/sizes.h
> > @@ -17,7 +17,19 @@
> >  #define __sizes_h			1
> >  
> >  /* handy sizes */
> > +#define SZ_1				0x00000001
> > +#define SZ_2				0x00000002
> > +#define SZ_4				0x00000004
> > +#define SZ_8				0x00000008
> > +#define SZ_16				0x00000010
> > +#define SZ_32				0x00008020
> 
> There is a tiny bug in the line above, can you find it? ;)
> 
> Fixed this. Reported-by: Steffen Trumtrar, who seems to have good eyes.
> 

Using Inconsolata as font helps ;-)

str

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
