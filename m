Delivery-date: Fri, 05 May 2023 08:40:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pup7C-005Xg9-Jj
	for lore@lore.pengutronix.de; Fri, 05 May 2023 08:40:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pup7A-0002YD-Gv
	for lore@pengutronix.de; Fri, 05 May 2023 08:40:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Aq4sS0ZAZXp6DMG6ruqky+SmsPcIRCxR2xqa2wUbtE=; b=3MgeW5wMkX/bUhj8W/Rg00ZtUJ
	sNeM/zag/CA5h80SNiqxEgS2MDKaP4wlc0b8iAEyuOu3QYed4HtGRfXmVOfv4JylywGitzHXbtOEJ
	sZ0X8pYcmUEUcCVPRQWmif0PkXdypvRFiBpgl7w9pIB6H+dUUVhng1iwXUDPKh2FC1NmYcLYMicuK
	1dFNQ2QmsZI1m2mhvlHP/vj99N7IhqkHwfPzOQmM/fUWCY74IVeU3/gW7d8Zu0jqVZI+e9Fzyiurw
	wMLNj3l91YJgudaoJbZsu7iweEos72gvBX2/aSEYx8nuELj9cBT7+9EJcW6n7pEdP1rRS+LVQfE4V
	6MqhX8cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pup60-009qb4-1A;
	Fri, 05 May 2023 06:39:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pup5x-009qZv-2c
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 06:39:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pup5u-0002Bb-Ob; Fri, 05 May 2023 08:39:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pup5u-0004Go-74; Fri, 05 May 2023 08:39:06 +0200
Date: Fri, 5 May 2023 08:39:06 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230505063906.GR29365@pengutronix.de>
References: <20230503101919.1826193-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230503101919.1826193-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_233909_848074_C8B5DB1B 
X-CRM114-Status: GOOD (  20.32  )
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
Subject: Re: [PATCH v1 0/4] Improve USB FIFO handling and enable UMS mode on
 PRTT1L boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 03, 2023 at 12:19:15PM +0200, Oleksij Rempel wrote:
> This patch series addresses the initial issue of USB Mass Storage (UMS)
> mode not working on PRTT1L boards by improving USB FIFO handling in the
> DWC2 driver, fixing multiplier handling in endpoint setup, and adding
> support for multiple gadgets, including UMS, fastboot, and ACM gadgets.
> The changes include porting support for USB FIFO devicetree properties
> and FIFO configuration from Linux kernel v6.3. These patches were tested
> on a PRTT1C board (based on stm32mp151) with the following command:
> usbgadget -S '/dev/mmc1(mmc1)' -s -A '' -b
> 
> Michael Grzeschik (1):
>   usb: dwc2: fix multiplier handling in endpoint setup
> 
> Oleksij Rempel (3):
>   usb: dwc2: Port support for USB FIFO devicetree properties from Linux
>     v6.3
>   usb: dwc2: Port FIFO configuration sync from Linux v6.3
>   arm: dts: stm32mp151-prtt1l: Configure USB gadget FIFOs for multiple
>     gadgets support

Applied, thanks

Sascha

> 
>  arch/arm/dts/stm32mp151-prtt1l.dtsi |  1 +
>  drivers/usb/dwc2/core.c             | 27 ++++++++++++++++++++
>  drivers/usb/dwc2/dwc2.c             |  1 +
>  drivers/usb/dwc2/dwc2.h             |  1 +
>  drivers/usb/dwc2/gadget.c           | 38 +++++++++++------------------
>  5 files changed, 44 insertions(+), 24 deletions(-)
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


