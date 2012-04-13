Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIdNu-0000AW-1K
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 10:05:46 +0000
Date: Fri, 13 Apr 2012 12:05:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120413100523.GJ3852@pengutronix.de>
References: <alpine.DEB.2.02.1202101752190.15811@oneiric>
 <CAO-mwNdrCAGs7qN2OHvWmC50s_gquMKk5TGcFbrSNu1=-Z=iqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO-mwNdrCAGs7qN2OHvWmC50s_gquMKk5TGcFbrSNu1=-Z=iqA@mail.gmail.com>
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
Subject: Re: [PATCH] Add support for OMAP4460 revision detection.
To: Anand Gadiyar <gadiyar@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, Apr 13, 2012 at 03:24:37PM +0530, Anand Gadiyar wrote:
> On Sat, Feb 11, 2012 at 4:23 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:
> 
> >
> >
> >  Without yet adding in the underlying code, extend the revision
> > checking code to return additional values for PandaBoard ES boards.
> > Much of the code was taken close to verbatim from U-Boot.
> >
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > --
> >
> 
>  compile tested, and confirmed that this code behaves identically to
> > the original panda configure and build for the three pandas i have:
> >
> >  * Rev A2 (boots)
> >  * Rev EA3 (boots)
> >  * Rev B1 ES (no output)
> >
> > so while there's still work to be done, this at least represents the
> > necessary infrastructure to start *recognizing* panda ES boards.
> >
> >
> For what it's worth,
> 
> Tested-by: Anand Gadiyar <gadiyar@ti.com>

Thanks for testing. I forgot about this one, but I applied it now.

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
