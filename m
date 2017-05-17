Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAsYa-0004Uv-88
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:35:38 +0000
Date: Wed, 17 May 2017 08:35:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517063514.hexnde6jhbix5j3t@pengutronix.de>
References: <1494587239-33771-1-git-send-email-d.schultz@phytec.de>
 <1494587239-33771-4-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1494587239-33771-4-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v3 4/4] arm: boards: beaglebone: Delete default env
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, May 12, 2017 at 01:07:19PM +0200, Daniel Schultz wrote:
> The Beaglebone environment should be set from outside with an application
> specific environment.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/boards/beaglebone/Makefile                                 | 1 -
>  arch/arm/boards/beaglebone/board.c                                  | 2 --
>  arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd            | 6 ------
>  .../arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300 | 5 -----
>  4 files changed, 14 deletions(-)
>  delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
>  delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
> 
> --- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -#!/bin/sh
> -
> -echo -n "changing USB current limit to 1300 mA... "
> -i2c_write -b 0 -a 0x24 -r 0x01 0x3e
> -echo "done"

We need this on the beagleboard. We can't just delete it without doing
this somewhere else.

Also I still do not understand the reasoning behind this change. Where
is "outside", to which application should the environment be specific
to?

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
