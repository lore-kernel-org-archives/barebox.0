Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YD7In-000359-VI
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 08:03:14 +0000
Date: Mon, 19 Jan 2015 09:02:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150119080251.GR18220@pengutronix.de>
References: <1421506801-1506-1-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421506801-1506-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] mtd: nand: fix marvell nand driver
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sat, Jan 17, 2015 at 04:00:01PM +0100, Robert Jarzmik wrote:
> This fixes 4 small bugs :
> 
>  - too small timings
>    The calculated timings should be rounded up, ie. a minimum timing of
>    3.2 nand clock cycles should be programmed as a 4 cycles timing, and
>    not as 3 nand clock cycles
> 
>  - the interrupts should be masked all the time
>    Writing 0 to NDCR unmasked interrupts, which is unnecessary and fools
>    the linux kernel pxa3xx driver which is not yet hardened enough.
> 
>  - the command should only be launched once the controller is ready
>    This fixes transient bugs where a command is not actually
>    launched. The WRCMDREQ bit is asserted after setting NDCR_ND_RUN bit
>    once the NFC is ready to acquire a command.
> 
>  - column calculation
>    Column number was divided by 2 in 16 bits flash devices. Even if this
>    is correct for NAND array addressing, it is incorrect for READID, and
>    prevents an ONFI scan identification (as address is 0x10 instead of
>    the 0x20 required by ONFI).
> 
> All these bugs except the second are drained from the linux kernel driver.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  drivers/mtd/nand/nand_mrvl_nfc.c | 57 ++++++++++++++++++++++++++--------------
>  1 file changed, 37 insertions(+), 20 deletions(-)

Squashed into the original commit.

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
