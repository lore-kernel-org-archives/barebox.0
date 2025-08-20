Delivery-date: Wed, 20 Aug 2025 13:04:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogc1-002arZ-1T
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 13:04:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogc0-0003ki-6C
	for lore@pengutronix.de; Wed, 20 Aug 2025 13:04:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KgTnvdxusReNUGX+erRmjQfkdrLwncN59GbG787Vqck=; b=omPWwtrj24qfONgdl+PDA8eRmf
	yTiyh3HsaqqL7Or4OyVqWlOH3O161v7hkGDSV/HI6ztgRO3ey5SjHBarD1TZxYl5y2VSz0XQqAmsw
	lFWW8qKBJosnq4JzI6NLKxRDayekcC+R4oHyh70YBpseFW7VlcjHzdYmT9A8h7ILBWCGF+LHu3uQm
	OnA+VxHEvSt2TK135sN6AOMam0vGyjGDnSAmzUbSCemIcNSK+8rLX7aEAO+siJ5NR2za5+R9tzQz6
	PD73vHYVNS/NsaSGNja0udkBMztTIVoMni+5kSJh0piWNHsBuGkrjvBULpocDBZHnrHuAiIJT2bpD
	u0bYjQgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogbp-0000000DHU4-2J9K;
	Wed, 20 Aug 2025 11:04:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoeob-0000000Cqpm-41XT
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:09:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoeoa-0001fT-8B; Wed, 20 Aug 2025 11:09:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoeoa-001Dmt-0D;
	Wed, 20 Aug 2025 11:09:04 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoeoZ-005sW0-3A;
	Wed, 20 Aug 2025 11:09:03 +0200
Date: Wed, 20 Aug 2025 11:09:03 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250820090903.a4svfbrphnhh452r@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-5-b6d677f6c519@pengutronix.de>
 <aKV5-BopekRX26BL@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKV5-BopekRX26BL@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_020906_000122_7392E5A2 
X-CRM114-Status: GOOD (  23.07  )
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
Subject: Re: [PATCH v2 05/15] nvmem: core: sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-08-20, Sascha Hauer wrote:
> On Mon, Aug 18, 2025 at 07:44:39PM +0200, Marco Felsch wrote:
> > Partly (re-)sync the nvmem core with Linux. The main changes are:
> >   - The nvmem_cell struct was split into nvmem_cell and nvmem_cell_entry
> >   - The cells are now parsed and registered during nvmem_register(), no
> >     longer during of_nvmem_cell_get()
> >   - The registered cells are now tracked per nvmem device, no longer in
> >     a global nvmem_cells list
> > 
> > The sync is in preparation of adding nvmem-layout driver support and
> > features like accessing nvmem-cells via cdevs.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/nvmem/core.c           | 428 ++++++++++++++++++++++++++---------------
> >  include/linux/nvmem-consumer.h |  17 +-
> >  include/linux/nvmem-provider.h |  58 +++++-
> >  3 files changed, 326 insertions(+), 177 deletions(-)
> > 
> > diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> > +static int nvmem_add_cells_from_dt(struct nvmem_device *nvmem, struct device_node *np)
> > +{
> > +	struct device *dev = &nvmem->dev;
> > +	struct device_node *child;
> > +	const __be32 *addr;
> > +	int len, ret;
> > +
> > +	if (!IS_ENABLED(CONFIG_OFTREE))
> > +		return 0;
> > +
> 
> This needs an additional check:
> 
> 	if (!np)
> 		return 0;
> 
> > +	for_each_child_of_node(np, child) {
> 
> Linux gracefully handles NULL in for_each_child_of_node() whereas
> barebox crashes here.

Damn, thanks for spotting this.

Regards,
  Marco


> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


