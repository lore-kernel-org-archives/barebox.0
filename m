Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF0e1-00086S-GE
 for barebox@lists.infradead.org; Mon, 30 Sep 2019 18:43:38 +0000
Date: Mon, 30 Sep 2019 20:43:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190930184335.vhz5i34wuj7i44gy@pengutronix.de>
References: <1569826393-188933-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569826393-188933-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] mtd: nand: nand_omap_gpmc: Fix mtd_info usage
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 30, 2019 at 08:53:13AM +0200, Teresa Remmet wrote:
> The mtd_info has not been set correctly in the omap gpmc probe.
> Remove the mtd_info in the private struct like it has been done in
> other nand drivers. And update the driver accordingly.
> 
> Fixes: 76b6f74c5397 ("mtd: nand: Embed struct mtd_info into struct nand_chip")
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  drivers/mtd/nand/nand_omap_gpmc.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

Applied to master, thanks

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
