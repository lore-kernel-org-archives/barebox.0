Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ9jm-0004II-FO
 for barebox@lists.infradead.org; Mon, 25 Nov 2019 08:28:51 +0000
Date: Mon, 25 Nov 2019 09:28:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191125082848.2rkmumxerinj4oa5@pengutronix.de>
References: <20191121084005.683-1-ahmad@a3f.at>
 <20191121084005.683-3-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121084005.683-3-ahmad@a3f.at>
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
Subject: Re: [PATCH 3/3] remoteproc: add .stop device parameter for stopping
 remote processor
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Thu, Nov 21, 2019 at 09:40:05AM +0100, Ahmad Fatoum wrote:
> Both the STM32 and i.MX7 remote proc drivers populate the .stop member
> in the struct rproc, but it's not used anywhere.

The .stop member in struct rproc is introduced in this patch.

> The firmware API is not
> really fitting to 'unload' firmware. Add instead a device parameter to
> stop a remote processor, e.g. remoteproc0.stop=1. This is similar to the
> probe command used with MMCs.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/remoteproc/remoteproc_core.c | 30 +++++++++++++++++++++++-----
>  include/linux/remoteproc.h           |  2 ++
>  2 files changed, 27 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 8a28c1bafc1b..e031640bc7a0 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -101,6 +101,8 @@ static int rproc_firmware_finish(struct firmware_handler *fh)
>  	fw.size = rproc->fw_buf_ofs;
>  
>  	ret = rproc_start(rproc, &fw);
> +	if (ret == 0)
> +		rproc->stop = PARAM_TRISTATE_FALSE;

Can we use positive logic here? "Status Stopped is false" is harder to
read than just "running" or "started".

  
>  	kfree(rproc->fw_buf);
>  
> @@ -120,6 +122,19 @@ static int rproc_register_dev(struct rproc *rproc, const char *alias)
>  	return register_device(&rproc->dev);
>  }
>  
> +static int rproc_set_stop(struct param_d *param, void *priv)
> +{
> +	struct rproc *rproc = priv;
> +	int (*stop)(struct rproc *);
> +
> +	stop = rproc->ops->stop;
> +
> +	if (!stop)
> +		return -ENOSYS;
> +
> +	return stop(rproc);
> +}

I would assume that when I can stop the remote processor with this
parameter I should be able to start it here as well, no?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
