Delivery-date: Tue, 19 Aug 2025 17:46:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoOXM-002JIi-2f
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 17:46:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoOXL-0006uT-NH
	for lore@pengutronix.de; Tue, 19 Aug 2025 17:46:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mdKudtD6YDQIs3cpPz15lEEink4375lhG/c0nV/0k1g=; b=4iFM3259igNmBm3+YOPv9Iv88+
	2Mo8GrZKW7rRi33LH7utDeK3z0eq7dNJHTuFsE7BA//iM1G8gsmrN55cEBsO/t/BuDgXcUESGTK9O
	QAQw6DZRaOsaLpq8ZaOWbuwIhK8ABOl316xE7f8Tq2DpmEffflqfOwGcynq3h9ygl1RouU8bvFHir
	C0IPNvpf3Y7tYVvFL/10QqaPi/DAonRNvk4BYOs9vY3gJy3HnmkDFlM8Z1OtIGA7+uiYPJ//B0uda
	0qaQuTIbAjKJfIxjwjcm/Eizih6ZqJmXypA7GdP6nBS3NIgekjwWq3cd60sAxHx3/PAZxHLRbmx1H
	ytJ06YAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoOWo-0000000AvNx-3AGP;
	Tue, 19 Aug 2025 15:45:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoLjF-0000000ATpZ-3emQ
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 12:46:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uoLjE-0002Pv-IZ; Tue, 19 Aug 2025 14:46:16 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uoLjE-0014QB-1F;
	Tue, 19 Aug 2025 14:46:16 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uoLjE-003q3i-0x;
	Tue, 19 Aug 2025 14:46:16 +0200
Date: Tue, 19 Aug 2025 14:46:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aKRyGJXIcNd9oAm5@pengutronix.de>
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
X-CRM114-CacheID: sfid-20250819_054617_906073_AC556741 
X-CRM114-Status: GOOD (  16.96  )
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

Hi Marco,

These patches conflict with Ahmads bfetch changes. I think I fixed
this up, but please check the result.

On Mon, Aug 18, 2025 at 07:44:44PM +0200, Marco Felsch wrote:
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index 7d026330105b629e68353ae5cdbbf966284da7ea..b87dd9375c6f0a2b446e4f1c2e51c6bf042e550d 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -35,6 +35,7 @@ struct nvmem_cell {
>  };
>  
>  static LIST_HEAD(nvmem_devs);
> +static LIST_HEAD(nvmem_layouts);

During merging I realized nvmem_layouts is unused. I dropped it, but I
wonder if this variable is added accidently or if something else is
missing in this patchset?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


