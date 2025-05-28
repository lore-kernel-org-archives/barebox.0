Delivery-date: Wed, 28 May 2025 18:29:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJeQ-001FQy-0Z
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 18:29:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJeP-0002GG-6A
	for lore@pengutronix.de; Wed, 28 May 2025 18:29:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Im41geea0BqeL0bF7M72vau3//Yq85nzrw7qurtVNuQ=; b=STQBO4KMSFjt92SqW54nJUlUsh
	nBh/AhMyJJHM2RGoTQGcKwT06/S8OndDxjtGwczLq1/AgSkjjOgp4QHKW4OZU0ea6vM4Nmpa9eG7B
	KmUjYyPFczDcx8uWNWqLYs/A4ElvizTVuOnHnOvBi/XSi7V58aQ9DVJwZ3vaN9jxwVev2vwRJuB57
	PqvjwKvqxfln0Plh5CHw71ByRIcWOTyH2oYqJC44ta5jvfy1cBLMb+bp1yuq0Ff/jKn0sHEuIZ/3I
	fBeJKzI0PYoo6yb5L5mknV03ch3sBHdEZaYxs1iQvlu/2j+zQaEAjVbbOWyhFgpDzpvd1fLiZXFg9
	OUGoykig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJdm-0000000DfV6-3qKo;
	Wed, 28 May 2025 16:28:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIzU-0000000DajL-1K6o
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 15:46:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIzS-0003wt-WE; Wed, 28 May 2025 17:46:51 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIzS-000c4F-2c;
	Wed, 28 May 2025 17:46:50 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIzS-00EXkp-2G;
	Wed, 28 May 2025 17:46:50 +0200
Date: Wed, 28 May 2025 17:46:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Message-ID: <20250528154650.rubzl2djaq4x6m5h@pengutronix.de>
References: <20250528131411.935668-1-a.fatoum@barebox.org>
 <20250528131411.935668-2-a.fatoum@barebox.org>
 <20250528152431.db7nmbovzxkllf2u@pengutronix.de>
 <2bde04b0-5caa-4b06-aa00-fc7b24afb2dc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2bde04b0-5caa-4b06-aa00-fc7b24afb2dc@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_084652_353525_4D391EC1 
X-CRM114-Status: GOOD (  23.05  )
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
X-Spam-Status: No, score=-6.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] common: deep-probe: support specifying support in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-05-28, Ahmad Fatoum wrote:
> Hi,
> 
> On 5/28/25 17:24, Marco Felsch wrote:
> > On 25-05-28, Ahmad Fatoum wrote:
> >> New boards should be deep probe enabled by default, which is currently
> >> done via board code. We want to support second stage boot on new boards
> >> without board code however, which means we need the possibility to make
> >> deep probe opt-out instead of opt-in.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> >> ---
> 
> [snip]
> 
> >> +	/* deep probe requires resources to be described in DT */
> >> +	root = of_get_root_node();
> >> +	if (!root)
> >> +		return false;
> > 
> > 	if (!root) {
> > 		boardstate = DEEP_PROBE_NOT_SUPPORTED;
> 
> No, the omission is intentional. I want to repeat the check for the
> root node on every call to avoid issues where this function is
> called once too early.

Good point albeit I wouldn't assume that this happens.

Also what if caller-1 receives "no" does the "no-deep-probe-handling"
accordingly and shortly after caller-2 receives "yes". Sounds like a
source of trouble. 

Anyway could we add a comment that this is intentional please?

Regards,
  Marco


> 
> >> -	boardstate = DEEP_PROBE_NOT_SUPPORTED;
> >> -	pr_info("not activated\n");
> >> -	return false;
> > 
> > Can we please add a comment about the below if-else, e.g. referencing
> > the barebox,deep-probe.rst as well?
> 
> Yes, will do for v2.
> 
> Thanks for reviewing,
> Ahmad
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 


