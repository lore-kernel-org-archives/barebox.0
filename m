Delivery-date: Wed, 10 Jan 2024 16:27:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNaUC-00BmFx-2w
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 16:27:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNaUC-0004Dd-8m
	for lore@pengutronix.de; Wed, 10 Jan 2024 16:27:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r53xHbztNrgykBF4yhoodT6V3cyp7iON5Ru+b3bnWOU=; b=2T3e4mj3jTm5AqdXVL1r8cxgVq
	97PblJOcWowsP1KYjwfrz5DEJlapS+gPfwomQYi53XtVV1U20DqqHfKWq+kFVPuMDlriDLAq2QexO
	xSkEOanPvHrXFvzEbhHeZW9ylED0fTD/40QCqe3NVLRALp28KCJZvI8lwA5B9VGXnyQ5tCRQtsZHd
	QRG6Z5qxyCz+xR3SJSkbsVacWp71qKIKeHJmBWHgra71JFQKjIaGelfAEz/UqTcNumk6nVUi3ASoI
	RiodA3fJPXipzIm7dSf8fKoeM4pLNleEM4hezydzmMWghmaDWglTJMmonlV2DBgGvfkqQ/ZzKwkxP
	8ZBm4L7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNaTA-00CaLc-0a;
	Wed, 10 Jan 2024 15:26:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNaT7-00CaKr-0L
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 15:26:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNaT5-0003y3-Ir; Wed, 10 Jan 2024 16:26:11 +0100
Message-ID: <4989ac29-de40-4e29-8402-fb707fd9f8d4@pengutronix.de>
Date: Wed, 10 Jan 2024 16:26:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240110143958.3773360-1-a.fatoum@pengutronix.de>
 <20240110151806.GS1318922@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240110151806.GS1318922@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_072613_142882_6927B3E0 
X-CRM114-Status: GOOD (  24.08  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFC] bootm: support printing bootm parameters determined
 at runtime to file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 10.01.24 16:18, Sascha Hauer wrote:
> On Wed, Jan 10, 2024 at 03:39:58PM +0100, Ahmad Fatoum wrote:
>> The barebox bootm command is often not called directly, but via
>> bootloader spec or FIT image boot handlers. For debugging, it can be
>> useful to reuse those boot handlers, but replace single artifacts, e.g.
>> using the barebox device tree instead of the bootloader-spec provided
>> device tree.
>>
>> To make this easier, have boot -v -d (verbose + dry run) write a boot
>> script that reproduces the cancelled boot to /env/boot/cancelled.
> 
> I like the idea very much. I also had this problem more than once.
> 
> I think an explicit option rather than "-v -d" would be better. With
> this there would be a natural way to document this behaviour in the
> boot help output.
> 
> /env/boot/cancelled would be saved in the environment with a saveenv
> which is likely not desirable. Maybe better put it somewhere in /tmp/?

Or have the new option take an argument, which would be the path to save
the file to?

> 
>> +	dprintf(fd, "global.bootm.verify=%s\n", verify);
>> +
>> +	dprintf(fd, "\n");
>> +
>> +	if (data->os_address != UIMAGE_SOME_ADDRESS)
>> +		dprintf(fd, "global.bootm.image.loadaddr=0x%08lx\n", data->os_address);
>> +	if (data->os_file)
>> +		dprintf(fd, "global.bootm.image='%s'\n", data->os_file);
>> +	if (data->oftree_file)
>> +		dprintf(fd, "global.bootm.oftree='%s'\n", data->oftree_file);
>> +#ifdef CONFIG_BOOTM_INITRD
>> +	if (data->initrd_file)
>> +		dprintf(fd, "global.bootm.initrd='%s'\n", data->initrd_file);
>> +
>> +	if (data->initrd_address != UIMAGE_INVALID_ADDRESS)
>> +		dprintf(fd, "global.bootm.initrd.loadaddr=0x%08lx\n", data->initrd_address);
>> +#endif
>> +	if (data->tee_file)
>> +		dprintf(fd, "global.bootm.tee_file='%s'\n", data->tee_file);
>> +
>> +	dprintf(fd, "\n");
>> +
>> +	bootargs = linux_bootargs_get();
>> +	if (bootargs)
>> +		dprintf(fd, "global linux.bootargs.dyn.concatenated='%s'\n", bootargs);
> 
> This will contain all of linux.bootargs.* which are then added again
> when we actually boot the script, so we end up having many bootargs
> twice. This is not very nice, I don't know though how/if we can improve
> that.

Yes. I could iterate over all linux.bootargs.* instead of adding a new variable.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



