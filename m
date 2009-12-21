Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMgAz-0007o9-24
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 11:11:48 +0000
Date: Mon, 21 Dec 2009 06:11:19 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20091221105128.GB15126@pengutronix.de>
Message-ID: <alpine.LFD.2.00.0912210609040.13125@localhost>
References: <alpine.LFD.2.00.0912210515100.12260@localhost>
	<20091221105128.GB15126@pengutronix.de>
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
Subject: Re: [PATCH] scripts: Delete non-barebox content from scripts/.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 21 Dec 2009, Sascha Hauer wrote:

> On Mon, Dec 21, 2009 at 05:19:06AM -0500, Robert P. J. Day wrote:
> >
> > Remove scripts/ content having nothing to do with barebox:
> >
> >   - pnmtologo
> >   - conmakehash
> >   - unifdef
> >   - genksyms
> >
> > ---
> >
> >   if there's anything else that can be added to this patch (that
> > is, scripts/ content that can be tossed), i can resubmit a more
> > complete patch.  otherwise, might as well just apply as is.
>
> Applied as is. If there's more to cleanup, a second patch doesn't
> hurt.
>
> Sascha

  generally, i'll submit separate patches if, say, some cleanup is
obvious while additional cleanup is not quite so straightforward.  the
above struck me as what was immediately trivial so it makes sense that
it can be the initial patch for that directory.  thanks.

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
