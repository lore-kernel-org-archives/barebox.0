Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMilM-0007Sw-Ur
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 13:57:32 +0000
Date: Mon, 21 Dec 2009 08:56:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20091221132709.GI15126@pengutronix.de>
Message-ID: <alpine.LFD.2.00.0912210856130.16835@localhost>
References: <alpine.LFD.2.00.0912200705560.18199@localhost>
	<20091221093248.GT15126@pengutronix.de>
	<alpine.LFD.2.00.0912210807310.16078@localhost>
	<20091221132709.GI15126@pengutronix.de>
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
Subject: Re: more CONFIG oddities in the current barebox tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 21 Dec 2009, Sascha Hauer wrote:

> On Mon, Dec 21, 2009 at 08:09:11AM -0500, Robert P. J. Day wrote:
> >
> >   leftovers from one of my earliest posts ...
> >
> > On Mon, 21 Dec 2009, Sascha Hauer wrote:
> >
> > > On Sun, Dec 20, 2009 at 07:08:02AM -0500, Robert P. J. Day wrote:
> >
> > > > ===== MODVERSIONS =====
> > > > ./Makefile:  KBUILD_BUILTIN := $(if $(CONFIG_MODVERSIONS),1)
> > > > ./scripts/Makefile:#subdir-$(CONFIG_MODVERSIONS) += genksyms
> >
> >   so is barebox actually going to support MODVERSIONS?
>
> I think not. If we ever want to do we can add this back in.

  ok.  that second line has already been removed as part of an earlier
patch, i'll submit something to delete the first one appropriately.

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
