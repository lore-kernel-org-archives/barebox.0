Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aG1gc-0008Gn-Bu
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 09:44:23 +0000
Date: Mon, 4 Jan 2016 10:44:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160104094400.GH13058@pengutronix.de>
References: <1450708921-8367-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1450708921-8367-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mtd: nand: Add erased page bitflip check helper
 functions
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 21, 2015 at 03:42:00PM +0100, Markus Pargmann wrote:
> This adds the bitflip check helper functions from the kernel. They are
> used to check for bitflips in erased pages and correct them in the
> buffer so that UBI can work with it. Unfortunately most nand controllers
> do not have ECC for erased pages and don't do this on their own.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_base.c | 128 +++++++++++++++++++++++++++++++++++++++++++
>  include/linux/mtd/nand.h     |   5 ++
>  2 files changed, 133 insertions(+)

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
