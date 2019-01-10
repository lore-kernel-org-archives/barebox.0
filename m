Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghVl4-0006q0-25
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 08:32:11 +0000
Date: Thu, 10 Jan 2019 09:32:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190110083207.gh5ppkin6suvshps@pengutronix.de>
References: <20190109112814.GA918@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190109112814.GA918@lenoch>
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
Subject: Re: [PATCH] mtd: core: Fix erase area alignment for non power of 2
 erasesize
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 09, 2019 at 12:28:14PM +0100, Ladislav Michl wrote:
> Devices as AT45DB161 DataFlash uses non power of two page size (528)
> while present alignment algorithm relies on erasesize being power
> of 2.
> Fix that by introducing helper functions rounding to any multiply.
> Note that logic is sligthly changed to be consistent as ending
> address is moved forward to include also last byte meant to be
> erased while previous implementation moved it backward.
> 
> Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> ---
>  drivers/mtd/core.c     | 28 ++++++++++++++++++++++------
>  include/linux/kernel.h |  5 +++++
>  2 files changed, 27 insertions(+), 6 deletions(-)

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
