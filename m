Delivery-date: Wed, 20 Aug 2025 13:04:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogc2-002aru-23
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 13:04:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uogc1-0003kk-CR
	for lore@pengutronix.de; Wed, 20 Aug 2025 13:04:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S3a9Z8CNnJ3YyL0SlzhaOTbXf5UiQEkw42yFuQTW92I=; b=sR3VKAbGTMa1eHnTjyACyV1XmW
	kCCPbTqo0dSsU0AwcfR3mqWNrZJMA+6ZJtYEVeZ3Pu8bhaOChl+mER6TOfoNlpQ6ZpdbSBOQY9PQc
	iDnPWwF/bfc4F13CvO3Y4rqtrCvf8NnUWKNRoKXwgw/LV1zzbYRSkWUOvF04Zvss+u9y16Zks02X0
	d52zkBk6zVfQ9GdSxtMJCM3nff82r5Om4CQCGu+s6hVWJpJN0Lfwi7QSS6rjglVpY3vNsbsCbzUL9
	kVF8KNQnvy4daVD5eVfROcGOtkjfa2cArRiYCzv0wQiifRe5uJgsUfmP0iVpwBQf7vz3JYCVAxZuy
	yjZP0OkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogbr-0000000DHWZ-0dmU;
	Wed, 20 Aug 2025 11:04:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoeqm-0000000CrWu-3BgN
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:11:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoeql-00027F-KP; Wed, 20 Aug 2025 11:11:19 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoeql-001Dn6-1Q;
	Wed, 20 Aug 2025 11:11:19 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoeql-005sX6-1A;
	Wed, 20 Aug 2025 11:11:19 +0200
Date: Wed, 20 Aug 2025 11:11:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250820091119.sihdo4bemqsc67wc@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-10-b6d677f6c519@pengutronix.de>
 <aKV8IWPfWNYEst-Z@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKV8IWPfWNYEst-Z@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_021120_802154_54CA9C2D 
X-CRM114-Status: GOOD (  19.20  )
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
> On Mon, Aug 18, 2025 at 07:44:44PM +0200, Marco Felsch wrote:
> > This ports the Linux nvmem-layout core infrastructure required for the
> > actual nvmem-layout drivers. This commit doesn't add any specific
> > nvmem-layout driver.
> > 
> > A nvmem-layout is the new way to describe the nvmem storage format. The
> > nvmem-layout driver parses the nvmem sotrage format and provides the
> > information via nvmem-cells.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/nvmem/Kconfig          |   7 ++
> >  drivers/nvmem/Makefile         |   3 +
> >  drivers/nvmem/core.c           | 100 +++++++++++++++++++++++-
> >  drivers/nvmem/internals.h      |  22 ++++++
> >  drivers/nvmem/layouts.c        | 173 +++++++++++++++++++++++++++++++++++++++++
> >  drivers/nvmem/layouts/Kconfig  |  13 ++++
> >  drivers/nvmem/layouts/Makefile |   7 ++
> >  include/linux/nvmem-provider.h |  63 +++++++++++++++
> >  8 files changed, 385 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> > +struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem)
> > +{
> > +	return of_get_child_by_name(nvmem->dev.of_node, "nvmem-layout");
> 
> This also needs an additional
> 
> 	if (!nvmem->dev.of_node)
> 		return NULL;
> 
> check. This also goes down to of_get_child_by_name doing a
> for_each_child_of_node() which is defines as:
> 
> #define for_each_child_of_node(parent, child) \
> 	list_for_each_entry(child, &parent->children, parent_list)
> 
> list_for_each_entry() does not work with NULL pointers. We might want to
> change this for Linux compatibility.

Thanks for testing and spotting this. I ran tests but of course all my
nvmem devices had an of_node :(

Regards,
  Marco


