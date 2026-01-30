Delivery-date: Fri, 30 Jan 2026 13:39:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlnmM-006z2l-0I
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 13:39:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlnmL-0007g8-3D
	for lore@pengutronix.de; Fri, 30 Jan 2026 13:39:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cDSMiV7Gu8AsAZ5a76GJpM0x2Y5zG70+IQHD5nsWw5k=; b=zOKQYqdxbpwyNAAvLQWwuV8GbI
	0mjf/8FNQHVJe2+X1gmWIY2LfrvbbJbor+idgnSDsYyIW/cnMTQfpiiE8AQj5E78Sq9578NBiKINA
	DJ0OeAnvKTqLT4nkQpZhMT9Gs/vs2dPzLuV+jY/K3Qrons0Ixc/HR751wbxjnv5JlkX4OtDJSDfso
	XadLFGE8619mily/7dAfyzNwTMqH3jI9IAiI4j6fCQu5nCsA/9mlfqH62uQJxkmVsxAcu+9HR6C9C
	Z9XD1sUUzwgvuLI4PKNVqg0xMuCXtRk23plJzlSHvHbzOVUoesUnYjxKcil5ZuDNmZq/ZN51WYI6s
	iKFK4G9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlnlq-00000001UEu-1Fmb;
	Fri, 30 Jan 2026 12:38:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlnlo-00000001UEZ-0pag
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 12:38:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vlnll-0007ZU-1G; Fri, 30 Jan 2026 13:38:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vlnll-003FaD-1g;
	Fri, 30 Jan 2026 13:38:36 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vlnlk-006cmZ-2N;
	Fri, 30 Jan 2026 13:38:36 +0100
Date: Fri, 30 Jan 2026 13:38:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aXymTDe0IbYjBO2h@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
 <20260127084546.3751357-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127084546.3751357-10-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_043840_240728_44E48AB0 
X-CRM114-Status: GOOD (  22.24  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/15] resource: implement resize_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 27, 2026 at 09:39:19AM +0100, Ahmad Fatoum wrote:
> resize_region allows enlarging or reducing a region end while checking
> for conflicts. This is less effort than removing a region and
> reallocating it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/resource.c      | 45 ++++++++++++++++++++++++++++++++++++++++++
>  include/linux/ioport.h |  2 ++
>  2 files changed, 47 insertions(+)
> 
> diff --git a/common/resource.c b/common/resource.c
> index e391d268e0bb..39867da63b69 100644
> --- a/common/resource.c
> +++ b/common/resource.c
> @@ -92,6 +92,51 @@ struct resource *__request_region(struct resource *parent,
>  	return new;
>  }
>  
> +int resize_region(struct resource *res, resource_size_t size)
> +{
> +	struct resource *parent;
> +	struct resource *next;
> +	resource_size_t newend;
> +
> +	if (!res)
> +		return 0;
> +	if (!size)
> +		return release_region(res);

This frees the resource itself. I am not sure if this is useful. It's an
invitation for the caller to reference freed memory. I think the caller
must distinguish between resizing and releasing the resource anyway, so
he could equally call resize_region() or release_region() directly.

> +
> +	if (size == resource_size(res))
> +		return 0;
> +
> +	if (size < resource_size(res)) {
> +		res->end = res->start + size - 1;
> +		return 0;
> +	}

A resource can have child resources. For completeness we should check if
the child resources are still inside the now smaller parent resource.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


