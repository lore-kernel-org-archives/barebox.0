Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9xOt-0005oT-Q0
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 12:11:09 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 78F6BFF9254
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 14:18:46 +0200 (CEST)
Date: Fri, 7 Sep 2012 14:11:26 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120907121126.GR20330@game.jcrosoft.org>
References: <1347014799-23478-1-git-send-email-alexg@meprolight.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347014799-23478-1-git-send-email-alexg@meprolight.com>
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
Subject: Re: [PATCH]    video imx-ipu-fb: add clear screen
To: Alex Gershgorin <alexgershgorin@gmail.com>
Cc: barebox@lists.infradead.org, Alex Gershgorin <alexg@meprolight.com>

On 13:46 Fri 07 Sep     , Alex Gershgorin wrote:
> This patch clear screen before usage
> 
> Signed-off-by: Alex Gershgorin <alexg@meprolight.com>
> ---
>  drivers/video/imx-ipu-fb.c |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
> index 8039de0..d46cced 100644
> --- a/drivers/video/imx-ipu-fb.c
> +++ b/drivers/video/imx-ipu-fb.c
> @@ -1012,6 +1012,10 @@ static int imxfb_probe(struct device_d *dev)
>  					       (info->bits_per_pixel >> 3));
>  		if (!fbi->info.screen_base)
>  			return -ENOMEM;
> +
> +		/* Clear the screen */
> +		memset((char *)fbi->info.screen_base, 0,
> +		info->xres * info->yres * (info->bits_per_pixel >> 3));
no do not so
wait a few and use the splash command ot specify a background

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
