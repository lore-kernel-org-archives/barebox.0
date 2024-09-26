Delivery-date: Thu, 26 Sep 2024 10:20:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stjjL-002vh8-3C
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 10:20:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stjjM-0000jV-GH
	for lore@pengutronix.de; Thu, 26 Sep 2024 10:20:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vam4+UgaVYEZrEgEBeHUI/dLnaF25QYD0uTZzxIKA8M=; b=saabxXyAZ9CJJJHzROMkG8dYjr
	aOZytqw5bq5sSCutrl39rTisSqNCkHJfqIObRiISJquwgKu6H1oflZ3y+ncKD/Wb66ZPnypW7lyea
	2b1x8LaeyYxU3c5U5Dtpp6GDmSbUzkgR3RhltyAjPWMwEF3LHZTF09Bfz1Oh6wACzBEm3qaReWYgY
	9A9X2Az2gieOY7K413xT6VF4Tuc9Zxhdg4XEVXyCp0jOt/bs9AQ/oAFViY5lk3lbNXLshvrGJK2dV
	MxeSVfKXUtAHewisMu9Bw32paE5wQDD2g/W8ngHebsBfeG9QjxNjto7/7FjmVa98X7oCTb2X2lI4b
	FSJ/yYuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stjii-00000007f6f-267i;
	Thu, 26 Sep 2024 08:19:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stjif-00000007f6E-2JLj
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 08:19:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1stjid-0000Jy-UY; Thu, 26 Sep 2024 10:19:23 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1stjid-001dtP-Hz; Thu, 26 Sep 2024 10:19:23 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1stjid-00D7xu-1X;
	Thu, 26 Sep 2024 10:19:23 +0200
Date: Thu, 26 Sep 2024 10:19:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZvUZC9gzQFLMx5Ue@pengutronix.de>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
 <20240925-spi-gpio-v1-3-47f6285b3bf1@pengutronix.de>
 <42e379a1-412b-4f46-81db-7dbd270d0dfd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <42e379a1-412b-4f46-81db-7dbd270d0dfd@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_011925_613428_311D971C 
X-CRM114-Status: GOOD (  21.14  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] spi: spi-gpio: switch to new gpio binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 26, 2024 at 08:09:44AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 25.09.24 16:06, Sascha Hauer wrote:
> > The old deprecated device tree binding for the spi-gpio driver uses
> > "gpio-sck", "gpio-mosi" and "gpio-miso" to specify the GPIOs. Switch to
> > the new binding which uses the standard GPIO property names.
> > 
> > The old binding is still used in some device trees, but none of the SoCs
> > using them is actually supported in barebox, so do not bother to keep a
> > fallback to the old binding. The one in-tree user of the old binding is
> > converted in this patch.
> 
> There is one more user in sandbox-libftdi-example.dtsi. Please fix that as well.

Missed that, will do.

> 
> Also, while you are it, why not switch over to the GPIOD API? :-)

I'll do that for the next round.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


