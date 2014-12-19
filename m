Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1r30-0003Wc-4C
 for barebox@lists.infradead.org; Fri, 19 Dec 2014 06:28:23 +0000
Date: Fri, 19 Dec 2014 07:27:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141219062756.GW30369@pengutronix.de>
References: <CAO6XYUuZuSt7dNUq_EH_nc8_E9-o=fMu702sJSQcvBn4O83Fdg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO6XYUuZuSt7dNUq_EH_nc8_E9-o=fMu702sJSQcvBn4O83Fdg@mail.gmail.com>
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
Subject: Re: imx6: Nand flash BB erase issue/question...
To: "Michael D. Burkey" <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 17, 2014 at 03:05:58PM -0500, Michael D. Burkey wrote:
> I have run into an issue that I wonder if anyone else has seen.
> 
> We have our kernel stored in NAND flash and have it partition and have
> the nand0.kernel and nand0.kernel.bb entries.
> 
> As I understand it, the nand0.kernel.bb entry is the correct one to
> use for day to day operations as it handles bad blocks.
> 
> The issue comes when I try erasing the kernel prior to updating it on
> a SOM with a known bad block inside the kernel area.
> 
> Doing an erase of nand0.kernel works fine and skips the bad block.
> 
> Doing an erase of nand0.kernel.bb however generates an error message:
> 
> nand: nand_erase_nand: attempt to erase a bad block at page
> 0x00000bc0
> 
> It then exits with an "erase: I/O error".
> 
> Specifically, it looks like an attempt to erase a .bb device calls
> nand_erase_nand() (in nand_base.c) which then uses
> nand_block_checkbad() to determine if the block is bad and then just
> generates an error exit rather than attempting to skip the bad block.
> 
> To me, this seems wrong.
> 
> Shouldn't an attempt to erase a .bb NAND device actually HANDLE the
> bad blocks by skipping them rather than simply erroring out?

You are absolutely right. This must be a bug.

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
