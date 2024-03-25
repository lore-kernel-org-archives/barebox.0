Delivery-date: Mon, 25 Mar 2024 11:34:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rohex-003hwt-0k
	for lore@lore.pengutronix.de;
	Mon, 25 Mar 2024 11:34:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rohew-0005tf-Ks
	for lore@pengutronix.de; Mon, 25 Mar 2024 11:34:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XE16e+4/XX8+82QL2kkZfYqECQKr5XYtwqiBh4ndntk=; b=H8HTtXDOSm7FwDDnzilpHOL67x
	H8al6k0Z+7p0BbJP6o+gMgqGFaact24pffGfACqhfQxbfJ49+sv3Jv9XxDkItPdcfai528cW/f8JG
	nWTr1jCKeHBL3NRzpMJAGF4G2CO0/rqqKx4jW7lekSbupVsQ1+DSN6pvEkAJu1cKSr8UQ36wPjtN0
	lIVJbMtaIK+Nmb+DojT2me9ZDPTFZ0WeMLzlYT/esuLSJlIanEQEVuqbGSZXibQ8kchzfY2TEBcON
	ouNK8a7UTo7zPEo5rhUFtWmGMjYAaGFC7LUYazluDVIfS9yCeZsq9d0swU6Cl00GzOunzh0q1EPoM
	iCI/MSWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roheP-0000000GmGc-3wOS;
	Mon, 25 Mar 2024 10:33:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roheN-0000000GmF3-3DZy
	for barebox@bombadil.infradead.org;
	Mon, 25 Mar 2024 10:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=XE16e+4/XX8+82QL2kkZfYqECQKr5XYtwqiBh4ndntk=; b=P3gS66IS2N9VIBktVeiHeN8JhQ
	9JEUePEmHOpbYL7nWX1a7uQGIV4xjzJLjXIK/DySb+VkvnQpv9jOmWyRZgEm3wY0B57bGPT1/AEe7
	ZNEO8ZXSkrWLcNQPtmLvinqpZnsTKVwZUBXpFQrf72cMFRcnUxH1wM6UUj78IeI6JgEKeRLvvbpXK
	l67NpcQmaXSInaV/b7b351er52YF8HAPNyRCa2qYKPU00IPdl/4TESPXUm7uNgKa+9Cs7aiITa7BZ
	DbySANevnr9eMqSXIMUgc0i3HMt2dGbfiJTNsFvcbws5nweKgd1+r8fv8nu/L/J2JR5CoJZaEuOdj
	mv/tIKXw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roheJ-0000000GX9Q-2w87
	for barebox@lists.infradead.org;
	Mon, 25 Mar 2024 10:33:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rohe5-0005lf-Gf; Mon, 25 Mar 2024 11:33:37 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rohe5-008OwD-45; Mon, 25 Mar 2024 11:33:37 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rohe5-00G68b-07;
	Mon, 25 Mar 2024 11:33:37 +0100
Date: Mon, 25 Mar 2024 11:33:37 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240325103337.hxkm27coa2gqsmfo@pengutronix.de>
References: <20240322164559.1768983-1-m.felsch@pengutronix.de>
 <20240322164559.1768983-3-m.felsch@pengutronix.de>
 <ZgFJNVN1tI6_Sqk0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgFJNVN1tI6_Sqk0@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_103351_956805_41CAE448 
X-CRM114-Status: GOOD (  16.99  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] nvmem: constify the write path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-03-25, Sascha Hauer wrote:
> On Fri, Mar 22, 2024 at 05:45:57PM +0100, Marco Felsch wrote:
> > Constify the nvmem_*_write() functions as the write functions shouldn't
> > alter the buffer content.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/nvmem/core.c           | 10 +++++-----
> >  include/linux/nvmem-consumer.h |  8 ++++----
> >  2 files changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> > index b4a29e4b67f3..7d795d5873dc 100644
> > --- a/drivers/nvmem/core.c
> > +++ b/drivers/nvmem/core.c
> > @@ -794,8 +794,8 @@ void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
> >  }
> >  EXPORT_SYMBOL_GPL(nvmem_cell_read);
> >  
> > -static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cell,
> > -						    u8 *_buf, int len)
> > +static inline const void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cell,
> > +							  const u8 *_buf, int len)
> 
> We already had this, this reverts a change you introduced with the nvmem
> update in patch 1. So better squash it into that patch.

Argh.. you're right, I will squash it. Thanks!

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


