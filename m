Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-114.126.com ([220.181.15.114])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYsro-0000Lf-7o
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 06:24:02 +0000
Date: Thu, 15 Nov 2012 14:30:11 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121115063011.GB31296@greatfirst.com>
References: <20121115031146.GA31296@greatfirst.com>
 <CAA4bVAFqCPkRGrz1oENQ3s9k99o=wPVq1RWSdiRJjeY1Mgkt3g@mail.gmail.com>
 <CAA4bVAEhhLxXfzNZ_mBP_=W-TNOHOkEnwF=vgBMBy16ezd2_NA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEhhLxXfzNZ_mBP_=W-TNOHOkEnwF=vgBMBy16ezd2_NA@mail.gmail.com>
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
Subject: Re: how to download a file to specified mem location using tftp
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

In message <CAA4bVAEhhLxXfzNZ_mBP_=W-TNOHOkEnwF=vgBMBy16ezd2_NA@mail.gmail.com> Antony Pavlov wrote:
> >> tftp command only have filename args, Now I want
> >> download a file to mem loctaion, ex 0x21f00000.
> >> How to do that?
> >
> > AFAIR,
> >  memcpy -s /mnt/tftp/file -d /dev/mem 0 <memaddr> <size>
> >
> > (but /dev/mem is default value for -d).
> >
>
> If you have tftp command only (old barebox without tftp filesystem support)
> then use
>
>  barebox:/ tftp your_file
>  barebox:/ memcpy -s your_file 0 0x21f00000 <file size>
>

Thanks, I'm a barebox beginner.

So how to mount tftp to /mnt/tftp

my barebox version is 2012.10.0


-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
