Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gevsH-0005iH-2d
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 05:48:58 +0000
Date: Thu, 3 Jan 2019 06:46:47 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190103054647.GA4625@ravnborg.org>
References: <20190102202611.6530-1-sam@ravnborg.org>
 <20190102202611.6530-3-sam@ravnborg.org>
 <CAHQ1cqFcXt7Vg7qJB=o1nwKOzW8FC=s3YNaKTcF8jA1BXC7jxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFcXt7Vg7qJB=o1nwKOzW8FC=s3YNaKTcF8jA1BXC7jxQ@mail.gmail.com>
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
Subject: Re: [PATCH v1 2/3] lib: bootstrap: detect SD card before mounting
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey.

> > To support bootstrap from SD card run a detect all before
> > mounting the SD card.
> >
> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > ---
> >  lib/bootstrap/disk.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c
> > index fd016166e..77be95c2f 100644
> > --- a/lib/bootstrap/disk.c
> > +++ b/lib/bootstrap/disk.c
> > @@ -21,6 +21,8 @@ void* bootstrap_read_disk(const char *dev, const char *fstype)
> >         size_t len;
> >         const char *path = "/";
> >
> > +       device_detect_all();
> > +
> 
> Can device_detect_by_name(dev) be used here instead?

dev equals "disk0.0" when we call bootstrap_read_disk().
Calling device_detect_by_name("disk0.0") did not work, and then
the easy solution with device_detect_all() worked.

I could pass the dev name to bootstrap_read_disk() but
this would make the caller less general which is why I ended
up with the more brutal solution.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
