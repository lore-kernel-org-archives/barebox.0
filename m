Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpIm2-0002vG-FJ
 for barebox@lists.infradead.org; Thu, 31 Jan 2019 20:17:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id b11so3861101wmj.1
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 12:17:21 -0800 (PST)
MIME-Version: 1.0
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-19-andrew.smirnov@gmail.com>
 <20190129084847.spkfbeksb7xne46g@pengutronix.de>
 <CAHQ1cqGm+VUgZDScpPVTDuPX89FNSr1JiecqBah_o2piNT-ayg@mail.gmail.com>
 <20190131105452.smetw36klsxmvtaq@localhost.localdomain>
In-Reply-To: <20190131105452.smetw36klsxmvtaq@localhost.localdomain>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 12:17:08 -0800
Message-ID: <CAHQ1cqH=nccB4+ztNE+LfRus3E+6N=6SC3a1pkkFgeoYkVhYoQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 18/19] drivers: mem: Create file to access second half
 of 64-bit memory
To: Peter Mamonov <pmamonov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 31, 2019 at 2:55 AM Peter Mamonov <pmamonov@gmail.com> wrote:
>
> Hello, Andrey,
>
> > In order to allow access to second half of address space on 64-bit
> > machines, add code that creates /dev/highmem dedicated for that.
> >
> > Note that due to maximum file size being limited to MAX_LFS_FILESIZE
> > or 0x7fff_ffff_ffff_ffff bytes at addresses 0x7fff_ffff_ffff_ffff and
> > 0xffff_ffff_ffff_ffff cannot be access through /dev/mem and
> > /dev/hightmem correspondingly.
>
> Does it imply using `-s /dev/highmem` argument when accessing addresses beyond
> MAX_LFS_FILESIZE?

Yes, it does.

> That's not very convenient:
>
>         $ git grep -l /dev/mem
>         commands/crc.c
>         commands/digest.c
>         commands/disasm.c
>         commands/md.c
>         commands/memcmp.c
>         commands/memcpy.c
>         commands/memset.c
>         commands/mm.c
>         commands/mw.c
>

I don't disagree, but there isn't much that can be done about that
AFAICT. The first version of this fix kept single /dev/mem file, but
ended up introducing quite a bit of special cases all over the FS
layer, so it was rejected. The only two options to make it more
convenient that I can see would be to either modify "/dev/mem" users
to make "/dev/highmem" substitution automatically based on offset they
are given, or, assuming it is possible, create a mapping that would
expose all of the interesting registers on MIPS64 in the lower half of
64-bit address space.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
