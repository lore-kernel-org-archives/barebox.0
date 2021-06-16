Delivery-date: Wed, 16 Jun 2021 09:53:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQN5-0001EL-Bl
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 09:53:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQN4-0001cw-Cz
	for lore@pengutronix.de; Wed, 16 Jun 2021 09:53:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GFRZzyJhDZiqDOZwxDDr0KNL69/s4Zwi1vfNQNwQbsY=; b=nzexOqqVsrnObu45UPBaegtFYo
	D2nZpRPqpv1LmQr6EZFPdLWGRinYmSJk/X+l4HDL3oA1j9MAeW/G+gXaXUvHtCbCMA++p4J3RraGh
	qRCrcV7iqVqrVjSYaVu6TtfIMJ48hzyND7R/WDQxBxoZ9mxUuoyyZDK/3tdVO8poN40Mqzp4I/lEk
	lg1KSw9WoKrq5tmShIWZeAYBxN0+/c65TyMVBmPS/m9HsGGNSLeII/13j7wUxq4t7OyoiIvBnaxfM
	5pD2MorlE4UYzlIomvYxSKiyuAeTfPGmHWn00RaDr1CJfP/kpB3I/UgHFfJ7p9ZduSQX3qD68NVVv
	JubQwt1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQLn-005H7X-GW; Wed, 16 Jun 2021 07:52:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQLi-005H62-Fy
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:52:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltQLg-0001ZJ-RV; Wed, 16 Jun 2021 09:52:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltQLg-0001Pg-Eb; Wed, 16 Jun 2021 09:52:32 +0200
Date: Wed, 16 Jun 2021 09:52:32 +0200
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org,
 Michael Graichen <michael.graichen@hotmail.com>
Message-ID: <20210616075232.GN9782@pengutronix.de>
References: <20210616073957.1872965-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210616073957.1872965-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:52:16 up 118 days, 11:16, 114 users,  load average: 0.07, 0.11,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_005234_574084_3EBC0C03 
X-CRM114-Status: GOOD (  16.73  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] Cleanup and fix arasan-sdhci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 16, 2021 at 09:39:52AM +0200, Michael Tretter wrote:
> Hi,
> 
> These are a few misc patches for the arasan sd controller. Nothing particular
> stands out and each patch is useful on its own. I put them into a single
> series, because all of them affect the arasan driver.
> 
> Michael
> 
> Michael Tretter (5):
>   mci: mci-core: respect disable-wp property
>   mci: arasan: fix most checkpatch warnings
>   mci: arasan: remove duplicate stop clock
>   mci: arasan: wait for XFER_COMPLETE for busy response
>   ARM: zynqmp: defconfig: enable MCI_ARASAN

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

