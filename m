Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wyy1X-0003DE-QN
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 06:46:40 +0000
Date: Mon, 23 Jun 2014 08:46:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140623064611.GS15686@pengutronix.de>
References: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/4] ARM: versatile: switch to devicetree support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 20, 2014 at 01:28:36AM +0400, Antony Pavlov wrote:
> Antony Pavlov (4):
>   ARM: versatile: drop redundant <mach/gpio.h>
>   i2c: versatile: add devicetree support
>   ARM: versatile: switch to devicetree support
>   ARM: versatilepb_defconfig: enable devicetree support

Applied, thanks

Sascha

> 
>  arch/arm/boards/versatile/versatilepb.c     | 10 ------
>  arch/arm/configs/versatilepb_defconfig      | 50 ++++++++++++++++-------------
>  arch/arm/dts/versatile-pb.dts               | 10 ++++++
>  arch/arm/mach-versatile/core.c              | 11 -------
>  arch/arm/mach-versatile/include/mach/gpio.h |  1 -
>  arch/arm/mach-versatile/include/mach/init.h |  2 --
>  drivers/i2c/busses/i2c-versatile.c          |  7 ++++
>  7 files changed, 44 insertions(+), 47 deletions(-)
>  create mode 100644 arch/arm/dts/versatile-pb.dts
>  delete mode 100644 arch/arm/mach-versatile/include/mach/gpio.h
> 
> -- 
> 1.9.2
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
