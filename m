Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQGsO-0003OH-OU
 for barebox@lists.infradead.org; Fri, 04 May 2012 11:40:45 +0000
Received: by lagy4 with SMTP id y4so2435755lag.36
 for <barebox@lists.infradead.org>; Fri, 04 May 2012 04:40:42 -0700 (PDT)
Message-ID: <4FA3C036.3050706@gmail.com>
Date: Fri, 04 May 2012 17:40:38 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1336050844-7043-1-git-send-email-agalakhov@gmail.com>
 <201205041158.25104.jbe@pengutronix.de> <4FA3B493.7030002@gmail.com>
 <201205041313.42172.jbe@pengutronix.de>
In-Reply-To: <201205041313.42172.jbe@pengutronix.de>
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
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 04.05.2012 17:13, Juergen Beisert wrote:
> AFAIR the MLC ECC generator is different in its handling. At least it is much 
> slower than the 1 bit ECC generator and so the routines must wait the result 
> to continue on the block data.

Correct.

This is achieved by adding register polling loop at the beginning of
corresponding calculate() function. The rest of function is almost the
same, just the number of ECC bytes is larger.

The S3C2440 has a hardware ECC corrector which we do not use yet.

>> I suggest to support both new and old hardware in the same code. Why
>> not? It is 95% the same.
> 
> Instead of making the S3c2440 NAND driver more and more complicated (what is 
> the benefit of all in one driver?) I would vote for fading it out (as its 
> hardware do not change anymore). And creating a new driver for all more 
> recent CPUs with MLC support.
> 
> My idea was also to not support simple ECC on these newer CPUs anymore. Using 
> the 8 bit reed-solomon checksum would be an improvement for SLCs as well (and 
> also their OOB sizes are large enough to store the 8 bit checksums). And at 
> least if we want to boot from NAND we cannot continue to use simple ECC 
> checksums anymore.

Maybe that's right. But simple ECC support is very simple anyway,
harmless to keep. And looks like some low-cost Chinese boards still have
SLC even with newer CPUs.

I think that the new driver with MLC support with MLC support off will
be able to support older CPUs too. Probably with one exception for
S3C2410 which has no NFCONT. If so, there's no reason to keep the old
driver at all. Am I right?

BTW, do we want software ECC support too? I added sw ecc to my working
copy of NAND driver just for debugging, and now I think about keeping it.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
