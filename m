Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVAw-0004VY-Q1
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:20:51 +0000
Date: Wed, 1 Jul 2020 07:20:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200701052049.GE15485@pengutronix.de>
References: <20200630110603.21577-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630110603.21577-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v2 0/2] drivers: net: phy: at803x: add clk setup with dt
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 30, 2020 at 01:06:01PM +0200, Michael Grzeschik wrote:
> This series makes the first step to remove the phy_fixups for at80xx
> phys, which is usually hardcoded to prepare clk, delay and SmartEEE
> glitch fixup. With further support of all these settings in the dts, the
> fixups can be removed.
> 
> Michael Grzeschik (2):
>   net: phy: add uapi/linux/mdio.h from kernel for MDIO MMD access
>   drivers: net: phy: at803x: add phy clk setup via dts

Applied, thanks

Sascha

> 
>  drivers/net/phy/at803x.c  | 178 ++++++++++++++++++++-
>  drivers/net/phy/dp83867.c |   3 +-
>  drivers/net/phy/micrel.c  |   5 +-
>  include/linux/mdio.h      | 327 ++++++++++++++++++++++++++++++++++++++
>  4 files changed, 503 insertions(+), 10 deletions(-)
>  create mode 100644 include/linux/mdio.h
> 
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
