Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDVVg-0001Df-VW
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 07:45:06 +0000
Date: Thu, 7 Mar 2013 08:45:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130307074503.GR1906@pengutronix.de>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
 <1362562189-17783-6-git-send-email-plagnioj@jcrosoft.com>
 <20130306212129.GN1906@pengutronix.de>
 <20130306213444.GI4401@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130306213444.GI4401@game.jcrosoft.org>
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
Subject: Re: [PATCH 06/20] app: add some utils
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 06, 2013 at 10:34:44PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:21 Wed 06 Mar     , Sascha Hauer wrote:
> > On Wed, Mar 06, 2013 at 10:29:35AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > >  - getchar_timeout
> > >  - term (try to detect terminal size, position, ansi helper)
> > >  - list
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > > diff --git a/apps/include/utils/list.h b/apps/include/utils/list.h
> > > new file mode 100644
> > > index 0000000..8a18dae
> > > --- /dev/null
> > > +++ b/apps/include/utils/list.h
> > > @@ -0,0 +1,114 @@
> > > +/*
> > > + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> > > + *
> > > + * Under GPLv2 only
> > > + *
> > > + * As a special exception, if other files instantiate templates or use macros
> > > + * or inline functions from this file, or you compile this file and link it
> > > + * with other works to produce a work based on this file, this file does not
> > > + * by itself cause the resulting work to be covered by the GNU General Public
> > > + * License. However the source code for this file must still be made available
> > > + * in accordance with section (3) of the GNU General Public License.
> > > +
> > > + * This exception does not invalidate any other reasons why a work based on
> > > + * this file might be covered by the GNU General Public License.
> > > + */
> > 
> > This looks suspiciously like the Linux list implementation which I think you
> > haven't written. Also who gives you the right to add this licence
> > exception to code you do not own?
> I did wrote this for years about 10 I just update the code to looks like the
> linux one so I do own the code

LOL. I've written my own OS 25 years ago, I just updated the code to look
like Linux.

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
