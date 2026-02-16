Delivery-date: Mon, 16 Feb 2026 16:28:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vs0We-002Mbs-1g
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 16:28:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vs0We-0006Xu-Rc
	for lore@pengutronix.de; Mon, 16 Feb 2026 16:28:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nnOWpaI9zaEOlKGV0sRHhWPTep9dljNUusd1a4EDqhE=; b=YQWEpbQM9m/UKNigDgTSrAd/YW
	bTMmx9n8DzivhTuPCu+XYnZb3G+Lt7eGDepR7Z8Jcrs0BT3WQUwMC66jtzdE8YqKe3aKk7S4YATaj
	YD+RbTtO1gfk/09D0xq+Uh8nJzWZReC1D6rpyEcV1Kmq4ErBAJiThtAli8JGT1oYcP9esfPaCMVfl
	c9EtuM2Mlo+2bZ92mIYdYfk7nemhEJk9Wy+3xBgmLokpf8HtzAkBmgfY285j2ojO+7hz6ot7TAsvJ
	3BUyPJcUxhDRtAGDoWL6P3Velo4sm0D215bNO+Z4OWfdd5qBFKcHHv1Qn7FyglrAGWCRFCq2En2X6
	PF4NBLUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs0W3-00000006tdx-1cDd;
	Mon, 16 Feb 2026 15:28:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs0W0-00000006tcn-2XMG
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 15:28:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1vs0Vx-0006QI-K4; Mon, 16 Feb 2026 16:27:57 +0100
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1vs0Vw-0015ZS-0G;
	Mon, 16 Feb 2026 16:27:57 +0100
Received: from [127.0.0.1] (helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <jlu@pengutronix.de>)
	id 1vs0Vx-00000000juj-0wwq;
	Mon, 16 Feb 2026 16:27:57 +0100
Message-ID: <74cb386245752867ca45061dd3fa4b08ed892854.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Robert Schwebel <r.schwebel@pengutronix.de>, barebox@lists.infradead.org
Date: Mon, 16 Feb 2026 16:27:56 +0100
In-Reply-To: <20260213074958.1448689-1-r.schwebel@pengutronix.de>
References: <20260213074958.1448689-1-r.schwebel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_072800_639676_5E246905 
X-CRM114-Status: GOOD (  16.09  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: spell out what TLV actually means
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, 2026-02-13 at 08:49 +0100, Robert Schwebel wrote:
> "barebox TLV" is used in many places, but the acronym is not explained
> anywhere. Spell out what it actually stands for.
>=20
> Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
> ---
>  Documentation/user/barebox-tlv.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/user/barebox-tlv.rst b/Documentation/user/bare=
box-tlv.rst
> index 1c1abfb43a..0887194801 100644
> --- a/Documentation/user/barebox-tlv.rst
> +++ b/Documentation/user/barebox-tlv.rst
> @@ -1,8 +1,8 @@
>  barebox TLV - Non-Volatile Factory Data Storage
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =20
> -barebox TLV is a system to store and retrieve a device's (read-only)
> -meta-data from non-volatile memory.
> +barebox TLV ("Tag Linked Value" format) is a system to store and
                     ^Length

Jan

> +retrieve a device's (read-only) meta-data from non-volatile memory.
>  It is intended to handle information that are usually only set in
>  the factory - like serial number, MAC-addresses, analog calibration
>  data, etc.

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


