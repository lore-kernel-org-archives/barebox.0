Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCOfg-0006X6-6j
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 06:47:05 +0000
Date: Thu, 22 Aug 2013 08:46:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130822064640.GT31036@pengutronix.de>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED087407D@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338ED087407D@SRV-VS06.TELEVIC.COM>
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
Subject: Re: uImage doesn't boot
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Wouter,

On Wed, Aug 21, 2013 at 02:30:17PM +0200, Vanhauwaert Wouter wrote:
> Hello
> 
> Before, I was working with Barebox 2013.05, which worked fine. Now I updated my sources to barebox 2013.07, but my kernel doesn't boot anymore. Barebox itself works as expected. When I do:
> bootm -v /mnt/tftp/uImage
>    Image Name:   Linux-2.6.35.3-01169-gbc81590-di
>    Created:      2013-06-03  13:29:30 UTC
>    OS:           Linux
>    Architecture: ARM
>    Type:         Kernel Image
>    Compression:  uncompressed
>    Data Size:    2834488 Bytes = 2.7 MiB
>    Load Address: 70008000
>    Entry Point:  70008000
> 
> Loading OS U-Boot uImage '/mnt/tftp/uImage'
> OS image is at 0x70008000-0x702bc037
> Passing control to ARM Linux uImage handler
> 
> Starting kernel at 0x70008000...
> commandline: console=ttymxc4,115200   mtdparts=mxc_nand:3M(nand0.systemkernel),-(nand0.root);m25p0:384k(m25p0.barebox)ro,128k(m25p0.bareboxenv),3M(m25p0.recoverykernel)ro,512k(m25p0.storage)
> arch_number: 3297

Your arch_number suggests you are working on a Garz & Fricke Vincell
board. Is this correct?

> 
> 
> And that's it, it doesn't do anything after it. Althought this works
> with the previous barebox. What can cause this?

I have no quick idea. What you can always do is bisecting the problem,
but what I would do before is enabling earlyprintk in the kernel and
passing 'earlyprintk' to the kernel commandline. Often this gives a good
hint what's wrong.

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
