Delivery-date: Mon, 12 Jun 2023 08:33:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8b6z-003V52-Tl
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 08:33:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8b6x-0003Uv-E4
	for lore@pengutronix.de; Mon, 12 Jun 2023 08:33:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mo7tP9HWzf3kUlvc6IUorQtCM1zoLZUp4WCtLgAXIcQ=; b=Tli7VnGSPZUjZvJWOZTxDfz7r3
	/B6sY7VaAPzellyl07Z00ps24ELBex2AaDjmp8YpSNjD9waeTpWQlqB23iQvlNv4Ialmc3DJs9N5M
	CM9B7WickxJ8CPLtYpFb4s7/hUM2nWmUrlYYnjKxP7sChcY5edHzJEzdamqIPPvAldtJdWvf/1GHN
	L4BIYDIDkm20n9xpw1VTY9EOqLzPDqfLt9jbe80vguIAfKfz9Gbi75T/jp80ua+ZcjctKprhIgS+4
	06YCCOxDhzNeVZ54hmar3zYul4OQJU0MLq9jJTzQRQlNfkKKolWAP+MOjRhNhJ+mRttb5DLbHeQ0z
	tM2JUJYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8b5q-002m0e-1e;
	Mon, 12 Jun 2023 06:31:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8b5n-002lzx-0m
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 06:31:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8b5l-0003RS-UL; Mon, 12 Jun 2023 08:31:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8b5l-0001Z9-Mv; Mon, 12 Jun 2023 08:31:53 +0200
Date: Mon, 12 Jun 2023 08:31:53 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230612063153.GV18491@pengutronix.de>
References: <20230608072418.3275633-1-a.fatoum@pengutronix.de>
 <20230608072418.3275633-2-a.fatoum@pengutronix.de>
 <20230609072930.GR18491@pengutronix.de>
 <9d4e421d-26c7-8cb1-9783-a9cec4a483cb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9d4e421d-26c7-8cb1-9783-a9cec4a483cb@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_233155_285149_D87F7A6F 
X-CRM114-Status: GOOD (  33.07  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] file-list: support special 'auto', 'block', 'nvmem'
 specifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 09, 2023 at 09:37:56AM +0200, Ahmad Fatoum wrote:
> On 09.06.23 09:29, Sascha Hauer wrote:
> > On Thu, Jun 08, 2023 at 09:24:18AM +0200, Ahmad Fatoum wrote:
> >> Best practice is for each board to populate $global.system.partitions
> >> or $global.fastboot.partitions with a string exporting its flashable
> >> devices in a descriptive manner, e.g. "/dev/mmc0(eMMC),/dev/mmc1(SD)".
> >>
> >> This often goes into BSPs though, so upstream boards are left without
> >> default partitions, making use a bit cumbersome. Make this easier
> >> by providing three new magic specifiers:
> >>
> >>   - nvmem: exports all registered NVMEM devices (e.g. EEPROMs, Fuse banks)
> >>   - block: exports all registered block devices (e.g. eMMC and SD)
> >>   - auto:  currently equivalent to "nvmem,block". May be extended
> >>            to raw MTD and UBI in future
> >>
> >> This makes it easy to export devices on any board:
> >>
> >>   usbgadget -A auto -b
> >>
> >> or
> >>
> >>   usbgadget -S auto,/tmp/fitimage(fitimage)c
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  Documentation/user/usb.rst     | 17 +++++++++++++++++
> >>  common/block.c                 | 16 ++++++++++++++++
> >>  common/file-list.c             | 29 +++++++++++++++++++++++++++--
> >>  drivers/nvmem/core.c           | 16 ++++++++++++++++
> >>  include/block.h                |  6 ++++++
> >>  include/linux/nvmem-consumer.h |  8 ++++++++
> >>  6 files changed, 90 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> >> index f2f57ead98d4..6fed0f619b32 100644
> >> --- a/Documentation/user/usb.rst
> >> +++ b/Documentation/user/usb.rst
> >> @@ -73,6 +73,23 @@ Example:
> >>  
> >>    /dev/nand0.barebox.bb(barebox)sr,/kernel(kernel)rc
> >>  
> >> +Board code authors are encouraged to provide a default environment containing
> >> +partitions with descriptive names. For boards where this is not specified,
> >> +there exist a number of **partition** specifiers for automatically generating entries:
> >> +
> >> +* ``nvmem`` exports all registered NVMEM devices (e.g. EEPROMs, Fuse banks)
> > 
> > Blindly exporting NVMEM devices is not a good idea. As the description
> > says it's used for fuse banks. These are write-once and modifying them
> > is potentially dangerous. Also it's fastboot which means you can't even
> > read them before modifying them and there is no way to only partially
> > write them.
> > 
> > There might be good reasons to export some specific NVMEM device, but
> > then this should be explicitly exported and not by default.
> 
> The few fuse bank drivers that can actually blow fuses have a device
> variable that needs to be written to unlock write access.
> 
> But yes, the inability to write them partially makes the write
> useless. I will just resend without nvmem.

Side note: the fastboot protocol would even allow to do partial writes,
but I don't think there's a way to make use of them with the fastboot
tool.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


