Delivery-date: Wed, 14 Jun 2023 09:36:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9L38-006MYj-2w
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 09:36:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9L35-0005kc-Pp
	for lore@pengutronix.de; Wed, 14 Jun 2023 09:36:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:To:From:
	References:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5GJ0lpbxjRmpJUCLcDqmQZrIj1tUITsQNHpUheUCxVs=; b=pQoP6IHWNeNrN131onUoeaGZHA
	RT2Y+XQpsmNuT7lZ/uBn13+LFpCWDoSymSl6VZ7W2gg9t98omRwmpq64iiKVYWowtTLlUt4nXDqZc
	k8LNtpZma0MFGduIfs2uVcTdxbnPXleyYRgs2d3TqpSqqT3/Adjt4IIHOf0RGOVt65OIs3S5pxj+T
	NbQ0A57wDDb8uOVvaamrw0E8jT/bRN5dyZRhxy8Dz4IWinb8iQI05q0WyAJyotuJ5lWSqKIHIKWiu
	/qhztPL8fkb9TIwVAr+70CK89QguqL9ez8B0e9SkNnXaxO2qh2P29uDw/ySzjdoYeBOXJ3xkw5CGe
	22A9ztYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9L24-00Ahtc-1o;
	Wed, 14 Jun 2023 07:35:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9L21-00AhrR-0Z
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 07:35:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q9L1y-0005Ae-GP; Wed, 14 Jun 2023 09:35:02 +0200
Received: from uol by pty.hi.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1q9L1y-008sVM-3s; Wed, 14 Jun 2023 09:35:02 +0200
References: <20230614063804.3413061-1-u.oelmann@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Jun 2023 09:33:28 +0200
In-reply-to: <20230614063804.3413061-1-u.oelmann@pengutronix.de>
Message-ID: <6rsfauzec9.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_003505_216788_D6DC4C0D 
X-CRM114-Status: GOOD (  19.51  )
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
Subject: Re: [PATCH] common: Kconfig: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Forgot my SOB and sent a v2.

Ulrich


On Wed, Jun 14 2023 at 08:38 +0200, Ulrich =C3=96lmann <u.oelmann@pengutron=
ix.de> wrote:
> ---
>  common/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/common/Kconfig b/common/Kconfig
> index ce94718c848a..a36d823608ac 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -711,7 +711,7 @@ config MMCBLKDEV_ROOTARG
>  	  kernel doesn't contain commit [1]. The first linux kernel release
>  	  containing that commit is v5.10-rc1.
>=20=20
> -	  The appending only happen if barebox 'linux.bootargs.bootm.appendroot'
> +	  The appending only happens if barebox' 'linux.bootargs.bootm.appendro=
ot'
>  	  variable is set or the used blspec entry contains 'linux-appendroot'.
>=20=20
>  	  Note: It is crucial that the kernel device tree and the barebox device
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


