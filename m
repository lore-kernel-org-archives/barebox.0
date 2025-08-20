Delivery-date: Wed, 20 Aug 2025 13:04:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogc0-002arE-1e
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 13:04:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogbz-0003kg-7x
	for lore@pengutronix.de; Wed, 20 Aug 2025 13:04:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NlFNZAYoSLL4rA0I5pqlB0KlLO7hRjPsqrXXfy1puJk=; b=aacUISG8bKCN2wiy5fhonHu78S
	jaoX0m28wUruLmSqoxTyxjaUG0aqnk+jL4UCzcSIiVTlFfgtzzG6zxUFGi/CI7QuNF6zJ3q2GiHsJ
	a0Of8h9ZGzevMLum65nI1vAiD5chd2g14yWsbRdVRobKOKnmGm28IHJd37xtZ0RfFA40oXFieAM4J
	rK73dTpXHhvfjZGXfurmryypCxzohYZSRwDRE+dSxoW3wSf1BJikUurYZodzY6Icvx+4k4OOmO0A+
	5mEB6NakDmp7CyjbV7Q+SvuMn2XkVELvS0WMqn6KODqfUi37qA8zCwbEd1B2ZskMrjcWdDciYQnw7
	TpdRPMyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogbq-0000000DHVG-1Nql;
	Wed, 20 Aug 2025 11:04:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoepD-0000000CqxU-1os0
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:09:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoepC-0001nU-8d; Wed, 20 Aug 2025 11:09:42 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoepC-001Dmz-0F;
	Wed, 20 Aug 2025 11:09:42 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoepB-005sWI-3C;
	Wed, 20 Aug 2025 11:09:41 +0200
Date: Wed, 20 Aug 2025 11:09:41 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250820090941.mb7mozcbt5gjry5d@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-6-b6d677f6c519@pengutronix.de>
 <aKV6XQDJIzUcZNAR@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKV6XQDJIzUcZNAR@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_020943_471948_3161B561 
X-CRM114-Status: GOOD (  25.37  )
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
Subject: Re: [PATCH v2 06/15] nvmem: core: expose nvmem cells as cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-08-20, Sascha Hauer wrote:
> On Mon, Aug 18, 2025 at 07:44:40PM +0200, Marco Felsch wrote:
> > Linux has added the support to expose nvmem-cells via the sysfs by
> > commit 0331c611949f ("nvmem: core: Expose cells through sysfs"). This
> > commit adds an equivalent mechanism by exposing the nvmem-cells via
> > cdevs. The name scheme is: <nvmem-dev-name>.<cell-name>.
> > 
> > With this in place it is possible for board code and/or shell to query
> > the nvmem-cell values without specifying the consumer API within DT. At
> > the moment the access is RO like Linux does since write support requires
> > more corner case handling.
> > 
> > The naming scheme for nvmem_populate_sysfs_cells() was kept to reduce the
> > Linux diff.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/nvmem/core.c | 93 ++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 93 insertions(+)
> > 
> > diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> > index c252f17ef0b24e8199e199db086aeec8d09fdf94..4dbeb1e116ae398f1f2748238d97468c1096262a 100644
> > --- a/drivers/nvmem/core.c
> > +++ b/drivers/nvmem/core.c
> > @@ -45,6 +45,8 @@ struct nvmem_cell_entry {
> >  	struct device_node	*np;
> >  	struct nvmem_device	*nvmem;
> >  	struct list_head	node;
> > +
> > +	struct cdev		cdev;
> >  };
> >  
> >  struct nvmem_cell {
> > @@ -167,6 +169,71 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
> >  	return NULL;
> >  }
> >  
> > +static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
> > +					    const char *id, int index);
> 
> This causes intermediate breakage. The prototype at this point is still:
> 
> static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
> 					    const char *id);
> 
> The index parameter is only added later in this series.

Argh.. I didn't noticed this sorry.

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


