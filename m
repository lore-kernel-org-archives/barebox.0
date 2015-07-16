Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdge-0005yI-Gx
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:34:33 +0000
Date: Thu, 16 Jul 2015 09:34:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150716073410.GB18700@pengutronix.de>
References: <1436968074-36098-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436968074-36098-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM: AM335x: dts: Fix wrong GPMC size mapping for
 omaps
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 15, 2015 at 03:47:53PM +0200, Daniel Schultz wrote:
> Patch is based on Linux upstream patch:
> commit e2c5eb78a3cc9b0d69ae924c33da50a4cd6d1fa4
> Author: Tony Lindgren <tony@atomide.com>
> 
> The GPMC binding is obviously very confusing as the values
> are all over the place. People seem to confuse the GPMC partition
> size for the chip select, and the device IO size within the GPMC
> partition easily.
> 
> The ranges entry contains the GPMC partition size. And the
> reg entry contains the size of the IO registers of the
> device connected to the GPMC.
> 
> Let's fix the issue according to the following table:
> 
> Device GPMC partition size Device IO size
> connected in the ranges entry in the reg entry
> 
> NAND 0x01000000 (16MB) 4
> 16550 0x01000000 (16MB) 8
> smc91x 0x01000000 (16MB) 0xf
> smc911x 0x01000000 (16MB) 0xff
> OneNAND 0x01000000 (16MB) 0x20000 (128KB)
> 16MB NOR 0x01000000 (16MB) 0x01000000 (16MB)
> 32MB NOR 0x02000000 (32MB) 0x02000000 (32MB)
> 64MB NOR 0x04000000 (64MB) 0x04000000 (64MB)
> 128MB NOR 0x08000000 (128MB) 0x08000000 (128MB)
> 256MB NOR 0x10000000 (256MB) 0x10000000 (256MB)
> 
> Let's also add comments to the fixed entries while at it.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>

Applied this one, thanks

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
