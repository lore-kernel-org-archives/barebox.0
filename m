Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUXnd-0001sa-5w
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 08:42:33 +0000
Date: Mon, 31 Mar 2014 10:42:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140331084209.GO17250@pengutronix.de>
References: <1394610851-721-1-git-send-email-d.lavnikevich@sam-solutions.com>
 <20140313065458.GQ17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140313065458.GQ17250@pengutronix.de>
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
Subject: Re: [PATCH] i.MX6: bbu: Barebox update support for NAND.
To: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Cc: Grigory Milev <g.milev@sam-solutions.com>, barebox@lists.infradead.org

On Thu, Mar 13, 2014 at 07:54:58AM +0100, Sascha Hauer wrote:
> Hi Dmitry,
> 
> On Wed, Mar 12, 2014 at 10:54:11AM +0300, Dmitry Lavnikevich wrote:
> > This patch implements updating barebox on i.MX6 NAND. In userspace
> > similar task is performed by freescale kobs-ng utility.
> > To use this bbu profile nand handler should be registered in board
> > code with 'imx6_bbu_internal_nand_register_handler' function.
> 
> I have the very same patch in the queue, it seems we have duplicated
> some work. As this version has some shortcomings I'll post my version as
> an alternative implementation. Also I'll try your version on a board I
> have here on which my version doesn't work (which is the reason I
> haven't posted my patch yet)

The NAND boot on our board finally works. It turned out to be a silly
bug in the DCD table. The DCD table turned off the GPMI clocks which
of course prevented the ROM from loading the rest of the image.

I just resent my version of this patch, but included the missing check
for a valid image and the confirmation question from your version.

Maybe you could give this a test on your board.

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
