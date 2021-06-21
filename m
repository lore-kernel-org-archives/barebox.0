Delivery-date: Mon, 21 Jun 2021 08:06:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvD52-0004xb-Ou
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 08:06:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvD51-0000NK-Qs
	for lore@pengutronix.de; Mon, 21 Jun 2021 08:06:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q9h2sVYh2wM2VuBuJyLyQfIuZQvBaMaUUYHlM0LHHec=; b=SP/fuNEgzdgaaRYcjCr47kPEmh
	ahsKLqiTc3rtJXK9XD36AhxG6s+1dfFzg89RXjW3A85vDTbhdNkBzzGczHVWB+1yJxaK4DBCVEZEN
	QeDKNzdLnOE0fqt53oneKjIYLepYGUXAi0MitRd53lDhvRpB21hZjrpmM8KEfzn7ahsjTNKDJ52xm
	A3oxQoOkQmZYLVMWB/l5nj/4LMVUNQn/a+VEtzzwKuvY4Rk5hmzAeY9Fc3D+7+Z07Tkaoc77mW8EL
	QUK8MzkLveid9mRCYlpTRvdEfbOxgU1+LiCkwKuP9gEIaGdz2ixKuOLmS0mfqCDpXLtmMnoFV2eYy
	amGoRauw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvD3Y-002G8c-7A; Mon, 21 Jun 2021 06:05:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvD3S-002G8E-Sy
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 06:05:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvD3Q-0008Sp-AE; Mon, 21 Jun 2021 08:05:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvD3Q-0003ei-0a; Mon, 21 Jun 2021 08:05:04 +0200
Date: Mon, 21 Jun 2021 08:05:03 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210621060503.GL9782@pengutronix.de>
References: <20210619034516.6737-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210619034516.6737-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:04:46 up 123 days,  9:28, 91 users,  load average: 0.33, 0.43,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_230506_982336_1BF10DA4 
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/13] nvmem: misc enhancements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jun 19, 2021 at 05:45:03AM +0200, Ahmad Fatoum wrote:
> Series implements some of the new NVMEM bindings:
> 
> - New providers:
>   - nvmem-cells (for MTD partitions)
>   - nvmem-rmem (memory regions passed by previous boot stages)
> 
> - New consumers:
>   - Network devices: Unlike Linux, we do that for all drivers
>     in generic code. This is done postenvironment, so network drivers,
>     board code and other (OTP) drivers are not overridden.
>   - nvmem-reboot-mode: To go along with syscon-reboot-mode
>   - nvmem command: This one only prints registered devices for now
> 
> And changes sandbox to make use of it.
> 
> Ahmad Fatoum (13):
>   nvmem: bsec: remove unused, left-over, struct member
>   nvmem: treat devices without nvmem_bus::write as read only
>   nvmem: add support for new read-only memory (rmem) binding
>   nvmem: add support for nvmem-cells binding
>   sandbox: use nvmem on top of stickypage for reset reason
>   power: reset: port Linux generic NVMEM reboot mode driver
>   sandbox: use nvmem-reboot-mode instead of syscon-reboot-mode
>   sandbox: dts: fix unit-address for state partition
>   nvmem: add command to list nvmem devices
>   sandbox: hostfile: move initcall to earlier postcore level
>   of: of_net: sync of_get_mac_address with Linux for NVMEM support
>   net: consult device tree for ethernet address in NVMEM as fall-back
>   sandbox: ship sample environment

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

