Delivery-date: Wed, 17 Aug 2022 09:12:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oODE5-001dEx-TK
	for lore@lore.pengutronix.de; Wed, 17 Aug 2022 09:12:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oODE3-0007A8-Uh
	for lore@pengutronix.de; Wed, 17 Aug 2022 09:12:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EjkvGqULp9I8j4s8NaNqgcxCkaOlQdB+T+5sm3plRbI=; b=c1OfIvonlLy6J+jP4RS5tdpmPX
	xRYxK3jlhRBrfOAKh15Sk6GPJ5h5IKCoKc/v9NF+0scOGHOwRVYedta/1M0hKfJTT6hmtwzoG+OCg
	HlwK5qNZMaWnOH/nw/KTdSWIO0FTasO8n/e63A/cCfVf0kI3rT9LjPoAXeGFz4ycM4sx2quGm1DHz
	AElTW0PRi49PvIrdI1asbuXS33ioqpdB2InLR1qWcUPZ2CcI346pmv/vl1XWGn9b6VUN3h2Lx+sZh
	ymiAHUsKPzX8oZjdswrHET/3f2pRsA9ccUUrkkaSk9oXX2uPqMZOto8leAsmiiHbj3DR21hDcdDJM
	IKb2Ktvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oODCW-00Cpsy-8I; Wed, 17 Aug 2022 07:10:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oODCO-00Cpkj-W7
	for barebox@lists.infradead.org; Wed, 17 Aug 2022 07:10:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oODCN-0006dR-9G; Wed, 17 Aug 2022 09:10:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oODCM-0004Oh-Vi; Wed, 17 Aug 2022 09:10:42 +0200
Date: Wed, 17 Aug 2022 09:10:42 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de
Message-ID: <20220817071042.GR17485@pengutronix.de>
References: <20220815091733.1973736-1-a.fatoum@pengutronix.de>
 <20220816075710.GG17485@pengutronix.de>
 <80d3e34a-37aa-1d04-ff21-5ccd7a9cadc4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80d3e34a-37aa-1d04-ff21-5ccd7a9cadc4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_001045_074495_4B8A9C60 
X-CRM114-Status: GOOD (  19.41  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usbgadget: autostart: add usbgadget_autostart helper for
 board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 17, 2022 at 08:30:10AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 16.08.22 09:57, Sascha Hauer wrote:
> > The code is a bit hard to follow with the approach of starting the
> > gadget exclusively from the setter function of global.usbgadget.autostart
> > 
> > Can we go with the following approach? It moves the starting of the usb
> > gadget to a function that first checks if all prerequisites are
> > fulfilled to start the gadget and then starts it if desired.
> 
> Just tested it and works for me. Please apply.

Did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


