Delivery-date: Thu, 06 May 2021 15:09:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ledkm-000275-8D
	for lore@lore.pengutronix.de; Thu, 06 May 2021 15:09:20 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ledkl-0002HL-9j
	for lore@pengutronix.de; Thu, 06 May 2021 15:09:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lv8hR9hBHcb621s0X8ptxraGNAfPLpTlaoNnJHkxcSI=; b=EgISy6cc68Ag7cXEwsX1E5EL3
	Gji2lCMN+WL5cj9LE7a4gk0waFVU4lr2JFzaH9drRU4EPmRFU9F3+3Dp0vEeYVz4VBcto21L1QRyf
	m/0rvsPmweg18+5LTb9BEYAiq/7z6qD+8Ba9jRwtLaq1Q8rAOgtoILosGfPPw9gA0JifHYK7F+JV2
	r6e6gw5b/0p/KSZBmH0zQudcNHIUxK8h/huWBzlfYrhFNgknSr2f1UhN5hzSiAOcSVYPPB02oN3ej
	yM7MVqHNPpT3B+a7ffln3TVzFKuh32gtUB7AYmZZCA5nW+pCTDVbNYi89E3c615ZmMpp0Y+UOypb0
	4lrmLwDAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ledje-004HMl-4n; Thu, 06 May 2021 13:08:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledja-004HMV-4M
 for barebox@desiato.infradead.org; Thu, 06 May 2021 13:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=RL5w4cjRppcmF41CAS3rzTmQcbfjSBuWjyrXHm+F7Io=; b=fS6stCDM+8ptf6Z1oHTpoYjRPo
 M5GD4h/cH7o6dPCLt/0Hk9RHqSZ5VqG8159qV5qstbig68OKX6oX1YtDHJ9b97U+DiDDi9GxrH/FI
 vdtgWdq+XrKlSql8VGp01g8dw9nfAcO3FRFIW8Y9YQgC0qndLrISKknbHAbY6M/ywLOsU04yY4Z+O
 4U2Ti1W87+LUVsO1r6KsU83SjxvtAKBUhphL9SiIzxdWXSMay8S7nAO45yqWdoh5OZWwrYhGjEfbm
 CziJ5uufH5umg2VepJ9Knm43dcTAgpXebU9FDC2eCUq+AolNMnzY3nPArkz/ro6ejyWt1V9NoqazG
 sEMg8OuA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledjX-0062wi-9H
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:08:04 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ledjT-0002BH-56; Thu, 06 May 2021 15:07:59 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ledjS-0003zC-Ru; Thu, 06 May 2021 15:07:58 +0200
Date: Thu, 6 May 2021 15:07:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Borleis <jbe@pengutronix.de>
Message-ID: <20210506130758.fqatlfegvsnccix5@pengutronix.de>
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
 <20210506112219.27114-2-m.felsch@pengutronix.de>
 <75ff4a6d-85c3-0229-ec4f-b6b95444e09a@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75ff4a6d-85c3-0229-ec4f-b6b95444e09a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:50:35 up 155 days,  2:56, 49 users,  load average: 0.13, 0.08,
 0.03
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_060803_345494_5C7F8BCC 
X-CRM114-Status: GOOD (  25.77  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] mci: mci-core: set the DEVFS_IS_MCI_DEV flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-05-06 14:06, Ahmad Fatoum wrote:
> Hello,
> =

> On 06.05.21 13:22, Marco Felsch wrote:
> > Set the new introduced flag to be able to check if the cdev is an
> > mmc/mci device.
> > =

> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/mci/mci-core.c | 1 +
> >  1 file changed, 1 insertion(+)
> > =

> > diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> > index 017f25d35f..c0fbcb385f 100644
> > --- a/drivers/mci/mci-core.c
> > +++ b/drivers/mci/mci-core.c
> > @@ -420,6 +420,7 @@ static void mci_part_add(struct mci *mci, uint64_t =
size,
> >  	part->size =3D size;
> >  	part->blk.cdev.name =3D name;
> >  	part->blk.cdev.partname =3D partname;
> > +	part->blk.cdev.flags |=3D DEVFS_IS_MCI_DEV;
> >  	part->blk.blockbits =3D SECTOR_SHIFT;
> >  	part->blk.num_blocks =3D mci_calc_blk_cnt(size, part->blk.blockbits);
> >  	part->area_type =3D area_type;
> =

> This is called for hardware partitions, like boot and general
> purpose partitions.
> =

> For boot partitions, the later commit is wrong. I don't know what the def=
ault
> file name for mmc GPP block partitions is, J=FCrgen?

Arg right, the boot partition name scheme differs. For GPP there should
be seperated devices, don't know that directly.

Should we first add the support for MMC_BLK_DATA_AREA_MAIN only? This is
the most tested path.

> You should probably do this only for the MMC user partition (check for
> area_type =3D=3D MMC_BLK_DATA_AREA_MAIN). I think DEVFS_IS_MCI_DEV
> should be renamed to DEVFS_IS_MCI_MAIN_DEV to.

^^ Yep, I think so too. Will change that.

Regards,
  Marco

> =

> Cheers,
> Ahmad
> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

