Delivery-date: Wed, 22 Apr 2026 11:39:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFU3D-00F3J8-2E
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 11:39:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFU3D-0003HQ-4A
	for lore@pengutronix.de; Wed, 22 Apr 2026 11:39:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MgRWODhQp0fIa1pwhw4ZgfSfFNQ1knTbWJiqwsSubYM=; b=AoTJ8jF5T4zs/oaeIvxn/CenNj
	iEcetLZmvXTsTMf6/6hB1T6ehRqsSr6cRTB34ptoqDm0Z5H1/evGkr35VAjT4l9LcP8VCNgGOAFoA
	79jwXuKL49TVAIiHUy6nfXsrFmk+X39ILJFPbhTleyCbCCgfJeod6VFv4q3TCxY44f2WDbNKnSYpN
	kkPtVCSyeR19mghKKzZJjwBM+u9gPZ3BzEdvTdinsiptBC3Bn5fTetQgoDRaM+7ZBz/PpZFvgtAFr
	AONkW5o6HQXZG3lZb1QgATNfs02ph0fIz/GmkI0Zsk47M/CBlpfChtz8X4PNFRIQud1zXHpqUaun0
	RTpcPxNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFU2n-00000009s1k-0XCA;
	Wed, 22 Apr 2026 09:38:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFU2k-00000009s1C-00w5
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 09:38:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wFU2i-000391-C9; Wed, 22 Apr 2026 11:38:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wFU2i-006e22-0b;
	Wed, 22 Apr 2026 11:38:48 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wFU2i-00000008OAA-0Lix;
	Wed, 22 Apr 2026 11:38:48 +0200
Date: Wed, 22 Apr 2026 11:38:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aeiXKKjJB3StBZxj@pengutronix.de>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
 <20260415-v2026-03-0-topic-soc_bin_id-v2-1-81fab6ba5de0@pengutronix.de>
 <aeh_ExzusLb9PCX3@pengutronix.de>
 <479b96ec421925a887ad63f65a5c00478caac431.camel@pengutronix.de>
 <aeiF3Z6yDuuy3IoD@pengutronix.de>
 <86d49148492685a515b669a05995b89570de6f79.camel@pengutronix.de>
 <aeiR55jQR56V3YDQ@pengutronix.de>
 <3e226610c6b2e4a5b2f2d702d4eb11c03680cbac.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e226610c6b2e4a5b2f2d702d4eb11c03680cbac.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_023850_039576_70341FC6 
X-CRM114-Status: GOOD (  22.07  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] common: misc: add soc_uid_hex to globalvar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 22, 2026 at 11:19:02AM +0200, Fabian Pflug wrote:
> On Wed, 2026-04-22 at 11:16 +0200, Sascha Hauer wrote:
> > On Wed, Apr 22, 2026 at 10:52:34AM +0200, Fabian Pflug wrote:
> > > 
> > > There already is
> > > 
> > > BAREBOX_MAGICVAR(global.soc_uid_hex, "SoC Unique ID (in hex)");
> > > 
> > > And since it is a single value and not a byte array, I think byte array is the wrong representation.
> > > Using a byte-array for TLV does not work with the TLV tooling. This expects a single value.
> > 
> > You are right, byte array is not the correct term here. What I wanted to
> > make clear is that it is the raw buffer content with the first byte in
> > the buffer being the first two digits of the string, just to make the
> > difference between these two clearer:
> > 
> > global.soc_uid=0011223344556677		"SoC Unique ID"
> > global.soc_uid_hex=7766554433221100	"SoC Unique ID (in hex)"
> > 
> > Both are obviously hex values, which one means what?
> 
> maybe "Raw SoC Unique ID (vendor independent representation)"?

I think

"Raw SoC Unique ID representation"

is enough. It's not necessarily the vendors that made up the Linux representation.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


