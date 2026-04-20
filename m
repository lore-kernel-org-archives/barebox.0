Delivery-date: Mon, 20 Apr 2026 13:31:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmqf-00EKMu-2q
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 13:31:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmqf-0006Qn-Bt
	for lore@pengutronix.de; Mon, 20 Apr 2026 13:31:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=deb97tRLYFL7tcc2ECq+Almk+VqUEr6jkoMwIJxFfnY=; b=HexeZJR7gpMFnGHr/SoYki6/vl
	guObnN+KcUt1UCY1JhfhBOoBcsadzG3jPw4pTK7y13OBdGW89WIf2pYMzZbYep50Js0ZXRSG+hyVK
	M63+XnfFeid+v7sVkelWJhDfcXjSrdf5y5Lwg6r61f8PiAgFGIh5oE6gVRW0Df9l6bvLZqwT2bAhb
	r8Hx9vaNh6A5rt+yEKjMwu79Al/+oR5SN9qMTWoaBkjQJLNJN84xlWb10p2AFIZDIBNYohspPv40O
	26LGnmm7L6jpMr61WE5p1W/a4+qOBbJtico3DuSniitHaq1KQJRTbaL89P83CXtQPYINY1j/BsgMx
	MfkwGUdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmqD-00000006no9-18CK;
	Mon, 20 Apr 2026 11:31:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmq9-00000006nnn-41Ax
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 11:30:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wEmq8-0006Jw-2R; Mon, 20 Apr 2026 13:30:56 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wEmq7-006KJm-2t;
	Mon, 20 Apr 2026 13:30:55 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wEmq7-00000004G9e-3M2P;
	Mon, 20 Apr 2026 13:30:55 +0200
Date: Mon, 20 Apr 2026 13:30:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aeYOb7aEUJ8G9vCG@pengutronix.de>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
 <20260420-usb-typec-stusb160x-v1-4-5875bbae80ab@pengutronix.de>
 <c71d0163-23e8-4360-8d47-12271f650c75@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c71d0163-23e8-4360-8d47-12271f650c75@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_043058_027272_5DD2D705 
X-CRM114-Status: GOOD (  16.54  )
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
Subject: Re: [PATCH 4/4] USB: typec: Add STUSB160x driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 20, 2026 at 01:14:51PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 4/20/26 11:02 AM, Sascha Hauer wrote:
> > --- /dev/null
> > +++ b/drivers/usb/typec/stusb160x.c
> > @@ -0,0 +1,572 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/typec/stusb160x.c?id=82375469755662b9910a22da14027cbef2bca666/*
> 
> Invalid link. You may want to remove /* at the end.

Missing newline, /* should go to the next line.

> 
> > +	node = of_get_child_by_name(client->dev.of_node, "connector");
> > +	if (!node)
> > +		return -ENODEV;
> 
> Add extra error message here or return another error code that's not
> silently swallowed up?

Yes.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


