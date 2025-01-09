Delivery-date: Thu, 09 Jan 2025 12:24:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVqeW-0018rV-2f
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 12:24:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVqeW-0005ql-L6
	for lore@pengutronix.de; Thu, 09 Jan 2025 12:24:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3QzRiqrc3VjFNEQjpEXwtcb2wT4GJqFtcOjg4KP6RRA=; b=ImNHQHTKSJklILxFepzB4Xxi04
	Vdw9IF9pA80KgeZLK09pGw2jV8z1VdS5Cal8JqCsnxB1lnNDZDKPBzZXANigVSEgcztRiabVtNhz1
	6P+qBm7+bXAn/SxE9umelOwoVD6eLz+fQIrZEphAtcAKcYicSVzCZfgMKhaRNmyIUuCl+DK5L0T8s
	AaHPHTDQhQ2X4SNDIrDuyFXVz6EpGI9YvksXGjsQJD+2jfD6ckO/Es4+t89jyV9rGmUSl7oRPvn+p
	tDbf2exYU4GoJQGULRg5FWeSUVWQuxGJphNiUa3ybmLvrNExBY03QWwuD6HDBAu9QAN/eNjBYR3vl
	qNMdYLiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqdq-0000000BhYu-1OCI;
	Thu, 09 Jan 2025 11:23:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqaG-0000000Bh1K-3vsr
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 11:20:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqaF-00053d-03; Thu, 09 Jan 2025 12:20:15 +0100
Message-ID: <2aa13c0d-1820-4f9a-a52e-95917f19f632@pengutronix.de>
Date: Thu, 9 Jan 2025 12:20:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB35326945A0F013DF45CE9C77EC132@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DM5PR07MB35326945A0F013DF45CE9C77EC132@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_032016_992187_54F81552 
X-CRM114-Status: GOOD (  15.06  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: parted crash on NVME storage on LS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 09.01.25 10:32, Renaud Barbier wrote:
> We are investigating the use of NVME storage using a NXP LS1046A CPU.
> I have a RDB eval board on which I installed NVME storage whose ext4 partition was created from Linux.
> The commit from which the boot loader is built is: 2024.12.0-00214-ge3de867716e9-dirty from Tue Dec 17 2024
> 
> The device is probed:
>  `-- pci-1957:81c0.1
>      `-- pci-126f:2263.0
>          `-- 0x00000000-0x6fc86d5fff ( 447.1 GiB): /dev/nvme0n1
>          `-- 0x00100000-0x401001ff (     1 GiB): /dev/nvme0n1.0, nvme0n1.Linux filesystem
> 
> nvme pci-126f:2263.0: serial: A012410180629000000
> nvme pci-126f:2263.0: model: SM681GEF AGS
> nvme pci-126f:2263.0: firmware: TFX7GB
> 
> The partition below was created from Linux:
> 
> barebox@LS1046A RDB Board:/ parted nvme0n1 print
> Disk /dev/nvme0n1: 447.1 GiB
> Partition Table: gpt
> Number      Start           End          Size     Name
>    0            1MB        1074MB        1073MB   Linux filesystem
> 
> However, attempting to create a new partition:
> 
> barebox@LS1046A RDB Board:/ parted nvme0n1 mkpart config ext4 1074MiB 1090MiB
> NULL pointer dereference: DABT (current EL) exception (ESR 0x9600000b) at 0x0000000000000008
> elr: 00000000fbd69444 lr : 00000000fbd0e110
> x0 : 0000000000000000 x1 : 0000000000000000
> x2 : 0000000000000000 x3 : fffffffffffffff8
> x4 : 00000000fbff7a6c x5 : 00000000fbff7a68
> x6 : 00000000bdfc5a48 x7 : 00000000bde80000
> x8 : 00000000bded2dd0 x9 : 00000000fbff7a68
> x10: 00000000fbdb4190 x11: 0000000000000002
> x12: 00000000bdfc402e x13: 00000000bdfc4053
> x14: 00000000ffffffff x15: 00000000ffffffff
> x16: 0000000000000000 x17: 00000000fbff7538
> x18: 00000000fbff7ac0 x19: 0000000000000000
> x20: 00000000bdfc59b0 x21: 00000000bded2dd0
> x22: 00000000bdfc5278 x23: 00000000bdfc57a8
> x24: 0000000000004000 x25: 00000000fbdb2650
> x26: 00000000fbe1c000 x27: 00000000bdfc3fc8
> x28: 00000000fbde5db0 x29: 00000000fbff7a90
> 
> Call trace:
> [<fbd69444>] (dev_remove_param+0x18/0x5c) from [<fbd0e110>] (dos_partition_free+0x30/0x58)
> [<fbd0e110>] (dos_partition_free+0x30/0x58) from [<fbd0db68>] (partition_table_free+0x14/0x1c)
> [<fbd0db68>] (partition_table_free+0x14/0x1c) from [<fbd0ec64>] (efi_partition_write+0x39c/0x3c0)
> [<fbd0ec64>] (efi_partition_write+0x39c/0x3c0) from [<fbd0da08>] (partition_table_write+0x18/0x28)
> [<fbd0da08>] (partition_table_write+0x18/0x28) from [<fbd65af8>] (do_parted+0x138/0x154)
> [<fbd65af8>] (do_parted+0x138/0x154) from [<fbd0786c>] (execute_command+0x44/0x8c)
> [<fbd0786c>] (execute_command+0x44/0x8c) from [<fbd04208>] (execute_binfmt+0x68/0xa0)
> [<fbd04208>] (execute_binfmt+0x68/0xa0) from [<fbd120fc>] (run_list_real+0x8cc/0x978)
> [<fbd120fc>] (run_list_real+0x8cc/0x978) from [<fbd11684>] (parse_stream_outer+0x144/0x1f0)
> [<fbd11684>] (parse_stream_outer+0x144/0x1f0) from [<fbd124dc>] (run_shell+0x64/0xac)
> [<fbd124dc>] (run_shell+0x64/0xac) from [<fbd01b30>] (run_init+0x148/0x250)
> [<fbd01b30>] (run_init+0x148/0x250) from [<fbd01c88>] (start_barebox+0x50/0x8c)
> [<fbd01c88>] (start_barebox+0x50/0x8c) from [<fbd90f48>] (psci_driver_register+0x0/0x1c)
> [<fbd90f48>] (psci_driver_register+0x0/0x1c) from [<fbd0000c>] (__bare_init_start+0x0/0x14)
> [<fbd0000c>] (__bare_init_start+0x0/0x14) from [<80028800>] (0x80028800)
> [<80028800>] (0x80028800) from [<800280c4>] (0x800280c4)
> panic: unhandled exception
> 
> A bit of debugging shows that dpd->disksig.param is NULL. Is that supposed to be?

No, looks like I broke it. I'll send a fix shortly.

> 
> barebox@LS1046A RDB Board:/ parted nvme0n1 mkpart config ext4 1074MiB 1090MiB
> dos_partition_free: pd = 0x00000000bdfc6980
> dos_partition_free: dpart = 0x00000000bdfc7738
> dos_partition_free: dpd = 0x00000000bdfc6980
> dos_partition_free: dpd->disksig.param= 0x0000000000000000 <==
> dos_partition_free: pd = 0x00000000bdfc6980
> 
> And the partition is created if dpd->disksig.param is tested for NULL:
> barebox@LS1046A RDB Board:/ parted nvme0n1 print
> Disk /dev/nvme0n1: 447.1 GiB
> Partition Table: gpt
> Number      Start           End          Size     Name
>    0         1024KiB    1049600KiB    1048576KiB  Linux filesystem
>    1      1099776KiB    1116159KiB      16384KiB  config
> 
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


