Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihtQO-0005dP-IZ
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 10:52:58 +0000
Received: by mail-lj1-x244.google.com with SMTP id u71so5699427lje.11
 for <barebox@lists.infradead.org>; Thu, 19 Dec 2019 02:52:55 -0800 (PST)
Date: Thu, 19 Dec 2019 13:52:44 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20191219105243.GA16955@localhost.localdomain>
References: <20191219101011.17583-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219101011.17583-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] driver: add function to look up device by DT node
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, Lucas,

On Thu, Dec 19, 2019 at 11:10:11AM +0100, Lucas Stach wrote:
> Useful if we need to remove a deivce from the Barebox internal DT.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> This is a prerequisite for "ARM: zii-imx8mq-dev: add DT fixups", which
> I missed to send out in the series.
> ---
>  drivers/base/driver.c | 12 ++++++++++++
>  include/driver.h      |  1 +
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index eec2a2d8a2a5..437b0162d3f7 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -70,6 +70,18 @@ static struct device_d *get_device_by_name_id(const char *name, int id)
>  	return NULL;
>  }
>  
> +struct device_d *get_device_by_device_node(struct device_node *np)
> +{
> +	struct device_d *dev;
> +
> +	for_each_device(dev) {
> +		if(dev->device_node == np)
> +			return dev;
> +	}
> +
> +	return NULL;
> +}
> +

This is already implemented in `of_find_device_by_node`.

Regards,
Peter

>  int get_free_deviceid(const char *name_template)
>  {
>  	int i = 0;
> diff --git a/include/driver.h b/include/driver.h
> index ad59ce90c3a3..4e3b2443a708 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -170,6 +170,7 @@ int unregister_device(struct device_d *);
>  struct device_d *get_device_by_type(ulong type, struct device_d *last);
>  struct device_d *get_device_by_id(const char *id);
>  struct device_d *get_device_by_name(const char *name);
> +struct device_d *get_device_by_device_node(struct device_node *np);
>  
>  /* Find a free device id from the given template. This is archieved by
>   * appending a number to the template. Dynamically created devices should
> -- 
> 2.20.1
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
