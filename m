Delivery-date: Tue, 02 May 2023 13:44:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoQh-002FE1-8j
	for lore@lore.pengutronix.de; Tue, 02 May 2023 13:44:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoQf-0006ap-AY
	for lore@pengutronix.de; Tue, 02 May 2023 13:44:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ASiCow0b98dAAtXCHDCQD0N2m5sk8wC2qhhXgNdg/tY=; b=r0KAEozPY3kHR8Ec+QPi7Rrfic
	uqeUp6/Ghz8Q1EXo0qw8t2wX16nY6Y6qRv1BEd5jZUNy4VAxya0UIJ1Pq6wPJB8SlmmiA38HLwcPA
	kgp9FFDAn/Bxqgiu3s20frCoLvw7AeFUcsl3nJhEgSyTSL3XBIlnmczdNnuAy1lp/yTjlX5q/+vXd
	3qu/X8iYBu8A/r8tOp48px3Vi0/8N2GEAtbCI0WDXRkJxfFMEFq3uImhcBweUdEt1REDCNp+EcCS/
	vY1L8i77oVgVKh7WeMn9dQYwkAfPoNSvP5z5p+eSP3ThEErX4Vy3Q9Rhb0ZyPFyssXH9CztA7N2Jr
	1dg3o9Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoPi-001Hfd-1s;
	Tue, 02 May 2023 11:43:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoPg-001Heg-1c
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 11:43:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptoPf-0006SH-9f; Tue, 02 May 2023 13:43:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptoPe-0005tM-PF; Tue, 02 May 2023 13:43:18 +0200
Date: Tue, 2 May 2023 13:43:18 +0200
To: Wolfram Sang <wsa@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230502114318.GG29365@pengutronix.de>
References: <20230427184718.105393-1-wsa@kernel.org>
 <20230427184718.105393-2-wsa@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230427184718.105393-2-wsa@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_044320_536860_23EB354A 
X-CRM114-Status: GOOD (  16.52  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: at91: usb-a926x: remove nand partitions from
 config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 27, 2023 at 08:47:17PM +0200, Wolfram Sang wrote:
> We define partitions as well in the board file. Leading to:
> 
> New partition nand0.at91bootstrap (0x00000000-0x0001ffff) on nand0 overlaps with partition at91bootstrap_raw (0x00000000-0x0001ffff), not creating it
> cannot create nand0.at91bootstrap: Invalid argument
> addpart: Invalid argument
> 
> So, remove it from the config file.
> 
> Signed-off-by: Wolfram Sang <wsa@kernel.org>
> ---
> 
> Or shall I rather remove it from the board file?

No, doing it in the board file is preferred.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


