Delivery-date: Sun, 18 Jan 2026 21:12:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhZ7x-002mhY-2P
	for lore@lore.pengutronix.de;
	Sun, 18 Jan 2026 21:12:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhZ7w-00040J-JA
	for lore@pengutronix.de; Sun, 18 Jan 2026 21:12:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D3WYdPUxNWqJH1Cp5IYAJLiJj1hoBgyCauMr1c78MNs=; b=KtXJ+ZyKcT8/qtgu8d3RyoMGy9
	hIXuPUxxALiyTMwEImiddQfZndjBQST3ngw4iAQgSRb7q5TTSSn8N0aExyHOjhAh1SISlDqXGemi4
	Gykck85acowi/KzN4KWYVFx9iSKcOkIDwHTc79yU9f/tsmc1lIZAmcY6YXCmG8jLiV/BImVCKoODl
	8nrN8sl/uAPTRy2Z/fJ8gznShsQB9SuBZnYyevOQ6fENF9okWVjBHcLJIx83YGG9nbT4UmA6chYAa
	JiGHioTErxOrEhYu/hlgS00oLxcUqz4aZ6ErmGWtofC0WaZ6scgHN0TgJJUaVXV/f66m6iRshDlpn
	RscfA7ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhZ7S-00000000t65-24LY;
	Sun, 18 Jan 2026 20:11:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhZ7Q-00000000t5H-0ioq
	for barebox@lists.infradead.org;
	Sun, 18 Jan 2026 20:11:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhZ7O-0003un-Dk; Sun, 18 Jan 2026 21:11:26 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhZ7O-001IVl-2u;
	Sun, 18 Jan 2026 21:11:26 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhZ7O-001cm1-0T;
	Sun, 18 Jan 2026 21:11:26 +0100
Date: Sun, 18 Jan 2026 21:11:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260118201126.vywp76jpisnpouub@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-19-8f0625ac5471@pengutronix.de>
 <5dda172a-9321-4bdf-b5bf-9b80d22532d0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5dda172a-9321-4bdf-b5bf-9b80d22532d0@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_121128_211336_C7E1F223 
X-CRM114-Status: GOOD (  14.08  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 19/23] security: optee: add helpers to apply OP-TEE FDTO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 26-01-15, Ahmad Fatoum wrote:
> Hi,
> 
> On 11/10/25 9:34 PM, Marco Felsch wrote:
> >  config OF_FIXUP_OPTEE
> >  	def_bool y
> >  	depends on HAVE_OPTEE && ARM
> > +	select LIBFDT
> 
> AFAIK, we use LIBFDT only in PBL as we don't want to unflatten the whole
> tree there. Why would you want to use it in barebox proper?

I used it due to the fdt_check_header() check within
optee_register_overlay(). I think we can drop this check and the LIBFDT
since barebox PBL is creating the HANDOFF_DATA_BL32_DT_OVL entry.

Regards,
  Marco


> 
> Thanks,
> Ahmad
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


