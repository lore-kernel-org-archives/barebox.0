Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PelY5-0007nE-FK
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 09:38:55 +0000
Message-ID: <4D340E1E.3020608@free-electrons.com>
Date: Mon, 17 Jan 2011 10:38:38 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
References: <1295034524-18722-1-git-send-email-s.hauer@pengutronix.de>
	<1295034524-18722-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034524-18722-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] fb: update cdev map_base
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

You can revert the patch 1/4 I sent and add my Tested-by on this one.

On 01/14/2011 08:48 PM, Sascha Hauer wrote:
> Calling fb_activate_var potentially changes the framebuffer address,
> so we have to update the fb0 cdev afterwards.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/video/fb.c |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index aad0e1f..ba34b9c 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -79,6 +79,8 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
>  
>  	ret = info->fbops->fb_activate_var(info);
>  
> +	dev->map_base = (unsigned long)info->screen_base;
> +
>  	if (ret == 0)
>  		dev_param_set_generic(dev, param, val);
>  


-- 
Gregory Clement, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
