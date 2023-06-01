Delivery-date: Thu, 01 Jun 2023 10:50:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4e17-005Yea-Ri
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:50:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4e15-00077Z-GI
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:50:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R9b2dERnajGlt9hhKsvTYIQNXJalZePXy2VtKL8LDDw=; b=lgAOMRcUTXpryfBDhgeOEoLr9D
	jo0ySN9a38O8HT/4Q7TlFXM3RB9mTI6WfJjXpxIMcGQwcbVkCTNdIYBD8k9TolzxjuHE5E1RZ7CIs
	XAsD9aZ1zzfPMcvmNx9f+OqpwySiwsU20KBnk78SjUoGF37RNqZUlxDa/o2GT8ZgcH2MvMfLaE5Hv
	3+9W7Cm6u+kIh3ClJ0ThuFFHsoOjC0sUCVTU5aK3Y1orwSEcBoALTFmoWJVyMi3Dhob4K2ih/nlXC
	iUVaMyQ6oTMGLbQzhfkE8avxJJDNRsdxZfkL+vfc+yBVNyBIrrfiOvITlvEKNKvSJvBzRPuo18Rob
	26eoEgfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4e02-002cdR-2b;
	Thu, 01 Jun 2023 08:49:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dzz-002ccj-0v
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:49:36 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q4dzy-0006iA-3m; Thu, 01 Jun 2023 10:49:34 +0200
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q4dzx-005vix-LW; Thu, 01 Jun 2023 10:49:33 +0200
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-15-a.fatoum@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Thu, 01 Jun 2023 10:41:31 +0200
In-reply-to: <20230531145927.1399282-15-a.fatoum@pengutronix.de>
Message-ID: <6rzg5j36ua.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_014935_322882_A55A5C0B 
X-CRM114-Status: GOOD (  29.71  )
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
Subject: Re: [PATCH 14/18] of: export new of_cdev_find helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

another small typo.

On Wed, May 31 2023 at 16:59 +0200, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> __of_find_path goes throught the hassle of determining the cdev, only to

s/throught/through/

Best regards
Ulrich


> discard it again and return either zero or an error code.
>
> Follow up commits will need to get the cdev corresponding to a path in
> the DT. So let's make that easier by exporting a suitable helper function.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/of_path.c | 59 ++++++++++++++++++++++++++++++--------------
>  include/of.h         |  1 +
>  2 files changed, 41 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> index 059690e9b8e8..4d9f7b6005af 100644
> --- a/drivers/of/of_path.c
> +++ b/drivers/of/of_path.c
> @@ -27,21 +27,17 @@ struct device *of_find_device_by_node_path(const char=
 *path)
>  }
>=20=20
>  /**
> - * __of_find_path
> + * __of_cdev_find
>   *
>   * @node: The node to find the cdev for, can be the device or a
>   *        partition in the device
>   * @part: Optionally, a description of a partition of @node.  See of_fin=
d_path
> - * @outpath: if this function returns 0 outpath will contain the path be=
longing
> - *           to the input path description. Must be freed with free().
> - * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if availab=
le
>   *
>   */
> -static int __of_find_path(struct device_node *node, const char *part, ch=
ar **outpath, unsigned flags)
> +static struct cdev *__of_cdev_find(struct device_node *node, const char =
*part)
>  {
>  	struct device *dev;
>  	struct cdev *cdev;
> -	bool add_bb =3D false;
>=20=20
>  	of_partition_ensure_probed(node);
>=20=20
> @@ -56,24 +52,17 @@ static int __of_find_path(struct device_node *node, c=
onst char *part, char **out
>=20=20
>  			/* when partuuid is specified short-circuit the search for the cdev */
>  			ret =3D of_property_read_string(node, "partuuid", &uuid);
> -			if (!ret) {
> -				cdev =3D cdev_by_partuuid(uuid);
> -				if (!cdev)
> -					return -ENODEV;
> -
> -				*outpath =3D basprintf("/dev/%s", cdev->name);
> -
> -				return 0;
> -			}
> +			if (!ret)
> +				return cdev_by_partuuid(uuid) ?: ERR_PTR(-ENODEV);
>  		}
>=20=20
>  		dev =3D of_find_device_by_node_path(devnode->full_name);
>  		if (!dev)
> -			return -ENODEV;
> +			return ERR_PTR(-ENODEV);
>  	}
>=20=20
>  	if (dev->bus && !dev->driver)
> -		return -EPROBE_DEFER;
> +		return ERR_PTR(-EPROBE_DEFER);
>=20=20
>  	device_detect(dev);
>=20=20
> @@ -82,8 +71,40 @@ static int __of_find_path(struct device_node *node, co=
nst char *part, char **out
>  	else
>  		cdev =3D cdev_by_device_node(node);
>=20=20
> -	if (!cdev)
> -		return -ENOENT;
> +	return cdev ?: ERR_PTR(-ENOENT);
> +}
> +
> +/**
> + * of_cdev_find
> + *
> + * @node: The node to find the cdev for, can be the device or a
> + *        partition in the device
> + *
> + */
> +struct cdev *of_cdev_find(struct device_node *node)
> +{
> +	return __of_cdev_find(node, NULL);
> +}
> +
> +/**
> + * __of_find_path
> + *
> + * @node: The node to find the cdev for, can be the device or a
> + *        partition in the device
> + * @part: Optionally, a description of a partition of @node.  See of_fin=
d_path
> + * @outpath: if this function returns 0 outpath will contain the path be=
longing
> + *           to the input path description. Must be freed with free().
> + * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if availab=
le
> + *
> + */
> +static int __of_find_path(struct device_node *node, const char *part, ch=
ar **outpath, unsigned flags)
> +{
> +	bool add_bb =3D false;
> +	struct cdev *cdev;
> +
> +	cdev =3D __of_cdev_find(node, part);
> +	if (IS_ERR(cdev))
> +		return PTR_ERR(cdev);
>=20=20
>  	if ((flags & OF_FIND_PATH_FLAGS_BB) && cdev->mtd &&
>  	    mtd_can_have_bb(cdev->mtd))
> diff --git a/include/of.h b/include/of.h
> index c716f9283316..2b75ce63e185 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -331,6 +331,7 @@ int of_add_memory_bank(struct device_node *node, bool=
 dump, int r,
>  struct device *of_find_device_by_node_path(const char *path);
>  #define OF_FIND_PATH_FLAGS_BB 1		/* return .bb device if available */
>  int of_find_path(struct device_node *node, const char *propname, char **=
outpath, unsigned flags);
> +struct cdev *of_cdev_find(struct device_node *node);
>  int of_find_path_by_node(struct device_node *node, char **outpath, unsig=
ned flags);
>  struct device_node *of_find_node_by_devpath(struct device_node *root, co=
nst char *path);
>  int of_register_fixup(int (*fixup)(struct device_node *, void *), void *=
context);
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


