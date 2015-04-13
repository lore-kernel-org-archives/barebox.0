Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhYkh-0007fR-JZ
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 07:25:52 +0000
Date: Mon, 13 Apr 2015 09:25:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150413072529.GC9742@pengutronix.de>
References: <1428788692-11334-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1428788692-11334-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] ARM: pxa: add mainstone board support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sat, Apr 11, 2015 at 11:44:52PM +0200, Robert Jarzmik wrote:
> Add support for the Intel XScale PXA270 development system platform.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/mainstone/Makefile                 |   2 +
>  arch/arm/boards/mainstone/board.c                  | 134 +++++++++++
>  arch/arm/boards/mainstone/env/boot/nor-ubi         |   5 +
>  arch/arm/boards/mainstone/env/init/mtdparts-nor    |  11 +
>  .../boards/mainstone/env/nv/linux.bootargs.console |   1 +
>  arch/arm/boards/mainstone/lowlevel.c               | 264 +++++++++++++++++++++
>  arch/arm/configs/mainstone_defconfig               | 109 +++++++++
>  arch/arm/mach-pxa/Kconfig                          |   5 +
>  9 files changed, 532 insertions(+)
>  create mode 100644 arch/arm/boards/mainstone/Makefile
>  create mode 100644 arch/arm/boards/mainstone/board.c
>  create mode 100644 arch/arm/boards/mainstone/env/boot/nor-ubi
>  create mode 100644 arch/arm/boards/mainstone/env/init/mtdparts-nor
>  create mode 100644 arch/arm/boards/mainstone/env/nv/linux.bootargs.console
>  create mode 100644 arch/arm/boards/mainstone/lowlevel.c
>  create mode 100644 arch/arm/configs/mainstone_defconfig

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
