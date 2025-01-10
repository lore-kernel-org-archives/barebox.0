Delivery-date: Fri, 10 Jan 2025 17:15:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWHfQ-000Qeb-0Z
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 17:15:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWHfQ-0006pF-8g
	for lore@pengutronix.de; Fri, 10 Jan 2025 17:15:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BnmDpOyn7nsA4W3PpdlxT2KpJlAhJ5ImD+Awo8vXmfA=; b=O1JFFSUIkmJ7zpzi5TSwp+Tyqr
	IugF0zhpnwwaiDG260fvAtoG6m044JwBKciNfReIZgaZJ6fP2fLXL9Yc3pf+Gj/tXTn8AOhbSqMFE
	Ff1pDL6n4bhIR6ewlm3m3nR/AG7bc/EM2I5UaDx15SgVzUj6/YyOX6LIsDuC+p7xwmqJnl9m17/I2
	1WdM9jv/MfK7UHHFMUN8JIgq1kVBr08HRJKaUG2eXgPRwIzEz5UO5i+FItBq6tPf6mE9HHgwoei2v
	4Hq7xPYbf8vAXHRN830jtugu+24ujEYEGpNkotngx06jFrlrceMw7Qf4l2/ASVJlGdCECDH1PfwU0
	SgWRVtVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHew-0000000GBAx-0jaA;
	Fri, 10 Jan 2025 16:14:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHJN-0000000G6UF-0xAx
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 15:52:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWHJJ-00053m-UK; Fri, 10 Jan 2025 16:52:33 +0100
Message-ID: <f8c0ecb3-6c8e-4d09-b258-8f898ec744f1@pengutronix.de>
Date: Fri, 10 Jan 2025 16:52:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <DM5PR07MB35326945A0F013DF45CE9C77EC132@DM5PR07MB3532.namprd07.prod.outlook.com>
 <2aa13c0d-1820-4f9a-a52e-95917f19f632@pengutronix.de>
 <DM5PR07MB3532C9D58C2D8848C7F08136EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <DM5PR07MB3532C9D58C2D8848C7F08136EC1C2@DM5PR07MB3532.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_075237_268192_05DB97D5 
X-CRM114-Status: GOOD (  13.41  )
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

Hi Renaud,

On 10.01.25 16:48, Renaud Barbier wrote:
> 
> 
>>
>> ***NOTICE*** This came from an external source. Use caution when
>> replying, clicking links, or opening attachments.
>>
>> On 09.01.25 10:32, Renaud Barbier wrote:
>>> We are investigating the use of NVME storage using a NXP LS1046A CPU.
>>> I have a RDB eval board on which I installed NVME storage whose ext4
>> partition was created from Linux.
>>> The commit from which the boot loader is built is:
>>> 2024.12.0-00214-ge3de867716e9-dirty from Tue Dec 17 2024
>>>
>>> The device is probed:
>>>  `-- pci-1957:81c0.1
>>>      `-- pci-126f:2263.0
>>>          `-- 0x00000000-0x6fc86d5fff ( 447.1 GiB): /dev/nvme0n1
>>>          `-- 0x00100000-0x401001ff (     1 GiB): /dev/nvme0n1.0, nvme0n1.Linux
>> filesystem
>>>
>>> nvme pci-126f:2263.0: serial: A012410180629000000 nvme
>>> pci-126f:2263.0: model: SM681GEF AGS nvme pci-126f:2263.0: firmware:
>>> TFX7GB
> 
> After using the nvme sanitize command from Linux, I tried to recreate the partition from barebox.
> A crash happened.
> I did notice a call to efi_partition_free below while when the partition table was created Linux it was dos_partition_free.

Is this with the two patches I Cc'd you on?

Thanks,
Ahmad

> 
> barebox@LS1046A RDB Board:/ parted /dev/nvme0n1 mklabel gpt
> Created new disk label with GUID 00dc0465-aa1f-ad4d-9ada-e5ac1b1e5f13
> NULL pointer dereference: DABT (current EL) exception (ESR 0x9600000b) at 0x0000000000000008
> elr: 00000000fbd6a450 lr : 00000000fbd0f68c
> x0 : 0000000000000000 x1 : 0000000000000000
> x2 : 0000000000000000 x3 : 00000000bded2e18
> x4 : 00000000bded2dd0 x5 : 00000000bdef5060
> x6 : 0000000037e43680 x7 : 000000000000002e
> x8 : 00000000bded2dd0 x9 : 0000000000000200
> x10: 0000000000001000 x11: 0000000000001000
> x12: 00000000fbff7681 x13: 00000000fbff7a79
> x14: 00000000ffffffff x15: 00000000ffffffff
> x16: 0000000000000000 x17: 00000000fbff74a8
> x18: 00000000fbff7a40 x19: 0000000000000000
> x20: 00000000bdfc61b8 x21: 00000000bded2e38
> x22: 00000000bded2dd0 x23: 00000000fbde90c0
> x24: 00000000fbe1f000 x25: 00000000fbdb54a8
> x26: 00000000fbe1f000 x27: 00000000bdfc3de8
> x28: 00000000fbde90f0 x29: 00000000fbff7ae0
> 
> Call trace:
> [<fbd6a450>] (dev_remove_param+0x18/0x5c) from [<fbd0f68c>] (efi_partition_free+0x30/0x68)
> [<fbd0f68c>] (efi_partition_free+0x30/0x68) from [<fbd0df38>] (partition_table_free+0x14/0x1c)
> [<fbd0df38>] (partition_table_free+0x14/0x1c) from [<fbd66b14>] (do_parted+0x148/0x154)
> [<fbd66b14>] (do_parted+0x148/0x154) from [<fbd07bd8>] (execute_command+0x44/0x8c)
> [<fbd07bd8>] (execute_command+0x44/0x8c) from [<fbd0421c>] (execute_binfmt+0x68/0xa0)
> [<fbd0421c>] (execute_binfmt+0x68/0xa0) from [<fbd124f8>] (run_list_real+0x8cc/0x978)
> [<fbd124f8>] (run_list_real+0x8cc/0x978) from [<fbd11a80>] (parse_stream_outer+0x144/0x1f0)
> [<fbd11a80>] (parse_stream_outer+0x144/0x1f0) from [<fbd128d8>] (run_shell+0x64/0xac)
> [<fbd128d8>] (run_shell+0x64/0xac) from [<fbd01bd8>] (run_init+0x148/0x264)
> [<fbd01bd8>] (run_init+0x148/0x264) from [<fbd01a38>] (start_barebox+0x50/0x8c)
> [<fbd01a38>] (start_barebox+0x50/0x8c) from [<fbd93748>] (psci_driver_register+0x0/0x1c)
> [<fbd93748>] (psci_driver_register+0x0/0x1c) from [<fbd0000c>] (__bare_init_start+0x0/0x14)
> [<fbd0000c>] (__bare_init_start+0x0/0x14) from [<80028800>] (0x80028800)
> [<80028800>] (0x80028800) from [<800280c4>] (0x800280c4)


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


