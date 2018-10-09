Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9u94-0006sc-ER
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 15:42:41 +0000
Date: Tue, 9 Oct 2018 17:41:48 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181009154148.GC18654@ravnborg.org>
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
 <20181008063542.18709-7-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181008063542.18709-7-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 06/16] drivers: Introduce dev_set_name()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

Looked through the patch, everythign looked OK.
One nit.

	Sam

> diff --git a/include/driver.h b/include/driver.h
> index 1b61f2066..7b83c0a77 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -23,7 +23,6 @@
>  #include <linux/ioport.h>
>  #include <of.h>
>  
> -#define MAX_DRIVER_NAME		32
>  #define FORMAT_DRIVER_NAME_ID	"%s%d"
>  
>  #include <param.h>
> @@ -41,7 +40,7 @@ struct device_d {
>  	/*! This member (and 'type' described below) is used to match with a
>  	 * driver. This is a descriptive name and could be MPC5XXX_ether or
>  	 * imx_serial. */
Add here: The name is set using dev_set_name() or somthing like that.
To let the reader/user know how to set the name in the correct way.

> -	char name[MAX_DRIVER_NAME];
> +	char *name;
>  	/*! The id is used to uniquely identify a device in the system. The id
>  	 * will show up under /dev/ as the device's name. Usually this is
>  	 * something like eth0 or nor0. */
> @@ -177,6 +176,8 @@ static inline const char *dev_name(const struct device_d *dev)
>  	return dev_id(dev);
>  }
>  
> +int dev_set_name(struct device_d *dev, const char *fmt, ...);
> +
It would be nice with a small comment that tell this is used to set
device_d.name - and that it shuld not be assigned direct.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
