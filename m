Delivery-date: Thu, 29 Feb 2024 08:16:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfaf3-00ExRi-09
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 08:16:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfaf2-0006kd-Ec
	for lore@pengutronix.de; Thu, 29 Feb 2024 08:16:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J2z/9VJpZlcQM9ejMLF1Y4H2ZuoSFcYI1uFq7doDL5k=; b=2l8E/Vi0V55YXgnW4pngEsDfBe
	8JTqtnInHp8TnFRAPNCmYNmQLiL0jZtd7vlg2pi5AjMoeoanQb1LJF69Afb/jYwdM0CgWRrA6HxDG
	mStBuWRFN7W9kJbhTfaQuLTFy4ZU8tu9BSmlrjlBKQw9T5LSJ95AXSYP6P7hicw4tfkDmV3CKv9Z6
	N53p+I4pZk/d2UNDMC4xucq7piLUc8NqlUV1fNYYknPsMRHaOXus2EyhUslyoUOcwUFDL5hC5i4hn
	vqiT/zGhVwt0PwGNcyrHq0XFZP1r/upMnwasy5FdpLFfhR/BaCU6eCqW7F27rZHWml01UVTHehryr
	4KzoKImg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfaec-0000000CQu8-2Szq;
	Thu, 29 Feb 2024 07:16:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfaeY-0000000CQsx-0yUl
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 07:16:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rfaeW-0006ex-Tk; Thu, 29 Feb 2024 08:16:24 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rfaeW-003XlN-Gx; Thu, 29 Feb 2024 08:16:24 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rfaeW-00DV6o-1P;
	Thu, 29 Feb 2024 08:16:24 +0100
Date: Thu, 29 Feb 2024 08:16:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZeAvSGrfIDLwIXH1@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
 <20240219083140.2713047-11-s.hauer@pengutronix.de>
 <7df5436f-a405-49ae-9876-52751d0fd905@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7df5436f-a405-49ae-9876-52751d0fd905@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_231626_306338_3A0D238A 
X-CRM114-Status: GOOD (  17.08  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 10/12] partitions: dos: implement partition manipulation
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Feb 28, 2024 at 06:37:45PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 19.02.24 09:31, Sascha Hauer wrote:
> > -		pentry = xzalloc(sizeof(*pentry));
> > +		dpart = xzalloc(sizeof(*dpart));
> > +		dpart->boot_indicator = table[i].boot_indicator;
> > +		memcpy(dpart->chs_begin, table[i].chs_begin, sizeof(table[i].chs_begin));
> > +		dpart->type = table[i].type;
> > +		memcpy(dpart->chs_end, table[i].chs_end, sizeof(table[i].chs_end));
> > +
> > +		pentry = &dpart->part;
> >  
> >  		pentry->first_sec = first_sec;
> >  		pentry->size = get_unaligned_le32(&table[i].partition_size);
> >  		pentry->dos_partition_type = table[i].type;
> > +		pentry->num = i + 1;
> 
> I suspect this breaks my boot script for MBR systems.
> Please revert to zero-based numbering.

Err, right. This wasn't really done on purpose. I just wanted the
numbering of parted consistent to the Linux output and haven't thought
about the implication on the numbering barebox uses internally.

I've sent patches to revert it back. This means parted now has a
different numbering than its Linux pendant, but I think this is still
better than having parted in barebox start at 1 while barebox internally
uses 0.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


