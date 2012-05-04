Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQGT2-0002ql-Bg
 for barebox@lists.infradead.org; Fri, 04 May 2012 11:14:33 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 4 May 2012 13:13:42 +0200
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <201205041158.25104.jbe@pengutronix.de> <4FA3B493.7030002@gmail.com>
In-Reply-To: <4FA3B493.7030002@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205041313.42172.jbe@pengutronix.de>
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
> On 04.05.2012 15:58, Juergen Beisert wrote:
> > Alexey Galakhov wrote:
> >> On 03.05.2012 23:41, Juergen Beisert wrote:
> >>>> create mode 100644 arch/arm/mach-samsung/include/mach/s3c-nand.h
> >>>> delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
> >>>
> >>> That is a really bad idea. I just renamed these files at January 2012
> >>> to reflect their CPU (refer b29b8f43d56b62e406349a5cf1ed56f17454c1f7).
> >>> Why do you revert this change again? The NAND controller in the S3C24XX
> >>> CPU is unique to this CPU. The NAND controller in the S3C6410 differs
> >>> from it, and I guess the same is true in the S5 CPU. So, the newer CPUs
> >>> need their own NAND drivers.
> >>>
> >>> What is the sense of renaming these files?
> >>
> >> In fact, exactly the opposite is true. The NAND controller in S5PV210 is
> >> almost exactly the same as in S3C24xx. The only difference is the
> >> numbering of registers. Also S5P suports 1-bit and 4-bit HW ECC while
> >> S3C has only 1-bit.
> >
> > Does the S5P not support 8 bit ECC? That would be a step backwards and
> > would make it useless for recent MLC NAND devices.
>
> It has two ECC modes, SLC and MLC.
>
> The SLC mode is exactly the same as S3C2440. The MLC mode has "4-8-16-32
> bit support". Looks like this is achieved by using the same 4-bit
> hardware calculator.
>
> >> The algorithm is the same, even s3c2440_nand_read_buf() works correctly.
> >
> > These routines are useless for NANDs of type MLC which are the standard
> > today.
>
> According to the datasheet, the only difference between SLC and MLC
> handling from the software point of view is ECC calculation. The block
> reading is exactly the same, just reading the data register multiple
> times. The ECC engine in both SLC and MLC modes works just like S3C2440.
> The only differnce is that one has to set ECC data direction bit prior
> to operation.

AFAIR the MLC ECC generator is different in its handling. At least it is much 
slower than the 1 bit ECC generator and so the routines must wait the result 
to continue on the block data.

> >> S3C6410 has the same controller as well.
> >
> > No it hasn't. Believe me. Using the old 1 bit ECC (and also the 4 bit
> > ECC) makes no sense any more. Even the built-in iROM forces the 8 bit ECC
> > mode if you want to boot it from NAND. And I guess it is the same on the
> > S5P CPU.
>
> Hm, looks like my board is not the case. Anyway, this seems to be just
> adding one more HW specific ECC function and not a complete rewrite.
>
> There is a Linux driver from Samsung, named "s3c_nand.c", found in
> S5PVxx kernel patches here and there (not in mainstream). It works for
> S3C2416 and up and supports SLC and MLC. I use it for reference.

I know a similar driver for the S3C6410 CPU.

> I suggest to support both new and old hardware in the same code. Why
> not? It is 95% the same.

Instead of making the S3c2440 NAND driver more and more complicated (what is 
the benefit of all in one driver?) I would vote for fading it out (as its 
hardware do not change anymore). And creating a new driver for all more 
recent CPUs with MLC support.

My idea was also to not support simple ECC on these newer CPUs anymore. Using 
the 8 bit reed-solomon checksum would be an improvement for SLCs as well (and 
also their OOB sizes are large enough to store the 8 bit checksums). And at 
least if we want to boot from NAND we cannot continue to use simple ECC 
checksums anymore.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
