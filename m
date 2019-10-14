Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0FN-0002jn-8U
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 13:18:50 +0000
Date: Mon, 14 Oct 2019 15:18:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014131847.z7hvwp2p2qlee57s@pengutronix.de>
References: <20191011162753.17100-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011162753.17100-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/4] mfd: add basic Super I/O chip helpers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 11, 2019 at 06:27:50PM +0200, Ahmad Fatoum wrote:
> Super I/O chips are ICs common to x86 that are used for interfacing
> to low-bandwidth peripherals. They often contain serial ports, watchdog
> timers and hardware monitoring units.
> 
> They are usually addressable via one of two I/O port pairs, either
> 0x2e-0x2f or 0x4e-0x4f, but they don't typically respond to reads from
> their range unless a device-specific 'password' has been poked in.
> After this is done, they are read and written in the same manner however.
> 
> On Linux, these devices aren't subject to any device/driver model.
> Each driver for some function (e.g. watchdog or GPIO) duplicates the
> device probe in the module_init and board-specific configuration
> is handled via module parameters.
> 
> Lets do it a bit fancier in barebox and add a helper to register chips
> and a regmap for the control and configuration registers as well as a
> helper to register child devices for each function contained within the
> Super I/O chip.
> Board-specific configuration, e.g. which pin to use as a watchdog reset,
> can then be realized using barebox device-specific parameters.
> 
> The regmap will be more of a debugging aid, however.
> For ease of porting from Linux, it's expected that access to the
> I/O ports won't happen via the regmap. For this reason, the new
> <superio.h> header offers functions to read/write these chips' registers
> as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

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
