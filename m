Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZluuH-0000g0-Ib
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 08:26:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Zlutw-0005Yc-3T
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 10:25:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Zlutv-0007oy-6t
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 10:25:39 +0200
Date: Tue, 13 Oct 2015 10:25:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151013082539.GD7858@pengutronix.de>
References: <1444722714-30445-1-git-send-email-s.hauer@pengutronix.de>
 <1444722714-30445-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444722714-30445-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/4] fs: devfs: Allow mount path in cdev_open
To: Barebox List <barebox@lists.infradead.org>

On Tue, Oct 13, 2015 at 09:51:52AM +0200, Sascha Hauer wrote:
> When opening a cdev also allow a path beginning with /dev/ as some
> users of cdev_open already open coded this behaviour.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/devfs-core.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 62571fb..26f56d9 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -121,9 +121,13 @@ int cdev_do_open(struct cdev *cdev, unsigned long flags)
>  
>  struct cdev *cdev_open(const char *name, unsigned long flags)
>  {
> -	struct cdev *cdev = cdev_by_name(name);
> +	struct cdev *cdev;
>  	int ret;
>  
> +	if (strncmp(name, "/dev/", 5))
> +		name += 5;

And with the missing '!' before strncmp this works as expected.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
