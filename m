Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate06.web.de ([217.72.192.247])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RIdtI-0005l6-E5
	for barebox@lists.infradead.org; Tue, 25 Oct 2011 10:05:53 +0000
Date: Tue, 25 Oct 2011 12:05:35 +0200
From: Johannes Schauer <j.schauer@email.de>
Message-ID: <20111025100535.GA11941@hoothoot>
References: <20111024211137.GB19298@hoothoot>
	<20111024213413.GR23421@pengutronix.de>
	<20111025063850.GA19390@hoothoot>
	<20111025083647.GS23421@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111025083647.GS23421@pengutronix.de>
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
Subject: Re: barebox on gta04
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: gta04-owner@goldelico.com, barebox@lists.infradead.org

Hi,

On Tue, Oct 25, 2011 at 10:36:47AM +0200, Sascha Hauer wrote:
> > But after doing that, barebox would just not start anymore when
> > loaded by uboot.
> 
> Strange. Should not be the case, no idea what's happening here.

any ideas on what I can try?

> Look again, we accidently have the same string twice in the driver:
> 
> ./drivers/mci/omap_hsmmc.c:201:                 dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");
> ./drivers/mci/omap_hsmmc.c:224:                 dev_dbg(hsmmc->dev, "timedout waiting for cc2!\n");
> 
> The one in line 224 should really be "timeout waiting for reset done".
> 
> So what I wanted to know is whether it's the error message in line 201
> or 224 that we see. So please change one of them

I changed both, appending the string of the function calling them
(mmc_init_stream and mmc_init_setup)

when booting I get:


barebox 2011.10.0-00107-gdac6e90-dirty (Oct 25 2011 - 12:00:54)

Board: Texas Instrument's Beagle
omap-hsmmc@omap-hsmmc0: timedout waiting for cc2! (in mmc_init_setup)
Cannot reset the SD/MMC interface

So this is where it comes from.

cheers, josch

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
