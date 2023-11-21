Delivery-date: Tue, 21 Nov 2023 09:35:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5MEB-002hUb-1h
	for lore@lore.pengutronix.de;
	Tue, 21 Nov 2023 09:35:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5MEB-0007fr-Gu
	for lore@pengutronix.de; Tue, 21 Nov 2023 09:35:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qCD7cQQ6gdNqon5vqM7lCYRdQfSWv7C57WFCRTrn3wE=; b=h4yubphYMRPW9HLjaGgq6Z/WWG
	0I0mKoht+3f8c7xsGAwWXjlc7ydTZRPFBC97n7d5rTSpUeTy6u1IwPJY9GWopv8Pd817jtKIzhhb8
	9LdS9zrxbA3WAUgFC6XUUI3jampRwg8pDsfPaZbUMsg0vKIOZiB+jKoQHBuyQK5RIGzTl3v2eAEf9
	3jo2EnQfb/cJCZKge2nGNI46lhm75/CU2C5sl6luLm6zc4LG/AQyiig2YnwoCoCz+CqQc2rcZWT2n
	7zO9b4l/vWoFQ5gB2D1ThBKgOYeSez6n++qBTSFRuV/9w5cRzsnNrpY+Xp/MnxFQIDaQJLQ2CV2Lw
	AJG/klNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5MCq-00G11n-1K;
	Tue, 21 Nov 2023 08:34:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5MCn-00G11K-0f
	for barebox@lists.infradead.org;
	Tue, 21 Nov 2023 08:34:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5MCl-0007OH-BS; Tue, 21 Nov 2023 09:33:59 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5MCk-00AXRP-Qz; Tue, 21 Nov 2023 09:33:58 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5MCk-0036dH-O9; Tue, 21 Nov 2023 09:33:58 +0100
Date: Tue, 21 Nov 2023 09:33:58 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Thorsten Scherer <T.Scherer@eckelmann.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20231121083358.GP3359458@pengutronix.de>
References: <20231115090238.399200-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231115090238.399200-1-uwe@kleine-koenig.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_003401_242970_EC4DEDC1 
X-CRM114-Status: GOOD (  24.83  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/2] Allow generating MAC addresses from machine ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 15, 2023 at 10:02:39AM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
>=20
> this series contains two patches by Ahmad that he send earlier starting
> with Message-Id: <20230911155927.3786335-1-a.fatoum@pengutronix.de>.
>=20
> Patch #1 was already applied back then as 9831b2e5fed8 ("common:
> machine_id: support deriving app specific UUIDs").
>=20
> Changes since (implicit) v1:
>=20
>  - fix compilation with MACHINE_ID=3Dn (Sascha)
>  - fix typo in NET_ETHADDR_FROM_MACHINE_ID helptext (Thorsten)
>  - rename of_populate_ethaddr -> populate_ethaddr as it's not about of an=
y more (Sascha)

This series neither applies to master nor to next, please resend

Sascha

>=20
> On Tue, Sep 12, 2023 at 12:49:03PM +0200, Sascha Hauer wrote:
> > On Mon, Sep 11, 2023 at 05:59:27PM +0200, Ahmad Fatoum wrote:
> > > @@ -566,11 +568,18 @@ static int of_populate_ethaddr(void)
> > >
> > >             ret =3D of_get_mac_addr_nvmem(edev->parent->of_node,
> > >                                         edev->ethaddr);
> > > +           if (ret && IS_ENABLED(CONFIG_NET_ETHADDR_FROM_MACHINE_ID)=
) {
> >
> > This check doesn't seem to be needed, generate_ether_addr() already
> > returns -ENOSYS when this option is not enabled.
>=20
> I kept this check, Ahmad already argued that is should be kept. (I only
> swapped the checks to have the static one first which is IMHO more
> natural.)
>=20
> Best regards
> Uwe
>=20
> Ahmad Fatoum (2):
>   common: machine_id: support deriving app specific UUIDs
>   net: add generic MAC address derivation from machine ID
>=20
>  common/machine_id.c  | 84 ++++++++++++++++++++++++++++++++++++++++++--
>  include/linux/uuid.h |  8 +++++
>  include/machine_id.h | 11 ++++++
>  include/net.h        |  2 ++
>  net/Kconfig          | 17 +++++++++
>  net/eth.c            | 15 ++++++--
>  net/net.c            | 49 ++++++++++++++++++++++++--
>  7 files changed, 179 insertions(+), 7 deletions(-)
>=20
> base-commit: bc5e49335067d0c6c6e97c082a0368fe9d86b725
> --=20
> 2.42.0.586.gbc5204569f7d.dirty
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


