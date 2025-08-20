Delivery-date: Wed, 20 Aug 2025 12:51:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogPy-002ajn-0J
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:51:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogPw-00027G-Se
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:51:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZaoufFvnxGW9rCTLAPwrVLcRVf7SbLVcETyG9cyAYWA=; b=qv6xHofGR7kkLtUqQfjlGWfL1c
	6GmXhSSYITvPwAtV3fLRcF9yIgWE3SqD0iUXdqZkm9SZIvC00XtxeJvwIxTcWi9zoJmWd+TfzeiFF
	k1CeHYgcL6Vm7Phpi8F0iwS9on9edTC93OfIKwRUdbY1S1i2ZQj3XIp1xUnfZZV66kO/2SE8j3VK5
	X6HY2ZMDMl1vA3Cq6+FK3QRQjSPnB1kLqKVAhzeBELx+LWlNP+gF84J6Qm8iFitc9Pk1+X9IHcLXy
	chYLiiMuD65FgZC1NAazgn4ZW0DL9kFmrArYTJkpjNlaoyIvKhM0GMgSkk7r1/AFs1SdpwMaSlF/i
	y2Vk4OkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogPR-0000000DFDC-3nnE;
	Wed, 20 Aug 2025 10:51:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofXq-0000000D379-2BFu
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:55:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uofXp-0001SK-9H; Wed, 20 Aug 2025 11:55:49 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uofXp-001Dvf-0L;
	Wed, 20 Aug 2025 11:55:49 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uofXp-005ti6-04;
	Wed, 20 Aug 2025 11:55:49 +0200
Date: Wed, 20 Aug 2025 11:55:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250820095549.c33izqa5oawqmaw2@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-10-b6d677f6c519@pengutronix.de>
 <aKV8IWPfWNYEst-Z@pengutronix.de>
 <20250820091119.sihdo4bemqsc67wc@pengutronix.de>
 <aKWX-ACZUjsdjU6l@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKWX-ACZUjsdjU6l@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_025550_568978_0FB6556D 
X-CRM114-Status: GOOD (  30.94  )
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

On 25-08-20, Sascha Hauer wrote:
> On Wed, Aug 20, 2025 at 11:11:19AM +0200, Marco Felsch wrote:
> > On 25-08-20, Sascha Hauer wrote:
> > > On Mon, Aug 18, 2025 at 07:44:44PM +0200, Marco Felsch wrote:
> > > > This ports the Linux nvmem-layout core infrastructure required for the
> > > > actual nvmem-layout drivers. This commit doesn't add any specific
> > > > nvmem-layout driver.
> > > > 
> > > > A nvmem-layout is the new way to describe the nvmem storage format. The
> > > > nvmem-layout driver parses the nvmem sotrage format and provides the
> > > > information via nvmem-cells.
> > > > 
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >  drivers/nvmem/Kconfig          |   7 ++
> > > >  drivers/nvmem/Makefile         |   3 +
> > > >  drivers/nvmem/core.c           | 100 +++++++++++++++++++++++-
> > > >  drivers/nvmem/internals.h      |  22 ++++++
> > > >  drivers/nvmem/layouts.c        | 173 +++++++++++++++++++++++++++++++++++++++++
> > > >  drivers/nvmem/layouts/Kconfig  |  13 ++++
> > > >  drivers/nvmem/layouts/Makefile |   7 ++
> > > >  include/linux/nvmem-provider.h |  63 +++++++++++++++
> > > >  8 files changed, 385 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> > > > +struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem)
> > > > +{
> > > > +	return of_get_child_by_name(nvmem->dev.of_node, "nvmem-layout");
> > > 
> > > This also needs an additional
> > > 
> > > 	if (!nvmem->dev.of_node)
> > > 		return NULL;
> > > 
> > > check. This also goes down to of_get_child_by_name doing a
> > > for_each_child_of_node() which is defines as:
> > > 
> > > #define for_each_child_of_node(parent, child) \
> > > 	list_for_each_entry(child, &parent->children, parent_list)
> > > 
> > > list_for_each_entry() does not work with NULL pointers. We might want to
> > > change this for Linux compatibility.
> > 
> > Thanks for testing and spotting this. I ran tests but of course all my
> > nvmem devices had an of_node :(
> 
> In this case you would have noticed it by running
> 
> labgrid-pytest --lg-env test/sandbox/sandbox_defconfig.yaml

I will try to remember this for the next time I make such a big core
change. Sorry for causing troubles.

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


