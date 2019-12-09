Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFQU-0007Fv-9g
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 09:33:59 +0000
Date: Mon, 9 Dec 2019 10:33:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191209093356.jrqra7oedczuxph5@pengutronix.de>
References: <20190923113634.22746-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923113634.22746-1-cleger@kalray.eu>
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
Subject: Re: [PATCH] mtd: spi-nor: fix wrong value for CR_QUAD_EN_SPAN
To: Clement Leger <cleger@kalray.eu>
Cc: barebox <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi Clement,

On Mon, Sep 23, 2019 at 01:36:34PM +0200, Clement Leger wrote:
> Durign a previous patch, 0x2 was mistakenly converted to BIT(2) whereas
> it should be BIT(1).
> ---
>  include/linux/mtd/spi-nor.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied now, thanks.

Note you sent the mail to barebox-bounces@lists.infradead.org instead
of barebox@lists.infradead.org, so the patch never made it to the list.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
