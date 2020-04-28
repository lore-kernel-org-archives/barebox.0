Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKrZ-00079f-7R
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:41:06 +0000
Date: Tue, 28 Apr 2020 09:41:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200428074101.GV5877@pengutronix.de>
References: <20200423204458.27237-1-u.kleine-koenig@pengutronix.de>
 <96b74c98-191f-d485-a531-1decab805dfc@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96b74c98-191f-d485-a531-1decab805dfc@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] treewide: remove references to CREDITS
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Tue, Apr 28, 2020 at 09:31:25AM +0200, Ahmad Fatoum wrote:
> Hi,
> =

> On 4/23/20 10:44 PM, Uwe Kleine-K=F6nig wrote:
> > The CREDITS file was removed from barebox in 2015 by commit 6570288f2d97
> > ("Remove the CREDITS file"). Remove references to it from several files.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> =

> > diff --git a/include/menu.h b/include/menu.h
> > index 77c496c65c17..52575f7454b1 100644
> > --- a/include/menu.h
> > +++ b/include/menu.h
> > @@ -2,9 +2,6 @@
> >  /*
> >   * (C) Copyright 2009-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@=
jcrosoft.com>
> >   *
> > - * See file CREDITS for list of people who contributed to this
> > - * project.
> > - */
> =

> You break the comment here,

My compile test found that as well, I already fixed it up.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
