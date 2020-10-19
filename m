Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUR6q-0003Rc-JC
 for barebox@lists.infradead.org; Mon, 19 Oct 2020 09:05:41 +0000
Date: Mon, 19 Oct 2020 11:05:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201019090538.GQ13710@pengutronix.de>
References: <1602838156.455713761@f185.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1602838156.455713761@f185.i.mail.ru>
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
Subject: Re: ARM bootm regression
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Fri, Oct 16, 2020 at 11:49:16AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Found a regression in arm/lib32/bootm.c after a patch
> "ARM: bootm: make sure we place the kernel in free memory".
> 
> The initial memory size for the board is set to 8 MB (before reading the real value from DT),
> so the stack, malloc_space, etc. are placed in the initial 8M space.
> Then get_kernel_addresses() gets the real SDRAM area (for my board it is 64M),
> but decreases this size by the first children size (malloc_space),
> so mem_end is incorrect in this case.
> 
> barebox 2020.05.0-00393-gf5e96a296-dirty #80 Thu Oct 15 13:08:54 MSK 2020
> Board: Mega-Milas Informer EP7312
> cfi_flash 90000000.nor@0,0.of: found cfi flash at 0x90000000, size 32 MiB
> i2c-gpio i2c0.of: using pins 16 (SDA) and 35 (SCL)
> Hit any to stop autoboot:    1
> Booting entry 'nor'
> Loading ARM Linux zImage '/dev/nor0.kernel'

The problem might be that you have the kernel in a raw flash partition.
I think we have problems where we somewhere use the partition size where
we should really use the zImage size. The zImage size must be taken from
the zImage header while we just make a stat() on the file which happens
to be the whole partition for you.

Could you try and bootm the same zImage from ramfs?

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
