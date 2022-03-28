Delivery-date: Mon, 28 Mar 2022 10:54:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYl8s-008oYI-UE
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:54:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYl8v-0000VK-Dt
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:54:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/d355uCWBy1yFlLlz5NZrrJpM8ktF/HZRg63c+Ygq+0=; b=m/Gmw9/F8djrCU5JKlzqhMKm1w
	YMHUEte5DyL9dApNXP/zVptM1KjxurnQbrx9Q4pPRp2xmLOvF4S7U7xpqcG7sAYfRf090A1lmqheA
	vukUQ/tQxRClEJYO/VOaWwLCBePuR6HkzKFYzVHxBjigaa4Dw/oLldolfH9uIMnKqcsaOQjbaS6KL
	b0c0tzKMyYpkaqpbN938GBQkwFesRCykgbxYaIIPoT6NxXXaah+LcCBswoZ4UKMiZSvbXccSX9Nay
	r+as4Lwsi9sBfApAmzfHxjag/ZGRk+zJz0qzfu3znEdZ6iORa+oMGNEC7Ce3hr8mlwHeJmZ8O1xUj
	X2nyCnOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYl7j-007vaC-3v; Mon, 28 Mar 2022 08:53:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYl7d-007vZV-MD
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:53:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYl7c-0000Mz-EP; Mon, 28 Mar 2022 10:53:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYl7c-0005HW-5f; Mon, 28 Mar 2022 10:53:08 +0200
Date: Mon, 28 Mar 2022 10:53:08 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220328085308.GJ12181@pengutronix.de>
References: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220319110246.2850396-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:52:59 up 107 days, 17:38, 85 users,  load average: 0.08, 0.12,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_015309_843908_2AB9634D 
X-CRM114-Status: GOOD (  19.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 0/6] usb: gadget: multi: fix bind error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Mar 19, 2022 at 12:02:40PM +0100, Ahmad Fatoum wrote:
> USB mass storage gadget may fail during bind. USB multi gadget error
> path for failed bind is broken. USB mass storage gadget unbind leaks
> resources. Fix these three issues.
> 
> Ahmad Fatoum (6):
>   usb: gadget: implement and use system_partitions_get_null
>   usb: gadget: don't register UMS with empty function
>   usb: gadget: mass-storage: fix clean up of file descriptors
>   usb: gadget: mass-storage: reference count allocations used in bthread
>   usb: gadget: multi: fix broken handling of USB function bind error
>   usb: gadget: multi: free UMS instance at multi_unbind time

Applied, thanks

Sascha

> 
>  common/fastboot.c                   |  4 +-
>  common/usbgadget.c                  |  6 +--
>  drivers/usb/gadget/f_mass_storage.c | 64 +++++++++++++++++++++++------
>  drivers/usb/gadget/multi.c          | 24 ++++++++---
>  include/system-partitions.h         |  8 ++++
>  include/usb/mass_storage.h          |  1 +
>  6 files changed, 81 insertions(+), 26 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

