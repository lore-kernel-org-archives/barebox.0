Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFiIi-0005fg-NV
 for barebox@lists.infradead.org; Tue, 18 Feb 2014 10:53:21 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3AD7CFFBBF0
 for <barebox@lists.infradead.org>; Tue, 18 Feb 2014 11:42:20 +0100 (CET)
Date: Tue, 18 Feb 2014 11:43:46 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140218104346.GN9671@ns203013.ovh.net>
References: <1392719775-16886-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1392719775-16886-3-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392719775-16886-3-git-send-email-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/5] ARM: sama5d3xek: convert to devfs_append_partition
To: Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:36 Tue 18 Feb     , Uwe Kleine-K??nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
I like it and not

can we simply use an struct now

like in linux
> ---
>  arch/arm/boards/sama5d3xek/init.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> =

> diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3x=
ek/init.c
> index 4f866aa6f85d..ba5f90c7063c 100644
> --- a/arch/arm/boards/sama5d3xek/init.c
> +++ b/arch/arm/boards/sama5d3xek/init.c
> @@ -402,6 +402,8 @@ static void ek_add_device_hdmi(void)
>  =

>  static int at91sama5d3xek_devices_init(void)
>  {
> +	loff_t offset =3D 0x0;
> +
>  	ek_add_device_w1();
>  	ek_add_device_hdmi();
>  	ek_add_device_nand();
> @@ -411,13 +413,21 @@ static int at91sama5d3xek_devices_init(void)
>  	ek_add_device_mci();
>  	ek_add_device_lcdc();
>  =

> -	devfs_add_partition("nand0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED, "=
at91bootstrap_raw");
> +	devfs_append_partition("nand0", &offset, SZ_256K,
> +			DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
>  	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
> -	devfs_add_partition("nand0", SZ_256K, SZ_256K + SZ_128K, DEVFS_PARTITIO=
N_FIXED, "self_raw");
> +	devfs_append_partition("nand0", &offset, SZ_256K + SZ_128K,
> +			DEVFS_PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
> -	devfs_add_partition("nand0", SZ_512K + SZ_256K, SZ_256K, DEVFS_PARTITIO=
N_FIXED, "env_raw");
> +
> +	/* there is a hole in the partition layout of 128K */
> +	offset =3D SZ_512K + SZ_256K;
> +
> +	devfs_append_partition("nand0", &offset, SZ_256K,
> +			DEVFS_PARTITION_FIXED, "env_raw");
>  	dev_add_bb_dev("env_raw", "env0");
> -	devfs_add_partition("nand0", SZ_1M, SZ_256K, DEVFS_PARTITION_FIXED, "en=
v_raw1");
> +	devfs_append_partition("nand0", &offset, SZ_256K,
> +			DEVFS_PARTITION_FIXED, "env_raw1");
>  	dev_add_bb_dev("env_raw1", "env1");
>  =

>  	return 0;
> -- =

> 1.8.5.3
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
