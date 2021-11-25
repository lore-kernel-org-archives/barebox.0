Delivery-date: Thu, 25 Nov 2021 08:45:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9SA-0005I2-J2
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 08:45:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9S9-0006Z7-Mz
	for lore@pengutronix.de; Thu, 25 Nov 2021 08:45:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8fw4PyJLqwl57JX/sW34DUR2deLRQ5D0M4MesxC8M7s=; b=D0ETja8SOJrUuFqeEFnJGpyWtT
	gwYhudxiFgmduIrc7eohQf3VegG0CzTsGjmk60jn5YK5xMtYA1HohJL/G2QxcGg5c4gGyqW3XpUT5
	uKpf98lVg6cp051jrFaovpic5dnbNZXt53Z+V0d6IsE8BmAO8q4AAKRx/WOTvIgAFzQh6jI2ouk8G
	qOZPrisx9j4VBly+uKp9UpNhxWWG3t7nxuUdCKOqYuAZ4BvK28DesN/+RZfZ6hHKHIIDsZr1feNSR
	c/NFp+8y7RdOTIroamIMKAYP4jxObIicGvKAhyOX/Ql6JWWJ+5QKPgAjzCbzsy8zIRSME1PAY7v2C
	DuSivxuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq9Qt-006cG0-V4; Thu, 25 Nov 2021 07:44:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq9Qo-006cFC-Ec
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 07:44:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9Qn-0006Gy-6Q; Thu, 25 Nov 2021 08:44:33 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9Qm-0007Rq-To; Thu, 25 Nov 2021 08:44:32 +0100
Date: Thu, 25 Nov 2021 08:44:32 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211125074432.GA28260@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:44:04 up 280 days, 11:07, 135 users,  load average: 0.12, 0.16,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_234434_514476_C4783619 
X-CRM114-Status: GOOD (  20.04  )
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
Subject: Re: [PATCH 00/30] efi: refactor for upcoming loader support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 22, 2021 at 09:47:02AM +0100, Ahmad Fatoum wrote:
> Nothing EFI loader support specific yet, just shifting around code to
> enable future reuse, fixing some typos found along the way and improving
> wide char support a bit.
> 
> Ahmad Fatoum (30):
>   fs: remove useless AT_FDCWD references
>   fs: remove unused struct node_d in struct dir
>   block : efi: rename driver variable from efi_fs_driver to
>     efi_bio_driver
>   include: <linux/types.h>: wrap in #ifndef __ASSEMBLY__
>   hw_random: stm32: propagate error codes from rng read
>   efi: align LOAD_FILE_PROTOCOL_GUID's name with other PROTOCOL_GUIDs
>   asm-generic: move sync_caches_for_execution declaration to
>     <asm/cache.h>
>   common: move EFI code into new efi/ top level directory
>   serial: efi-stdio: move efi-stdio.h header to central location
>   efi: use SPDX-License-Identifier where appropriate
>   drivers: efi: move Kconfig options to new menu
>   efi: factor out errno translation
>   efi: rename <efi/efi.h> to <efi/efi-payload.h>
>   efi: centralize efivarfs_parse_filename
>   kbuild: force 16-bit wchar_t treewide
>   include: <linux/nls.h>: remove duplicate wchar_t typedef
>   lib: wchar: add wctomb and mbtowc
>   lib: implement wcsnlen
>   vsprintf: add optional support for %ls format modifier
>   libfile: null-terminate read_file of wchar_t buffer
>   commands: echo: add wide file output via wecho alias
>   efi: make efi_main __noreturn
>   efi: define and use new EFI_ERROR_MASK macro
>   common: move CONFIG_ELF into General Settings
>   efi: don't zero executable buffer before freeing
>   partitions: efi: move header to central location
>   efi: print early efi_main string on CONFIG_DEBUG_LL=y
>   ARM64: board-dt-2nd: remove no longer needed noinline function split
>   bus: acpi: register bus even if without ACPI EFI table
>   efi: guid: fix typos

Applied with typos fixed, thanks

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

