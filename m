Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0bz9-0002k4-4H
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 19:39:00 +0000
Date: Fri, 27 Jun 2014 21:38:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140627193833.GP14257@pengutronix.de>
References: <alpine.LFD.2.11.1406261725570.2448@localhost>
 <20140627045150.GN14257@pengutronix.de>
 <alpine.LFD.2.11.1406270502570.4443@localhost>
 <CAOpc7mHqg00i7-R4yfiPjVg9SudWYq7A_WiAtYfNctGr4_ZqEA@mail.gmail.com>
 <alpine.LFD.2.11.1406270745300.3483@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406270745300.3483@localhost>
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
Subject: Re: where is Documentation/parameters.txt?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, Jun 27, 2014 at 07:49:49AM -0400, Robert P. J. Day wrote:
> On Fri, 27 Jun 2014, Holger Schurig wrote:
> 
> > >   oh, sorry, i missed that doc *branch*, my fault.
> >
> > It's totally new ... and awesome (compared to the old docs).
> 
>   ok, possibly a silly question but, as i now read it, if i want to
> work with the sphinx-based docs, i should be working off the "doc"
> branch and restrict my changes to just the files in the Documentation
> directory.
> 
>   but recently, i submitted a patch to correct the misspelling
> "persistant", and some of those changes were in Documentation/, while
> other examples of that were scattered elsewhere (arch/, scripts/).

That's fine. I'll solve the merges conflicts.

> 
>   so what's the protocol for correcting "documentation" (eg., inline
> comments in source files) as opposed to the content under
> Documentation? should non-Documentation patches be submitted against
> the master branch? or does the "doc" branch track master closely
> enough that i can exclusively stay on the "doc" branch?
> 
>   as in, should i resubmit that earlier patch broken into two parts?
> and if one submits a patch against the "doc" branch, should that be
> identified in the patch itself? the subject line?

Please send documentation patches only against the doc branch. I'll
resolve the merge conflicts against master should there be any.

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
