Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PetLn-0005hS-Vl
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 17:58:44 +0000
Date: Mon, 17 Jan 2011 18:58:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110117175842.GM9041@pengutronix.de>
References: <1295034524-18722-1-git-send-email-s.hauer@pengutronix.de>
	<1295034524-18722-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
To: barebox@lists.infradead.org

On Fri, Jan 14, 2011 at 08:48:44PM +0100, Sascha Hauer wrote:
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


Unfortunately this is not enough. We also have to update xres, yres and
size, like in the following patch:

8<------------------------------------------------

[PATCH 5/5] fb: When setting a mode, also update xres, yres and fb size

Also, set size to 0 when setting up the framebuffer failed so that
the user cannot write to uninitialized framebuffer memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/fb.c |   12 +++++++++---
 1 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index ba34b9c..cf21c4b 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -77,12 +77,18 @@ static int fb_setup_mode(struct device_d *dev, struct param_d *param,
 
 	info->mode = &info->mode_list[mode];
 
-	ret = info->fbops->fb_activate_var(info);
+	info->xres = info->mode->xres;
+	info->yres = info->mode->yres;
 
-	dev->map_base = (unsigned long)info->screen_base;
+	ret = info->fbops->fb_activate_var(info);
 
-	if (ret == 0)
+	if (!ret) {
+		dev->map_base = (unsigned long)info->screen_base;
+		info->cdev.size = info->xres * info->yres * (info->bits_per_pixel >> 3);
+		dev->size = info->cdev.size;
 		dev_param_set_generic(dev, param, val);
+	} else
+		info->cdev.size = 0;
 
 	return ret;
 }
-- 
1.7.2.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
