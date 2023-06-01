Delivery-date: Thu, 01 Jun 2023 10:14:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dRq-005Wp2-73
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:14:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dRn-0000za-R8
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:14:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j5U6L1M9R1v3x/SbFuX1M3/aiY8iOT2d1Q+h36o21cY=; b=5BQ8NUut+l79WXLwFyk6f0JHTV
	Ois04ySHZacZLiCoCx5eclDIxKcyN3cM3DJB5ouaOCdoyZplks10ovuvL3X3wpMW7G9kQKv15uEI6
	BJwPskvvvhaN6L4943+s+xlV9V31r6xbyNHsgcJJ/E3ZQ7CYdupkEkP5dCabYst/EaODJ07zUVjmm
	7QLJQSybrlbwWlkw3HM0i5wO9nQ7SfAX+iL/8w9mFGbHq16twXz5qZoQVh6cHfaPQfrd16KBQeQyh
	sjNsKZGXwTg01bG2Q87gmEeRpNXvvzua67q2GEvZ9ZiBM2HeWQy8EfAszZSCFYjYdrGqt3T4PPzY6
	2WovA4UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dQi-002VBi-1V;
	Thu, 01 Jun 2023 08:13:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dQc-002VA5-2Q
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:13:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q4dQb-0000uB-Hf; Thu, 01 Jun 2023 10:13:01 +0200
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q4dQb-005uyB-2n; Thu, 01 Jun 2023 10:13:01 +0200
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-10-a.fatoum@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Thu, 01 Jun 2023 10:03:54 +0200
In-reply-to: <20230531145927.1399282-10-a.fatoum@pengutronix.de>
Message-ID: <6r8rd34n3m.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_011302_787328_AB13624F 
X-CRM114-Status: GOOD (  22.45  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/18] cdev: record whether partition is parsed from OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

again some nitpicky typo fixes.

On Wed, May 31 2023 at 16:59 +0200, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> Later code will make it possible to define a on-disk-described partition

s/a on-disk-described/an on-disk-described/

> in the DT as well. For this reason, we can't assumed

s/assumed/assume/

Best regards
Ulrich


> DEVFS_PARTITION_FROM_TABLE to mean !DT, so let's add a dedicated flag
> for that.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/partition.c | 5 +++--
>  fs/fs.c                | 2 ++
>  include/driver.h       | 5 +++--
>  3 files changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index a70e503cec9e..15943502ce17 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -74,6 +74,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, stru=
ct device_node *node)
>  	}
>=20=20
>  	new->device_node =3D node;
> +	new->flags |=3D DEVFS_PARTITION_FROM_OF;
>=20=20
>  	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-ce=
lls")) {
>  		struct nvmem_device *nvmem =3D nvmem_partition_register(new);
> @@ -162,7 +163,7 @@ int of_fixup_partitions(struct device_node *np, struc=
t cdev *cdev)
>  		return 0;
>=20=20
>  	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
> -		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
> +		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
>  			continue;
>  		n_parts++;
>  	}
> @@ -213,7 +214,7 @@ int of_fixup_partitions(struct device_node *np, struc=
t cdev *cdev)
>  		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
>  		loff_t partoffset;
>=20=20
> -		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
> +		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
>  			continue;
>=20=20
>  		if (partcdev->mtd)
> diff --git a/fs/fs.c b/fs/fs.c
> index 1820e48393af..9d8aab268ca4 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -88,6 +88,8 @@ void cdev_print(const struct cdev *cdev)
>  			printf(" fixed-partition");
>  		if (cdev->flags & DEVFS_PARTITION_READONLY)
>  			printf(" readonly-partition");
> +		if (cdev->flags & DEVFS_PARTITION_FROM_OF)
> +			printf(" of-partition");
>  		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
>  			printf(" table-partition");
>  		if (cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV)
> diff --git a/include/driver.h b/include/driver.h
> index 42e513a15603..118d2adb6750 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -584,8 +584,9 @@ extern struct list_head cdev_list;
>  #define DEVFS_PARTITION_FIXED		(1U << 0)
>  #define DEVFS_PARTITION_READONLY	(1U << 1)
>  #define DEVFS_IS_CHARACTER_DEV		(1U << 3)
> -#define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
> -#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 5)
> +#define DEVFS_IS_MCI_MAIN_PART_DEV	(1U << 4)
> +#define DEVFS_PARTITION_FROM_OF		(1U << 5)
> +#define DEVFS_PARTITION_FROM_TABLE	(1U << 6)
>=20=20
>  struct cdev *devfs_add_partition(const char *devname, loff_t offset,
>  		loff_t size, unsigned int flags, const char *name);
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


