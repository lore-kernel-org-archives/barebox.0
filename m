Delivery-date: Thu, 21 May 2026 22:55:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQAQD-002MQD-3C
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 22:55:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQAQD-0004eT-FX
	for lore@pengutronix.de; Thu, 21 May 2026 22:55:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ccUCe01aExNF//Xkn6zZOVbp+PkQxl5KyRIP8f4txyc=; b=zdiVjEtaJ4z7/0
	EKDqIzZSg9y9+1dQ0MepKKclOvn5N6kYdNsKkFK7rieXWIZgg8sKqlGtXbFNq3B0A2avfv1Gzm5TJ
	8i5GvGOuttqrGO6+4/IQb71+O8Pslv6hrDl3BvGMvplFWmSC0bc+YEuleT891CWMbr/IvFD5kMlZE
	SnXYYzl/OqHL5ckpQpkzgXoeipFPkwOZpXa+Zx6WySBEyE2VIHaJJTEvBy1pThtsyqpPL5OCBVY8F
	pSeoC2TT50IrBQl6BtB7Yz6ieJwArG8six37TKPwR6TH8aFz0Fs3Y2pU1hXY0TWFs+DSbIYvBYIca
	M3yCBQQr07lqWs93lSvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQAOj-000000094Cb-298i;
	Thu, 21 May 2026 20:53:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQAOg-000000094Bt-1l9f
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 20:53:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with UTF8SMTP id AC1DD403A5;
	Thu, 21 May 2026 20:53:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 5DCC91F000E9;
	Thu, 21 May 2026 20:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779396817;
	bh=ccUCe01aExNF//Xkn6zZOVbp+PkQxl5KyRIP8f4txyc=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=cnk7jNxuqr0UgRKEKIBwohA98+hGFRevj/arn3FssPtDM+Tr+VIrPPSFP7hzV04Ip
	 JdSS2YJCxHWKPgXl9G5wkwScwyjOzKlRkuM1DnhhUYEW8eOuGWxsgmrEC0lNCZnlN7
	 kyhsV1tD5KPv4tuQJwwL90kzwYYYRxFhvIq2w4fAVR6/kzPL438eBAmWKW3vZnSmqU
	 bvjZJGTdCIF5h9RLHLYNe2z43BaQc1p64K/iPsFRxBsDZfWi75FthiyFJX9x/22arJ
	 bWhqKuqtT5wzhcAfX350HeXBz8jfQ2JRxINdor2Qwn3t944GCWaeEzmtDEkFjt4urs
	 bCItGhEOoHFuQ==
Date: Thu, 21 May 2026 15:53:36 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260521205336.GA184217@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1wQ9M6-00000004aRG-0Dzw@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_135338_480211_584F8596 
X-CRM114-Status: GOOD (  15.78  )
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
X-Spam-Status: No, score=-104.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] pci: add pci_is_bridge() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, May 21, 2026 at 07:46:54PM +0000, Sascha Hauer wrote:
> On 2026-05-21 11:23, Bjorn Helgaas wrote:
> > > diff --git a/include/linux/pci.h b/include/linux/pci.h
> > > index f6511e0095..a2dbaf6ec2 100644
> > > --- a/include/linux/pci.h
> > > +++ b/include/linux/pci.h
> > > @@ -123,6 +123,20 @@ struct pci_dev {
> > >  };
> > >  #define	to_pci_dev(d) container_of(d, struct pci_dev, dev)
> > >  
> > > +/**
> > > + * pci_is_bridge - check if the PCI device is a bridge
> > > + * @dev: PCI device
> > > + *
> > > + * Return true if the PCI device is a bridge of PCI-to-PCI type. Masks the
> > > + * multi-function flag so a multi-function bridge is still recognised.
> > > + */
> > > +static inline bool pci_is_bridge(struct pci_dev *dev)
> > > +{
> > > +	u8 type = dev->hdr_type & PCI_HEADER_TYPE_MASK;
> > > +
> > > +	return type == PCI_HEADER_TYPE_BRIDGE;
> > > +}
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/pci.h?id=v7.0#n755
> > 
> > Am I missing something?
> 
> Yes. This is a barebox patch, not Linux. Is it a lei query that made you
> stumble upon this?

Oops, sorry.  Indeed, I do read via lei.  I notice I'm regularly
getting tripped up by patches to uboot and now barebox.  I guess I
should update my lei query.  Sorry for the noise.

Bjorn


