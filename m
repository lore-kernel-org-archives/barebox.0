Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV5IE-00029R-8o
 for barebox@lists.infradead.org; Thu, 17 May 2012 18:19:19 +0000
Date: Thu, 17 May 2012 20:19:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120517181915.GJ30400@pengutronix.de>
References: <CAA4bVAF6=LXsv7Q97Mi6uSx_0oY+h=pyTOrRip=+dyAykGWKpw@mail.gmail.com>
 <CAA4bVAE=UFvDOv0MS97wZjqBLJKxjxRvt3n+7eQME1gfk++RbA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAE=UFvDOv0MS97wZjqBLJKxjxRvt3n+7eQME1gfk++RbA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: build timestamps don't work
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, May 17, 2012 at 09:52:36PM +0400, Antony Pavlov wrote:
> ping
> =

> On 16 May 2012 08:27, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> > Hi!
> >
> > =A0I have found that on my Debian testing build system generation of
> > timestamps don't work correctly.

I just tried and it works with ARM builds. Tried again with MIPS, and
yes, indeed it does not work. Maybe worth looking at the architecture
specific Makefile.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
