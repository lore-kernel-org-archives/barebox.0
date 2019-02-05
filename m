Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr1qf-00036Z-RU
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 14:37:19 +0000
Date: Tue, 5 Feb 2019 15:37:08 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190205143708.GA28266@ravnborg.org>
References: <20190204102937.GA2663@lenoch>
 <20190205115927.nyirklt3cz2lw6by@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190205115927.nyirklt3cz2lw6by@pengutronix.de>
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
Subject: Re: [PATCH] dts: Revert at91 switch to new PMC clock bindings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ladislav Michl <ladis@linux-mips.org>

Hi Sasha
> 
> dts/ contains a 1:1 copy from the upstream devicetree-rebasing
> repository. I can't apply any patches to this directory.
> 
> You would have to merge the changes to the changes to the corresponding
> files in arch/arm/dts. I'm not sure how feasible this is in this case
> since not only the clock nodes are changed, but also the references to
> the clocks.

The breakage was anticipated for my part, no suprise.
I just do not have time to look into it at the moment.

The objective for my part is to have all at91 boards moved over to DT,
so we will have to face this.

Or in other words patching all DT files in arch/arm/dts is
not IMO a feasible long term solution.

I got a new at91sam9gxx board from Microchip two weeks ago,
and that is my next DT target.
Then I hope we can maybe mass convert the rest of the
at91 baords with some limited testing.

But this clock issue will need to be fixed first.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
