Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtEDu-0007NO-LO
 for barebox@lists.infradead.org; Thu, 10 Jan 2013 09:14:55 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 10 Jan 2013 10:14:07 +0100
References: <1974332.EjF16fPj1U@yiqingliang-pc>
 <201301100936.36908.jbe@pengutronix.de> <2237706.NjDrlknk66@yiqingliang-pc>
In-Reply-To: <2237706.NjDrlknk66@yiqingliang-pc>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201301101014.08015.jbe@pengutronix.de>
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
Subject: Re: about s3c2442
To: barebox@lists.infradead.org

Hi Yi,

Yi Qingliang wrote:
> On Thursday, January 10, 2013 09:36:36 AM Juergen Beisert wrote:
> > Yi Qingliang wrote:
> > > 	I'm using barebox (based on mini2440) on my s3c2442 board,
> > >
> > > 1. flash barebox into nand: can't start normally, but can see early
> > > output on serial.
> > > 2. load it in sdram: can start normally into shell, and then I use it
> > > to boot kernel (also in sdram, also based on mini2440).
> > > the kernel hang, no output.
> > >
> > > after dig into it, I found something: add "mem=64M" into the kernel
> > > paramer, then the kernel can start.
> > >
> > > BUT:
> > > the barebox doesn't pass that paramert to kernel for mini2440,
> > > why the mini2440 kernel can start normally?
> > >
> > > how does the kernel on 2440 get the sdram size?
> >
> > There is no autodetection possible. Take a look into
> > the "arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S": This is the
> > code which runs immediately after reset. It calls the
> > function "s3c24x0_sdram_init" from the generic part, and uses hard coded
> > values from "arch/arm/boards/friendlyarm-mini2440/config.h" to setup the
> > SDRAM controller according to the attached SDRAM type.
> > When the SDRAM is up and running, it is very easy to read back the SDRAM
> > size from the SDRAM controller's registers (which is done in the
> > function "s3c24xx_get_memory_size").
> >
> > So you need routines which do the same job for your S3C2442 CPU.
>
> and the kernel? how does the kernel know the sdram size for mini2440?
> read the cpu register set by barebox?

No. The bootloader forwards this information to the kernel as an ATAG or via 
device tree. But this can only work, if also the bootloader knows the correct 
SDRAM size!

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
