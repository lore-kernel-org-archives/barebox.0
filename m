Delivery-date: Thu, 01 Jun 2023 09:05:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cNK-005Rnl-T6
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:05:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4cNI-0007jO-J5
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:05:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WMzkpxeCmuuHJM5ziWO63/yRCvE8Kbrr+TS2dSGzvyk=; b=EfYJpji6Mr1SOQRUEkratokOWS
	j8JEmd2eYHC1SoPjw+HtBhdgQ9Q88bmufLCnCN8OVoTKVg5EmNfNWVkQNWAUwws1hgvw8wgjRqQia
	BwFYqhG+IGzI1PWvZVZBWRzpzz1JmlnfLGyliAuIdFd8AtJK9g44E8JN+9lunHQlq9CWz+d4rpnv1
	BQxU61mHIoeFwCwMnEMsRr/lipq/AWEHv3socqWvWW57C9sp5ACeUwlgBNbUYvOY4bHJ7Lt99QjGm
	c3dq7BkTcGSoXdc7f/sIeOFsH0AQxVOMsopId/3BrUYGM4Hy7BTKlGNEScq+v35Dh5YVDrjmBTUdh
	/U/bNOlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cMF-002IbB-39;
	Thu, 01 Jun 2023 07:04:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4cMC-002IaB-0B
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:04:25 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q4cM9-0007NR-Af; Thu, 01 Jun 2023 09:04:21 +0200
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q4cM8-005swY-T5; Thu, 01 Jun 2023 09:04:20 +0200
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-6-a.fatoum@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Thu, 01 Jun 2023 09:00:35 +0200
In-reply-to: <20230531145927.1399282-6-a.fatoum@pengutronix.de>
Message-ID: <6rcz2f4qa3.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_000424_092413_4BE51E47 
X-CRM114-Status: GOOD (  21.75  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 05/18] of: of_path: always call
 of_partition_ensure_probed before resolving
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

as it looks that you are going to create a v2 anyway, just a small typo
fix.

On Wed, May 31 2023 at 16:59 +0200, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> of_find_path may be called on a partition, whose parent device is not
> yet probed. state code solves that by calling of_partition_ensure_probed
> before of_find_path_by_nde, but really we should be doing that for all

s/of_find_path_by_nde/of_find_path_by_node/

Best regards
Ulrich


> calls to of_find_path. Do so.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/state/state.c | 4 ----
>  drivers/of/of_path.c | 2 ++
>  2 files changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/common/state/state.c b/common/state/state.c
> index 6b4acbb32bcc..11cc86ff73be 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -618,10 +618,6 @@ struct state *state_new_from_node(struct device_node=
 *node, bool readonly)
>  	}
>=20=20
>  #ifdef __BAREBOX__
> -	ret =3D of_partition_ensure_probed(partition_node);
> -	if (ret)
> -		goto out_release_state;
> -
>  	ret =3D of_find_path_by_node(partition_node, &state->backend_path, 0);
>  #else
>  	ret =3D of_get_devicepath(partition_node, &state->backend_path, &offset=
, &size);
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> index 1268cf36ee5b..059690e9b8e8 100644
> --- a/drivers/of/of_path.c
> +++ b/drivers/of/of_path.c
> @@ -43,6 +43,8 @@ static int __of_find_path(struct device_node *node, con=
st char *part, char **out
>  	struct cdev *cdev;
>  	bool add_bb =3D false;
>=20=20
> +	of_partition_ensure_probed(node);
> +
>  	dev =3D of_find_device_by_node_path(node->full_name);
>  	if (!dev) {
>  		int ret;
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


