Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ddDbD-0002uD-K9
 for barebox@lists.infradead.org; Thu, 03 Aug 2017 10:43:31 +0000
Date: Thu, 3 Aug 2017 12:43:00 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170803104300.GA30477@ravnborg.org>
References: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
 <20170802195440.GA12893@ravnborg.org>
 <20170802201923.yq34mtr25ki3j25c@pengutronix.de>
 <20170802203240.GA21641@ravnborg.org>
 <20170803090725.knqzwxxroyvgcvwn@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170803090725.knqzwxxroyvgcvwn@pengutronix.de>
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
Subject: Re: [PATCH 0/2] spi: imx: don't loop endlessly
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe.

> Which SoC are you using? Doesn't seem to match my problem. I don't know
> what Sascha did, I'd route ecspi_root to cko2 and check if there is a
> clk in the failing situation. (Assuming that pin is accessible on your
> machine of course.)

The CPU is:
NXP i.MX 6 Single Core Cortex-A9 Industrial processor
MCIMX6S5EVM10AC
We also ahev a quadcore variant.
Both are a proprietary design, which have roots from a freescale reference design.

I can send you the schematics (in private mail) if you think it is usefull for you.
But as you already wrote, this is likely a different problem you are fighting with.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
