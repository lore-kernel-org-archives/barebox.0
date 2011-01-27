Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PiMSw-0007KJ-6V
	for barebox@lists.infradead.org; Thu, 27 Jan 2011 07:40:27 +0000
Date: Thu, 27 Jan 2011 08:40:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110127074023.GS9041@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FEA303C69@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FEA303C69@SRV-VS06.TELEVIC.COM>
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
Subject: Re: i.MX27 ?
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

On Wed, Jan 26, 2011 at 09:20:11AM +0100, Vanalme Filip wrote:
> Hi,
> 
> Anyone ported Barebox to Freescale's i.MX27PDK 3-stack ?  I'm new to
> Barebox (or any bootloader...) and I try to port it for my i.MX27PDK,
> but did not succeed yet. I don't get anything on the console port yet.
> I took the i.MX27ADS as a reference, copied all its files to a new
> board directory, and started adjusting the files. Via the debug board
> of the i.MX27PDK (containing a CPLD), I should be able to turn on some
> debug leds very early in the boot process, but even this did not
> succeed (yet...). I made changes in board_init_lowlevel() of
> lowlevel_init.S to initialize the hardware. I guess
> board_init_lowlevel() is one of the first functions that is executed.
> Correct ?  Because I didn't get it up and running, I tried to do
> debugging with a PEEDI debugger. Anyone experience with it for
> debugging Barebox ? I'm using PEEDI in combination with Eclipse
> (Zylin) debugger. It looks like I have problems when trying to step in
> assembler sources...

As a first step I would try to use barebox as a second stage loader
behind U-Boot or redboot or whatever is on your board. What do you have
on your board?
When using barebox as a second stage loader you can comment out
everything in board_init_lowlevel. Provided that you are using the
correct UART you should see something at this stage.
What silicon revision do you have on your board? Our i.MX27ads is rev
1 which has some incompatibilities to other revs, so maybe this is
where it breaks. Also, make sure that the SDRAM setup fits for your
board. For the lowlevel setup you might want to look at Freescale
provided sources.

Hope that helps
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
