Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqhKL-0006Sv-SF
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 09:10:57 +0000
Date: Mon, 16 Jul 2012 11:10:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716091021.GH30009@pengutronix.de>
References: <4FFFEBEB.40605@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FFFEBEB.40605@web.de>
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
Subject: Re: AT91SAM9263-EK
To: Stutz Sven <stutzsven@web.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 13, 2012 at 11:35:39AM +0200, Stutz Sven wrote:
> Hello everybody,
> 
> 
> But everything without success. It's a little bit strange because
> when I execute the command
>     bootm -v /dev/nand0.kernel.bb
> First I get the following output
>         Barebox:/ bootm -v /dev/nand0.kernel.bb
>             Image Name:     Linux-3.4.0
>             OS:                      Linux
>             Architecture:     ARM
>             Type:                   Kernel Image
>             Compression:    uncompressed
>             Data Size:           2034784 Bytes = 1.9 MB
>             Load Address:    20008000
>             Entry Point:        20008000
>         err -74
>         loading os image failed with Out of memory
> 
> and if I try again the same command
>         Barebox:/ bootm -v /dev/nand0.kernel.bb
>         err -74
>         Unknown OS filetype (try -f)
> 
> also if I try to memcpy or uimage I always get this err 74.
> 
> What is this Error 74 (-- Reset level 3)?

-74 is EBADMSG, see include/asm-generic/errno.h. The nand driver throws
this when it can't read due to ecc errors. Something seems wrong with
your nand driver. I remember Jean-Christophe mentioned that the atmel
nand support is currently broken. Could you please try if either:

- barebox v2012.07.0 or
- current master

works for you?

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
