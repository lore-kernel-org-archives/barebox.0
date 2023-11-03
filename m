Delivery-date: Fri, 03 Nov 2023 08:38:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyolG-00Gjli-Kt
	for lore@lore.pengutronix.de; Fri, 03 Nov 2023 08:38:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyolC-0000Z2-4v
	for lore@pengutronix.de; Fri, 03 Nov 2023 08:38:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t9OFCcIqhnzJ8fKIcX5MH1kBDfB+IzmdNEW+BjCze2M=; b=ZzuwDCgmmC1i9lABMF4Io2gcKy
	/6JTDu5mV9I7HGm4N9spvUi1XJXm1KI7r+KmZzP7Et0i4uLk1nusk9B9l/Iwp4jwz0IjkWCUaYbl2
	KxNe+jAaoyidLiYHdmZ/UK1eZEhwoMXma0D2MJKuf9rhfc1OOd2I9gsq+FQtaRiodPbssaQLypanT
	gFo3gUlKpshWfExDYkWn74/OsnLpWK+dLYfQSpYKpenI69VWxaC6FjQDr/blmzi9i8HDVzpGSgqHx
	I43NF4wsmE+PSoqAOQFDTZZJ3ETRgRaaWFg7DdqOg5qkNlBA4us0QKB8gmz6oalNSgpFKG+dq/TFL
	KyzBCA6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyojT-00Atix-0h;
	Fri, 03 Nov 2023 07:36:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyojM-00AtiI-0r
	for barebox@lists.infradead.org;
	Fri, 03 Nov 2023 07:36:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyojG-0000JN-5w; Fri, 03 Nov 2023 08:36:30 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qyojF-006GKf-Q5; Fri, 03 Nov 2023 08:36:29 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyojF-0009j4-Ns; Fri, 03 Nov 2023 08:36:29 +0100
Date: Fri, 3 Nov 2023 08:36:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231103073629.GO235829@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
 <7b035953-f359-f616-9d90-df37da1890a1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b035953-f359-f616-9d90-df37da1890a1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231103_003636_325730_EB2D8668 
X-CRM114-Status: GOOD (  20.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/22] Add initial Texas Instruments K3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 02, 2023 at 03:12:25PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 03.08.23 12:49, Sascha Hauer wrote:
> > This series adds initial basic support for the TI K3 Architecture.
> > Currently only the AM62x is supported and within there the BeaglePlay
> > board (https://www.beagleboard.org/boards/beagleplay).
> > 
> > The current support is enough for bringing up barebox 2nd stage after
> > U-Boot has initialized the SoC. The SoC boots from a FAT partition on
> > SD/eMMC, the u-boot.img therein can be replaced with a barebox image.
> > 
> > The SoC has a core dedicated to handle clocks, power domains and other
> > stuff. Communication to this core is done with a mailbox interface and
> > this series contains patches to implement that interface based on that
> > a clk driver and a power domain driver.
> > 
> > So far only SD/eMMC is working, so there's plenty of room to add further
> > support for networking, USB, SPI and I2C. It's a start.
> 
> let's merge this?

OMG, I completely forgot about this. Just merged it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


