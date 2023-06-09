Delivery-date: Fri, 09 Jun 2023 09:30:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7WaB-00GtDT-Ud
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 09:30:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Wa9-0000pS-F4
	for lore@pengutronix.de; Fri, 09 Jun 2023 09:30:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uoEAWj/W4AGDhYW4TRpH8LvIHDH+cGmyN1uesOuRzAE=; b=4OdZaD76w//CNt0pUh/zACFdes
	m8jUdUFFrQPO+xBWZIy9VtqzbqBkmyIfmxuLBOCuoFh+9CgkgWJKVg3sygCfKSYaHx8tQxsEeEf/M
	LfsqPw6P0q3AJzUgwdQsuOO3mQtFVdF97NGseBCZdqndUmqmNTVWh8UQcuUwn757C/T/Uwie8WqKy
	/zQhc0n4zu/XwRqeuzwkLEEa49JkYGnq2NzxcMHOdAQW3ybXBSfxnCmKE3RajnmYLT8MH0v/XOL0Q
	eAPMthFhKxDt4AMDDQWeuUm7twF98ohl3pbiHXfnPBvOd0eh1CceX5CmEVcMg3KtAANnYp8+DX499
	tUnjnvVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7WYx-00C2dI-0M;
	Fri, 09 Jun 2023 07:29:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7WYt-00C2ai-2H
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 07:29:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7WYs-0000GV-8G; Fri, 09 Jun 2023 09:29:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q7WYs-0002FS-1O; Fri, 09 Jun 2023 09:29:30 +0200
Date: Fri, 9 Jun 2023 09:29:30 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230609072930.GR18491@pengutronix.de>
References: <20230608072418.3275633-1-a.fatoum@pengutronix.de>
 <20230608072418.3275633-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230608072418.3275633-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_002931_742956_C0F4E956 
X-CRM114-Status: GOOD (  31.45  )
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

On Thu, Jun 08, 2023 at 09:24:18AM +0200, Ahmad Fatoum wrote:
> Best practice is for each board to populate $global.system.partitions
> or $global.fastboot.partitions with a string exporting its flashable
> devices in a descriptive manner, e.g. "/dev/mmc0(eMMC),/dev/mmc1(SD)".
> 
> This often goes into BSPs though, so upstream boards are left without
> default partitions, making use a bit cumbersome. Make this easier
> by providing three new magic specifiers:
> 
>   - nvmem: exports all registered NVMEM devices (e.g. EEPROMs, Fuse banks)
>   - block: exports all registered block devices (e.g. eMMC and SD)
>   - auto:  currently equivalent to "nvmem,block". May be extended
>            to raw MTD and UBI in future
> 
> This makes it easy to export devices on any board:
> 
>   usbgadget -A auto -b
> 
> or
> 
>   usbgadget -S auto,/tmp/fitimage(fitimage)c
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/user/usb.rst     | 17 +++++++++++++++++
>  common/block.c                 | 16 ++++++++++++++++
>  common/file-list.c             | 29 +++++++++++++++++++++++++++--
>  drivers/nvmem/core.c           | 16 ++++++++++++++++
>  include/block.h                |  6 ++++++
>  include/linux/nvmem-consumer.h |  8 ++++++++
>  6 files changed, 90 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index f2f57ead98d4..6fed0f619b32 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -73,6 +73,23 @@ Example:
>  
>    /dev/nand0.barebox.bb(barebox)sr,/kernel(kernel)rc
>  
> +Board code authors are encouraged to provide a default environment containing
> +partitions with descriptive names. For boards where this is not specified,
> +there exist a number of **partition** specifiers for automatically generating entries:
> +
> +* ``nvmem`` exports all registered NVMEM devices (e.g. EEPROMs, Fuse banks)

Blindly exporting NVMEM devices is not a good idea. As the description
says it's used for fuse banks. These are write-once and modifying them
is potentially dangerous. Also it's fastboot which means you can't even
read them before modifying them and there is no way to only partially
write them.

There might be good reasons to export some specific NVMEM device, but
then this should be explicitly exported and not by default.

> +* ``block`` exports all registered block devices (e.g. eMMC and SD)
> +* ``auto``  currently equivalent to ``nvmem,block``. May be extended to other flashable
> +            devices, like MTD or UBI volumes in future
> +
> +Example usage of exporting registered block devices, barebox update
> +handlers and a single file that is created on flashing:
> +
> +.. code-block:: sh
> +
> +     detect -a # optional. Detects everything, so auto can register it
> +     usbgadget -A auto,/tmp/fitimage(fitimage)c -b
> +
>  DFU
>  ^^^

[...]

> +static bool file_list_handle_spec(struct file_list *files, const char *spec)
> +{
> +	unsigned count = 0;
> +
> +	if (!strcmp(spec, "auto")) {
> +		count += file_list_add_blockdevs(files);
> +		count += file_list_add_nvmemdevs(files);
> +	} else if (!strcmp(spec, "block")) {
> +		count += file_list_add_blockdevs(files);
> +	} else if (!strcmp(spec, "nvmem")) {
> +		count += file_list_add_nvmemdevs(files);
> +	} else {
> +		return false;
> +	}

Since you are talking about future extensions you could parse "auto"
first and set a flag variable for it:

	bool auto = false;

	if (!strcmp(spec, "auto"))
		auto = true;
	if (!strcmp(spec, "block") || auto)
		count += file_list_add_blockdevs(files);
	if (!strcmp(spec, "nvmem") || auto)
		count += file_list_add_nvmemdevs(files);

That would make it a bit easier to integrate the future extensions into
the code.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


