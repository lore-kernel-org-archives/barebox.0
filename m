Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmkuq-0000iu-Bi
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 19:43:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id f188so4318783wmf.5
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2019 11:43:55 -0800 (PST)
MIME-Version: 1.0
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
 <20190123011338.32517-7-andrew.smirnov@gmail.com>
 <20190124084806.2c2mymykqmrwg5xs@pengutronix.de>
In-Reply-To: <20190124084806.2c2mymykqmrwg5xs@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 24 Jan 2019 11:43:43 -0800
Message-ID: <CAHQ1cqGM0vzNkhbpdOJbC_90jz84oj=DGxGwxyAX42pzrQUHzg@mail.gmail.com>
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
Subject: Re: [PATCH 6/7] fs: Add support for files larger than MAX_LFS_FILESIZE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 24, 2019 at 12:48 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Jan 22, 2019 at 05:13:37PM -0800, Andrey Smirnov wrote:
> > On 64-bit platforms /dev/mem exceeds the size supported by loff_t and
> > needs special treatment within the rest of FS API. Specifically
> > lseek() needs to be modified to make sure it does the right thing.
> >
> > Prievious attempt at fixing this issue by using IS_ERR_VALUE()
> >
> > e10efc5080 ("fs: fix memory access via /dev/mem for MIPS64")
> >
> > doesn't really work 100% on 64-bit platforms, becuase it still leaves
> > out a number of perfectly valid offsets (e.g. "md 0xffffffffffffff00"
> > doesn't work) . Moreso it breaks lseek() on 32-bit platforms, since
> > IS_ERR_VALUE will retrurn true for any offset that is >= (unsigned
> > long) -MAX_ERRNO.
> >
> > In order to fix this issue on both 32 and 64 bit platforms, introduce
> > DEVFS_UNBOUNDED flag that cdevs can use to denote that they span all
> > 64-bit address space and effectively have not limits. To propagate
> > that info to FS layer, add "unbounded" boolean to FILE. As a last step
> > modify lseek() to be aware of that field and do the right checks in
> > that case.
> >
> > Note, that since loff_t has no problem covering all of address space
> > on 32-bit platforms, DEVFS_UNBOUNDED is defined to expand into 0 and
> > not be settable there.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > @@ -422,20 +422,41 @@ loff_t lseek(int fildes, loff_t offset, int whence)
>
> lseek takes a signed loff_t argument. We store the file size in an also
> signed variable. An lseek to the end of a file covering the whole 64bit
> address space (0xffffffffffffffff) will always return an error as
> (loff_t)-1 is both the position and the error code.
>
> I think instead of casting loff_t to an unsigned type whenever we find
> it convenient and then still not having enough bits for storing the
> filesize of 0x10000000000000000 we should rather face the fact that our
> maximum filesize is only half of the 64bit address space.
>
> To put it differently we should think about creating a second /dev/mem
> for the upper half of the 64bit address space.
>

OK, I was trying to preserve as much backwards compatibility as
possible in v1. If creating a separate device is on the table, I'd be
more that happy to make that change in v2, since it'll make a number
of codepaths simpler and saner.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
