Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDjTo-0005R2-17
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 22:40:04 +0000
Date: Thu, 7 Mar 2013 16:46:25 -0600
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130307224625.GH16050@kryptos>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <20130303145810.GB10708@pengutronix.de>
 <20130305170929.GD16050@kryptos>
 <20130306172850.GA30452@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130306172850.GA30452@pengutronix.de>
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
Subject: Re: [PATCH 0/5] Zynq support for barebox
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

On Wed, Mar 06, 2013 at 06:28:50PM +0100, Steffen Trumtrar wrote:
> On Tue, Mar 05, 2013 at 11:09:29AM -0600, Josh Cartwright wrote:
[..]
> > > I have some patches laying around, that have support for booting first stage
> > > from a SD-Card on a ZedBoard. I didn't send them as of yet, because I'm not
> > > completely satisfied with them in one or two places. (The clocksource seems to
> > > be inverse to what barebox expects, which would be a quick fix, and barebox boots
> > > uuultra slow, if I do everything according to the TRM)
> > > At the moment, I do not have access to the board though. But I hope I can get a
> > > hand on it in the next days.
> > 
> > If you have a chance to send out what you have, I'd be curious to see
> > it.  Fortunately I have several Zynq boards to play with.
> > 
> 
> Hi!
> 
> Have a look at
> http://git.pengutronix.de/?p=str/barebox.git;a=summary
> 
> I "stole" your clk driver and added it to my patch stack :-)
> Current state for ZedBoard:
> 	- boot first stage from SD-Card
> 		- barebox.bin needs to be processed with
> 		./scripts/zynq_checksum barebox.bin BOOT.bin
> 		to have the checksum in the BootROM header
> 	- clocksource is arm_smp_tmd at seems accurate
> 	- the BootROM needs about 4-5 seconds to copy barebox from
> 	  SD to the OCM. I guess, I need to mess with the SD setup
> 	  in the BootROM somehow
> 	- just enough clkdev to use the timer
> 	- all pinctrl, clk setup etc happens in the lowlevel init

Hey Steffen-

Thanks for sharing this! I'll be looking to get board support for the
zc702 on top of your work this weekend (I have several Zynq boards, but
none of them are ZedBoards).  I'm also in the process of porting the
uboot zynq_gem driver.

Do you have plans for submitting this to the list?

Thanks again,

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
