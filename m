Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y9c9B-0000aJ-N6
 for barebox@lists.infradead.org; Fri, 09 Jan 2015 16:10:50 +0000
Date: Fri, 9 Jan 2015 17:10:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150109161024.GK23940@pengutronix.de>
References: <1420796497-28360-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420796497-28360-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] resource: dev_request_mem_region: fix return value for
 MIPS
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 09, 2015 at 12:41:37PM +0300, Antony Pavlov wrote:
> The commit
> 
>     commit 0d7a21334536cb36b3c9b64d868acc55aec41332
>     Author: Antony Pavlov <antonynpavlov at gmail.com>
>     Date:   Wed Sep 10 11:42:19 2014 +0400
> 
>         MIPS: dts: use physical addresses (as Linux does)
> 
>         With IOMEM() adapted for MIPS we can use physical addresses
>         in device tree reg property.
> 
> has switched MIPS dts files to physical addresses usage.
> 
> The patch was tested on qemu, but qemu malta board is tolerant
> of using physical addresses for accesing to device
> (Ingenic JZ4755 and JZ4780 processors are tolerant too!).
> But other CPUs (e.g. Loongson LS1B) can throw an exception
> in this situation.
> 
> Additional physical address to virtual address translation
> on MIPS is needed.
> 
> We already have this in include/common.h
> 
>     #if defined(CONFIG_MIPS)
>     #include <asm/addrspace.h>
> 
>     #define IOMEM(addr) ((void __force __iomem *)CKSEG1ADDR(addr))
>     #else
>     #define IOMEM(addr) ((void __force __iomem *)(addr))
>     #endif
> 
> So use IOMEM() to fix dev_request_mem_region() return value.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

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
