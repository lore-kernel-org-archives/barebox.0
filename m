Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC5g-0005zr-OS
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:56:02 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1PGC5f-0004Lc-Bl
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 15:55:59 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PGC5f-00025W-Ai
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 15:55:59 +0100
Date: Wed, 10 Nov 2010 15:55:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101110145559.GR6017@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
	<1289400839-5937-13-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1289400839-5937-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 12/13] fb: set id for framebuffer device correctly
To: barebox@lists.infradead.org

On Wed, Nov 10, 2010 at 03:53:58PM +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/video/fb.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index f9a425e..ab2c5eb 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -80,6 +80,7 @@ int register_framebuffer(struct fb_info *info)
>  
>  	dev = &info->dev;
>  	dev->priv = info;
> +	dev->id = id;
>  
>  	sprintf(dev->name, "fb");
>

This patch is unrelated to this series and got in here accidently.
Anyway, it is correct and should go to master.

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
