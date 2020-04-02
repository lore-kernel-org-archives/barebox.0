Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJuUF-0001Vn-TY
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 07:42:05 +0000
Date: Thu, 2 Apr 2020 09:41:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200402074154.GF27288@pengutronix.de>
References: <1833400.Y7EmvgfLYE@allan-home>
 <2790507.TRZ85U3XWg@allan-home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2790507.TRZ85U3XWg@allan-home>
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
Subject: Re: bug report: fail to boot barebox in marvell 6281 board
To: you xiaojie <84640926@qq.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 02, 2020 at 03:03:41PM +0800, you xiaojie wrote:
> the debugging message.
> 
> allan@allan-home:/media/allan/c6293bbf-6fa1-49ca-9b01-24855a810e0e/barebox-
> test/barebox$ ./scripts/kwboot -b ./images/barebox-huanshuo-hs50a.img -n 15 -B 
> 115200 -t /dev/ttyUSB0 
> Sending boot message. Please reboot the target...
> Got expected NAKs
> Sending boot image...
>  86 % [......................................................................]
>  89 % [......................................................................]
>  91 % [......................................................................]
>  93 % [......................................................................]
>  96 % [......................................................................]
>  98 % [.............................................]
> [Type Ctrl-\ + c to quit]
> uncompress.c: memory at 0x00000000, size 0x20000000
> uncompress.c: enabling MMU, ttb @ 0x1ffe4000
> uncompress.c: uncompressing barebox binary at 0x010053e0 (size 0x00057dfe) to 
> 0x1fe00000 (uncompressed size: 0x000a4ee0)
> uncompress.c: jumping to uncompressed image at 0x1fe00000
> start.c: memory at 0x00000000, size 0x20000000
> start.c: found DTB in boarddata, copying to 0x1fdfcc40
> start.c: initializing malloc pool at 0x0fefe620 (size 0x0fefe620)
> start.c: starting barebox...
> initcall-> globalvar_init+0x0/0x48

This looks all perfectly fine until here. I have no idea what goes wrong
here. You need a binary.0 file for this board, right? Are you sure that
works? Did you extract it from some working U-Boot?
It might also be a toolchain related issue. Which toolchain are you
using?

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
