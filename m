Delivery-date: Wed, 18 Mar 2026 15:49:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2sDO-002Ejb-1Q
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 15:49:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2sDN-0004Aw-SE
	for lore@pengutronix.de; Wed, 18 Mar 2026 15:49:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SXKc6I/rEvTyQnN8iNyPbM97iQimwFO+icQEMuW1VMw=; b=zMr7+71asAmNcw8fFJAqzyw2Mk
	P2XR6gY9Ez+JTLUGvvU/OELzwjv4LHnm7t8t/0dxFSaFtzHp4rBMrvQlcNmSWFhgS5zuZs0Ik55m2
	874J4s4f8/GUZPGVI9KqprgvKYhc50pnlBJRXjJSMWB1GpA7+rqrubAYMb7tuzGa6Sa50iL59E14R
	W1p+7JwXDwX2LG4MjTu8WQeFCTNoqcgp+h7EhthycTS5LuyC2IA/a6gqt5PUWN1qM2NSCN1utpjei
	f8qEzrGAUoVRsVZItx0qja3L8H+lr8eWk5dgpTVBlzwqfXwAsbrm5GYh94GJXwsc/Nw2GOyuENcg0
	LYWYCPTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sCu-00000008cw0-1sVs;
	Wed, 18 Mar 2026 14:49:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2sCr-00000008cvY-2HRR
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 14:49:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w2sCo-000448-VE; Wed, 18 Mar 2026 15:49:06 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w2sCo-000vOB-2W;
	Wed, 18 Mar 2026 15:49:06 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w2sCo-00000009AuH-2rxd;
	Wed, 18 Mar 2026 15:49:06 +0100
Date: Wed, 18 Mar 2026 15:49:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <abq7Yr8vrbZr_p3x@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
 <20260312144505.2159816-14-a.fatoum@pengutronix.de>
 <abp1Y3WwJTTtxpdk@pengutronix.de>
 <edd64ade-0956-484f-a79c-a59513de4f96@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <edd64ade-0956-484f-a79c-a59513de4f96@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_074909_585206_1FDF679A 
X-CRM114-Status: GOOD (  22.03  )
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
Subject: Re: [PATCH 14/16] defaultenv: base: add new devboot script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 18, 2026 at 11:50:42AM +0100, Ahmad Fatoum wrote:
> On 3/18/26 10:50, Sascha Hauer wrote:
> > On Thu, Mar 12, 2026 at 03:44:57PM +0100, Ahmad Fatoum wrote:
> >> +The devboot script
> >> +------------------
> >> +
> >> +The ``devboot`` command (``/env/bin/devboot``) automates the override
> >> +workflow for network-based development:
> >> +
> >> +1. Brings up the network (``ifup -a1``).
> >> +2. Changes into the fetch directory
> >> +   (:ref:`global.net.fetchdir <magicvar_global_net_fetchdir>`, default
> >> +   ``/mnt/tftp``).
> > 
> > Is this default actually set somewhere? I can't find it.
> 
> global.net.fetchdir is defined in net/net.c since commit
> 4f328e47e5c6 ("net: make default netboot artifact directory configurable")

Ah, I thought this is new and searched for it in this series.

> > 
> > So that would be equivalent to a permanent "devboot". Is there also a
> > way to specifiy permanent "devboot mmc"?
> 
> No, but it's clear to me this is a non-sense boot target as boot would
> refer to boot.default... I'd just drop it from v2.
> 
> Please let me know when you are done with the review and I can resend.

I am done.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


