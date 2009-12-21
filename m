Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMfK3-0000br-F2
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:17:05 +0000
Date: Mon, 21 Dec 2009 11:16:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221101601.GW15126@pengutronix.de>
References: <alpine.LFD.2.00.0912201429550.27643@localhost>
	<20091221084559.GQ15126@pengutronix.de>
	<alpine.LFD.2.00.0912210413050.6005@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210413050.6005@localhost>
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
Subject: Re: possible memory leak in commands/nand.c?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 04:17:29AM -0500, Robert P. J. Day wrote:
> On Mon, 21 Dec 2009, Sascha Hauer wrote:
> 
> ... snip ...
> 
> > Yes, indeed, that's a memory hole here. The following should fix
> > this. Thanks for noting.
> >
> > Sascha
> >
> >
> > >From 4e4b03cd61808383a98cb1d10a47025e1909e0bd Mon Sep 17 00:00:00 2001
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Date: Mon, 21 Dec 2009 09:41:52 +0100
> > Subject: [PATCH] commands/nand.c: Fix memory hole
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/nand.c |   22 +++++++++++++++++-----
> >  1 files changed, 17 insertions(+), 5 deletions(-)
> >
> > diff --git a/commands/nand.c b/commands/nand.c
> > index cbf1058..55b89af 100644
> > --- a/commands/nand.c
> > +++ b/commands/nand.c
> > @@ -224,31 +224,37 @@ static struct file_operations nand_bb_ops = {
> >  int dev_add_bb_dev(char *path, const char *name)
> >  {
> >  	struct nand_bb *bb;
> > -	int ret;
> > +	int ret = -ENOMEM;
> >  	struct stat s;
> >
> >  	bb = xzalloc(sizeof(*bb));
> >  	bb->devname = asprintf("/dev/%s", basename(path));
> > +	if (!bb->devname)
> > +		goto out1;
> > +
> >  	if (name)
> >  		bb->cdev.name = strdup(name);
> >  	else
> >  		bb->cdev.name = asprintf("%s.bb", basename(path));
> >
> > +	if (!bb->cdev.name)
> > +		goto out2;
> > +
> >  	ret = stat(bb->devname, &s);
> >  	if (ret)
> > -		goto free_out;
> > +		goto out3;
> >
> >  	bb->raw_size = s.st_size;
> >
> >  	bb->fd = open(bb->devname, O_RDWR);
> >  	if (bb->fd < 0) {
> >  		ret = -ENODEV;
> > -		goto free_out;
> > +		goto out3;
> >  	}
> >
> >  	ret = ioctl(bb->fd, MEMGETINFO, &bb->info);
> >  	if (ret)
> > -		goto free_out;
> > +		goto out4;
> >
> >  	nand_bb_calc_size(bb);
> >  	bb->cdev.ops = &nand_bb_ops;
> > @@ -258,7 +264,13 @@ int dev_add_bb_dev(char *path, const char *name)
> >
> >  	return 0;
> >
> > -free_out:
> > +out4:
> > +	close(bb->fd);
> > +out3:
> > +	free(bb->cdev.name);
> > +out2:
> > +	free(bb->devname);
> > +out1:
> >  	free(bb);
> >  	return ret;
> >  }
> 
>   i'm not sure this required distinguishing between every one of those
> cases since the initial space was allocated with xzalloc(),
> guaranteeing it would be zero-filled, and freeing a NULL pointer is
> supposed to be a no-op.
> 
>   so it would have been simpler to just
> 
>   free(bb->devname);		# might be NULL, no problem
>   free(bb->cdev.name);		# same here
>   free(bb);

Yes, you're right. OTOH we probably do not save anything by removing
the different jump labels.

Sascha

> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
