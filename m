Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMl3M-0007nN-0y
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 16:24:13 +0000
Date: Mon, 21 Dec 2009 17:23:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221162306.GN15126@pengutronix.de>
References: <alpine.LFD.2.00.0912210947530.18397@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210947530.18397@localhost>
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
Subject: Re: can someone explain this CONFIG_COMMANDS, CFG_CMD thing?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 09:56:07AM -0500, Robert P. J. Day wrote:
> 
>   i'm looking at some of the stuff sascha commented on earlier, like:
> 
> $ grep -r CONFIG_MII drivers
> drivers/net/Makefile:obj-$(CONFIG_MIIPHY)			+= miiphy.o
> drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
> drivers/net/at91_ether.c:#endif	/* defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII) */
> drivers/net/at91_ether.c:#if defined(CONFIG_MII) || (CONFIG_COMMANDS & CFG_CMD_MII)
> $
> 
> and i'd like to clarify what any of that is *supposed* to mean.
> 
>   first, what means "CONFIG_COMMANDS"?  that is, in the sense that
> you're *bitwise* or'ing it with something else?  is that supposed to
> be a test that a command has been selected for inclusion?  surely
> there's a cleaner way to do that.

Forget about CONFIG_COMMANDS. This is from old U-Boot and is a bitmask
for the available commands. CFG_CMD_MII was one bit of this command
mask. Someday they realized that they want to support more than 32
commands and got rid of it.

The parts you are referring to should simply be

#if defined(CONFIG_MII)

Hm, looking closer at it this part of the at91 ethernet driver is
outdated. Compare to the other ethernet drivers to get an idea how phys
are handled now. Maybe I'll fix this after christmas.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
