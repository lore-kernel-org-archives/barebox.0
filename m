Delivery-date: Mon, 31 Mar 2025 09:24:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9VF-006TTK-0o
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 09:24:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9VE-0004WO-Mh
	for lore@pengutronix.de; Mon, 31 Mar 2025 09:24:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cs6Oxmkk25FwWqoA6qDzm1pG0+QwX0xqcr8HcyVGGmA=; b=QGhhvdtcl8ogMbW+/3hP4SwqV7
	MTALfw4IdZ2tl/wmw2Gl2UWPBPy1DGwrGB5TA3o61OAgoqHo4OwIfSw9hKsxwY2+nFH3M+ajn0EAI
	UL3n5y2gsa4wt0c8WEilkxluE0aiurTZs0PBBGyPtWejCqwegUJhYU45ut6yc5RdYsyWqlb2Lgi8K
	mCveVNL1JMmedD8eoaEljq+fP8U4ATBBXx/7MQTKNTRU3XN8sHpYDiHZa2iVnD38ljmqqV3Bi1XLI
	jkBFU2LaR4UML2Ys0oCmW7o0Q5a7cgBJOjl6cq7XnqrrHfEf9YhGt/YCbtN/LvdngWuas3n2+fgXf
	VEMbKE/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9Ul-0000000HBuZ-1f88;
	Mon, 31 Mar 2025 07:23:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9Tm-0000000HBph-1RqX
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 07:22:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tz9Tl-0004Mh-04; Mon, 31 Mar 2025 09:22:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tz9Tk-002YTU-2a;
	Mon, 31 Mar 2025 09:22:40 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tz9Tk-009A0t-2I;
	Mon, 31 Mar 2025 09:22:40 +0200
Date: Mon, 31 Mar 2025 09:22:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <Z-pCwM8Y9GmsEs7D@pengutronix.de>
References: <7a4edaef-a606-4b9d-bdf5-c7b5f896daae@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7a4edaef-a606-4b9d-bdf5-c7b5f896daae@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_002242_459343_B45BE569 
X-CRM114-Status: GOOD (  16.62  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Removal of dlmalloc?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 27, 2025 at 12:51:31PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> We have a TLSF implemenation in barebox for >= 13 years now and it has
> more features than dlmalloc like multiple pools and KASAN integration.
> 
> I think it's thus time to retire the dlmalloc we inherited from U-Boot.
> 
> Unfortunately, TLSF was not the default in the config, even though the
> most common configs select it. I'd thus suggest we remove dlmalloc
> altogether after v2025.06.0 is tagged.
> 
> Thoughts? Objections?

No objections from my side.

The only reason for me to enable dlmalloc from time to time was that I
suspected some bug in the allocator, but it never actually turned out to
be a bug in the allocator. Now with Kasan we have far better memory
debugging facilities than back in those days, so yes, I think it's time
to schedule removal of dlmalloc.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


