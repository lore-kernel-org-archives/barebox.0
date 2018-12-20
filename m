Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZt8l-0002m0-8A
 for barebox@lists.infradead.org; Thu, 20 Dec 2018 07:53:09 +0000
Date: Thu, 20 Dec 2018 08:52:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181220075252.xn22ep2gcoyo7635@pengutronix.de>
References: <1545222473-22214-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1545222473-22214-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH for next] mtd: nand: nand_omap_gpmc: Fix GPMC_BCH_RESULT
 offset
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 19, 2018 at 01:27:53PM +0100, Teresa Remmet wrote:
> Using BCH rom code mode we start calculating with GPMC_BCH_RESULTx_1.
> Fix offset for correct error correction.
> 
> Fixes: d4077860c902 ("mtd: nand: omap: unbreak BCH8 support")

This controller is really strange sometimes. Indeed, tested it and you
are right. I squashed it into the original commit breaking it.

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
