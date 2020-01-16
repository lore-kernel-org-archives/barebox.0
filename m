Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0TN-0005bS-Ru
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 08:25:54 +0000
Date: Thu, 16 Jan 2020 09:25:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200116082547.l6ba2wcsrne7mozb@pengutronix.de>
References: <20200115102650.11739-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115102650.11739-1-cleger@kalray.eu>
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
Subject: Re: [PATCH 0/5] Add support for Kalray k1c core
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

Hi Clement,

On Wed, Jan 15, 2020 at 11:26:45AM +0100, Clement Leger wrote:
> Kalray k1c core is embedded in Kalray Coolidge SoC. This core has the
> following features:
>  - 32/64 bits
>  - 6-issue VLIW architecture
>  - 64 x 64bits general purpose registers
>  - SIMD instructions
>  - little-endian
> 
> This port is a 64 bits one and allows to boot up to a barebox prompt on a k200
> board. k1c support for clocksource and watchdog is also part of this port.
> 
> In order to build a usable toolchain, build scripts are provided at the
> following address: https://github.com/kalray/build-scripts.
> 
> Kalray uses FOSS which is available at https://github.com/kalray
> 
> Clement Leger (5):
>   k1c: Initial Kalray Coolidge (k1c) architecture support
>   k1c: Add processor definitions
>   k1c: Add support for device tree
>   clocksource: k1c: Add k1c clocksource support
>   watchdog: k1c: Add k1c watchdog support

From a first look this is all pretty straight forward, looks good ;)

barebox is entered at 0x0. According to the linker script and the device
tree you have 4MiB of SRAM there, right?

I don't see any SDRAM setup code in this series, nevertheless it is
used. How is SDRAM setup done? Is it done in ROM or is it some board
specific binary that runs before barebox?

Generally it seems that the board code is not very well separated from
the SoC code. Ideally barebox startup is like:

- The entry point is board specific
- in this board specific code everything is done that is needed for a
  properly running SoC with SDRAM enabled. This may require some helper
  functions to be shared between boards
- the entry code jumps to the generic code, passing a pointer to
  the device tree and if necessary SDRAM base/size

With this setup we can build barebox images for multiple boards (or
multiple configurations of boards) in one go. As a developer you can
test on multiple boards without having to recompile. For a compile
tester it reduces the number of configurations to build (faster
results). For an integrator it reduces the number of barebox receipts to
keep track of.  Overall it's worth implementing such a scheme.

It would be great to get there with the Kalray SoC as well, that's why I
asked about the SDRAM setup above. If there is board specific code
running before barebox, it should be possible to pass information to
barebox on which board we are actually running. With this information we
could reduce the need for board specifics in barebox.

I hope my questions go into the right direction, maybe just tell me a
little bit more about the SoC startup.

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
