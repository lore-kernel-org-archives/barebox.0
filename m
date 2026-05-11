Delivery-date: Mon, 11 May 2026 16:03:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMREF-000Zq4-10
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 16:03:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMRE9-0001fn-99
	for lore@pengutronix.de; Mon, 11 May 2026 16:03:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=Go3FZ5HCS3Rvqhx/+0lRm0HyzR4hqrCVcDXk00X6t40=; b=VfmmQwBzW4/EbhhefdfxsG7Wf3
	hK20IuZdCiabveJ471A6bo8aQA/dAbc2CvggANGlwtP7CPaj8jXIbzyUivU5iv782287JvXbVKlPA
	0F65HBwbbZT+7bnqH4xKFid9aETei1XOqelLFXgA45K+C6sCbY/aAgI60jW70RoZ5EWOAFqdq61sL
	5wrEodvTBB68n+SrBTQvelMHoU83aipsu9awQRjDjpvvfhEK6gDYz0hwRLVxGO0d/aHJ6uJeJbNqX
	e5DDn7gSgKptuxBgc+4dcIxoxXT+7uVNvgQrZ2HARikySBQtGukR/EnpNO6zaUuGYzm6VW6dybMht
	CLocfekg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRCr-0000000DqNP-1FB1;
	Mon, 11 May 2026 14:02:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRCq-0000000DqNC-1Fpv
	for barebox@bombadil.infradead.org;
	Mon, 11 May 2026 14:02:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description:References;
	bh=Go3FZ5HCS3Rvqhx/+0lRm0HyzR4hqrCVcDXk00X6t40=; b=O0fEziqZG2w7OHS+nbyGL/STSU
	VQfDjrhLJuWDRlkWuvRS8Pak3CHE9t89dsHR5QQ8ESh8qSm0nguWQJgcLWheoF5aF/VmxrmcH4FRU
	t4kbNH6WBibfHCSv2qTZVMKLZRYE5YFZ6ctcMt3IbjajNnk+MCqNrUyYAgtYfQZAnj2tX81fIr2yG
	3rJfgIVGRUo+Zmcxw5dLVyTOfpCGpssNPNDOemd0Fn32KdThD718AjYArG9jGBynCplUIOKvN6r0/
	Yt2UyXdEbXJg5woSkUpEtx64A15hP/vt5Axtr0Fhb++uvjDkvO79BM+UmPZJT7ZcyVLqSSyiEmZr3
	wcbzG92A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRCn-00000008H5g-0GEs
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 14:01:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wMRCl-00012A-Kr; Mon, 11 May 2026 16:01:55 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wMRCk-000GUM-1k;
	Mon, 11 May 2026 16:01:55 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wMRCl-0000000FNV4-0iBY;
	Mon, 11 May 2026 16:01:55 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <5be49069-569b-4867-a901-04a34c01932b@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 14:01:55 +0000
Message-Id: <E1wMRCl-0000000FNV4-0iBY@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_150157_142807_54EF0BC0 
X-CRM114-Status: GOOD (  14.85  )
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
Cc: BAREBOX <barebox@lists.infradead.org>, "Claude
 Opus 4.7" <noreply@anthropic.com>
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
Subject: Re: [PATCH 06/10] mci: rockchip-dwcmshc-sdhci: use ADMA2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-11 14:55, Ahmad Fatoum wrote:
> Hello Sascha,
>
> On 5/11/26 2:08 PM, Sascha Hauer wrote:
> > The SDMA engine doesn't seem to be fast enough to keep up with HS400
> > support. In preparation to add HS400 support to the driver switch to
> > ADMA when available.
> >=20
> > Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/mci/rockchip-dwcmshc-sdhci.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >=20
> > diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchi=
p-dwcmshc-sdhci.c
> > index 04ee528f07..23c887e906 100644
> > --- a/drivers/mci/rockchip-dwcmshc-sdhci.c
> > +++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
> > @@ -361,6 +361,11 @@ static int rk_sdhci_probe(struct device *dev)
> > =20
> >  	sdhci_setup_host(&host->sdhci);
> > =20
> > +	ret =3D sdhci_setup_adma(&host->sdhci);
> > +	if (ret && ret !=3D -ENOTSUPP)
> > +		dev_warn(dev, "ADMA setup failed (%pe), falling back to SDMA\n",
> > +			 ERR_PTR(ret));
>=20
> As transparent fallback is implemented, could this be folded into
> sdhci_setup_host, so it's opt-out instead of opt-in?

I don't expect much advantage from ADMA for drivers that do not need it.
The advantage is that ADMA can do scatter gather DMA, but we don't make
use of it in barebox.

I'd rather leave it opt-in for now at least for a few rounds.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


