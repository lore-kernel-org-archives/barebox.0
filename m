Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avn1s-000098-O9
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 14:34:57 +0000
Date: Thu, 28 Apr 2016 16:34:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160428143434.GD7860@pengutronix.de>
References: <1461767893-13103-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461767893-13103-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ATA: Implement a hook for 'devinfo'
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 27, 2016 at 07:38:13AM -0700, Andrey Smirnov wrote:
> Implement simple adapter function to serve as a hook for 'devinfo'
> command.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/ata/disk_ata_drive.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
> index d30d0ad..9b3730c 100644
> --- a/drivers/ata/disk_ata_drive.c
> +++ b/drivers/ata/disk_ata_drive.c
> @@ -303,6 +303,14 @@ static int ata_detect(struct device_d *dev)
>  	return ata_port_detect(port);
>  }
>  
> +static void ata_info(struct device_d *dev)
> +{
> +	struct ata_port *port = container_of(dev, struct ata_port, class_dev);
> +
> +	if (port->initialized)
> +		ata_dump_id(port->id);
> +}
> +
>  /**
>   * Register an ATA drive behind an IDE like interface
>   * @param dev The interface device
> @@ -322,6 +330,7 @@ int ata_port_register(struct ata_port *port)
>  	}
>  
>  	port->class_dev.parent = port->dev;
> +	port->class_dev.info   = ata_info;
>  	port->class_dev.detect = ata_detect;
>  
>  	ret = register_device(&port->class_dev);
> -- 
> 2.5.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
