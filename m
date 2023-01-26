Delivery-date: Thu, 26 Jan 2023 10:16:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKyMj-002WtJ-CD
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 10:16:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKyMg-0006HL-Ol
	for lore@pengutronix.de; Thu, 26 Jan 2023 10:16:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jCgwQW+oU5tCDlh4JYTjyWU20D3d2JTmxwPMUADYzWQ=; b=M0AFXOIfW5QOsVzR6cmPVPc+6X
	Rlnv5iSM9IitMzN4FAHZTVKh6v8CwsfM+f8cd2vUh970lecWOaqOIh/DiRd6nEcQgRPrIKFQ8cZQP
	EkrCw2ylUsZ8wJ+t2/C9VrxJEv/PgB4bvrmYLn9pE0jQD3WbyGzQZEGU+NGKZKjYqP9Zwe+WYUHB+
	he6HfpG3cD34RQ2TtWKaz3QV9+FqGtahw0DS5cVm3KbAri1PDPo+vTk7tXslbJ9DotkIjGq/4bP2L
	N2F0YCCq2Ph3+6189bCXPt3FWusGzAMVZcchEY37MCXJG+mvhRsQ3tNF0A94JAUZIYEEdEW4vb17/
	SyV8JU9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKyLS-00AFkM-KW; Thu, 26 Jan 2023 09:14:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKyLO-00AFjp-5V
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 09:14:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKyLM-0005uR-U7; Thu, 26 Jan 2023 10:14:52 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKyLM-0000Bu-N4; Thu, 26 Jan 2023 10:14:52 +0100
Date: Thu, 26 Jan 2023 10:14:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: John Watts <contact@jookia.org>, barebox@lists.infradead.org
Message-ID: <20230126091452.gj6lcrfjjxklo3zz@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-3-contact@jookia.org>
 <20230125193940.mrgtbxuueixridtw@pengutronix.de>
 <Y9IxnqxbowcjOOZ/@novena-choice-citizen>
 <20230126081139.GF13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230126081139.GF13319@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_011454_220763_8B43CE6B 
X-CRM114-Status: GOOD (  18.80  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] ARM: novena: Setup RAM using static configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-01-26, Sascha Hauer wrote:
> On Thu, Jan 26, 2023 at 06:54:06PM +1100, John Watts wrote:
> > On Wed, Jan 25, 2023 at 08:39:40PM +0100, Marco Felsch wrote:
> > > Hi John,
> > > 
> > > this patch should be part of patch1 since without this one you can't
> > > boot the board, right?
> > 
> > Yes, but I wanted to do a separate commit so I can document the origin of the
> > code for the Git history and make it easier to review.
> 
> Normally you can put everything needed for a new board into a single
> commit, but splitting it up in two patches as you did gives you the
> opportunity to add a few lines to the commit message specific to the
> SDRAM setup. Therefore I think it's good the way you did it.

Okay, if Sascha is fine with this style :)

Regards,
  Marco


