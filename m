Delivery-date: Thu, 11 Nov 2021 14:12:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ml9st-0005TG-GC
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 14:12:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ml9ss-0008EC-L7
	for lore@pengutronix.de; Thu, 11 Nov 2021 14:12:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WuR3KKlBwzNb2ICZNG1oqlrwGihXAaYWvvmuiQ9Y5yI=; b=AvwOokWbfDoD9T2RF0KLSVdEPW
	SYW6U7CO8OOYZ9yziiWkwW8NJskEe2tHMD4KSM6yF97N64bRcDxhJe7CvT3BYBbrbTMfd3i9eM4Yb
	Ekxg1FyXDGU77+QT0YAmSGlOXMSReHwuS7yW5wPDW0BKTXpeYC2UWtBaQ1nEuXS18oe7bs8l3d9bE
	2SLi6Vyr7+jpWYa1a34q5RHruSHXn/GjsDtat9Op5AfErCehubuJDQVLZJ4HMHupMZh3+GuzjQGtM
	O224uSTg31VtaoBaI+n05njZMSgOL4Cf3abWElJMZQGnuAtlTAQ3GG9S0GmsW5T+QtkU58n31e5cL
	DNibU6xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ml9rR-007w3Q-Oj; Thu, 11 Nov 2021 13:11:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ml9rK-007w1q-Kl
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 13:11:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ml9rI-0007hr-Tp; Thu, 11 Nov 2021 14:11:16 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ml9rI-0006yl-Go; Thu, 11 Nov 2021 14:11:16 +0100
Date: Thu, 11 Nov 2021 14:11:16 +0100
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20211111131116.GW25698@pengutronix.de>
References: <20211110104530.980192-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211110104530.980192-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:10:42 up 266 days, 16:34, 145 users,  load average: 0.56, 0.39,
 0.30
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_051118_710417_09E7A193 
X-CRM114-Status: GOOD (  20.89  )
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
Subject: Re: [PATCH 0/1] arm: rockchip: add support for the quartz64 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 10, 2021 at 11:45:29AM +0100, Michael Riesch wrote:
> Hi all,
> 
> This patch introduces support for the Pine64 Quartz64 board that features
> the Rockchip RK3566, a reduced but largely identical version of the RK3568.
> 
> Please note that the corresponding board device tree is not yet available
> in barebox. It is going to appear in Linux v5.16-rc1 and will be synced
> shortly afterwards (hopefully :-).
> 
> Looking forward to your comments!

Looks good to me. We can merge it once the v5.16-rc1 dts changes hit
barebox.

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

