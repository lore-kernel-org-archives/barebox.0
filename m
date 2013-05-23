Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfVYy-0004tr-JA
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:28:13 +0000
Date: Thu, 23 May 2013 15:27:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130523132749.GQ32299@pengutronix.de>
References: <1369241656-9219-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369241656-9219-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] mtd-core: fix mtd erase operation for non-uniform flashes.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, May 22, 2013 at 05:54:16PM +0100, Renaud Barbier wrote:
> This patch supports the erasing of CFI flash with non-uniform sector.
> When more than one erase region exists, the mtd_erasesize function
> assigns the erase size of the sector to the erase_info structure.
> 
> The problem was discovered when erasing /dev/env0 on my PPC board.
> This is a partition of size 0x8000 at offset 0 of a 32MB Intel compatible
> flash with a bottom boot block i.e 4 32KB sectors followed by 255
> 128KB sectors.
> 
> barebox> unprotect /dev/env0
> barebox> erase /dev/env0
> cfi_erase: start = 0x0, end = 0x3, count = 0x20000
> Flash erase error at address fe008000
> Block Erase Error.
> Block locked.
> erase: I/O error
> 
> The error above is that a count of 0x20000 is passed instead of 0x8000
> by mtd_op_erase. This is because the code does not take into account
> multiple erase regions.
> 
> After taking into account the erase regions, only the first sector is
> erased:
> 
> barebox> unprotect /dev/env0
> barebox> erase /dev/env0
> cfi_erase: start = 0x0, end = 0x0, count = 0x8000
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>

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
