Delivery-date: Mon, 17 Apr 2023 09:07:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIxG-0061q3-Sv
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 09:07:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIxG-0003dM-Qa
	for lore@pengutronix.de; Mon, 17 Apr 2023 09:07:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M09JcaSGnSW20Iyz/uDTduv7uyLI6RJM4dUqB0Y/iVM=; b=FbdsVV614lK28pp5D0+WV2Movo
	9+kYXFgZJPYQDof8G6psJNV0fiqKzuNYt3U/1+KxLtQvLiTTn2Q0MDmxaYCBv4paJNxHN2ECpWYHt
	wuZ5Tedo/8qeK34aXcH+CR2dK5+vE739e5UuZMUbbjvpLcTPoHAcJbJ4XJwVCWBzL/zBmZfK1zUBs
	slT0xGypXL8Oe9SSJim3Mlbx8Id7ttUVbZkgI4+zuXK7GL5bXUGBfZoS1/SKoM35CAxF5LdNVoApM
	a/YrTdqfUlZPNgyAvm/MuOwvfJK+gA1Pcqy/3ibZCAjy9I7AiFWkMWOOzKdbjC2Sq4MON4G7wzPKV
	EiHJ6M6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poIw5-00F8LZ-1G;
	Mon, 17 Apr 2023 07:06:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poIw2-00F8Kn-1k
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 07:05:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIvy-0003Un-Oh; Mon, 17 Apr 2023 09:05:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIvy-0005r8-Fk; Mon, 17 Apr 2023 09:05:54 +0200
Date: Mon, 17 Apr 2023 09:05:54 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230417070554.GJ13543@pengutronix.de>
References: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_000558_574395_2265BE4D 
X-CRM114-Status: GOOD (  16.03  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/5] dma: pass physical device to DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 14, 2023 at 04:52:54PM +0200, Ahmad Fatoum wrote:
> This splits off the non-contentions parts of my dma-coherency series:
> https://lore.barebox.org/barebox/20230221080524.607241-1-a.fatoum@pengutronix.de/
> 
> Only change is a typo fix in a comment, but no other changes.
> 
> Ahmad Fatoum (5):
>   usb: dwc3: populate parent of xHCI dev
>   usb: xhci: pass physical device to DMA API
>   net: rtl8169: pass physical device for DMA API
>   firmware: zynqmp-fpga: pass physical device to DMA API
>   net: designware: eqos: pass physical device to DMA API

Applied, thanks

Sascha

> 
>  drivers/base/resource.c        |  6 ++++--
>  drivers/firmware/zynqmp-fpga.c |  7 ++++---
>  drivers/net/designware_eqos.c  | 13 ++++++-------
>  drivers/net/rtl8169.c          |  9 +++++----
>  drivers/usb/dwc3/host.c        |  8 ++++----
>  drivers/usb/host/xhci-ring.c   |  8 ++++----
>  drivers/usb/host/xhci.c        |  6 +++++-
>  include/driver.h               | 12 ++++++++++--
>  8 files changed, 42 insertions(+), 27 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


