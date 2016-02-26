Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZCmG-0007T6-Jy
 for barebox@lists.infradead.Org; Fri, 26 Feb 2016 07:25:30 +0000
Date: Fri, 26 Feb 2016 08:25:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160226072506.GN3939@pengutronix.de>
References: <3814032.giLfJ2gLGN@dabox> <20160218161449.GB4207@pengutronix.de>
 <2696845.OufSg50XfY@dabox> <1751869.VnkfJctKHi@dabox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1751869.VnkfJctKHi@dabox>
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
Subject: Re: [PATCH v7] Terasic DE0-Nano-SoC: add support
To: Tim Sander <tim@krieglstein.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

On Thu, Feb 25, 2016 at 11:29:42AM +0100, Tim Sander wrote:
> v7: eof whitespace fixes
> 
> A Patch for supporting the Terasic DE0 NANO-SoC with barebox.
> The pretty similar Socrates Board was taken as a starting point with pulling
> in the memory timings/pinmux from
> http://rocketboards.org/foswiki/view/Documentation/AtlasSoCCompileHardwareDesign
> 
> Signed-off-by: Tim Sander <tim@krieglstein.org>

Applied, thanks. Please provide a Changelog next time, otherwise it's
hard to guess what you actually changed.

BTW I noticed the xload defconfig does not build anymore with this patch
applied because the image gets too big. I searched for the reason at got
a step closer. The SDRAM sequencer code is compiled into the image
multiple times, one time for each board. The intention was that the
linker throws away the unused copies via -ffunction-section and
--gc-sections. Unfortunately this does not work because the functions in
the different copies all end up with the same name. So for example we
have mem_precharge_and_activate() three times in the image. Only one
version is used, but the others can't be thrown away because they are in
the same section.

I hope we can solve this, otherwise we have to split the xloader
defconfigs into multiple configs.

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
