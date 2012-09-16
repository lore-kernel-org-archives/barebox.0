Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDLUH-0005sx-4i
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 20:30:42 +0000
Date: Sun, 16 Sep 2012 22:30:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916203037.GK6180@pengutronix.de>
References: <CAM8FrKKCQE7TkEEP3_2GwCA+nDYYY+C-SaYKDGiF_oCovkYSOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM8FrKKCQE7TkEEP3_2GwCA+nDYYY+C-SaYKDGiF_oCovkYSOQ@mail.gmail.com>
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
Subject: Re: Problem with nand_mxs driver
To: Marcus Folkesson <marcus.folkesson@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Sep 16, 2012 at 01:06:34PM +0200, Marcus Folkesson wrote:
> Hi there,
> 
> We are currently using a iMX23 EVK board while waiting for our "real" hardware.
> Unfortunately, we are not getting the NAND-flash to work properly.
> The NAND-flash is a 4GiB chip from Samsung, K9HCG08U1D.
> 
> After we applied the patch "[PATCH] mtd: nand: extend NAND flash
> detection to new MLC chips" (please see mailing list), the NAND-flash
> shows up with right page- and oob-size.
> But we are getting error code EBADMSG  (-74) when trying to read from
> the NAND-flash.
> The error shows up roughly every other time we accessing the chip for reading.
> 
> See the dump below:

[...]

> 
> 
> Status description:
> 0x00, No errors found
> 0xFF, Block is erased
> 0xFE, Block is uncorrectable
> 
> If I print the status and the read fails, It is allways status[0] and
> status[1] that is == 0xFE.
> The other statuses are.... 0xFF (block erased?!) as i remember,  will
> check this at work tomorrow.
> 
> I find it _very_ unlikely that the first two blocks have errors on all
> partitions on different EVK boards.
> 
> 
> Is it something wrong with the BCH handling in the driver?
> Is it an effect of the zeroed ecc-layout? (see probe-function)
> 
> Does anyone recognize the problem or have a guess of what it could be?

First of all this driver is (at least here @pengutronix) only tested on
an i.MX28.
The gpmi nand controller unfortunately does not read the nand main+oob
area in the order it is supposed to. This means that the (factory) bad
block marker is not at the place the mtd layer expects it. To work
around this the gpmi driver swaps the place the factory bad block marker
with another byte on the nand.

This means that all code accessing the flash must agree which bytes to
swap. Which code has written the pages that now seem bad? Was it barebox
or a FSL U-Boot? Can barebox read the pages that it has written itself?

Grep for 'swap' in the nand drivers.

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
