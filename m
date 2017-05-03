Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5snS-0001IB-WF
 for barebox@lists.infradead.org; Wed, 03 May 2017 11:50:21 +0000
Date: Wed, 3 May 2017 13:49:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170503114951.h6rfoyfvj4og7gpj@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
 <235a07d5cf87d536675bd60e1b7830bc58fb3bba.1493390425.git-series.s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <235a07d5cf87d536675bd60e1b7830bc58fb3bba.1493390425.git-series.s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 5/8] ARM: socfpga: add arria10 support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 28, 2017 at 04:41:41PM +0200, Steffen Trumtrar wrote:
> Arria10 is a SoC + FPGA like the Cyclone5 SoCFPGA that
> is already supported in barebox.
> Both a the same in some parts, but totaly different in
> others. Most of the hardware blocks are the same in the
> SoC parts. The OCRAM is larger on the Arria10 and the
> SDRAM controller is different.
> The serial core only supports 32bit accesses (different to
> the 8bit accesses on the Cyclone5).
> 
> As Arria10 has 256KB of OCRAM, it is possible to fit a larger
> barebox (and/or use PBL) instead of the two stage bootprocess
> used on the Cyclone5 and its 64KB OCRAM.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/Kconfig                                            |   6 +-
>  arch/arm/mach-socfpga/Kconfig                               |  19 +-
>  arch/arm/mach-socfpga/Makefile                              |  10 +-
>  arch/arm/mach-socfpga/arria10-bootsource.c                  |  53 +-
>  arch/arm/mach-socfpga/arria10-clock-manager.c               | 815 +++++++-
>  arch/arm/mach-socfpga/arria10-generic.c                     |  85 +-
>  arch/arm/mach-socfpga/arria10-init.c                        | 193 ++-
>  arch/arm/mach-socfpga/arria10-reset-manager.c               | 398 +++-
>  arch/arm/mach-socfpga/arria10-sdram.c                       | 535 +++++-
>  arch/arm/mach-socfpga/cyclone5-bootsource.c                 |  45 +-

This does not apply. arch/arm/mach-socfpga/cyclone5-bootsource.c is
modified here but does not exist in my tree.

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
