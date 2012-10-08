Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLA8s-0008Cx-Re
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 10:00:55 +0000
Date: Mon, 8 Oct 2012 12:00:10 +0200
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20121008100010.GA21170@sig21.net>
References: <1349614983-12495-1-git-send-email-plagnioj@jcrosoft.com>
 <20121008090313.GA5498@sig21.net>
 <20121008092706.GX26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121008092706.GX26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/1] designware: add clock support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 08, 2012 at 11:27:06AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:03 Mon 08 Oct     , Johannes Stezenbach wrote:
> > On Sun, Oct 07, 2012 at 03:03:03PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > allow the driver to request it's clock and enable it
> > ...
> > > +	clk = clk_get(dev, NULL);
> > > +	if (IS_ERR(clk)) {
> > > +		ret = PTR_ERR(clk);
> > > +		dev_err(dev, "no clk ret = %d\n", ret);
> > > +		return ret;
> > > +	}
> > 
> > Just a minor nit: s/allow/require/.  Users of the driver may
> > now have to define a dummy clock.  Since the actual clock freqeuency
> > is not used by the driver you could also make it optional?
> > 
> > And while at it, it's "its", not "it's". :-)
> srry but there is no user at hte mainline and I'm preparing the ST support
> where I nned to enabld the clock and this IP require 2 clock one for the gmac
> and one for phy
> 
> so no please provide a clock on generic drivers I do want to use the clk
> framework

That is not the issue I tried to point out.  The problem is that
your commit description is inaccurate.

> btw which SoC do you use because I see no code for it

SoC that doesn't exist yet (in development).

Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
