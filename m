Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U64Wv-0002c7-Se
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 19:31:39 +0000
Date: Thu, 14 Feb 2013 20:31:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214193135.GA1906@pengutronix.de>
References: <20130214121716.1f3ef4f7@e6520eb>
 <1360843011-7807-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360843011-7807-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] env: add register_persistent_environment
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On Thu, Feb 14, 2013 at 12:56:49PM +0100, Eric B=E9nard wrote:
> - heavily copied from register_persistant_environment which was
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  common/environment.c  | 40 ++++++++++++++++++++++++++++++++++++++++
>  include/environment.h |  1 +

Please move the prototype to include/envfs.h. include/environment.h has
stuff for shell environment variables only.

>  2 files changed, 41 insertions(+)
> =

> diff --git a/common/environment.c b/common/environment.c
> index e8d623f..55befd9 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -363,3 +363,43 @@ out:
>  		free(buf_free);
>  	return ret;
>  }
> +
> +#ifdef __BAREBOX__
> +/**
> + * Try to register an environment storage on a device's partition
> + * @return 0 on success
> + *
> + * We rely on the existence of a usable storage device, already attached=
 to
> + * our system, to get something like a persistent memory for our environ=
ment.
> + * We need to specify the partition number to use on this device.
> + * @param[in] devname Name of the device
> + * @param[in] partnr Partition number
> + * @return 0 on success, anything else in case of failure
> + */
> +
> +int register_persistent_environment(const char *devname, unsigned int pa=
rtnr)

I think envfs_register_partition would be a better name.

> +{
> +	struct cdev *cdev;
> +	char *partname;
> +
> +	if (!devname)
> +		return -EINVAL;
> +
> +	cdev =3D cdev_by_name(devname);
> +	if (cdev =3D=3D NULL) {
> +		pr_err("No %s present\n", devname);
> +		return -ENODEV;
> +	}
> +	partname =3D asprintf("%s.%d", devname, partnr);

free partname?

Sascha

> +	cdev =3D cdev_by_name(partname);
> +	if (cdev =3D=3D NULL) {
> +		pr_err("No %s partition available\n", partname);
> +		pr_info("Please create the partition %s to store the env\n", partname);
> +		return -ENODEV;
> +	}
> +
> +	return devfs_add_partition(partname, 0, cdev->size,
> +						DEVFS_PARTITION_FIXED, "env0");
> +}
> +EXPORT_SYMBOL(register_persistent_environment);
> +#endif
> diff --git a/include/environment.h b/include/environment.h
> index 7bdd213..d172f8f 100644
> --- a/include/environment.h
> +++ b/include/environment.h
> @@ -71,6 +71,7 @@ int env_pop_context(void);
>  int env_push_context(void);
>  =

>  int export(const char *);
> +int register_persistent_environment(const char *devname, unsigned int pa=
rtnr);
>  =

>  #endif	/* _ENVIRONMENT_H_ */
>  =

> -- =

> 1.7.11.7
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
