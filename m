Delivery-date: Thu, 21 May 2026 14:04:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ28H-002E9L-1B
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 14:04:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ28G-0003G3-L5
	for lore@pengutronix.de; Thu, 21 May 2026 14:04:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=g1fZx9d0xjvshDTVYMGn91S+17G58bmstZe42dqsq+I=; b=OMSEJR6Z/pTWrs4rzPYpkHynsa
	RfDcQLk4DyO9jciYAznk2LGmJgisdhvPBI4zn0yT1A8E1qz7nDw5kP+BlBLUMVwHM0nAQw5VuQ2o6
	AgxabpaDbrFF+MGHRw/Oq1/Bzp0MLWXNeuYUhDkjJwLXU7JbfnydqsY4152pxyc1nU4bMpl/y/0Rm
	vczH5EtYPaL6aougCzpTPg8zC0GuuSH0XZslc+1yrr+o+PiQJuKSXCZeL/U0ux+gaJiG6t/R9r+cU
	Jk145aRVPp8OdAG/Hku+B7tLmidDpwVKcFPUbovfL7lk8Dyf0h0IMl31ZVCnzG86DLptdU2/C5PIW
	tIZfuj2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ26V-00000007fqB-0YXZ;
	Thu, 21 May 2026 12:02:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ26R-00000007fok-1uLq
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 12:02:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ26P-0002aJ-KA; Thu, 21 May 2026 14:02:13 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ26P-00165H-00;
	Thu, 21 May 2026 14:02:13 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ26P-00000004V38-1zAy;
	Thu, 21 May 2026 14:02:13 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Fabian Pfitzner" <f.pfitzner@pengutronix.de>
In-Reply-To: <20260520-fpf-bootsource-instance-index-v1-1-29942f0e8f2f@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 12:02:13 +0000
Message-Id: <E1wQ26P-00000004V38-1zAy@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_050215_490676_BCE3FF1B 
X-CRM114-Status: GOOD (  19.92  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, Fabian
 Pfitzner <f.pfitzner@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] bootsource: add bootsource instance index variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-20 10:32, Fabian Pfitzner wrote:
> The bootsource instance index variable shows us,
> from which image on the instance we have booted from.
> This is a useful information, when there a multiple boot images contained
> on one flash (e. g. primary and recovery).
>=20
> Add a C interface to set and get the bootsource instance:
>=20
>     int bootsource_get_instance_index(void);
>     void bootsource_set_instance_index(int index);
>=20
> Also export the shell variable "bootsource_instance_index".
>=20
> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
> ---
>  Documentation/user/variables.rst |  1 +
>  common/bootsource.c              | 20 ++++++++++++++++++++
>  include/bootsource.h             | 11 +++++++++++
>  3 files changed, 32 insertions(+)
>=20
> diff --git a/Documentation/user/variables.rst b/Documentation/user/variab=
les.rst
> index 61808f1d72de29477b02b53ad11ecf530b4ebc80..c8b34679068cff4356fec3069=
42b85561187652f 100644
> --- a/Documentation/user/variables.rst
> +++ b/Documentation/user/variables.rst
> @@ -112,6 +112,7 @@ of all active variables with special meaning along wi=
th a short description:
>    bootargs                         Linux Kernel parameters
>    bootsource                       The source barebox has been booted fr=
om
>    bootsource_instance              The instance of the source barebox ha=
s been booted from
> +  bootsource_instance_index        Tells us whether we have booted from =
primary(0) or secondary(1)
>    global.boot.default              default boot order
>    ...
> =20
> diff --git a/common/bootsource.c b/common/bootsource.c
> index f608019bb758f820eea19213c75b389df6b4158c..53549d4171ff33bfcdd743626=
1cd8f4d3598099a 100644
> --- a/common/bootsource.c
> +++ b/common/bootsource.c
> @@ -33,6 +33,7 @@ static const char *bootsource_str[BOOTSOURCE_MAX] =3D {
> =20
>  static enum bootsource bootsource =3D BOOTSOURCE_UNKNOWN;
>  static int bootsource_instance =3D BOOTSOURCE_INSTANCE_UNKNOWN;
> +static int bootsource_instance_index =3D BOOTSOURCE_INSTANCE_INDEX_UNKNO=
WN;
> =20
>  const char *bootsource_to_string(enum bootsource src)
>  {
> @@ -226,6 +227,17 @@ int bootsource_set(enum bootsource src, int instance)
>  	return alias_id;
>  }
> =20
> +void bootsource_set_instance_index(int index)
> +{
> +	if (index < 0 || index > 1)
> +		pr_err("Invalid index: %d, expected either 0 or 1", index);
> +
> +	char str[1];
> +
> +	sprintf(str, "%d", index);

The string is too small. You need another byte for the '\0'

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


