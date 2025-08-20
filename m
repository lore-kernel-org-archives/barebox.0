Delivery-date: Wed, 20 Aug 2025 10:49:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoeVD-002Yp4-2x
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 10:49:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoeVC-0006nc-KE
	for lore@pengutronix.de; Wed, 20 Aug 2025 10:49:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3yPAVj3wF3aYUAAnXiBcyAQlAtsOYgEk0NFPL6pwASw=; b=vGSGYPpJSIcMWiEDMrlgsenEVN
	LcljKBS+NKmWCvzf9JQqzeWv3j0BoMwlCgE+oAKp9F9h5qz1venJs5dXQu1K7FlI16OsV8huMLjk8
	P0bNE3wLfcr18Q8BJZfIyNe2ySsyyMlwLwx1KYYF3AEkkNRSRXfNuppWpx3whoDNIvlKPdNPuEDgw
	qwUTscbvL3sKhZ6r7cCtgV/TLD+pKAy37WJnZAFqGd3RYZNq/ElFRGV6DOY58kYNNxrF490rcxooE
	CjGqNufjgqg+XyB8z0kOj0Hxq69dRbSFE9w1KAaZxZ7bg1Bs78v4KRBXukOj3yfpNkI/37ReZJ9dW
	KzgUdlwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoeUy-0000000CnM7-2UZJ;
	Wed, 20 Aug 2025 08:48:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodRo-0000000Ccw4-0DlA
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 07:41:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=3yPAVj3wF3aYUAAnXiBcyAQlAtsOYgEk0NFPL6pwASw=; b=czR4t7NTo1HUYxQ/6rKJGFKxN/
	Wvau/8gre1y8YcRLMNNn7VOj0O78/nTue8DNA1ZNPg1eAJbLC6kWQDUnOi9TsjRPnojVX+62HSqno
	YJFf+DmMjq/bdp70IlHrmgnvnH9gH9SWk//0TriaATnU7WpVM9xBdTdR0g5lZyX/VTlM6ltOT6ZHr
	PMCg4brtI+AtNNICx8F8YvGLxQWrn5WCXHGV6d8MeFLQv2VYjpn0odm/czSTvWfOW/n4baEJMn7eV
	uGvs+V0XwQy07CjaYG8aFe52am/WMyl0gERWUsTPCYyHtvqbjpJjiROU6dDZB2F4nf3EwCTDNbhEz
	mfLj38sQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodRk-00000000E9b-38SS
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 07:41:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uodRi-0003Ym-7n; Wed, 20 Aug 2025 09:41:22 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uodRi-001D2m-0A;
	Wed, 20 Aug 2025 09:41:22 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uodRh-005rLP-36;
	Wed, 20 Aug 2025 09:41:21 +0200
Date: Wed, 20 Aug 2025 09:41:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aKV8IWPfWNYEst-Z@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
 <20250818-v2025-06-0-topic-nvmem-v2-10-b6d677f6c519@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-10-b6d677f6c519@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_084124_928634_F5D1F7BB 
X-CRM114-Status: GOOD (  20.23  )
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

On Mon, Aug 18, 2025 at 07:44:44PM +0200, Marco Felsch wrote:
> This ports the Linux nvmem-layout core infrastructure required for the
> actual nvmem-layout drivers. This commit doesn't add any specific
> nvmem-layout driver.
> 
> A nvmem-layout is the new way to describe the nvmem storage format. The
> nvmem-layout driver parses the nvmem sotrage format and provides the
> information via nvmem-cells.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/nvmem/Kconfig          |   7 ++
>  drivers/nvmem/Makefile         |   3 +
>  drivers/nvmem/core.c           | 100 +++++++++++++++++++++++-
>  drivers/nvmem/internals.h      |  22 ++++++
>  drivers/nvmem/layouts.c        | 173 +++++++++++++++++++++++++++++++++++++++++
>  drivers/nvmem/layouts/Kconfig  |  13 ++++
>  drivers/nvmem/layouts/Makefile |   7 ++
>  include/linux/nvmem-provider.h |  63 +++++++++++++++
>  8 files changed, 385 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> +struct device_node *of_nvmem_layout_get_container(struct nvmem_device *nvmem)
> +{
> +	return of_get_child_by_name(nvmem->dev.of_node, "nvmem-layout");

This also needs an additional

	if (!nvmem->dev.of_node)
		return NULL;

check. This also goes down to of_get_child_by_name doing a
for_each_child_of_node() which is defines as:

#define for_each_child_of_node(parent, child) \
	list_for_each_entry(child, &parent->children, parent_list)

list_for_each_entry() does not work with NULL pointers. We might want to
change this for Linux compatibility.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


