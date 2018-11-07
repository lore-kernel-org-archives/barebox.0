Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKO9X-0002up-CF
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 13:45:53 +0000
Received: by mail-lf1-x144.google.com with SMTP id d7-v6so11523361lfi.2
 for <barebox@lists.infradead.org>; Wed, 07 Nov 2018 05:45:38 -0800 (PST)
Date: Wed, 7 Nov 2018 16:45:23 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20181107134522.y7awdhz2uowjnqh7@localhost.localdomain>
References: <20181106161407.20974-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181106161407.20974-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] commands: mem: truncate mem device size to fit the
 loff_t file size
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, Lucas,

On Tue, Nov 06, 2018 at 05:14:07PM +0100, Lucas Stach wrote:
> On 64bit arches the file covering the whole address space is larger than
> what can be represented in the loff_t type (s64) used for the file size.
> Thus the size of this device is interpreted as negative in a lot of
> places. Fix this by truncating the size to fit the file size type.

While this is probably an appropriate solution for some architectures, it will 
cause problems on MIPS64. The root of evil is MIPS64 address space 
segmentation: https://docplayer.net/docs-images/25/4553906/images/21-0.png).  
Most notably your patch prevents access to the xkphys segment, where most 
peripheral devices of a SoC are accessible.

Regards,
Peter

> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  commands/mem.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/mem.c b/commands/mem.c
> index eb91ade05a88..cdd7a492d0d5 100644
> --- a/commands/mem.c
> +++ b/commands/mem.c
> @@ -96,7 +96,8 @@ static int mem_probe(struct device_d *dev)
>  	dev->priv = cdev;
>  
>  	cdev->name = (char*)dev->resource[0].name;
> -	cdev->size = (unsigned long)resource_size(&dev->resource[0]);
> +	cdev->size = min(resource_size(&dev->resource[0]),
> +			 (unsigned long long)S64_MAX);
>  	cdev->ops = &memops;
>  	cdev->dev = dev;
>  
> -- 
> 2.19.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
