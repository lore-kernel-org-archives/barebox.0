Delivery-date: Fri, 14 Jan 2022 10:34:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Iyg-001uuL-S3
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 10:34:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Iyf-0000CL-D2
	for lore@pengutronix.de; Fri, 14 Jan 2022 10:34:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hjMoTbMvWYlBHq8sBV8EVUIzNzuUwUHfkYOSvdy8Hbg=; b=Xj/P8NSGTpEkSnGajKoaB88ERM
	34eqcjtlE6gVZZYSFZkAKv3+yOHUqoc29IlJ2Vkk9Ge64Y6NMQXNKRU1QjKM21OqkXVVAZzkTeZJT
	Vr7NZpDx+Me21SM0/+tZUrjg3yxoiugt/A/A+tnuc6o5t9KadfQKoQxwpi0XMYG4IVMHh2U3w9GTx
	oH1UPzGXGFGKlrxAf+G8hXVria8QHcrxgt0XgXJmAMXvJVDy54Sm62cBG7kssunsokWvfLx7YOWNE
	D9fdwuVL9i7RmC8yjbTL4a6O87PlCEYVBDH1wDVGNv7hqcllRkBThYtIfZ3tlu+HewSkCK3LGijpI
	wVMBoISw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IxU-008Wy3-3e; Fri, 14 Jan 2022 09:33:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IxN-008Wwf-2W
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 09:33:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8IxL-0008VV-QH; Fri, 14 Jan 2022 10:33:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8IxL-0001qY-HY; Fri, 14 Jan 2022 10:33:11 +0100
Date: Fri, 14 Jan 2022 10:33:11 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220114093311.GV26619@pengutronix.de>
References: <20220114084757.311697-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114084757.311697-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:32:50 up 34 days, 18:18, 79 users,  load average: 0.17, 0.09, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_013313_149176_4AF8C864 
X-CRM114-Status: GOOD (  21.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] pinctrl: rockchip: use alias rather than full of name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 09:47:56AM +0100, Ahmad Fatoum wrote:
> From: Michael Riesch <michael.riesch@wolfvision.net>
> 
> We've so far relied on GPIO controllers being named "gpioX", while the
> binding mandates gpio controllers being just called "gpio". This already
> broke rk3288 support and rk3568.dtsi upstream also differs from the
> version in barebox' arch/arm/dts in that regard.
> 
> Instead, do like Linux does and use the alias to match the controllers to
> the GPIO banks with a fallback to probe order.
> 
> Fixes: 3f2f5980d517 ("dts: update to v5.16-rc1")
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> [afa: drop strncmp in favor of id comparison, reword commit message]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)

Applied to master, thanks

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

