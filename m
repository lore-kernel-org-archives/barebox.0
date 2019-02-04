Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqk2P-00023r-U1
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 19:36:15 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so1178725wrv.3
 for <barebox@lists.infradead.org>; Mon, 04 Feb 2019 11:36:12 -0800 (PST)
MIME-Version: 1.0
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
 <20190129065549.29161-18-andrew.smirnov@gmail.com>
 <20190204135749.f2xoc6vli5od7htl@pengutronix.de>
In-Reply-To: <20190204135749.f2xoc6vli5od7htl@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 4 Feb 2019 11:35:59 -0800
Message-ID: <CAHQ1cqFVHQz0Aa2hRV8PpY=seZcBaVd_JQLhRWSkFoDk3eG3pQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 17/19] commands: md: Do not use memmap()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Feb 4, 2019 at 5:57 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, Jan 28, 2019 at 10:55:47PM -0800, Andrey Smirnov wrote:
> > Codepaths using memmap() in md.c don't do any boundary checks, so it
> > can be easily made to read past the underlying file's
> > boundary. For example on i.MX8MQ based board with 4GiB or RAM we get:
> >
> > md -b -s /dev/ram0 0xfffffff0
> > fffffff0: 00 00 00 00 00 00 08 0c  00 02 20 00 20 00 05 20   .......... . ..
> > 100000000: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000010: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000020: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000030: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000040: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000050: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000060: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000070: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000080: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 100000090: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 1000000a0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 1000000b0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 1000000c0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 1000000d0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> > 1000000e0: xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx  ................
> >
> > Drop the memmap() realted codepath, so we can realy on boundary
> > checking done by file I/O layer.
> >
> > Note that this change has a cosmetic side effect, before:
>
> With this change we can no longer see that the underlying memory cannot
> be accessed 'xx'. I find this feature very useful and don't want to
> loose it.

Sad to hear that. I was hoping we can use this as a stepping stone to
get rid of memory_display() altogether.

> If we want to do size checking we can do this, well, by checking the
> size. We could add offset/size parameters to memmap().
>

I'll leave that to next person who'll try to tackle this bug.

> So, dropped this patch for now.
>

"fs: Introduce mem_read_nofail()" should probably be dropped as well
since it was added in support of this.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
