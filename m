Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebkdK-0006HW-VS
 for barebox@lists.infradead.org; Wed, 17 Jan 2018 10:07:53 +0000
Date: Wed, 17 Jan 2018 11:07:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180117100737.bxtbjuojetes7dsf@pengutronix.de>
References: <20180115213951.GA32669@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180115213951.GA32669@ravnborg.org>
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
Subject: Re: [PATCH v3 0/3] Enable DT support for AT91SAM9263EK
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Barebox List <barebox@lists.infradead.org>

On Mon, Jan 15, 2018 at 10:39:51PM +0100, Sam Ravnborg wrote:
> This is version 3 of a patchset to enable
> device tree support for AT91SAM9263EK.
> 
> The patchset is made on top of previous
> patches posted that move reset code to
> the board files for at91 boards.
> (Which are already part of -next)
> 
> On the quest towards getting so far several drivers was
> converted to support DT.
> These patches went in around august.
> 
> There was also issues with mach-at91 calling code
> in the board directory (dependency in the
> wrong direction).
> This was fixed in "at91: move reset .." which is
> pending (already posted).
> 
> I have failed to get the bootstrap mode to work.
> It stops somewhere - and I have not invested enough
> time to figure out where and why things goes wrong.
> bootstrap mode was also broken before these patches.
> No JTAG debugger available to help me.
> And then I have at91bootstrap that works so motivation
> was not too high.
> 
> I do not think the NAND support works either.
> The device tree introduces some nand-controller
> stuff that is not supported by barebox (at least I assume so).
> And this part I did not look further into.
> 
> Next step is to get a proprietary board up and
> running (which uses NOR flash).
> But I wanted this patchset out in the open first.
> 
> Thanks for feedback so far - especially from Andrey.
> 
> 	Sam
> 
> v2 => v3
> - Squashed commit introducing support for multi image
>   with the commit to add DT support
> - Fixed init of smc

Applied, thanks

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
