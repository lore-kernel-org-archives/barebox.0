Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7gME-0002Jz-JH
 for barebox@lists.infradead.org; Mon, 08 May 2017 10:57:40 +0000
Date: Mon, 8 May 2017 12:57:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170508105716.a3hzzoqop2fsl5bm@pengutronix.de>
References: <890269e4-1c96-691c-065b-82ad619b3140@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <890269e4-1c96-691c-065b-82ad619b3140@phytec.de>
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
Subject: Re: GCC 6.3 Linker error
To: Daniel Schultz <d.schultz@phytec.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, May 05, 2017 at 05:11:30PM +0200, Daniel Schultz wrote:
> Hi everyone,
> 
> when I build the Barebox with GCC 6.3 and am335x_defconfig, I get the
> following error:
> 
> 
> |   LD      commands/built-in.o
> |   LD      drivers/usb/built-in.o
> |   PBLLD   drivers/usb/built-in-pbl.o
> |   LD      fs/built-in.o
> |   PBLLD   fs/built-in-pbl.o
> |   LD      drivers/mtd/ubi/built-in.o
> |   LD      drivers/mtd/built-in.o
> |   PBLLD   drivers/mtd/built-in-pbl.o
> |   LD      drivers/built-in.o
> |   PBLLD   drivers/built-in-pbl.o
> |   GEN     .version
> |   CHK     include/generated/compile.h
> |   UPD     include/generated/compile.h
> |   CC      common/version.o
> |   LD      common/built-in.o
> |   LD      .tmp_barebox1
> | arm-phytec-linux-gnueabi-ld: .tmp_barebox1: Not enough room for program
> headers, try linking with -N
> | arm-phytec-linux-gnueabi-ld: final link failed: Bad value
> | make[2]: *** [.tmp_barebox1] Error 1
> | make[1]: *** [_all] Error 2
> | make: *** [all] Error 2
> | ERROR: Function failed: do_compile (log file is located at /home/schultz/yocto/PD17.2.0/build/tmp/work/phyboard_wega_am335x_2-phytec-linux-gnueabi/barebox/2017.03.0-phy1-r7.0/temp/log.do_compile.23997)
> ERROR: Task (/home/schultz/yocto/PD17.2.0/sources/poky/../meta-phytec/recipes-bsp/barebox/barebox_2017.03.0-phy1.bb:do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 497 tasks of which 495 didn't need to be
> rerun and 1 failed.
> NOTE: Writing buildhistory
> 
> 
> has somebody else faced with this problem? I figured out that linking with
> "-nmagic" fix this problem.

This was reported here: https://www.spinics.net/lists/u-boot-v2/msg29899.html
The patch should fix this. It was never sent for inclusion in barebox
though, so I haven't applied it yet.
If you can test this patch successfully you could just resend the patch
so we get this solved in mainline.

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
