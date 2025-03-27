Delivery-date: Thu, 27 Mar 2025 09:17:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txiQt-004nAD-1o
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 09:17:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txiQt-00079H-0W
	for lore@pengutronix.de; Thu, 27 Mar 2025 09:17:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FNCnswNvE3EhzO8Y3ZF/ASIUfa6ebqIlfDKUBEfrmjw=; b=iIl5vBjo7LHq3Jql4MBQHa0nOp
	HkRqZezMp5//1uWra3uhTvFGazb9AinHSzecSbC61oUv5nRaYLEyjHYnh59egpgMSAdSEFfeW7uja
	4ZrOV56MOxCLrHE3YFOSM2X0qi6Qu3e7gBqk9/X066dcdQsV4YthnmImVkNUw8gDphgs/RuKhWRQe
	EvwpB8Q5g6iUPo1wAJdi91td7YZZagafN3OtRsI6ki4ToSvBDyENowJmoD3NADKwvD5mwtW8OL1Yi
	crLHidjOwenDyRQqvF0HO07CPKkbTdbNk83RiRHYTDdqhTtISLscaxe4fMSnsuCgpXQuZ4l+v66Hm
	CyEneMMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txiQH-0000000AQj3-1sqa;
	Thu, 27 Mar 2025 08:17:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txiMA-0000000AQ60-2rxX
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 08:12:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1txiM8-000685-3F; Thu, 27 Mar 2025 09:12:52 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1txiM7-001tXr-2v;
	Thu, 27 Mar 2025 09:12:51 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1txiM7-001ubM-2Z;
	Thu, 27 Mar 2025 09:12:51 +0100
Date: Thu, 27 Mar 2025 09:12:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <Z-UIgzNKC7RWo88j@pengutronix.de>
References: <20250325160008.1076-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250325160008.1076-1-jmaselbas@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_011254_717950_BBBFCEEE 
X-CRM114-Status: GOOD (  17.02  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] fbconsole: add missing break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 25, 2025 at 05:00:08PM +0100, Jules Maselbas wrote:
> The cursor move CSI has nothing to do with the clear-screen CSI.

CSI n K is erase to beginning or end of line.

> The existing fallthrough looks like a bug, add the missing break.
> 
> Fixes: 27f79c05ab ("video: implement framebuffer console")
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
> 
>  I am not 100% sure if this is a bug or not, it feels like it sould not
>  fallthrough, an extra look would be nice.

Yes, really looks like a bug. Moving the cursor shouldn't erase
anything.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


