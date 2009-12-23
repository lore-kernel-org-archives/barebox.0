Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNNAu-00016z-Js
	for barebox@lists.infradead.org; Wed, 23 Dec 2009 09:06:36 +0000
Date: Wed, 23 Dec 2009 04:06:00 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20091223090224.GO15126@pengutronix.de>
Message-ID: <alpine.LFD.2.00.0912230405001.11858@localhost>
References: <alpine.LFD.2.00.0912220948380.4211@localhost>
	<20091223090224.GO15126@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] Fix typo, "CFG_LONGHELP" -> "CONFIG_LONGHELP".
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, 23 Dec 2009, Sascha Hauer wrote:

> Hi Robert,
>
> On Tue, Dec 22, 2009 at 09:51:19AM -0500, Robert P. J. Day wrote:
> >
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> >   while this fixes an obvious typo in this file, it's really just
> > a band-aid since this header file sets *numerous* CONFIG_-prefixed
> > macros, which it shouldn't be doing.  any macros prefixed with
> > CONFIG_ should be reserved for the Kconfig namespace, so it
> > wouldn't hurt to apply this patch, but it's clear that this file
> > needs a lot more work at some point in the future.
>
> I used the eco920 during early development. We maybe have the
> opportunity to work on this board in the next time and then I'll fix
> this. Otherwise I tend to remove the board completely.

  no problem.  don't think you need to explain dropping any patch
submissions from me -- obviously, i don't know the history of the
software.  whatever you decide.

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
