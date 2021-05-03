Delivery-date: Mon, 03 May 2021 13:58:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXDb-00036B-8q
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:58:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXDa-0001iq-Dq
	for lore@pengutronix.de; Mon, 03 May 2021 13:58:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O3ilWlP/9MkTygavr2xnjkAI4w4nYjvcztNguskUtgs=; b=hcYwCowBlon8QHMW260Dnh5r1
	v9dzHABFIYdm4YI483X/w//E0hfLXqJTfk2SLeKome1aEJHPeoYgHeWNBB+ktn832Exfu6KE4Uy4L
	64X+/3Iy8MBWq6Qk7T9WIx+5nInZ4iemhScyR7w7sdw6acgc4gb9kgaIm5P81Wlgney3z1861ZMN3
	sAAqzgksIMj0jvoEEJhET3mfw0gagUrCyBXpxK/7WXcBvfADKvrq0NqdzqlCjX4fVM+g7bmWQgAxd
	Kce03Hx4bY1zL9us4qIcF0rI4idiwJnDyStq1DoGVrD6NLvXn8p1bzQsisnZ4aHs0tlIRi1/2Y0br
	VUJmRGBfQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXBG-00DoGr-8N; Mon, 03 May 2021 11:56:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXBA-00DoGO-GN
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wgOtYQug/WSOB/LlTnXD0Ro/OtnTmfhuxX5xDA4Ws4w=; b=tWwOt1F3ZNfb+baD7AVdNXnD1m
 s8DSy18VsM6LjhYC8rVKR9CZEn7/wkrSATsC45ZCTLKsieIbKms8FeBDkqa5/zvKHXePUYMOtX/r2
 r9OCPp4mF1CBWz723vTndC8wMWYipGpsv1gZtu9IhKVpD9FmEKMNZEp6xj9z0P5Uz8/TQpBeTG+8K
 vJy+iTgg4K8kLQjeV2964G8pK1ZvU9dX+HTTG30wts2O8koGoT19u6H7XCkFU5vFmH8jCscGQ6UD8
 23hZ6THu9K5R6zgHB1KlsN07NF7h1UUooY75gZE9lCltFNUoFmW3BSk4cZhsgfGfeyr4BjV+b4ZUe
 rTFDqioA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXB7-00321V-Ud
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:55:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXB6-0001K7-HA; Mon, 03 May 2021 13:55:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldXB6-0002LK-7t; Mon, 03 May 2021 13:55:56 +0200
Date: Mon, 3 May 2021 13:55:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210503115556.GF19819@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:55:32 up 74 days, 15:19, 100 users,  load average: 0.27, 0.13,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_045558_007504_3FC3399B 
X-CRM114-Status: GOOD (  24.35  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/16] USB: gadget: refactor to allow easier extension
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 03, 2021 at 01:48:45PM +0200, Ahmad Fatoum wrote:
>  There's some duplication between DFU and Fastboot and incoming USB
>  mass storage support as well as custom protocols that might be
>  implemented by board vendors could benefit from some consolidation.
> 
>  This is added here in the form of system partitions, which is just
>  a way to have a machine-global file_list, that can be used as fallback
>  for fastboot, DFU, mass storage gadget, ... etc.
> 
>  Some commits are not directly related and happened along the way.
> 
>  v2 -> v3:
>   - squash fixups
>   - add new commit to ignore NULL in file_list_free
>   - reworked usbgadget_register logic, so usbgadget -D '' with no
>     DFU compiled in is not silently ignored
>   - fix error checking in file_list_detect_all
> 
>  v1 -> v2:
>   - log_writefile(filename) instead of log_dprint(fd) (Sascha)
>   - rename $machine.partitions to $global.system.partitions (Sascha)
>   - add new commit fixing error with appending to files on ext4
> 
> 
> Ahmad Fatoum (16):
>   show_progress: add system wide progress stage notifier
>   common: console: add log_writefile to write log into new file
>   string: implement strstarts along with strends
>   vsprintf: introduce %m shorthand for "%s", strerror(errno)
>   param: introduce file-list parameter type
>   common: add generic system partitions interface
>   fastboot: handle ill-named partitions gracefully
>   usb: gadget: dfu: change status message to info log level
>   usbgadget: autostart: fix indeterminism around usbgadget.autostart
>   usbgadget: allow DFU and Fastboot functions to coexist
>   file_list: make freeing a NULL pointer a no-op
>   fastboot/dfu: use system partitions as fall back
>   bbu: add function to directly add handlers into file_list
>   file_list: add file_list_detect_all()
>   common: make FILE_LIST feature unconditional
>   fs: error out when writing on read-only file system

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

