Delivery-date: Thu, 21 May 2026 21:48:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ9NQ-002LS1-0X
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 21:48:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQ9NP-0004nr-JK
	for lore@pengutronix.de; Thu, 21 May 2026 21:48:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=NUwx+qyU/DiPr31Th8+3lDKoZFflMqHXhXvWE5OxWZI=; b=jVDy6Ctlab0BJJsaUYhsR9stay
	6H0nom30xHS/XrhlN0MD5R2nDtHQxQx5hRSMyP4cJkm4GMZTgY9lNlfe3jH1T3QNm9FHJdrUq2PFG
	Ry8I9+RE8uIcdT6SkqoRmmoC/+HWGF1Sce9Bp372/xHqFMlWjndaeylODJfyr0y6iqc7IoD4DBIfi
	jvm22Aroo+CAJzF+FOGg/NTygfvS9o5vDu4u2kqondbhevZlg3kan2m08evwjgmX2hNNDBtQkrPrQ
	y3C8vhDh74td3Jmhr+dJQSfsBfksptplZBcTfBdp6qQnmNJyQgIX8ZX05l5JlqYUfdxnfpWWyKemt
	91BXKPiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ9MB-00000008wkg-3QSa;
	Thu, 21 May 2026 19:46:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ9M9-00000008wjP-0K1h
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 19:46:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ9M6-0004ct-6b; Thu, 21 May 2026 21:46:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ9M5-0019Yu-1s;
	Thu, 21 May 2026 21:46:54 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wQ9M6-00000004aRG-0Dzw;
	Thu, 21 May 2026 21:46:54 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Bjorn Helgaas" <helgaas@kernel.org>
In-Reply-To: <20260521162355.GA168776@bhelgaas>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 19:46:54 +0000
Message-Id: <E1wQ9M6-00000004aRG-0Dzw@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_124657_116735_62267EEB 
X-CRM114-Status: GOOD (  15.70  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
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
Subject: Re: [PATCH 3/4] pci: add pci_is_bridge() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-21 11:23, Bjorn Helgaas wrote:
> > diff --git a/include/linux/pci.h b/include/linux/pci.h
> > index f6511e0095..a2dbaf6ec2 100644
> > --- a/include/linux/pci.h
> > +++ b/include/linux/pci.h
> > @@ -123,6 +123,20 @@ struct pci_dev {
> >  };
> >  #define	to_pci_dev(d) container_of(d, struct pci_dev, dev)
> > =20
> > +/**
> > + * pci_is_bridge - check if the PCI device is a bridge
> > + * @dev: PCI device
> > + *
> > + * Return true if the PCI device is a bridge of PCI-to-PCI type. Masks=
 the
> > + * multi-function flag so a multi-function bridge is still recognised.
> > + */
> > +static inline bool pci_is_bridge(struct pci_dev *dev)
> > +{
> > +	u8 type =3D dev->hdr_type & PCI_HEADER_TYPE_MASK;
> > +
> > +	return type =3D=3D PCI_HEADER_TYPE_BRIDGE;
> > +}
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/i=
nclude/linux/pci.h?id=3Dv7.0#n755
>=20
> Am I missing something?

Yes. This is a barebox patch, not Linux. Is it a lei query that made you
stumble upon this?

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


