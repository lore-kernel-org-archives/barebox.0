Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS4EM-0005F3-UY
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:20:43 +0000
Date: Wed, 19 Aug 2015 16:20:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819142020.GF18700@pengutronix.de>
References: <55CB2C1C.4000002@insync.tv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55CB2C1C.4000002@insync.tv>
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
Subject: Re: MTD with non-power-of-2 page size
To: Dave Kitchen <dave.kitchen@insync.tv>
Cc: barebox@lists.infradead.org

Hi Dave,

On Wed, Aug 12, 2015 at 12:21:00PM +0100, Dave Kitchen wrote:
> 
> I have just started to work with barebox on an Atmel at91sam9g45 processor.
> The board has an Atmel AT45DB161 dataflash configured as 528-byte page size.
> I find that eg saveenv command does not run as the page erase fails
> with EINVAL. On tracing this is fired from the page size and offset
> correction code [mtd/core,c mtd_erase_align()] which uses bit
> masking to align the size and offset. Unfortunately bit-masking does
> not work with non-power-of-2 pages. Has anyone else addressed this
> problem?
> 
> The 'trivial' exercise of replacing the bit masks by modulo [%]
> operator does not succeed as the compiler I am using (gcc!) does not
> support long-long divmod.

You could use do_div here which returns the remainder. Also see the
mtd_div_by_eb() and mtd_mod_by_eb() functions which may be what you are
looking for.

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
