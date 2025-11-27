Delivery-date: Thu, 27 Nov 2025 10:20:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAW-005NVn-11
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:20:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYAV-0003UU-0Z
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:20:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FqL13xUnArheV/40obmhMA5p2HFLDLQj17e5Ain/+80=; b=xpqdTotgyQoDI4zoFLOflG4zZ8
	PhW4B+v0q4EIzJhmMq4bFQZJmZnpdPyFK+Ds615AIfD2rsJEtncqrN7gi3P9asBKv+hTlKc39Uo2h
	UdCDo5eFKd0/Tj1DYJT6XVs/Aa7t88f2R+sLVusVLTJNZSUQifS8PntX6cz+KyKAewV8f4vWyXHS6
	jlHiW5X7rsgHNAW/+Mq6gYtaQAf3grZyZStVfZxWRaLXVZRnkhQoTQTbQmn1/fbWWPfKec+2nWVFz
	nSHOIligcAHHWEpoy5hNhbdXO/SOwJYzaWJRH99JVj8j6ZnZHF08zYWh6Y0tNo1Q5aUzNSTzrSxRN
	AZIH1UGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA7-0000000GGpm-35GZ;
	Thu, 27 Nov 2025 09:19:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYA5-0000000GGlI-2i2s
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:19:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1vOYA2-00037n-UF; Thu, 27 Nov 2025 10:19:34 +0100
Message-ID: <7391cf043e0c56d2b52fe7fdd278349229516f45.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
Date: Thu, 27 Nov 2025 10:19:34 +0100
In-Reply-To: <20251127034024.3381739-1-chalianis1@gmail.com>
References: <20251127034024.3381739-1-chalianis1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_011937_690903_86003E0C 
X-CRM114-Status: GOOD (  15.50  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pci: pci-tegra: fix null pointer assignation.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Am Mittwoch, dem 26.11.2025 um 22:40 -0500 schrieb
chalianis1@gmail.com:
> From: Chali Anis <chalianis1@gmail.com>
>=20
> the dev might be null, to be sure we move the dev assignation before
> the pci parent assignation.

This isn't worded strongly enough. pcie->dev will absolutely be NULL at
the point where it is assigned to pci.parent, which seem like a blatant
bug and I don't know how this did ever work or if we just ignored the
broken parent device connection.

Other than the commit message needing some adjustment, this change
looks correct.

Regards,
Lucas

>=20
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  drivers/pci/pci-tegra.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/pci/pci-tegra.c b/drivers/pci/pci-tegra.c
> index b7f8297d153e..dabe63500a4a 100644
> --- a/drivers/pci/pci-tegra.c
> +++ b/drivers/pci/pci-tegra.c
> @@ -1240,13 +1240,13 @@ static int tegra_pcie_probe(struct device *dev)
>  	if (!pcie)
>  		return -ENOMEM;
> =20
> +	pcie->dev =3D dev;
>  	pcie->pci.parent =3D pcie->dev;
>  	pci_controller_init(&pcie->pci);
> =20
>  	INIT_LIST_HEAD(&pcie->buses);
>  	INIT_LIST_HEAD(&pcie->ports);
>  	pcie->soc_data =3D device_get_match_data(dev);
> -	pcie->dev =3D dev;
> =20
>  	err =3D tegra_pcie_parse_dt(pcie);
>  	if (err < 0) {
>=20



