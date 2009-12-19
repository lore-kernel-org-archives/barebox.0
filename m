Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NM7Dy-0001Vk-9G
	for barebox@lists.infradead.org; Sat, 19 Dec 2009 21:52:31 +0000
Date: Sat, 19 Dec 2009 22:49:19 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20091219214919.GA22533@pengutronix.de>
References: <alpine.LFD.2.00.0912190351400.32196@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912190351400.32196@localhost>
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
Subject: Re: is barebox meant to be the next generation of u-boot?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sat, Dec 19, 2009 at 03:56:29AM -0500, Robert P. J. Day wrote:
>   i just want to clarify the direction of barebox -- is it meant to
> eventually supplant u-boot? i ask since i want to know if it's not
> worth investing much more time in u-boot (v1) if things are eventually
> going to switch over to barebox.

When starting the activities, we had the intention to be a next
generation technology project, being part of the u-boot project.
However, things didn't seem to have progressed into that direction over
the last two years, so we had to move on. We have a new name for the
project now, which does already give the project a better exposure in
the community.

>   specifically, i want to use it on my beagleboard, so i "git" checked
> out the source for barebox, configured it for the beagle, built it
> with the denx "arm-linux-" toolchain and it booted. i haven't got any
> further than that so far but that's all i was after -- just getting it
> to boot to the barebox prompt.
>
>   at this point, if barebox is merely *adequate* to do what i want and
> supports booting my beagleboard fully, is there any reason i don't
> just move to it entirely, knowing it does what i need and it's only
> going to get better?  thanks.

If it boots and has everything you need, why not?

However, any contribution is welcome.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
