Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1b8j-0004mH-DR
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 12:56:58 +0000
Date: Mon, 30 Jun 2014 14:56:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140630125632.GF14257@pengutronix.de>
References: <alpine.LFD.2.11.1406280904330.2486@localhost>
 <20140630060112.GX14257@pengutronix.de>
 <CAOpc7mGu=VYE_9uRJ8-dKmDaqgQaok40u_2EFgSHQCRG=67oXQ@mail.gmail.com>
 <alpine.LFD.2.11.1406300555100.18619@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406300555100.18619@localhost>
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
Subject: Re: in sphinx docs, what is "@b barebox" markup supposed to do?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Jun 30, 2014 at 05:56:37AM -0400, Robert P. J. Day wrote:
> On Mon, 30 Jun 2014, Holger Schurig wrote:
> 
> > I found a Sphinx cheat sheet:
> > http://openalea.gforge.inria.fr/doc/openalea/doc/_build/html/source/sphinx/rest_syntax.html
> > (where you have all the important things on just one page).
> >
> > So you can convert "This is @b foo bar" to "This is **foo** bar".
> 
>   except the standard *seems* to be to not mark up the name "barebox"
> at all, so it would seem more appropriate to just remove the doxygen
> markup for the word "barebox" entirely.

Yes.

IMO it doesn't help the reader if every occurrence of the word
**barebox** in a **barebox** manual is in bold letters just because we
like **barebox** so much.

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
