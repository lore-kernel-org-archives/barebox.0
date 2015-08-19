Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS4Il-0006NI-JR
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:25:16 +0000
Date: Wed, 19 Aug 2015 16:24:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819142453.GI18700@pengutronix.de>
References: <1439157258-28579-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439157258-28579-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] mtd: nand: mrvl-nand: create initial empty bbt
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sun, Aug 09, 2015 at 11:54:18PM +0200, Robert Jarzmik wrote:
> When creating an initial bad blocks table, create it empty. This is
> necessary because when the bad block table blocks are not
> initialized (all ff) while some partitions are, all the blocks which
> have an OOB data not beginning with 0xff 0xff will be marked as bad
> blocks in the initial bad blocks scan.
> 
> As a consequence, any existing blocks are impossible to erase
> anymore. Fix this by fixing the BBT creation flag.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  drivers/mtd/nand/nand_mrvl_nfc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

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
