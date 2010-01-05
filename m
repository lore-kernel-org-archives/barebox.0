Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NS8K3-0005Dz-6E
	for barebox@lists.infradead.org; Tue, 05 Jan 2010 12:15:39 +0000
Date: Tue, 5 Jan 2010 13:15:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100105121502.GH6923@pengutronix.de>
References: <20100104194246.GA19855@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100104194246.GA19855@darwin>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] CFI flash drivers: Fix misleading trace when
	unprotecting a sector
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Mon, Jan 04, 2010 at 08:42:46PM +0100, Matthias Kaehlcke wrote:
> When (un)protecting a flash sector with the CFI flash drivers a
> trace "protect 0x..." is generated, independently of the type of
> operation. This is misleading in case of an unprotect. Tell the truth
> when unprotecting a sector.
> 
> Matthias Kaehlcke (2):
>   CFI flash driver: Fix misleading trace when unprotecting a sector
>   New CFI flash driver: Fix misleading trace when unprotecting a sector

Ok, applied.

Thanks
 Sascha

> 
>  drivers/nor/cfi_flash.c     |    3 ++-
>  drivers/nor/cfi_flash_new.c |    4 +++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
