Delivery-date: Mon, 14 Aug 2023 12:05:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVURh-003crV-01
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 12:05:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVURe-0007Pm-OO
	for lore@pengutronix.de; Mon, 14 Aug 2023 12:05:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V6pCjoI7Q90pXGHqAFtBgrbXPC+NJ2eXZfdUQB/ldQA=; b=vqU3xNq4yJw5WLerE+0FsijXrf
	jGRydp2Z4JBA/D7244NlYWpTFilbOLeQQ1gYRWER6nUscNuD0Lw3bVKutukjuIeCrcAEc9l94Hcu8
	XbQbQUmY+gExCQE05ciDoMgPGb1yA9kEJM1qrVce4icuCCAVU6qCr87LT8fodfTZvNzIKDBYVPtTz
	MuTIodJVKL4lvfVpcxx/rqHwAUJt3sIxTuYgyTIW8gkuwtNGLDGcg/I88hnJndfueZmkXTsIdh3Gv
	scv3yUUeTCNwG7fvM2ljhuDoVMAyBNDefL6o6buejm/O9Sl4BeDvgY6C7xko0XuPia+SXTi7ZWU/T
	BrVTX3LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVUQX-00Gfh6-1L;
	Mon, 14 Aug 2023 10:03:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVUQU-00GfgS-3A
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 10:03:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1qVUQT-00072k-Fb; Mon, 14 Aug 2023 12:03:53 +0200
Message-ID: <10e7ed14fc546d70b5d3fdacdeeea9ec8d641a54.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Aug 2023 12:03:52 +0200
In-Reply-To: <20230814094531.2341060-1-o.rempel@pengutronix.de>
References: <20230814094531.2341060-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_030355_019365_B421479F 
X-CRM114-Status: GOOD (  11.83  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: add Skov i'MX8MP based board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Montag, dem 14.08.2023 um 11:45 +0200 schrieb Oleksij Rempel:
> Add basic support for the Skov i'MX8MP based system.
                                 i.MX8MP
> This is initial support and will be extended later at least with board ve=
rsion
> detection.
>=20
> The compatible used in the board file is for barebox specific generic
> devicetree which is expected to work with all Skov i'MX8M based boards.
                                                     i.MX8MP
>=20
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> changes v2:
> - remove board dependency on DSA and KSZ9477 drivers
> - add notice about generic board support
>=20
>  arch/arm/boards/Makefile                      |    1 +
>  arch/arm/boards/skov-imx8m/Makefile           |    4 +

This board is designed exclusively around the i.MX8MP, with no plan for
using any other chip from the i.MX8M family, so I guess the directory
name could reflect that.

Regards,
Lucas


