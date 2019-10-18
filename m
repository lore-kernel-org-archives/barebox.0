Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPrV-0003t4-AM
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 10:52:02 +0000
Date: Fri, 18 Oct 2019 12:51:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191018105159.dwapuqnagow2q3xx@pengutronix.de>
References: <20191017104041.31923-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017104041.31923-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/3] net: designware: socfpga: fix phy setup for Arria10
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 17, 2019 at 12:40:39PM +0200, Steffen Trumtrar wrote:
> Barebox-version of the Linux v5.2 patch:
> 
>     40ae25505fe834648ce4aa70b073ee934942bfdb
>     net: stmmac: socfpga: fix phy and ptp_ref setup for Arria10/Stratix10
> 
>     On the Arria10, Agilex, and Stratix10 SoC, there are a few differences from
>     the Cyclone5 and Arria5:
>      - The emac PHY setup bits are in separate registers.
>      - The PTP reference clock select mask is different.
>      - The register to enable the emac signal from FPGA is different.
> 
>     Thus, this patch creates a separate function for setting the phy modes on
>     Arria10/Agilex/Stratix10. The separation is based a new DTS binding:
>     "altr,socfpga-stmmac-a10-s10".
> 
>     Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
>     Signed-off-by: David S. Miller <davem@davemloft.net>
> 
> The new DTS binding is already part of v2019.10.0 and the driver doesn't
> probe on Arria10 without the new binding introduced in this patch.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/designware.h         |   1 +
>  drivers/net/designware_socfpga.c | 133 +++++++++++++++++++++++++++----
>  2 files changed, 118 insertions(+), 16 deletions(-)

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
