Delivery-date: Wed, 02 Jun 2021 08:40:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loKXy-0006m5-Uh
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 08:40:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loKXy-0007ML-1U
	for lore@pengutronix.de; Wed, 02 Jun 2021 08:40:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CB4ucVTTnxPfjTgzlAC4wUUfEy3+ufCxVLGYSzTB5U8=; b=eF2kcQ+QMtTgpMHWI0R0GEOJfE
	2Ow6Wn2ftKZngk3NnS+ZN7euv4a9J1GFGXwWQ2OUSAH8nN7k7PFZeOv6CyRTu3GkppsuvoMU4TXDw
	/f66WRQHq1hk32uROyNH5tEFtbl82Lx7ZNRRPmPZIPcKaCogpb6p84N6UPorOu5DGPAEJKCULqzqd
	U0WsZ2H3vmsDb5n1UHmOaBg5Sa/eAFmDdICWGa83tQTRYRnxQxNRWJxsd4qxcrTgFrbGto8EgPUzV
	h4sCheqDYp0b4bhmwjWL13yw/H6kKiy4eFk0bZd9EM2AQ1wGjY7X4PbvAogV5i0S5rRXUZVuX1ZZl
	qcLOi4kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loKWQ-0023C2-H3; Wed, 02 Jun 2021 06:38:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loKWL-0023B5-43
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 06:38:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loKWJ-00078f-RJ; Wed, 02 Jun 2021 08:38:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loKWJ-00085T-I6; Wed, 02 Jun 2021 08:38:27 +0200
Date: Wed, 2 Jun 2021 08:38:27 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mol@pengutronix.de
Message-ID: <20210602063827.GV5211@pengutronix.de>
References: <20210531071239.30653-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531071239.30653-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:37:24 up 104 days, 10:01, 111 users,  load average: 0.12, 0.08,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_233829_183738_7FE3B188 
X-CRM114-Status: GOOD (  24.04  )
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
Subject: Re: [PATCH 0/6] memory: fuse overlapping memory banks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 09:12:33AM +0200, Ahmad Fatoum wrote:
> The request region code makes sense to ensure drivers don't try to claim
> (I/O) memory region claimed by another driver or by the memory
> allocator. It doesn't make as much sense for registering available
> memory banks, because there is often overlap:
> 
>  - device tree often defines the (minimally) available /memory across
>    variants
>  - subarchitectures like i.MX, STM32MP, OMAP or SAMA5 query the main
>    RAM size from controller registers
> 
> So far, overlap went mostly unnoticed, because the RAM controller
> drivers didn't check for errors. However, if barebox is already running
> from RAM outside that described by the device tree, there will be errors
> and /delete-node/ annotations that need to be added into device trees.
> 
> Upstream device tree can be extended later on with a /memory node, which
> in turn will break barebox. This series fixes all of that. Overlapping
> memory banks are combined into one. Errors are propagated everywhere.
> /delete-node/ memory@X shouldn't be needed for new boards.
> 
> Ahmad Fatoum (6):
>   common: memory: allocate all memory devices at once
>   memory: fuse overlapping memory banks
>   of: propagate errors inside barebox_register_{of,fdt} into initcalls
>   of: warn about of_add_memory_bank errors
>   ARM: <asm/memory.h>: propagate error codes from arm_add_mem_device()
>   ARM: report probe error at arm_add_mem_device() callsites on failure

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

