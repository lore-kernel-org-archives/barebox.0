Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0mI3-0000NZ-JZ
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 09:52:49 +0000
Date: Wed, 19 Apr 2017 11:52:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419095226.sn4vypybmfvjj5cx@pengutronix.de>
References: <20170418144615.22989-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170418144615.22989-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mtd: spi-nor: cadence: change devicetree bindings to
 upstream
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 18, 2017 at 04:46:14PM +0200, Steffen Trumtrar wrote:
> Upstream devicetree bindings where changed to use "cdns,is-decoded-cs"
> instead of "external-decoder". Use it.
> Also, get rid of the clock-names "qspi_clk" dependency.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/xload.c         |  2 +-
>  drivers/mtd/spi-nor/cadence-quadspi.c | 15 ++++++---------
>  include/platform_data/cadence_qspi.h  |  2 +-
>  3 files changed, 8 insertions(+), 11 deletions(-)

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
