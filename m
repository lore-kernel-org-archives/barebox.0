Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvPNJ-0003C7-Cp
 for barebox@lists.infradead.org; Tue, 14 Jul 2020 18:09:54 +0000
Date: Tue, 14 Jul 2020 20:09:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200714180949.GS15485@pengutronix.de>
References: <20200714091139.26244-1-christian.mauderer@embedded-brains.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714091139.26244-1-christian.mauderer@embedded-brains.de>
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
Subject: Re: [PATCH v4] FIT: Parse `load` and `entry` addresses.
To: Christian Mauderer <christian.mauderer@embedded-brains.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

Hi Christian,

On Tue, Jul 14, 2020 at 11:11:39AM +0200, Christian Mauderer wrote:
> @@ -622,7 +622,8 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		}
>  
>  		ret = fit_open_image(data->os_fit, data->fit_config, "kernel",
> -				     &data->fit_kernel, &data->fit_kernel_size);
> +				     &data->fit_kernel, &data->fit_kernel_size,
> +				     &data->os_address, &data->os_entry);

bootm has -a and -e options to specify the load address and the entry
point. If given, these should take precedence over the addresses given
in the FIT image.

>  int fit_open_image(struct fit_handle *handle, void *configuration,
>  		   const char *name, const void **outdata,
> -		   unsigned long *outsize)
> +		   unsigned long *outsize, unsigned long *load,
> +		   unsigned long *entry)
>  {

fit_open_image() has many parameters already and the two new ones are
not always needed or used. I think it's better to make getting the
addresses a separate function, fit_get_load_address() and
fit_get_entry() maybe?

Regards,
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
