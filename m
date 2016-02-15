Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVCgA-0006Wo-Gq
 for barebox@lists.infradead.org; Mon, 15 Feb 2016 06:30:39 +0000
Date: Mon, 15 Feb 2016 07:30:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160215063014.GA19372@pengutronix.de>
References: <3814032.giLfJ2gLGN@dabox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3814032.giLfJ2gLGN@dabox>
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
Subject: Re: [PATCH v5] Terasic DE0-Nano-SoC: add support
To: Tim Sander <tim@krieglstein.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

On Fri, Feb 12, 2016 at 02:08:25PM +0100, Tim Sander wrote:
> v5: remove led functions,
>       rename socfpga_console_init -> socfpga_init
>       use more specific device tree identifier, needs a kernel dts addition though:
>         add "terasic,de0-nano-soc" to compatible string in dts file of the board.
> 
> A Patch for supporting the Terasic DE0 NANO-SoC with barebox.
> The pretty similar Socrates Board was taken as a starting point with pulling
> in the memory timings/pinmux from
> http://rocketboards.org/foswiki/view/Documentation/AtlasSoCCompileHardwareDesign

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
