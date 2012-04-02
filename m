Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEcNl-0001y5-Mj
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 08:12:58 +0000
Date: Mon, 2 Apr 2012 10:12:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402081247.GI3852@pengutronix.de>
References: <1332784917-4630-1-git-send-email-esben.haabendal@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332784917-4630-1-git-send-email-esben.haabendal@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] mx28-evk LCD support
To: esben.haabendal@gmail.com
Cc: barebox@lists.infradead.org, Esben Haabendal <esben.haabendal@prevas.dk>

On Mon, Mar 26, 2012 at 08:01:57PM +0200, esben.haabendal@gmail.com wrote:
> From: Esben Haabendal <esben.haabendal@prevas.dk>
> 
> Configure and enable LCD support for MCIMX28EVK and the 4.3" WVGA
> LCD Display (add-on module).
> 
> Allan Heldgaard (1):
>   mx28-evk: Add LCD support
> 
> Esben Haabendal (1):
>   mx28-evk: Enable LCD support and bmp command

Applied, thanks

Sascha

> 
>  arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   86 +++++++++++++++++++++++++
>  arch/arm/configs/imx28evk_defconfig           |    3 +
>  2 files changed, 89 insertions(+), 0 deletions(-)
> 
> -- 
> 1.7.5.4
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
