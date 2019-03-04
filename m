Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0iaa-0008B2-Eq
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 08:04:46 +0000
Date: Mon, 4 Mar 2019 09:04:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190304080442.hjyncl4whxmrz2eu@pengutronix.de>
References: <20190228113900.16177-1-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190228113900.16177-1-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH] ARM: rpi: refactor debug UART Kconfig settings.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Thu, Feb 28, 2019 at 12:39:00PM +0100, Tomaz Solc wrote:
> This fixes the following issues in the debug UART config for Raspberry
> Pi boards:
> 
> When debug UART support is enabled, only R.Pi 1 or 2/3 boards
> can be supported in a single build. However, this limitation was not
> enforced in the "boards to be built" menu. E.g. it was possible to
> build a R.Pi 3 image with (non-functional) debug UART support for R.Pi
> 1.
> 
> In contrast to other architectures, R.Pi debug UART config was placed
> under the "System Type" menu, not under the "Debugging -> low-level
> debugging port". This made this setting easy to miss when enabling low
> level debug mesages.
> ---
> +config DEBUG_RPI1_UART
> +	bool "RaspberryPi 1 low-level debug UART"
> +	depends on ARCH_BCM283X
> +	help
> +	  Say Y here if you want low-level debugging support on
> +	  RaspberryPi 1 boards.
> +
> +	  Selecting this also limits available choices in "boards to
> +	  be built" under "system type". If you want to build images
> +	  that work on both RaspberryPi 1 and 2/3, you need to deselect
> +	  low-level debug.

The idea behind debug_ll is that when you enable it the resulting image
will only work on the system you chose the UART for. It's the same in
the Kernel and we should probably adopt the text for barebox:

          Note that selecting this option will limit the kernel to a single
          UART definition, as specified below. Attempting to boot the kernel
          image on a different platform *will not work*, so this option should
          not be enabled for kernels that are intended to be portable.

So that said, even with a debug UART enabled for Rpi1 we should still
allow to build for Rpi2/3 although we know it won't work there.

The reason is you might get failures only when multiple SoCs are
selected. In that case you only want to enable early debugging support
(for the SoC you are currently testing on) without changing other things
in the config which might make your errors disappear.

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
