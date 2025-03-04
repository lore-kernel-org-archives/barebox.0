Delivery-date: Tue, 04 Mar 2025 11:35:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpPcq-009jm3-2T
	for lore@lore.pengutronix.de;
	Tue, 04 Mar 2025 11:35:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpPcp-0007s3-Jy
	for lore@pengutronix.de; Tue, 04 Mar 2025 11:35:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5xgOyZRxfyUJ30AHEvhitzpIJfNUyjHKkvpgeUijVMU=; b=WZjXl9Ds71Ey5puuf+FWK5G9WP
	BXBtzFtOa7AX3DLKbbbpDz0TNpreqtgibr0go6EOyrtmeVlVuZfdKlOC1h9/UKv00pu1sRWlOfi2i
	vWe+l59/SY5A5BL5NbJA5TytO2Ajj0NqWpz0zYi9vadaH5cOVwbE3GuN4pNcCGBMonQFW999lxajl
	6Jg6jVP1T3qXuBEnKFvjh4KQ5HMeYo4FiepxnlT+OuPN9ru2Q3o9VidDMT8/gczp1b5duY+p9ldbp
	I3LYWPOBo7g6gSCGrdDoHsOi+w0jWPcAmdPGdCItv7Z5Jl4Aldr6QRG61Yv52Ds7ZhvsVEJhcboA4
	LaqiC4ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpPcW-00000004AqX-0R8D;
	Tue, 04 Mar 2025 10:35:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpONF-00000003pxF-3oWE
	for barebox@bombadil.infradead.org;
	Tue, 04 Mar 2025 09:15:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=5xgOyZRxfyUJ30AHEvhitzpIJfNUyjHKkvpgeUijVMU=; b=b1qLFg4kM99WVsYfukTULAy9ku
	uLN0+UkIVqdZBTfn1Tz+BX3AAGk7KJ7PWVzokcPNA6VyKixKytrJX2qxEN04yMSNyw55hQEubWKvB
	hglt/xdjuAo6wp7gJT9n+u+IW3jesja4M+F83MgjEmn1+jOBXp+qKTFPGmupm0kfarNHUtaAnsE8Y
	tYWwv74tXSc9xed6OjBbr9bk7t8inZAsHqdLIxG4U4MqhTISZ6Mq1m3NSI0ysRQZ+E4NCIWIK8883
	TBUNYOkVgGftJz/mgiTXe/yE1VJsBjezZC+4vAF6jFGEFBdSqyIVpUpRpAY+KnPKx9cknPGW3QqK0
	7bFddhYQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpONC-00000000W1s-3AO7
	for barebox@lists.infradead.org;
	Tue, 04 Mar 2025 09:15:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tpOMs-0005AS-0H; Tue, 04 Mar 2025 10:15:14 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tpOMr-003wmb-1u;
	Tue, 04 Mar 2025 10:15:13 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tpOMr-00CX2z-1a;
	Tue, 04 Mar 2025 10:15:13 +0100
Date: Tue, 4 Mar 2025 10:15:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org
Message-ID: <Z8bEobxWH6sNRt6B@pengutronix.de>
References: <cover.1740846737.git.uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1740846737.git.uwe@kleine-koenig.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_091534_803177_A3808572 
X-CRM114-Status: GOOD (  13.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] Add support for QNAP's ts-433 4bay NAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Uwe,

On Sat, Mar 01, 2025 at 05:36:17PM +0100, Uwe Kleine-König wrote:
> Hello,
> 
> this is the result of my quick effort to make barebox run on QNAP's
> ts-433 4bay NAS. The first 3 patches are IMHO fine to go in. The last
> one adds the new machine. As writting in the commit log the NAS boots
> with the resulting image, but neither network nor eMMC work.
> 
> I also tried adding
> 
> 	writel(RK_SETBITS(0x50), 0xfdc20140)
> 
> in lowlevel.c, but that didn't make a difference. I'm open for other
> ideas about what bit is missing.

dts/src/arm64/rockchip/rk3568-qnap-ts433.dts lacks the pinctrl nodes for
the sdhci controller. It might be that it works when booting from eMMC,
but not when booting from USB.

No idea for networking though.

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


