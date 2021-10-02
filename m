Delivery-date: Sat, 02 Oct 2021 11:18:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWb9o-00032Q-8X
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 11:18:12 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWb9n-0001cI-6H
	for lore@pengutronix.de; Sat, 02 Oct 2021 11:18:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S2rCunH9NNHXT3xg1aTyvFSz/VGUkN7BaIxDjHsvrzI=; b=PVI30UGwcNS2tMfHY1q3zlpLId
	Nme/fXRCAdFfw9HFCshPClt7bY3o2fA9f43k2yDrB8sHxofCqiUaQNqtyP8QN9b7VTwjqS7hNHVLi
	CcGlO4qiprxYNo02KdqwV7za3VMMCnQD4M1/Ipk2960FaAfc24pm97NONQWiHf5leXGjTiH7QW9cy
	6hVj6Pt8YyLt66R2ktgbZB54pIEGuZf0nhq+mHmIWDdcjWhe/7R6Wu9mZcgGFSc9sbaqVcWyNMyHX
	TBqutmiOWMCyspym0li362nZh0sItdn9xN2nrxf1jUBnL4wfNEjeukkZFNJBFWrS6LWwqNAi4keMN
	D43dNCPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWb8X-001zBs-M3; Sat, 02 Oct 2021 09:16:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWb8S-001zBZ-J3
 for barebox@lists.infradead.org; Sat, 02 Oct 2021 09:16:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWb8R-0001S6-Aq; Sat, 02 Oct 2021 11:16:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWb8Q-0001S9-Vy; Sat, 02 Oct 2021 11:16:46 +0200
Date: Sat, 2 Oct 2021 11:16:46 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211002091646.GD28453@pengutronix.de>
References: <20210916093458.21102-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210916093458.21102-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:16:26 up 226 days, 12:40, 94 users,  load average: 0.06, 0.13,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_021648_653831_CFED350C 
X-CRM114-Status: GOOD (  22.38  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] virtio: implement remove callbacks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Sep 16, 2021 at 11:34:58AM +0200, Ahmad Fatoum wrote:
> virtio parent device drivers (e.g. PCI and MMIO) create child devices
> and free them on remove. The virtio drivers for the child devices (e.g.
> block and console) however don't unregister with their respective
> subsystems in the remove callbacks. So these subsystems may have stale
> pointers pointing at removed devices. This is especially problematic for
> the console driver, because the virtio console device_d will be removed,
> but the console itself remains registered leading to a use-after-free
> as soon as printf is invoked for the previously active console.
> 
> This leads to a crash when typing reset in
> 
>   https://www.barebox.org/jsbarebox/?graphic=0
> 
> Fix this for all virtio drivers.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/block/virtio_blk.c      |  6 ++++++
>  drivers/hw_random/core.c        | 12 ++++++++++++
>  drivers/hw_random/virtio-rng.c  |  6 ++++++
>  drivers/input/virtio_input.c    |  5 +++--
>  drivers/serial/virtio_console.c | 14 ++++++++++++++
>  include/linux/hw_random.h       |  2 ++
>  6 files changed, 43 insertions(+), 2 deletions(-)

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

