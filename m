Delivery-date: Tue, 28 Mar 2023 14:34:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph8Wk-0001vF-Ig
	for lore@lore.pengutronix.de; Tue, 28 Mar 2023 14:34:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ph8Wk-0003Zh-G4
	for lore@pengutronix.de; Tue, 28 Mar 2023 14:34:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wp2dA0An96OC71msu08mhh9wkrHTt8WKcdKcSRjraSE=; b=Oux3Kjz+lL9km01JCLJ+LPOG4W
	3pNkXl8bJX+m1QzeATAmgRmu/ftuQ1BBqLDpDGfgBmIPzAQRYy4MN8dIrPvwEvDNi3ovSwBVV1e9n
	mjaJzbE1jsexP3/kI1Wf1tiUS8g+nCwX5G36l5f4JG/0crk5z+1VGVNOJ18BlF7kd/AWm6PnAnZ5h
	J3Y3VjL5075ChPK64aW2xHhYMnH6lEibpvJs4rJ4rK2vdqLfRVnhDNSbf1jhmXXT5tOdjJUFtW7Gi
	jkzITzz+TmsSSkdkKItQxm3aZxTRaD1RIciEvRjWeNxfNs/yE1Wub/qGWg16/V0/1WCvM/iUq2cjC
	ItjYr9JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph8Vg-00EOkI-0S;
	Tue, 28 Mar 2023 12:33:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph8Vc-00EOjM-1P
	for barebox@lists.infradead.org;
	Tue, 28 Mar 2023 12:33:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1ph8Vb-0002gQ-57; Tue, 28 Mar 2023 14:33:03 +0200
Message-ID: <d90227e075600ebc79a52db4ea85c5450eefad02.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Mar 2023 14:33:02 +0200
In-Reply-To: <20230328095859.GK19113@pengutronix.de>
References: <20230321095056.1333669-1-s.hauer@pengutronix.de>
	 <4a513c3345155039e8dec995e1294f4dcc3e30a5.camel@pengutronix.de>
	 <20230328095859.GK19113@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_053304_473530_E566242D 
X-CRM114-Status: GOOD (  29.73  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mci: sdhci: Add and use common sdhci_wait_for_done()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Tue, 2023-03-28 at 11:58 +0200, Sascha Hauer wrote:
> On Mon, Mar 27, 2023 at 03:01:31PM +0200, Rouven Czerwinski wrote:
> > Hi,
> >=20
> > On Tue, 2023-03-21 at 10:50 +0100, Sascha Hauer wrote:
> > > We have different driver specific variants of functions polling
> > > for the
> > > device ready in the tree. Add a common sdhci_wait_for_done() and
> > > use
> > > it where appropriate. This fixes a few deficiencies with the
> > > driver
> > > specific variants.
> > >=20
> > > rk_sdhci_wait_for_done() didn't check the SDHCI_INT_TIMEOUT bit
> > > and
> > > returned -EPERM instead when it ought to return -ETIMEDOUT. The
> > > core
> > > tries to detect a SD card first and expects a -ETIMEDOUT for the
> > > setup
> > > command when really a eMMC is connected. Only with a -ETIMEDOUT
> > > the core
> > > tries to detect a eMMC next.
> > >=20
> > > at91_sdhci_wait_for_done() returned the status instead of the
> > > expected
> > > 0 value for success.
> >=20
> > I had to revert this commit to run barebox_update on the CM3
> > RK3566.
> > Otherwise writes to the boot partition would hang indefinitely.
>=20
> Same here. The following fixes this.
>=20
> At some point during MMC initialization we probe for a SDIO card.
> This
> is expected to fail for non SDIO cards and we have to call
> sdhci_reset()
> in the error path then. It's a bit weird that the effect is that
> everything apparently works but writing to boot partitions does not.
>=20
> Sascha

Jip, this fixes it, you can add a:

Tested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

>=20
> ---------------------------8<---------------------------
>=20
> From db92d5c12080c0ad108bd1d8bb0481584a36ae4b Mon Sep 17 00:00:00
> 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 28 Mar 2023 11:43:35 +0200
> Subject: [PATCH] fixup! mci: sdhci: Add and use common
> sdhci_wait_for_done()
>=20
> ---
> =C2=A0drivers/mci/rockchip-dwcmshc-sdhci.c | 4 +---
> =C2=A01 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c
> b/drivers/mci/rockchip-dwcmshc-sdhci.c
> index e055a8ea71..a98600cc4c 100644
> --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> @@ -263,10 +263,8 @@ static int rk_sdhci_send_cmd(struct mci_host
> *mci, struct mci_cmd *cmd,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sdhci_write16(&host->sdhc=
i, SDHCI_COMMAND, command);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D sdhci_wait_for_do=
ne(&host->sdhci,
> SDHCI_INT_CMD_COMPLETE);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret =3D=3D -EPERM)
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0goto error;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else if (ret)
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sdhci_read_response(&host=
->sdhci, cmd);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sdhci_write32(&host->sdhc=
i, SDHCI_INT_STATUS,
> SDHCI_INT_CMD_COMPLETE);
> --=20
> 2.39.2
>=20



