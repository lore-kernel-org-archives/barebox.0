Delivery-date: Fri, 05 Nov 2021 10:33:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mivbZ-0003XD-7v
	for lore@lore.pengutronix.de; Fri, 05 Nov 2021 10:33:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mivbY-0007eP-B6
	for lore@pengutronix.de; Fri, 05 Nov 2021 10:33:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sS8Hu0civVjcA4mwS+9HXOn0kncGYnWj0mwU0XGx6Z8=; b=vtIuHcM/HNWAKqWaUynbz8K4gH
	CiDnpZmo1H00Uvv7GZNkTFgGuc4MnEIUwuNGkfiqn9YLMXOvYGCaj7kqIHDvZgFdlQXt+IeUvzHeL
	3Z5z47jyvi1o3RCGpLC2bQSZNzs37eIomsNIJ2zr9iy8XOsMBpdX1MfNhpNiHfJW4SkygX3MCC0bv
	x9uOro3ZkE7050Z1o6zpe5UiCwrUOAzas++PV0/9od9ODWIIt77u36xCGc0I2lkfveLCGu22IUUNJ
	HIK+afORURVAoLIYwadaM5bZyLaLpvjmkSQ3+658PtQlDH3SN7RBjjdoKKwt9DY9wQbHsIZkt5ASj
	IjTa856Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mivaJ-00Ayms-LY; Fri, 05 Nov 2021 09:32:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mivaE-00AymA-SQ
 for barebox@lists.infradead.org; Fri, 05 Nov 2021 09:32:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mivaD-0007aL-KR; Fri, 05 Nov 2021 10:32:25 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mivaD-0003gb-Ac; Fri, 05 Nov 2021 10:32:25 +0100
Date: Fri, 5 Nov 2021 10:32:25 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211105093225.GH25698@pengutronix.de>
References: <20211101125538.512494-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211101125538.512494-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:32:04 up 260 days, 12:55, 137 users,  load average: 0.23, 0.28,
 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_023226_939403_191D6BAD 
X-CRM114-Status: GOOD (  18.98  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4] usb: net: Add support for the Realtek RTL8152B/RTL8153
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 01, 2021 at 01:55:38PM +0100, Oleksij Rempel wrote:
> This adds support for the Realtek RTL8152B/RTL8153 ethernet converter chip.
> This driver is based on U-Boot version v2021.10 with port to barebox
> internal frameworks.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/usb/Kconfig    |    7 +
>  drivers/net/usb/Makefile   |    1 +
>  drivers/net/usb/r8152.c    | 1593 ++++++++++++++++++++++++++++++++++++
>  drivers/net/usb/r8152.h    |  619 ++++++++++++++
>  drivers/net/usb/r8152_fw.c | 1199 +++++++++++++++++++++++++++
>  5 files changed, 3419 insertions(+)
>  create mode 100644 drivers/net/usb/r8152.c
>  create mode 100644 drivers/net/usb/r8152.h
>  create mode 100644 drivers/net/usb/r8152_fw.c

Applied, thanks

Sascha



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

