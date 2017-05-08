Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7hEx-0004iT-EP
 for barebox@lists.infradead.org; Mon, 08 May 2017 11:54:13 +0000
Date: Mon, 8 May 2017 13:53:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170508115349.267jiaq4p5jwqojv@pengutronix.de>
References: <20170505154920.27685-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170505154920.27685-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 0/3] i.MX: fec: enable optional clocks in fec driver
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 05, 2017 at 05:49:17PM +0200, Michael Grzeschik wrote:
> All clocks necessary for the fec are described in the device trees. This
> series enables them if found. After that change, all board files
> explicitly enabling them can rely on the fec driver.
> 
> Michael Grzeschik (3):
>   i.MX: fec: also enable optional clocks
>   ARM: phytec-som-imx6: the ethernet clocks get enabled by fec_imx
>   ARM: mx6sx-sabresdb: the ethernet clocks get enabled by fec_imx

Applied, thanks

Sascha

> 
>  arch/arm/boards/freescale-mx6sx-sabresdb/board.c | 27 +---------------------
>  arch/arm/boards/phytec-som-imx6/board.c          | 27 +---------------------
>  drivers/net/fec_imx.c                            | 29 ++++++++++++++++++++++++
>  drivers/net/fec_imx.h                            |  8 +++++++
>  4 files changed, 39 insertions(+), 52 deletions(-)
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
