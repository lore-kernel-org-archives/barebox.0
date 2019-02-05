Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gr0il-0005uN-Bn
 for barebox@lists.infradead.org; Tue, 05 Feb 2019 13:25:09 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990473AbfBENY4peHT0 (ORCPT
 <rfc822;barebox@lists.infradead.org>); Tue, 5 Feb 2019 14:24:56 +0100
Date: Tue, 5 Feb 2019 14:24:55 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190205132455.GA5428@lenoch>
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
Cc: barebox@lists.infradead.org

On Tue, Feb 05, 2019 at 12:59:27PM +0100, Sascha Hauer wrote:
> Hi Ladis,
> 
> On Mon, Feb 04, 2019 at 11:29:37AM +0100, Ladislav Michl wrote:
> > Recent DTS update brought in switch to the new PMC clock
> > bindings, however we do not support that yet. Revert this
> > change until PMC clock bindings support is implemented.
> > 
> > Fixes: 33fdc89d4cbd ("dts: update to v5.0-rc1")
> > Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> > ---
> >  Disclaimer: Runtime tested only on at91sam9g20.
> > 
> >  dts/src/arm/at91sam9260.dtsi       | 308 ++++++++++++++++++++++++---
> >  dts/src/arm/at91sam9261.dtsi       | 287 +++++++++++++++++++++++--
> >  dts/src/arm/at91sam9263.dtsi       | 315 +++++++++++++++++++++++++---
> >  dts/src/arm/at91sam9g15.dtsi       |   4 -
> >  dts/src/arm/at91sam9g20.dtsi       |  23 +-
> >  dts/src/arm/at91sam9g25.dtsi       |   4 -
> >  dts/src/arm/at91sam9g25ek.dts      |   4 +-
> >  dts/src/arm/at91sam9g35.dtsi       |   4 -
> >  dts/src/arm/at91sam9rl.dtsi        | 239 +++++++++++++++++++--
> >  dts/src/arm/at91sam9x25.dtsi       |   4 -
> >  dts/src/arm/at91sam9x35.dtsi       |   4 -
> >  dts/src/arm/at91sam9x5.dtsi        | 326 ++++++++++++++++++++++++++---
> >  dts/src/arm/at91sam9x5_can.dtsi    |  18 +-
> >  dts/src/arm/at91sam9x5_isi.dtsi    |  11 +-
> >  dts/src/arm/at91sam9x5_lcd.dtsi    |  19 +-
> >  dts/src/arm/at91sam9x5_macb0.dtsi  |  11 +-
> >  dts/src/arm/at91sam9x5_macb1.dtsi  |  11 +-
> >  dts/src/arm/at91sam9x5_usart3.dtsi |  11 +-
> >  18 files changed, 1434 insertions(+), 169 deletions(-)
> 
> dts/ contains a 1:1 copy from the upstream devicetree-rebasing
> repository. I can't apply any patches to this directory.
> 
> You would have to merge the changes to the changes to the corresponding
> files in arch/arm/dts. I'm not sure how feasible this is in this case
> since not only the clock nodes are changed, but also the references to
> the clocks.
> 
> For sure it should be enough to fix the trees you actually can test and
> care about.

My board is not upstreamed as it does not make sense to do it so. It will
never hit the market. Also upstream barebox does not use DT on any
at91sam9g20 SoC, so it is safe. However there seem to be devices using
AT91SAM9X5, SAMA5D3 and SAM9263 which depends on DT clocks and those
are now broken. That said, I can live with one more offtree patch until
new PMC clock binding is implemented (reverting change in arch/arm/dts
is a bit painfull).

On the other hand, was the DT update to v5.0-rc1 and later to v5.0-rc2
motivated by any need or it is just an update to be in sync? If that
is the latter I'd just revert it for barebox-2019.02.0 :)

Best regards,
	ladis

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
