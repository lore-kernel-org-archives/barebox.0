Delivery-date: Wed, 18 Mar 2026 09:01:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2lqW-0026lO-0B
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 09:01:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2lqV-0007LN-H4
	for lore@pengutronix.de; Wed, 18 Mar 2026 09:01:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=67N4UwxN8YJwdAImLu/nLny56eSpDFSFLnUdqn3HShk=; b=xaBfdQJk3mL+J7IaN8vtoXpH7X
	vPN6dGJFpC7oSr2slh8c4YkFyvB7P+oOL/3cHHrPrDMFeYcPHkS4K+eG7jwcZh7EWjTfmoohcTwx7
	7yLsnK3TwS50PyuElqq4N3ImgxmeV6z0XJ9SHrna//OJ4S/Co9IpRVKxqJIu18VyTXGwJSfq6wjZX
	55gq1bf2IPv0Bfb3wl2ZRh9yYEVEbBbQa9KScpkbjk6Lg4dPsZ76l+FMLzfEXiajedm4MrC1dp1DV
	gj1EMzbTiq0rvITEmWVwCtypVwr4KqGhSpgdAYZUxztL7Uwbt6C/L2eIuh5qKELhGuXaN1QPORGEq
	AVF8kZ4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2lpv-00000007yL7-3CsK;
	Wed, 18 Mar 2026 08:01:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2lpt-00000007yK4-3KRo
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 08:01:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2lpr-0007BE-Ew; Wed, 18 Mar 2026 09:00:59 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2lpq-000sAD-2D;
	Wed, 18 Mar 2026 09:00:58 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2lpq-00000009723-2T3r;
	Wed, 18 Mar 2026 09:00:58 +0100
Date: Wed, 18 Mar 2026 09:00:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <abpbuoyzwbrFOZkd@pengutronix.de>
References: <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
 <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
 <aa_1-MX7hnrlJ3Ff@pengutronix.de>
 <ca6784d7-14c0-4716-8951-67d31fd40cdd@clermont.in2p3.fr>
 <abkZpI9KA1Q2A7VL@pengutronix.de>
 <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
 <57f1a773-8ead-486d-88a3-415d96966918@pengutronix.de>
 <e0c8e7e3-13d2-4f1d-a2f2-47e5d94c25cb@clermont.in2p3.fr>
 <9c45c9dd-757f-4a13-8b6d-34eccab8fc5b@pengutronix.de>
 <1f36feab-574b-4dc5-9a2d-4eb1da213d6f@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1f36feab-574b-4dc5-9a2d-4eb1da213d6f@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_010101_996718_5ACBF06A 
X-CRM114-Status: GOOD (  15.24  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

On Wed, Mar 18, 2026 at 08:49:02AM +0100, David Picard wrote:
> Hi,
> 
> The boot log with CONFIG_DEBUG_LL enabled for 1st and 2nd stage:
> https://paste.debian.net/hidden/d82f6a59

This starts with:

> lowlevel init done
> SDRAM setup...
> SDRAM calibration...
> done
> Switch to console [cs0]
> 
> 
> barebox 2026.03.0 #1 Tue Mar 17 14:17:44 CET 2026

The binary has the same timestamp as the one you posted yesterday and it
doesn't have my patch applied, otherwise it should print the 8 hex
numbers followed by ABC, just like the 2nd stage shows.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


