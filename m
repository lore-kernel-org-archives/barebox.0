Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQFID-00073z-JM
 for barebox@lists.infradead.org; Fri, 04 May 2012 09:59:18 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 4 May 2012 11:58:24 +0200
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <201205031941.00662.jbe@pengutronix.de> <4FA3A3BE.2040607@gmail.com>
In-Reply-To: <4FA3A3BE.2040607@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205041158.25104.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/4] Fine split S3C arch dependencies from generic code
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Alexey Galakhov wrote:
> On 03.05.2012 23:41, Juergen Beisert wrote:
> >> create mode 100644 arch/arm/mach-samsung/include/mach/s3c-nand.h
> >> delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
> >
> > That is a really bad idea. I just renamed these files at January 2012 to
> > reflect their CPU (refer b29b8f43d56b62e406349a5cf1ed56f17454c1f7). Why
> > do you revert this change again? The NAND controller in the S3C24XX CPU
> > is unique to this CPU. The NAND controller in the S3C6410 differs from
> > it, and I guess the same is true in the S5 CPU. So, the newer CPUs need
> > their own NAND drivers.
> >
> > What is the sense of renaming these files?
>
> In fact, exactly the opposite is true. The NAND controller in S5PV210 is
> almost exactly the same as in S3C24xx. The only difference is the
> numbering of registers. Also S5P suports 1-bit and 4-bit HW ECC while
> S3C has only 1-bit. 

Does the S5P not support 8 bit ECC? That would be a step backwards and would 
make it useless for recent MLC NAND devices.

> The algorithm is the same, even s3c2440_nand_read_buf() works correctly.

These routines are useless for NANDs of type MLC which are the standard today.

> S3C6410 has the same controller as well.

No it hasn't. Believe me. Using the old 1 bit ECC (and also the 4 bit ECC) 
makes no sense any more. Even the built-in iROM forces the 8 bit ECC mode if 
you want to boot it from NAND. And I guess it is the same on the S5P CPU.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
