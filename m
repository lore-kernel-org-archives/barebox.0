Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDI98-0006CC-Sp
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 17:29:04 +0000
Date: Wed, 6 Mar 2013 18:28:50 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130306172850.GA30452@pengutronix.de>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <20130303145810.GB10708@pengutronix.de>
 <20130305170929.GD16050@kryptos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130305170929.GD16050@kryptos>
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
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

On Tue, Mar 05, 2013 at 11:09:29AM -0600, Josh Cartwright wrote:
> On Sun, Mar 03, 2013 at 03:58:10PM +0100, Steffen Trumtrar wrote:
> > Hi!
> > 
> > On Sat, Mar 02, 2013 at 07:20:12PM -0600, Josh Cartwright wrote:
> > > In San Francisco a couple weeks ago (ELC2013), Thomas Petazzoni
> > > informally mentioned barebox in passing, so I decided to toy with it a
> > > bit...
> > > 
> > > This patchset adds basic support for the Zynq SoC to barebox.  So far,
> > > it's only been tested as a 'secondary' bootloader (after u-boot).  Also
> > > added is support for the zc702 development board.
> > > 
> > 
> > I have some patches laying around, that have support for booting first stage
> > from a SD-Card on a ZedBoard. I didn't send them as of yet, because I'm not
> > completely satisfied with them in one or two places. (The clocksource seems to
> > be inverse to what barebox expects, which would be a quick fix, and barebox boots
> > uuultra slow, if I do everything according to the TRM)
> > At the moment, I do not have access to the board though. But I hope I can get a
> > hand on it in the next days.
> 
> If you have a chance to send out what you have, I'd be curious to see
> it.  Fortunately I have several Zynq boards to play with.
> 

Hi!

Have a look at
http://git.pengutronix.de/?p=str/barebox.git;a=summary

I "stole" your clk driver and added it to my patch stack :-)
Current state for ZedBoard:
	- boot first stage from SD-Card
		- barebox.bin needs to be processed with
		./scripts/zynq_checksum barebox.bin BOOT.bin
		to have the checksum in the BootROM header
	- clocksource is arm_smp_tmd at seems accurate
	- the BootROM needs about 4-5 seconds to copy barebox from
	  SD to the OCM. I guess, I need to mess with the SD setup
	  in the BootROM somehow
	- just enough clkdev to use the timer
	- all pinctrl, clk setup etc happens in the lowlevel init

Regards,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
