Delivery-date: Wed, 07 Jan 2026 12:08:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdRPN-002E6A-34
	for lore@lore.pengutronix.de;
	Wed, 07 Jan 2026 12:08:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdRPN-0001o0-Dw
	for lore@pengutronix.de; Wed, 07 Jan 2026 12:08:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3aZoHjJE7bHBvDPll9GS2LohHohPPxxxF0GTEKWhIxQ=; b=vgJHNIdjK5kL9nIcgiWbydndn1
	mRQctCDe2xbI58HN94op17DOjBWXCUnVRiTC0XZmrUIacz7iWTVHl343Ppt9yGaYTbceyvnS7U4Cf
	sktHcaawng4LKqbi0L8bCTXG71BLMfHCedwBs7Ou6VgJ3JJctREEVHAmVb9Sgu5xpYVHLIJ1wClhb
	/gPstK9AJwH6X4aPhz1uvd8WCI22MQCYQ39SbtXg0g0pHidxml82QHellUsFcHXHjSNWVbBX/SIaC
	6ks7NatyScKUvrTAr0eVhPoziNEFVbQMNo6FES8gH7vXmewOSTG8WoDJnXsA39chXbzcAPd1I/p91
	MaMCASKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdROn-0000000EmXA-26Vl;
	Wed, 07 Jan 2026 11:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdROl-0000000EmWQ-0fmP
	for barebox@lists.infradead.org;
	Wed, 07 Jan 2026 11:08:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vdROi-0001hP-4Q; Wed, 07 Jan 2026 12:08:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vdROh-009UvA-33;
	Wed, 07 Jan 2026 12:08:15 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vdROh-00G7lU-2c;
	Wed, 07 Jan 2026 12:08:15 +0100
Date: Wed, 7 Jan 2026 12:08:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aV4-n9FvSROvNaUU@pengutronix.de>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
 <db44b00b-b2a5-4b06-bcbb-c579cef6622b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <db44b00b-b2a5-4b06-bcbb-c579cef6622b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_030819_197692_0D96BFC4 
X-CRM114-Status: GOOD (  21.96  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] partitions: GPT: refresh partition tables when
 necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 07, 2026 at 11:39:16AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 12/3/25 4:19 PM, Sascha Hauer wrote:
> > This is a continuation of the patch previously sent separately:
> > 
> > https://lore.kernel.org/all/20251128111929.2463263-1-s.hauer@pengutronix.de/
> > 
> > Ahmad's comment to this was that we should write the inactive GPT first
> > to make sure there's always a valid GPT on the device. This series
> > implements just that. I stumbled upon a bug when we restore the primary
> > GPT from the alternate GPT, this is fixed in this series.
> 
> I thought with this series now applied, we could wipe the first 2
> sectors and it would fall back to the alternate GPT, but this is not the
> case because partition_table_read() invokes the partition parsers only
> when partition_parser_get_by_filetype() detects the magic in the first
> two sectors.
> 
> Did you consider adapting it?

I am aware of this, but haven't looked into it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


