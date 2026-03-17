Delivery-date: Tue, 17 Mar 2026 12:16:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2SPg-001mpD-1X
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 12:16:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2SPf-00023D-QH
	for lore@pengutronix.de; Tue, 17 Mar 2026 12:16:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oVIHcHKlmNr5oLQFz2NfHkAUqI8DULEtvPm7jPMdnRY=; b=C+ebAnR3Qn+j3TWEWhmqUQz+Mp
	4N86XEQKZTlESAzCXfq/BUPNSefL+WkdIYvgdCAY2+IWQhhEnJpDPpNdCzToV9ncBJiAiPnziTKLy
	RF44Q4Czyn/S01XDbJUaVjvU6zUbRSyYD6/qrq6v5YeMIzh3TrqWLLwUWwungSeJbORF/kFttpPVi
	w2xvwI+LeSeV4B0ihlEtnwKexFkAQnidlPfgsIMhvwxfSU/y68bqVc3n/JfVQOTuQ8Q3dyDwmqRhb
	DpLgSb15bv8JGuvM6Ii1kbb/5xZHhN8AHUl2NszknvNWe5iNsd6+o7GOObS+SkS4/MW/7Tr0X0jIP
	KF7wwXUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2SP1-000000066Jq-0PF5;
	Tue, 17 Mar 2026 11:15:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2SOy-000000066JS-1II3
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 11:15:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2SOv-0001tl-25; Tue, 17 Mar 2026 12:15:53 +0100
Message-ID: <62cdd7a2-f712-44e9-8f3f-785a7af0e659@pengutronix.de>
Date: Tue, 17 Mar 2026 12:15:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <SJ0PR07MB976639CACF9AB10A471A2B96EC41A@SJ0PR07MB9766.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <SJ0PR07MB976639CACF9AB10A471A2B96EC41A@SJ0PR07MB9766.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_041556_371093_B7DB7899 
X-CRM114-Status: GOOD (  15.04  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: file system crash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 3/17/26 11:58 AM, Renaud Barbier wrote:
> I have a BSP (not upstreamed) using a ARMv9 that I rebased fromv2025.06 to 2026.01. This board has a SPI NOR with a UBI volume.
> The system starts perfectly.

ARMv9 or ARM9?

Can you rerun with CONFIG_KASAN=y and report the output?

Thanks,
Ahmad

> 
> When doing an umount or ls -l or reset barebox crashes. Debugging the code,  the cdevname pointer in destroy_inode is sometimes (set to 0xffffffff) or the string corrupted. Also below the filename is corrupted.
> OWBOOT> / ls -l /mnt/primary
> ERROR: RENAUD: cdev_by_name: name = cs0 filename = .ӿk
> ERROR: RENAUD: cdev_by_name: name = m25p0 filename = .ӿk
> ERROR: RENAUD: cdev_by_name: name = m25p0.barebox filename = .ӿk
> ERROR: RENAUD: cdev_by_name: name = m25p0.secondary-barebox filename = .ӿk
> ERROR: RENAUD: cdev_by_name: name = m25p0.barebox-environment filename = .ӿk
> …
> One can see the filename above is corrupted
> 
> During reset:
> ERROR: RENAUD: devfs_open: cdevname = m25p0.boot-vars
> ERROR: RENAUD: cdev_by_name: name = cs0 filename = m25p0.boot-vars
> ERROR: RENAUD: cdev_by_name: name = m25p0 filename = m25p0.boot-vars
> ERROR: RENAUD: cdev_by_name: name = m25p0.barebox filename = m25p0.boot-vars
> ERROR: RENAUD: cdev_by_name: name = m25p0.secondary-barebox filename = m25p0.boot-vars
> ERROR: RENAUD: cdev_by_name: name = m25p0.barebox-environment filename = m25p0.boot-vars
> ERROR: RENAUD: cdev_by_name: name = m25p0.env-secondary filename = m25p0.boot-vars
> ERROR: RENAUD: cdev_by_name: name = m25p0.boot-vars filename = m25p0.boot-vars
> ERROR: RENAUD: cdev_by_name: found cdev m25p0.boot-vars
> ERROR: fs_remove: ENTER
> ERROR: ubifs_remove: ENTER
> ERROR: ubifs_remove: END
> ERROR: destroy_inode: inode = bff36380
> ERROR: destroy_inode: cdevname@ = bff3647c
> ERROR: RENAUD: destroy_inode cdevname: tc`, len = 5 ???
> !block_is_last(block)common/tlsf.c 253
> [<dfd8387c>] (unwind_backtrace+0x0/0xe4) from [<dfd0a0dc>] (block_next+0x38/0x48)
> [<dfd0a0dc>] (block_next+0x38/0x48) from [<dfd0a0f8>] (block_link_next+0xc/0x14)
> [<dfd0a0f8>] (block_link_next+0xc/0x14) from [<dfd0a76c>] (tlsf_free+0x48/0x108)
> [<dfd0a76c>] (tlsf_free+0x48/0x108) from [<dfd65a74>] (destroy_inode+0x84/0x188)
> [<dfd65a74>] (destroy_inode+0x84/0x188) from [<dfd671cc>] (dentry_kill+0x18/0x54)
> [<dfd671cc>] (dentry_kill+0x18/0x54) from [<dfd67e24>] (fs_remove+0x144/0x1b0)
> [<dfd67e24>] (fs_remove+0x144/0x1b0) from [<dfd12230>] (devices_shutdown+0x54/0x68)
> [<dfd12230>] (devices_shutdown+0x54/0x68) from [<dfd0221c>] (shutdown_barebox+0x44/0x58)
> [<dfd0221c>] (shutdown_barebox+0x44/0x58) from [<dfd48244>] (cmd_reset+0x114/0x154)
> [<dfd48244>] (cmd_reset+0x114/0x154) from [<dfd06160>] (execute_command+0x4c/0x90)
> [<dfd06160>] (execute_command+0x4c/0x90) from [<dfd0dc98>] (run_list_real.isra.0+0x810/0x8c0)
> [<dfd0dc98>] (run_list_real.isra.0+0x810/0x8c0) from [<dfd0d13c>] (parse_stream_outer+0x130/0x1f4)
> [<dfd0d13c>] (parse_stream_outer+0x130/0x1f4) from [<dfd0df04>] (run_shell+0x74/0xb4)
> [<dfd0df04>] (run_shell+0x74/0xb4) from [<dfd01e80>] (start_barebox+0x58/0x9c)
> [<dfd01e80>] (start_barebox+0x58/0x9c) from [<dfd7f1b8>] (barebox_non_pbl_start+0xc4/0xdc)
> [<dfd7f1b8>] (barebox_non_pbl_start+0xc4/0xdc) from [<dfd00004>] (__bare_init_start+0x0/0x10)
> 
> Again, it seems there is memory corruption of cdevname
> 
> Has anybody seen this?
> 
> Note this is not happening with barebox v2025.12.0 and I did notice there was lots of rework on the fs directory from v2026.01
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



