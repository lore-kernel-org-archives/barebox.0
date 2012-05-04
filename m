Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQHC6-0003yp-LM
 for barebox@lists.infradead.org; Fri, 04 May 2012 12:01:07 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 4 May 2012 14:00:18 +0200
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <201205041313.42172.jbe@pengutronix.de> <4FA3C036.3050706@gmail.com>
In-Reply-To: <4FA3C036.3050706@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205041400.18168.jbe@pengutronix.de>
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
> On 04.05.2012 17:13, Juergen Beisert wrote:
> > AFAIR the MLC ECC generator is different in its handling. At least it is
> > much slower than the 1 bit ECC generator and so the routines must wait
> > the result to continue on the block data.
>
> Correct.
>
> This is achieved by adding register polling loop at the beginning of
> corresponding calculate() function. The rest of function is almost the
> same, just the number of ECC bytes is larger.
>
> The S3C2440 has a hardware ECC corrector which we do not use yet.

AFAIK only a hardware ECC _calculator_, but no correction unit. It must be 
done in software.

> >> I suggest to support both new and old hardware in the same code. Why
> >> not? It is 95% the same.
> >
> > Instead of making the S3c2440 NAND driver more and more complicated (what
> > is the benefit of all in one driver?) I would vote for fading it out (as
> > its hardware do not change anymore). And creating a new driver for all
> > more recent CPUs with MLC support.
> >
> > My idea was also to not support simple ECC on these newer CPUs anymore.
> > Using the 8 bit reed-solomon checksum would be an improvement for SLCs as
> > well (and also their OOB sizes are large enough to store the 8 bit
> > checksums). And at least if we want to boot from NAND we cannot continue
> > to use simple ECC checksums anymore.
>
> Maybe that's right. But simple ECC support is very simple anyway,
> harmless to keep.

Or _useless_ to keep ;)

> And looks like some low-cost Chinese boards still have SLC even with newer
> CPUs.

The better the checksum the saver your NAND data content is. That is why I 
want to use reed-solomon checksums even for SLCs (and keep in mind: you 
_must_ use 8 bit reed-solomon checksums if you want to boot from NAND).

> [...]
> BTW, do we want software ECC support too?

No. Nobody needs it and nobody wants it (ways to slow).

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
