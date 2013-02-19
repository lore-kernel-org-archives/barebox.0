Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U7lrQ-00075J-Q1
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 11:59:49 +0000
Received: from mail183.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A661AFFB719
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 13:10:30 +0100 (CET)
Date: Tue, 19 Feb 2013 12:58:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130219115843.GL19322@game.jcrosoft.org>
References: <20130214193135.GA1906@pengutronix.de>
 <1361265445-11731-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361265445-11731-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 1/3] env: add register_persistent_environment
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On 10:17 Tue 19 Feb     , Eric B=E9nard wrote:
> - heavily copied from register_persistant_environment which was
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
> v4: rename function and move to envfs.h
> v3: also fix the typo in the printf
> v2: fix typo in persistent
>  common/environment.c | 40 ++++++++++++++++++++++++++++++++++++++++
>  include/envfs.h      |  2 ++
>  2 files changed, 42 insertions(+)
> =

> diff --git a/common/environment.c b/common/environment.c
> index e8d623f..78cd45c 100644
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
> +int envfs_register_partition(const char *devname, unsigned int partnr)
a part can be a number or a name

Best Regards,
J.
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
> +EXPORT_SYMBOL(envfs_register_partition);
> +#endif
> diff --git a/include/envfs.h b/include/envfs.h
> index 2db55ed..e9372b3 100644
> --- a/include/envfs.h
> +++ b/include/envfs.h
> @@ -96,4 +96,6 @@ int envfs_save(char *filename, char *dirname);
>  /* defaults to /dev/env0 */
>  extern char *default_environment_path;
>  =

> +int envfs_register_partition(const char *devname, unsigned int partnr);
> +
>  #endif /* _ENVFS_H */
> -- =

> 1.7.11.7
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
