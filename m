Delivery-date: Mon, 10 Feb 2025 10:12:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thPpq-000Xdn-1N
	for lore@lore.pengutronix.de;
	Mon, 10 Feb 2025 10:12:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thPpp-0003AV-92
	for lore@pengutronix.de; Mon, 10 Feb 2025 10:12:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XoLQl0liXRbrB6iDjClHtEtYjhjnqSeMw4Za29akEXo=; b=AEGUwTymFeyoa3AI5lPoMTCouZ
	oMLPzWgTpnYjGXElsIAEQbi4gbj19L2NFdGdo+/bz3z7k+yJKzEwwWjXmGUr3xwC3k7Qhd4Z5dSE8
	MdYjV5/T11B+FyB7jvBl0B7id/t7I4EK2pLHpziQs7pqGd/FF4/R9lkiRN4T8jD/oLUy9ONoczkxJ
	vpilCjiXtwAkR5OGcTTVkLL1JqktC0FnfppGnM3kxavS+oAjwJBRRKQ2+wAN7jEyWWRwKdSzty60q
	NeCN8HFJp1mDLnXURd9yKrzEmhbBCEOjLxINs6XJ6dSOnYOzxPfWT47WUkwHUyUkHvFN8PPbcduVr
	WEl1ukAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thPpC-0000000GmJW-0xuo;
	Mon, 10 Feb 2025 09:11:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thPhp-0000000Gksm-255X
	for barebox@lists.infradead.org;
	Mon, 10 Feb 2025 09:03:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1thPhl-0000OW-My; Mon, 10 Feb 2025 10:03:49 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1thPhl-000DXM-1C;
	Mon, 10 Feb 2025 10:03:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1thPhl-007CSm-0u;
	Mon, 10 Feb 2025 10:03:49 +0100
Date: Mon, 10 Feb 2025 10:03:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonathan Bar Or <jonathanbaror@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z6nA9ce6j7wMCJJv@pengutronix.de>
References: <CABMsoEEwH4Nch6bVqd+8QSMOCzMTN9LVZcSe6yJ=+Rf54sAVDg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABMsoEEwH4Nch6bVqd+8QSMOCzMTN9LVZcSe6yJ=+Rf54sAVDg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_010353_535767_1A45D90D 
X-CRM114-Status: GOOD (  12.84  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reporting security issues preferred method?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jonathan,

On Sun, Feb 09, 2025 at 06:39:14PM -0800, Jonathan Bar Or wrote:
> Hi Barebox mailing list!
> 
> What's the best way to report security issues?

This question comes up from time to time. We don't have an official
answer yet, but I see we should work on one.

For now you can write to me and Ahmad afa@pengutronix.de

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


