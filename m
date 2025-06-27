Delivery-date: Fri, 27 Jun 2025 21:05:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVEOL-00BiX6-0o
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 21:05:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVEOK-0006z8-LA
	for lore@pengutronix.de; Fri, 27 Jun 2025 21:05:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pgaji9o4j11EW/rtL571L3cbjaN+lYdHgRtsC6f6h/s=; b=hQ5r648uIZFcFMWSB7TtcbfDKO
	P+zSQPffyjswBBqyKS9PNQ6/hVJh4v6BZ2IJsHrggrVrh/HzOWDmJ5oMTPe+K/DpQuAJ0njilsJUO
	8cMse2HKgzf2+PWWXKY3V0gW9WWyFCNnf+7uHmMJ3kR/EA/w7lMYTERCzFZZMxa7etEI9eRbh5rt5
	f8OJGmepOYXpfiDwVeyjQb7cua7R7T3eTvs87LeqIkPf7WiABia+i+jVssmUZazVUDzfEXWRoYjX+
	dxkb31xgoDRKAGgXeCXWyjTH+k/6poMwHD72zb5bchnWjFnq4DfsnQWTpF5Qn/RIt6dcNuMf/+zOR
	p9buA0Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVENs-0000000FZWH-37Ir;
	Fri, 27 Jun 2025 19:05:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVDMj-0000000FT2G-2tIG
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 17:59:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uVDMi-0003Ye-BA; Fri, 27 Jun 2025 19:59:56 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uVDMi-005edU-0V;
	Fri, 27 Jun 2025 19:59:56 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uVDMi-003fBd-0B;
	Fri, 27 Jun 2025 19:59:56 +0200
Date: Fri, 27 Jun 2025 19:59:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aF7cHBGSgrCkwrq0@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-13-4b098e8ac7cd@pengutronix.de>
 <6d5d47af-a41c-4fb8-ae83-98805d464b04@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6d5d47af-a41c-4fb8-ae83-98805d464b04@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_105957_729133_21976BAB 
X-CRM114-Status: GOOD (  19.53  )
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
Subject: Re: [PATCH 13/14] ARM: optee-early: drop start_optee_early()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 27, 2025 at 05:21:03PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 6/27/25 16:07, Sascha Hauer wrote:
> > Now that all users of start_optee_early() use the SoC variants
> > make start_optee_early() a static function. While at it move the zeroing
> > of the data_location which was duplicated in the SoC specific functions
> > to start_optee_early().
> 
> start_optee_early() is documented in Documentation/user/optee.rst and
> would need to be updated.

I adjusted the documentation in "ARM: optee-early: add mx6_start_optee_early helper".
Apparently I failed to catch all occurences.

> 
> 
> > +	/* We expect this function to be called with data caches disabled */
> > +	BUG_ON(get_cr() & CR_C);
> 
> Did you mean to drop the BUG_ON() in start_optee_early().

My series was originally based on master and at some point I rebased on
v2025.06.1 which gave me this artifact which doesn't belong into this
patch. I'll rebase on master again next time.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


