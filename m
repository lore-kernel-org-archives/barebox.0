Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMeOs-00019Y-6l
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:18:01 +0000
Date: Mon, 21 Dec 2009 04:17:29 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20091221084559.GQ15126@pengutronix.de>
Message-ID: <alpine.LFD.2.00.0912210413050.6005@localhost>
References: <alpine.LFD.2.00.0912201429550.27643@localhost>
	<20091221084559.GQ15126@pengutronix.de>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 21 Dec 2009, Sascha Hauer wrote:

... snip ...

> Yes, indeed, that's a memory hole here. The following should fix
> this. Thanks for noting.
>
> Sascha
>
>
> >From 4e4b03cd61808383a98cb1d10a47025e1909e0bd Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Mon, 21 Dec 2009 09:41:52 +0100
> Subject: [PATCH] commands/nand.c: Fix memory hole
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/nand.c |   22 +++++++++++++++++-----
>  1 files changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/commands/nand.c b/commands/nand.c
> index cbf1058..55b89af 100644
> --- a/commands/nand.c
> +++ b/commands/nand.c
> @@ -224,31 +224,37 @@ static struct file_operations nand_bb_ops = {
>  int dev_add_bb_dev(char *path, const char *name)
>  {
>  	struct nand_bb *bb;
> -	int ret;
> +	int ret = -ENOMEM;
>  	struct stat s;
>
>  	bb = xzalloc(sizeof(*bb));
>  	bb->devname = asprintf("/dev/%s", basename(path));
> +	if (!bb->devname)
> +		goto out1;
> +
>  	if (name)
>  		bb->cdev.name = strdup(name);
>  	else
>  		bb->cdev.name = asprintf("%s.bb", basename(path));
>
> +	if (!bb->cdev.name)
> +		goto out2;
> +
>  	ret = stat(bb->devname, &s);
>  	if (ret)
> -		goto free_out;
> +		goto out3;
>
>  	bb->raw_size = s.st_size;
>
>  	bb->fd = open(bb->devname, O_RDWR);
>  	if (bb->fd < 0) {
>  		ret = -ENODEV;
> -		goto free_out;
> +		goto out3;
>  	}
>
>  	ret = ioctl(bb->fd, MEMGETINFO, &bb->info);
>  	if (ret)
> -		goto free_out;
> +		goto out4;
>
>  	nand_bb_calc_size(bb);
>  	bb->cdev.ops = &nand_bb_ops;
> @@ -258,7 +264,13 @@ int dev_add_bb_dev(char *path, const char *name)
>
>  	return 0;
>
> -free_out:
> +out4:
> +	close(bb->fd);
> +out3:
> +	free(bb->cdev.name);
> +out2:
> +	free(bb->devname);
> +out1:
>  	free(bb);
>  	return ret;
>  }

  i'm not sure this required distinguishing between every one of those
cases since the initial space was allocated with xzalloc(),
guaranteeing it would be zero-filled, and freeing a NULL pointer is
supposed to be a no-op.

  so it would have been simpler to just

  free(bb->devname);		# might be NULL, no problem
  free(bb->cdev.name);		# same here
  free(bb);

but, yes, the above will work.

  there's another memory leak i've found, i'll submit a patch for it,
for no other reason than i feel like getting a few patches with my
name on it into the barebox git log. :-)

rday
--


========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
