Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dptyJ-0004Ld-F9
 for barebox@lists.infradead.org; Thu, 07 Sep 2017 10:23:45 +0000
Date: Thu, 7 Sep 2017 12:23:19 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20170907102319.nu2dbusaznkaw7r3@pengutronix.de>
References: <20170906144410.525-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170906144410.525-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH 0/4] privide ns16550 support for AR9344
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

Subject -> provide
             ~
On Wed, Sep 06, 2017 at 04:44:06PM +0200, Oleksij Rempel wrote:
> changes:
> v3:
>  - fix compile for ppc, arm and sandbox.
> 
> v2:
>  - fix compile if OF is not set.
>  - fix compile for x86
> 
> Oleksij Rempel (4):
>   of: base: port of_device_is_big_endian from linux
>   asm-generic: partially sync io.h with linux kernel
>   x86: asm: include asm-generic.h
>   serial: ns16550: provide big-endian support
> 
>  arch/arm/include/asm/io.h       |   4 +-
>  arch/ppc/include/asm/io.h       |   2 +
>  arch/sandbox/include/asm/io.h   |   3 +-
>  arch/x86/include/asm/io.h       |  15 +++
>  drivers/of/base.c               |  23 ++++
>  drivers/serial/serial_ns16550.c |  19 +++-
>  include/asm-generic/io.h        | 245 +++++++++++++++++++++++++++++++++++-----
>  include/of.h                    |   6 +
>  8 files changed, 284 insertions(+), 33 deletions(-)
> 
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
