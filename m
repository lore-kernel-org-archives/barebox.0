Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hH35h-0006vC-Mi
 for barebox@lists.infradead.org; Thu, 18 Apr 2019 09:12:23 +0000
Received: by mail-lf1-x141.google.com with SMTP id d12so1059170lfk.6
 for <barebox@lists.infradead.org>; Thu, 18 Apr 2019 02:12:21 -0700 (PDT)
Date: Thu, 18 Apr 2019 12:12:07 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20190418091206.b4uau4xk4oodnqdn@localhost.localdomain>
References: <20190417101815.29318-1-pmamonov@gmail.com>
 <CAHQ1cqHOGf8C8CPeUGxmQX-5zzZqaNXWmAFdEemO2989RZki+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHOGf8C8CPeUGxmQX-5zzZqaNXWmAFdEemO2989RZki+Q@mail.gmail.com>
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
Subject: Re: [PATCH] usb: storage: fix capacity detection on 64 bit systems
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi, Andrey,

On Wed, Apr 17, 2019 at 12:11:57PM -0700, Andrey Smirnov wrote:
> On Wed, Apr 17, 2019 at 3:18 AM Peter Mamonov <pmamonov@gmail.com> wrote:
> >
> 
> Peter:
> 
> This was fixed in
> http://lists.infradead.org/pipermail/barebox/2019-March/037526.html.
> Latest next should contain that patch.

Sorry, I missed this message as well as `%lx` in my patch :)

Thanks,
Peter

> 
> Thanks,
> Andrey Smirnov
> 
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  drivers/usb/storage/usb.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> > index 8218bb2a71..18f69f8478 100644
> > --- a/drivers/usb/storage/usb.c
> > +++ b/drivers/usb/storage/usb.c
> > @@ -316,7 +316,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
> >  {
> >         struct us_data *us = pblk_dev->us;
> >         ccb us_ccb;
> > -       unsigned long *pcap;
> > +       u32 *pcap;
> >         int result = 0;
> >
> >         us_ccb.pdata = us_io_buf;
> > @@ -357,7 +357,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
> >                 result = -EIO;
> >                 goto Exit;
> >         }
> > -       pcap = (unsigned long *)us_ccb.pdata;
> > +       pcap = (u32 *)us_ccb.pdata;
> >         US_DEBUGP("Read Capacity returns: 0x%lx, 0x%lx\n", pcap[0], pcap[1]);
> >         pblk_dev->blk.num_blocks = usb_limit_blk_cnt(be32_to_cpu(pcap[0]) + 1);
> >         if (be32_to_cpu(pcap[1]) != SECTOR_SIZE)
> > --
> > 2.20.1
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
