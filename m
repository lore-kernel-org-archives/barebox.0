Delivery-date: Wed, 20 Aug 2025 12:17:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uofsT-002aGr-0a
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:17:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uofsR-0005D7-Vt
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:17:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KO6zGvWptqVlXNoTaCutaqjw+28ihqb3uqfj1dyxPEA=; b=g7nUS4+3hulLvJY+SK4sE2/RWW
	+Cdw/D1ry2z3JP3K0IjPcFMJCtMvNnfgPrIWNGYB7XSD8aBXq5i+M7E6LlIA9+Df9gAorRQQHiB4E
	Ofzjeoq8YuYXNCnkWLgD1VZwBsj0mNmadvJE76B8TIjhhNWYwl/XYiAflZtxsYQaPWeLBMQ7g/JF+
	sqxozCdv+cS+3lp+YM9nMp29fsA31h0h6yLI4MkmdHbeULHlwjyIfBPftMv/q7BLalFvrvzkeVyTn
	oYt+Njlk1Db5whHn6U67Pt1hngV4P7O7p0ZYtcfi/W3IMVuxd/FjAo8QPaW+wN5acRweNYQez0esH
	9pnVVbQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofro-0000000D6m0-3OEp;
	Wed, 20 Aug 2025 10:16:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofIj-0000000CyTy-2eTI
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=KO6zGvWptqVlXNoTaCutaqjw+28ihqb3uqfj1dyxPEA=; b=dt2s0jNV90ppv/Mk1tCFXg4Xv1
	wgiDAZnv86P7qoAw22/55c7gkuEV3mNDhr1lKBot0qYDOdBBCZvEmc4dQ3/PcRchii4yin3Q79RbK
	JBe80U10zU2H/llEb2RDgkP8cSAcw1UjZH9kUXVatdkUB82RcQZtH6I7FgI3aFCtNZ/yzn6OfFQP3
	9GwwUHTIRdX/F2+IHPPuRFdccf8Wq/rSFcrfnLeBvs7JYNp0f33SnL0Z7N0PjQSkvzGGYpFR+tpqD
	6LYMJyNXnSocKF0IXSRLZhEbyk2lYTXVDiu9pfRqBniU4AGuoKaALAgHpb5JcZP6jg5Q28TZ0Oaep
	4w//sUTA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofIf-00000000Gyz-4AsY
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:40:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uofIe-00077z-T4; Wed, 20 Aug 2025 11:40:08 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uofIe-001Du4-2J;
	Wed, 20 Aug 2025 11:40:08 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uofIe-005tMx-21;
	Wed, 20 Aug 2025 11:40:08 +0200
Date: Wed, 20 Aug 2025 11:40:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aKWX-ACZUjsdjU6l@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-10-b6d677f6c519@pengutronix.de>
 <aKV8IWPfWNYEst-Z@pengutronix.de>
 <20250820091119.sihdo4bemqsc67wc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820091119.sihdo4bemqsc67wc@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104010_247599_E1A12D47 
X-CRM114-Status: GOOD (  28.09  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/15] nvmem: core: add nvmem-layout support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Aug 20, 2025 at 11:11:19AM +0200, Marco Felsch wrote:
> On 25-08-20, Sascha Hauer wrote:
> > On Mon, Aug 18, 2025 at 07:44:44PM +0200, Marco Felsch wrote:
> > > This ports the Linux nvmem-layout core infrastructure required for the
> > > actual nvmem-layout drivers. This commit doesn't add any specific
> > > nvmem-layout driver.
> > > 
> > > A nvmem-layout is the new way to describe the nvmem storage format. The
> > > nvmem-layout driver parses the nvmem sotrage format and provides the
> > > information via nvmem-cells.
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  drivers/nvmem/Kconfig          |   7 ++
> > >  drivers/nvmem/Makefile         |   3 +
> > >  drivers/nvmem/core.c           | 100 +++++++++++++++++++++++-
> > >  drivers/nvmem/internals.h      |  22 ++++++
> > >  drivers/nvmem/layouts.c        | 173 +++++++++++++++++++++++++++++++++++++++++
> > >  drivers/nvmem/layouts/Kconfig  |  13 ++++
> > >  drivers/nvmem/layouts/Makefile |   7 ++
> > >  include/linux/nvmem-provider.h |  63 +++++++++++++++
> > >  8 files changed, 385 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> > > +struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem)
> > > +{
> > > +	return of_get_child_by_name(nvmem->dev.of_node, "nvmem-layout");
> > 
> > This also needs an additional
> > 
> > 	if (!nvmem->dev.of_node)
> > 		return NULL;
> > 
> > check. This also goes down to of_get_child_by_name doing a
> > for_each_child_of_node() which is defines as:
> > 
> > #define for_each_child_of_node(parent, child) \
> > 	list_for_each_entry(child, &parent->children, parent_list)
> > 
> > list_for_each_entry() does not work with NULL pointers. We might want to
> > change this for Linux compatibility.
> 
> Thanks for testing and spotting this. I ran tests but of course all my
> nvmem devices had an of_node :(

In this case you would have noticed it by running

labgrid-pytest --lg-env test/sandbox/sandbox_defconfig.yaml

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


